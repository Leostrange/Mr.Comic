// 4.1 (2026-08-09):
// backup/restore helpers, export/import and cache management extracted from
// SettingsViewModelBackup.kt into an explicit-dependency controller. The
// ViewModel stays the single owner of state and lifecycle; messages are
// top-level helpers in SettingsViewModelMessages.kt taking lang explicitly.

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.doublePreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.stringSetPreferencesKey
import io.leostrange.mrcomic.core.data.preferences.APP_ICON_PREFERENCE_KEY
import io.leostrange.mrcomic.core.data.preferences.DEFAULT_APP_ICON_ID
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.appIconDataStore
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.displayReadingProgress
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.style
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.net.URLDecoder
import java.util.Locale

internal class SettingsBackupController(
    private val context: Context,
    private val preferences: UserPreferences,
    private val themePreferencesRepository: ThemePreferencesRepository,
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val scope: CoroutineScope,
    private val statusState: MutableStateFlow<StatusState>,
    private val language: () -> String,
) {

    // ── Orchestrators ─────────────────────────────────────────────────────

    fun setAutoBackupEnabled(enabled: Boolean) {
        scope.launch {
            preferences.set(PreferencesKeys.AUTO_BACKUP_ENABLED, enabled)
            // Immediately create a backup when user enables the feature so they see it works.
            if (enabled) autoBackupToDocuments()
        }
    }

    /**
     * Writes library progress JSON to
     * `Documents/MrComic/mrcomic_backup_<date>.json`.
     * Called on: (a) enable toggle, (b) app lifecycle onStop via [triggerAutoBackupIfEnabled].
     */
    suspend fun autoBackupToDocuments() = kotlinx.coroutines.withContext(Dispatchers.IO) {
        try {
            val docsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)
            val backupDir = File(docsDir, "MrComic").apply { mkdirs() }
            if (!backupDir.exists()) return@withContext  // no external storage

            val date = java.text.SimpleDateFormat("yyyy-MM-dd", Locale.US)
                .format(java.util.Date())
            val backupFile = File(backupDir, "mrcomic_backup_$date.json")

            val comics = comicRepository.getAllComics().first()
            val quotes = quoteRepository.getAllQuotes().first()
            val root = buildBackupJson(comics, quotes)
            backupFile.writeText(root.toString(2), Charsets.UTF_8)
            Log.i("SettingsVM", "Auto-backup written: ${backupFile.absolutePath}")
        } catch (e: Exception) {
            Log.w("SettingsVM", "Auto-backup failed", e)
        }
    }

    fun clearImageCache() {
        if (statusState.value.isClearingCache) return
        statusState.update { it.copy(isClearingCache = true, message = null) }
        scope.launch(Dispatchers.IO) {
            val removedBytes = removeCacheDir("covers") +
                removeCacheDir("cbz_cache") +
                removeCacheDir("rar_cache") +
                removeCacheDir("import_tmp") +
                removeCacheDir("epub_cache")
            val message = if (removedBytes > 0L) {
                settingsCacheClearedMessage(language(), removedBytes)
            } else {
                settingsCacheAlreadyEmptyMessage(language())
            }
            statusState.update { it.copy(isClearingCache = false, message = message) }
        }
    }

    fun consumeCacheMessage() {
        statusState.update { it.copy(message = null) }
    }

    fun consumePendingLibraryRepairLaunch() {
        statusState.update { it.copy(pendingLibraryRepairLaunchToken = 0L) }
    }

    fun exportProgress(uri: Uri) {
        if (statusState.value.isExporting) return
        statusState.update { it.copy(isExporting = true, message = null) }
        scope.launch(Dispatchers.IO) {
            try {
                val comics = comicRepository.getAllComics().first()
                val quotes = quoteRepository.getAllQuotes().first()
                val root = buildBackupJson(comics, quotes)

                context.contentResolver.openOutputStream(uri)?.use { out ->
                    out.write(root.toString(2).toByteArray(Charsets.UTF_8))
                }
                statusState.update {
                    it.copy(
                        isExporting = false,
                        message = settingsExportSuccessMessage(language(), comics.size)
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Export failed", e)
                statusState.update {
                    it.copy(isExporting = false, message = settingsExportFailedMessage(language(), e.localizedMessage))
                }
            }
        }
    }

    fun importProgress(uri: Uri) {
        if (statusState.value.isImporting) return
        statusState.update { it.copy(isImporting = true, message = null) }
        scope.launch(Dispatchers.IO) {
            try {
                val jsonString = uri.readAcceptedSettingsImportText(context)

                val root = JSONObject(jsonString)
                val entries = root.optJSONArray("entries")
                var updated = 0
                var restored = 0
                var skipped = 0
                var unresolvedAccess = 0
                var restoredQuotes = 0
                var updatedQuotes = 0
                val restoredMainPreferences = restorePreferencesFromBackup(root.optJSONObject("preferences"))
                val restoredThemePreferences = restoreThemePreferencesFromBackup(root.optJSONObject("themePreferences"))
                val restoredAppIcon = restoreAppIconFromBackup(root.optJSONObject("appIcon"))
                val restoredSettings = restoredMainPreferences + restoredThemePreferences + restoredAppIcon

                if (entries != null) {
                    for (i in 0 until entries.length()) {
                        val entry = entries.getJSONObject(i)
                        val backupComic = parseComicBackupEntry(entry)
                        if (backupComic == null) {
                            skipped++
                            continue
                        }

                        val result = comicRepository.restoreComicFromBackup(backupComic)
                        if (result != null) {
                            if (result.inserted) {
                                restored++
                            } else {
                                updated++
                            }
                            if (!result.isReadable) {
                                unresolvedAccess++
                            }
                        } else {
                            skipped++
                        }
                    }
                }

                val quotes = root.optJSONArray("quotes")
                if (quotes != null) {
                    for (i in 0 until quotes.length()) {
                        val quoteEntry = quotes.optJSONObject(i) ?: continue
                        val quote = parseQuoteBackupEntry(quoteEntry) ?: continue
                        val result = quoteRepository.restoreQuoteFromBackup(quote)
                        if (result.inserted) restoredQuotes++ else updatedQuotes++
                    }
                }

                val message = settingsImportSummaryMessage(
                    lang = language(),
                    restored = restored,
                    updated = updated,
                    skipped = skipped,
                    restoredSettings = restoredSettings,
                    restoredQuotes = restoredQuotes,
                    updatedQuotes = updatedQuotes,
                    unresolvedAccess = unresolvedAccess
                )
                statusState.update {
                    it.copy(
                        isImporting = false,
                        pendingLibraryRepairLaunchToken = if (unresolvedAccess > 0) System.currentTimeMillis() else 0L,
                        message = message
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Import failed", e)
                statusState.update {
                    it.copy(isImporting = false, message = settingsImportFailureMessage(language(), e))
                }
            }
        }
    }

    fun repairLibraryAccess(treeUri: Uri) {
        if (statusState.value.isRepairingLibraryAccess) return
        statusState.update { it.copy(isRepairingLibraryAccess = true, message = null) }
        scope.launch(Dispatchers.IO) {
            try {
                val result = comicRepository.repairLibraryAccess(treeUri)
                val message = settingsRepairSummaryMessage(language(), result)
                statusState.update {
                    it.copy(
                        isRepairingLibraryAccess = false,
                        message = message
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Repair library access failed", e)
                statusState.update {
                    it.copy(
                        isRepairingLibraryAccess = false,
                        message = settingsRepairFailedMessage(language(), e.localizedMessage)
                    )
                }
            }
        }
    }

    suspend fun parseImportedReaderTypography(json: JSONObject): ImportedReaderTypographyPreset? {
        val hasKnownKeys = listOf(
            "readerPreset", "preset", "basePreset",
            "name", "title", "presetName",
            "fontSize", "textFontSize",
            "textColorScheme", "colorScheme", "scheme",
            "textFontFamily", "fontFamily", "font",
            "textLineHeight", "lineHeight",
            "textLetterSpacing", "letterSpacing",
            "textWordSpacing", "wordSpacing",
            "textParagraphSpacing", "paragraphSpacing",
            "textAlignment", "alignment",
            "textBold", "bold",
            "textCustomTextColor", "customTextColor", "overrideTextColor",
            "textCustomBackgroundColor", "customBackgroundColor", "overrideBackgroundColor",
            "textCustomAccentColor", "customAccentColor", "overrideAccentColor",
            "brightness", "readerBrightness",
            "immersiveMode", "readerImmersiveMode",
            "pageAnimation", "readerPageAnimation"
        ).any(json::has)
        if (!hasKnownKeys) return null

        val presetToken = json.firstString("readerPreset", "preset", "basePreset")
        val basePreset = presetToken?.let { ReadingPreset.fromStored(it) } ?: ReadingPreset.CUSTOM
        val baseStyle = if (basePreset == ReadingPreset.CUSTOM) ReadingPreset.CUSTOM.style() else basePreset.style()
        val currentFontSize = preferences.get(PreferencesKeys.TEXT_FONT_SIZE, 18).first().coerceIn(12, 32)
        val currentColorScheme = preferences.get(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY").first()
        val currentFontFamily = preferences.get(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia").first()
        val currentLineHeight = preferences.get(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f).first().coerceIn(1.0f, 3.0f)
        val currentLetterSpacing = preferences.get(PreferencesKeys.TEXT_LETTER_SPACING, 0f).first().coerceIn(0f, 0.2f)
        val currentWordSpacing = preferences.get(PreferencesKeys.TEXT_WORD_SPACING, 0f).first().coerceIn(0f, 0.6f)
        val currentParagraphSpacing = preferences.get(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f).first().coerceIn(0.1f, 1.2f)
        val currentAlignment = preferences.get(PreferencesKeys.TEXT_ALIGNMENT, "justify").first()
        val currentBold = preferences.get(PreferencesKeys.TEXT_BOLD, false).first()
        val currentBrightness = preferences.get(PreferencesKeys.READING_BRIGHTNESS, -1f).first()
        val currentImmersive = preferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false).first()
        val currentPageAnimation = preferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE").first()

        return ImportedReaderTypographyPreset(
            displayName = json.firstString("displayName", "name", "title", "presetName")
                ?: if (basePreset == ReadingPreset.CUSTOM) "Imported style" else basePreset.name,
            readerPreset = basePreset,
            textFontSize = json.firstInt("fontSize", "textFontSize")
                ?.coerceIn(12, 32)
                ?: currentFontSize,
            textColorScheme = normalizeImportedTextColorScheme(
                json.firstString("textColorScheme", "colorScheme", "scheme")
            ) ?: if (basePreset == ReadingPreset.CUSTOM) currentColorScheme else baseStyle.textColorScheme,
            textFontFamily = json.firstString("textFontFamily", "fontFamily", "font")
                ?: if (basePreset == ReadingPreset.CUSTOM) currentFontFamily else baseStyle.fontFamily,
            textLineHeight = json.firstFloat("textLineHeight", "lineHeight")
                ?.coerceIn(1.0f, 3.0f)
                ?: if (basePreset == ReadingPreset.CUSTOM) currentLineHeight else baseStyle.lineHeight,
            textLetterSpacing = json.firstFloat("textLetterSpacing", "letterSpacing")
                ?.coerceIn(0f, 0.2f)
                ?: if (basePreset == ReadingPreset.CUSTOM) currentLetterSpacing else baseStyle.letterSpacing,
            textWordSpacing = json.firstFloat("textWordSpacing", "wordSpacing")
                ?.coerceIn(0f, 0.6f)
                ?: if (basePreset == ReadingPreset.CUSTOM) currentWordSpacing else baseStyle.wordSpacing,
            textParagraphSpacing = json.firstFloat("textParagraphSpacing", "paragraphSpacing")
                ?.coerceIn(0.1f, 1.2f)
                ?: if (basePreset == ReadingPreset.CUSTOM) currentParagraphSpacing else baseStyle.paragraphSpacing,
            textAlignment = normalizeImportedTextAlignment(json.firstString("textAlignment", "alignment"))
                ?: if (basePreset == ReadingPreset.CUSTOM) currentAlignment else baseStyle.textAlignment,
            textBold = json.firstBoolean("textBold", "bold")
                ?: if (basePreset == ReadingPreset.CUSTOM) currentBold else baseStyle.textBold,
            textCustomTextColor = json.optReaderColorLong(
                "textCustomTextColor",
                "customTextColor",
                "overrideTextColor"
            ),
            textCustomBackgroundColor = json.optReaderColorLong(
                "textCustomBackgroundColor",
                "customBackgroundColor",
                "overrideBackgroundColor"
            ),
            textCustomAccentColor = json.optReaderColorLong(
                "textCustomAccentColor",
                "customAccentColor",
                "overrideAccentColor"
            ),
            brightness = json.firstFloat("brightness", "readerBrightness")
                ?.let { if (it <= 0.01f) -1f else it.coerceIn(0.05f, 1.0f) }
                ?: if (basePreset == ReadingPreset.CUSTOM) currentBrightness else baseStyle.brightness,
            immersiveMode = json.firstBoolean("immersiveMode", "readerImmersiveMode")
                ?: if (basePreset == ReadingPreset.CUSTOM) currentImmersive else baseStyle.immersiveMode,
            pageAnimation = normalizeImportedPageAnimation(json.firstString("pageAnimation", "readerPageAnimation"))
                ?: if (basePreset == ReadingPreset.CUSTOM) currentPageAnimation else baseStyle.pageAnimation
        )
    }

    // ── Backup helpers ────────────────────────────────────────────────────

    suspend fun buildBackupJson(
        comics: List<Comic>,
        quotes: List<SavedQuote>
    ): JSONObject {
        val root = JSONObject()
        root.put("version", 5)
        root.put("exportedAt", System.currentTimeMillis())
        root.put("preferences", exportPreferencesJson())
        root.put("themePreferences", exportThemePreferencesJson())
        root.put("appIcon", exportAppIconJson())

        val entries = JSONArray()
        for (comic in comics) {
            val sourcePath = resolveBackupSourcePath(comic)
            entries.put(JSONObject().apply {
                put("id", comic.id)
                put("path", comic.path)
                put("sourcePath", sourcePath)
                put("title", comic.title)
                put("format", comic.format.name)
                put("treeUri", comic.treeUri)
                put("documentId", comic.documentId)
                put("currentPage", comic.currentPage)
                put("pageCount", comic.pageCount)
                put("fileSize", comic.fileSize)
                put("addedDate", comic.addedDate)
                put("lastModified", comic.lastModified)
                put("folderId", comic.folderId)
                put("readingProgress", comic.displayReadingProgress().toDouble())
                put("lastReadDate", comic.lastReadDate ?: 0L)
                put("isBookmarked", comic.isBookmarked)
                put("tags", comic.tags)
                put("series", comic.series)
                put("volume", comic.volume)
                put("issue", comic.issue)
                put("year", comic.year)
                put("publisher", comic.publisher)
                put("author", comic.author)
                put("artist", comic.artist)
                put("genre", comic.genre)
                put("language", comic.language)
                put("isCompleted", comic.isCompleted)
            })
        }
        root.put("entries", entries)
        val quoteEntries = JSONArray()
        for (quote in quotes) {
            quoteEntries.put(JSONObject().apply {
                put("id", quote.id)
                put("comicId", quote.comicId)
                put("comicTitle", quote.comicTitle)
                put("comicPath", quote.comicPath)
                put("page", quote.page)
                put("text", quote.text)
                put("translatedText", quote.translatedText)
                put("sourceLanguage", quote.sourceLanguage)
                put("targetLanguage", quote.targetLanguage)
                put("createdAt", quote.createdAt)
                put("updatedAt", quote.updatedAt)
                put("contentHash", quote.contentHash)
            })
        }
        root.put("quotes", quoteEntries)
        return root
    }

    private suspend fun exportPreferencesJson(): JSONObject {
        val snapshot = context.dataStore.data.first()
        val preferencesObject = JSONObject()
        snapshot.asMap().forEach { (key, value) ->
            preferencesObject.put(key.name, serializePreferenceValue(value))
        }
        return preferencesObject
    }

    private fun serializePreferenceValue(value: Any): JSONObject = JSONObject().apply {
        when (value) {
            is Boolean -> {
                put("type", "boolean")
                put("value", value)
            }
            is Int -> {
                put("type", "int")
                put("value", value)
            }
            is Long -> {
                put("type", "long")
                put("value", value)
            }
            is Float -> {
                put("type", "float")
                put("value", value.toDouble())
            }
            is Double -> {
                put("type", "double")
                put("value", value)
            }
            is Set<*> -> {
                put("type", "string_set")
                put("value", JSONArray(value.filterIsInstance<String>()))
            }
            else -> {
                put("type", "string")
                put("value", value.toString())
            }
        }
    }

    private fun parseComicBackupEntry(entry: JSONObject): Comic? {
        val path = entry.optString("sourcePath", "")
            .ifBlank { entry.optString("path", "") }
            .trim()
        if (path.isBlank()) return null

        val format = parseBackupComicFormat(entry.optString("format", ""), path)
        val pageCount = entry.optInt("pageCount", 0).coerceAtLeast(0)
        val currentPage = if (pageCount > 0) {
            entry.optInt("currentPage", 0).coerceIn(0, (pageCount - 1).coerceAtLeast(0))
        } else {
            entry.optInt("currentPage", 0).coerceAtLeast(0)
        }
        val storedProgress = entry.optDouble("readingProgress", 0.0).toFloat().coerceIn(0f, 1f)
        val effectiveProgress = when {
            pageCount > 0 -> ((currentPage + 1).toFloat() / pageCount.toFloat()).coerceIn(0f, 1f)
            else -> storedProgress
        }

        return Comic(
            id = entry.optString("id", "").ifBlank { java.util.UUID.randomUUID().toString() },
            title = entry.optString("title", "").ifBlank { deriveBackupTitle(path) },
            path = path,
            format = format,
            coverPath = null,
            treeUri = entry.optString("treeUri", "").ifBlank { null },
            documentId = entry.optString("documentId", "").ifBlank { null },
            pageCount = pageCount,
            fileSize = entry.optLong("fileSize", 0L).coerceAtLeast(0L),
            addedDate = entry.optLong("addedDate", 0L).takeIf { it > 0L } ?: System.currentTimeMillis(),
            lastModified = entry.optLong("lastModified", 0L).takeIf { it > 0L } ?: System.currentTimeMillis(),
            folderId = entry.optString("folderId", "").ifBlank { null },
            lastReadDate = entry.optLong("lastReadDate", 0L).takeIf { it > 0L },
            readingProgress = effectiveProgress,
            currentPage = currentPage,
            isBookmarked = entry.optBoolean("isBookmarked", false),
            tags = entry.optString("tags", ""),
            series = entry.optString("series", "").ifBlank { null },
            volume = entry.optInt("volume").takeIf { entry.has("volume") && !entry.isNull("volume") },
            issue = entry.optInt("issue").takeIf { entry.has("issue") && !entry.isNull("issue") },
            year = entry.optInt("year").takeIf { entry.has("year") && !entry.isNull("year") },
            publisher = entry.optString("publisher", "").ifBlank { null },
            author = entry.optString("author", "").ifBlank { null },
            artist = entry.optString("artist", "").ifBlank { null },
            genre = entry.optString("genre", "").ifBlank { null },
            language = entry.optString("language", "en").ifBlank { "en" },
            isCompleted = entry.optBoolean("isCompleted", false)
        )
    }

    private fun resolveBackupSourcePath(comic: Comic): String {
        val appLibraryDir = File(context.filesDir, "library").absolutePath
        val currentPath = comic.path.trim()
        if (currentPath.isBlank()) return currentPath
        if (!currentPath.startsWith(appLibraryDir, ignoreCase = true)) return currentPath

        val storedSource = comic.treeUri?.trim().orEmpty()
        if (storedSource.startsWith("content://")) {
            return storedSource
        }

        val documentId = comic.documentId?.trim().orEmpty()
        if (documentId.isBlank()) return currentPath

        val persistedMatch = context.contentResolver.persistedUriPermissions
            .asSequence()
            .map { it.uri }
            .firstOrNull { uri ->
                runCatching {
                    when {
                        DocumentsContract.isDocumentUri(context, uri) ->
                            DocumentsContract.getDocumentId(uri) == documentId
                        DocumentsContract.isTreeUri(uri) -> {
                            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(uri, documentId)
                            context.contentResolver.openInputStream(rebuilt)?.use { true } ?: false
                        }
                        else -> false
                    }
                }.getOrDefault(false)
            }

        return when {
            persistedMatch == null -> currentPath
            DocumentsContract.isTreeUri(persistedMatch) ->
                runCatching { DocumentsContract.buildDocumentUriUsingTree(persistedMatch, documentId).toString() }
                    .getOrDefault(currentPath)
            else -> persistedMatch.toString()
        }
    }

    private fun parseBackupComicFormat(raw: String, path: String): ComicFormat {
        val explicit = runCatching { ComicFormat.valueOf(raw.trim()) }.getOrNull()
        if (explicit != null) return explicit
        return when (path.substringAfterLast('.', "").lowercase()) {
            "cbz" -> ComicFormat.CBZ
            "zip" -> ComicFormat.ZIP
            "cbr" -> ComicFormat.CBR
            "rar" -> ComicFormat.RAR
            "cb7", "7z" -> ComicFormat.SEVENZ
            "tar" -> ComicFormat.TAR
            "pdf" -> ComicFormat.PDF
            "epub" -> ComicFormat.EPUB
            "fb2" -> ComicFormat.FB2
            "txt" -> ComicFormat.TXT
            "html", "htm", "xhtml" -> ComicFormat.HTML
            "md", "markdown" -> ComicFormat.MARKDOWN
            "rtf" -> ComicFormat.RTF
            "mobi" -> ComicFormat.MOBI
            "azw3" -> ComicFormat.AZW3
            "docx" -> ComicFormat.DOCX
            "odt" -> ComicFormat.ODT
            "djvu", "djv" -> ComicFormat.DJVU
            else -> ComicFormat.UNKNOWN
        }
    }

    private fun deriveBackupTitle(path: String): String {
        val raw = path.substringAfterLast('/').substringAfterLast('\\')
        val decoded = runCatching { URLDecoder.decode(raw, "UTF-8") }.getOrDefault(raw)
        return decoded.substringBeforeLast('.').ifBlank { settingsUntitledLabel(language()) }
    }

    private fun parseQuoteBackupEntry(entry: JSONObject): SavedQuote? {
        val comicId = entry.optString("comicId").trim()
        val text = entry.optString("text").trim()
        if (comicId.isBlank() || text.isBlank()) return null

        val contentHash = entry.optString("contentHash").ifBlank {
            java.security.MessageDigest.getInstance("SHA-256")
                .digest(text.encodeToByteArray())
                .joinToString("") { "%02x".format(it) }
        }
        val createdAt = entry.optLong("createdAt", System.currentTimeMillis())
        return SavedQuote(
            id = entry.optString("id").ifBlank { java.util.UUID.randomUUID().toString() },
            comicId = comicId,
            comicTitle = entry.optString("comicTitle").ifBlank { settingsUntitledLabel(language()) },
            comicPath = entry.optString("comicPath"),
            page = entry.optInt("page", 0).coerceAtLeast(0),
            text = text,
            translatedText = entry.optString("translatedText").ifBlank { null },
            sourceLanguage = entry.optString("sourceLanguage").ifBlank { null },
            targetLanguage = entry.optString("targetLanguage").ifBlank { null },
            createdAt = createdAt,
            updatedAt = entry.optLong("updatedAt", createdAt),
            contentHash = contentHash
        )
    }

    private suspend fun restorePreferencesFromBackup(preferencesJson: JSONObject?): Int {
        if (preferencesJson == null) return 0
        var restored = 0
        context.dataStore.edit { prefs ->
            preferencesJson.keys().forEach { keyName ->
                val entry = preferencesJson.optJSONObject(keyName) ?: return@forEach
                val type = entry.optString("type")
                when (type) {
                    "boolean" -> {
                        prefs[booleanPreferencesKey(keyName)] = entry.optBoolean("value")
                        restored++
                    }
                    "int" -> {
                        prefs[intPreferencesKey(keyName)] = entry.optInt("value")
                        restored++
                    }
                    "long" -> {
                        prefs[longPreferencesKey(keyName)] = entry.optLong("value")
                        restored++
                    }
                    "float" -> {
                        prefs[floatPreferencesKey(keyName)] = entry.optDouble("value").toFloat()
                        restored++
                    }
                    "double" -> {
                        prefs[doublePreferencesKey(keyName)] = entry.optDouble("value")
                        restored++
                    }
                    "string_set" -> {
                        val values = entry.optJSONArray("value")
                        val restoredSet = buildSet {
                            if (values != null) {
                                for (index in 0 until values.length()) {
                                    add(values.optString(index))
                                }
                            }
                        }
                        prefs[stringSetPreferencesKey(keyName)] = restoredSet
                        restored++
                    }
                    "string" -> {
                        prefs[stringPreferencesKey(keyName)] = entry.optString("value")
                        restored++
                    }
                }
            }
        }
        return restored
    }

    private suspend fun exportThemePreferencesJson(): JSONObject {
        val themeConfig = themePreferencesRepository.themeConfig.first()
        val themePreset = themePreferencesRepository.themePreset.first()
        return JSONObject().apply {
            put("themePreset", themePreset.name)
            put("themeMode", themeConfig.themeMode.name)
            put("useDynamicColor", themeConfig.useDynamicColor)
            put("useAmoledDark", themeConfig.useAmoledDark)
            put("customPrimaryColor", themeConfig.customPrimaryColor?.toString())
            put("customSecondaryColor", themeConfig.customSecondaryColor?.toString())
            put("customBackgroundColor", themeConfig.customBackgroundColor?.toString())
            put("customSurfaceColor", themeConfig.customSurfaceColor?.toString())
            put("surfaceOpacity", themeConfig.surfaceOpacity.toDouble())
        }
    }

    private suspend fun restoreThemePreferencesFromBackup(themeJson: JSONObject?): Int {
        if (themeJson == null) return 0
        var restored = 0
        themeJson.optString("themePreset").takeIf { it.isNotBlank() }?.let { preset ->
            runCatching { ThemePreset.valueOf(preset) }.getOrNull()?.let {
                themePreferencesRepository.setThemePreset(it)
                restored++
            }
        }
        themeJson.optString("themeMode").takeIf { it.isNotBlank() }?.let { mode ->
            runCatching { ThemeMode.valueOf(mode) }.getOrNull()?.let {
                themePreferencesRepository.setThemeMode(it)
                restored++
            }
        }
        if (themeJson.has("useDynamicColor")) {
            themePreferencesRepository.setUseDynamicColor(themeJson.optBoolean("useDynamicColor"))
            restored++
        }
        if (themeJson.has("useAmoledDark")) {
            themePreferencesRepository.setUseAmoledDark(themeJson.optBoolean("useAmoledDark"))
            restored++
        }
        restoreNullableThemeColor(themeJson, "customPrimaryColor", themePreferencesRepository::setCustomPrimaryColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customSecondaryColor", themePreferencesRepository::setCustomSecondaryColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customBackgroundColor", themePreferencesRepository::setCustomBackgroundColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customSurfaceColor", themePreferencesRepository::setCustomSurfaceColor)?.let { restored++ }
        if (themeJson.has("surfaceOpacity")) {
            themePreferencesRepository.setSurfaceOpacity(themeJson.optDouble("surfaceOpacity").toFloat())
            restored++
        }
        return restored
    }

    private suspend fun restoreNullableThemeColor(
        themeJson: JSONObject,
        key: String,
        setter: suspend (Long?) -> Unit
    ): Boolean? {
        if (!themeJson.has(key)) return null
        val rawValue = themeJson.optString(key)
        setter(rawValue.takeIf { it.isNotBlank() && it != "null" }?.toLongOrNull())
        return true
    }

    private suspend fun exportAppIconJson(): JSONObject {
        val iconId = context.appIconDataStore.data
            .map { it[APP_ICON_PREFERENCE_KEY] ?: DEFAULT_APP_ICON_ID }
            .first()
        return JSONObject().apply {
            put("currentIcon", iconId)
        }
    }

    private suspend fun restoreAppIconFromBackup(iconJson: JSONObject?): Int {
        if (iconJson == null) return 0
        val iconId = iconJson.optString("currentIcon")
        if (iconId.isBlank()) return 0
        context.appIconDataStore.edit { prefs ->
            prefs[APP_ICON_PREFERENCE_KEY] = iconId
        }
        return 1
    }

    private fun removeCacheDir(dirName: String): Long {
        val dir = File(context.cacheDir, dirName)
        if (!dir.exists()) return 0L
        val sizeBefore = dir.walkBottomUp()
            .filter { it.isFile }
            .map { it.length() }
            .sum()
        dir.deleteRecursively()
        return sizeBefore
    }
}
