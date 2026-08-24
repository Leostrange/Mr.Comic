package io.leostrange.mrcomic.feature.settings.ui

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.ContentResolver
import android.net.Uri
import android.util.Log
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.dictionary.DictionaryInstallInfo
import io.leostrange.mrcomic.core.data.dictionary.DictionaryAssetCatalog
import io.leostrange.mrcomic.core.ui.locale.DictionaryStrings
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.IOException
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

// ─────────────────────────────────────────────────────────────────────────────
// Dictionary management extensions for SettingsViewModel.
// Keeps the ViewModel constructor stable; new methods live here.
// ─────────────────────────────────────────────────────────────────────────────

/** Language code → display name (no Android resources needed). */
internal fun SettingsViewModel.dictDisplayName(lang: String): String {
    val code = uiState.value.appLanguage
    val s = DictionaryStrings.forLanguage(code)
    return when (lang) {
        "en" -> s.dictLangEnglish
        "fr" -> s.dictLangFrench
        "it" -> s.dictLangItalian
        "ja" -> s.dictLangJapanese
        "ko" -> s.dictLangKorean
        "pl" -> s.dictLangPolish
        "pt" -> s.dictLangPortuguese
        "ru" -> s.dictLangRussian
        "tr" -> s.dictLangTurkish
        "zh" -> s.dictLangChinese
        else -> lang.uppercase()
    }
}

// ─── State flows ─────────────────────────────────────────────────────────────

/** List of all shipped dictionaries with install status. Refreshed on init + after operations. */
val SettingsViewModel.dictionaryItems: StateFlow<List<DictionaryInstallInfo>>
    get() = _dictionaryItems

/** The single active dictionary operation (or Idle). */
val SettingsViewModel.dictionaryOperationState: StateFlow<DictionaryOperationState>
    get() = _dictionaryOperationState

/** Pending download language awaiting user confirmation (null = no pending). */
val SettingsViewModel.pendingDownloadLanguage: StateFlow<String?>
    get() = _pendingDownloadLanguage

// ─── Init hook (call from SettingsViewModel.init) ─────────────────────────────

fun SettingsViewModel.initDictionaryState() {
    refreshDictionaryItems()
}

private fun SettingsViewModel.refreshDictionaryItems() {
    viewModelScope.launch {
        val items = dictionaryDownloader.installedDictionaries()
        _dictionaryItems.value = items
        // Also sync the legacy downloadState so the rest of the codebase stays happy
        val downloaded = items.filter { it.sizeBytes > 0L }.map { it.language }.toSet()
        _dictionaryDownloadState.update { it.copy(downloadedLanguages = downloaded) }
    }
}

// ─── Confirm-download flow ────────────────────────────────────────────────────

fun SettingsViewModel.requestDownload(lang: String) {
    _pendingDownloadLanguage.value = lang
}

fun SettingsViewModel.confirmPendingDownload() {
    val lang = _pendingDownloadLanguage.value ?: return
    _pendingDownloadLanguage.value = null
    downloadDictionary(lang)
}

fun SettingsViewModel.cancelPendingDownload() {
    _pendingDownloadLanguage.value = null
}

fun SettingsViewModel.cancelPendingImport() {
    _needsImportLanguageSelection.value = false
    _pendingImportFile.value?.delete()
    _pendingImportFile.value = null
    _dictionaryOperationState.value = DictionaryOperationState.Idle
}

// ─── Single dictionary download ───────────────────────────────────────────────

// Per-language download progress (0f–1f). null = no active download.
val SettingsViewModel.dictionaryDownloadProgress: StateFlow<Float?>
    get() = _dictionaryDownloadProgress

fun SettingsViewModel.downloadDictionary(lang: String) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Downloading(lang, 0)
        _dictionaryDownloadProgress.value = 0f
        _dictionaryDownloadState.update { it.copy(isDownloading = true, currentLanguage = lang) }
        val notifId = ensureDictNotificationChannelAndShowStart(context, lang)
        try {
            val result = withContext(Dispatchers.IO) {
                dictionaryDownloader.ensureDictionary(lang) { progress ->
                    _dictionaryOperationState.value = DictionaryOperationState.Downloading(lang, progress)
                    _dictionaryDownloadProgress.value = progress / 100f
                    updateDictNotification(context, notifId, lang, progress)
                    @Suppress("InjectDispatcher") // collection on main-safe StateFlow
                    _dictionaryDownloadState.update { state ->
                        state.copy(progress = state.progress + (lang to progress))
                    }
                }
            }
            if (result != null) {
                _dictionaryDownloadState.update { state ->
                    state.copy(
                        downloadedLanguages = state.downloadedLanguages + lang,
                        progress = state.progress + (lang to 100)
                    )
                }
            }
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary download failed for $lang", error)
            statusState.update { it.copy(message = formatDictionaryOpError()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
            _dictionaryDownloadProgress.value = null
            dismissDictNotification(context, notifId, lang)
            _dictionaryDownloadState.update { it.copy(isDownloading = false, currentLanguage = null) }
            refreshDictionaryItems()
        }
    }
}

// ─── Delete ───────────────────────────────────────────────────────────────────

fun SettingsViewModel.deleteDictionary(lang: String) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Deleting(lang)
        try {
            withContext(Dispatchers.IO) { dictionaryDownloader.deleteDictionary(lang) }
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary deletion failed for $lang", error)
            statusState.update { it.copy(message = formatDictionaryOpError()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
            refreshDictionaryItems()
        }
    }
}

// ─── Export single dictionary ─────────────────────────────────────────────────

fun SettingsViewModel.exportDictionary(lang: String, uri: Uri, contentResolver: ContentResolver) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Exporting(lang)
        try {
            val success = withContext(Dispatchers.IO) {
                contentResolver.openOutputStream(uri)?.use { output ->
                    dictionaryDownloader.exportDictionary(lang, output)
                } ?: false
            }
            statusState.update {
                it.copy(message = if (success) formatDictionaryExportSuccess() else formatDictionaryOpError())
            }
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary export failed for $lang", error)
            statusState.update { it.copy(message = formatDictionaryOpError()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
        }
    }
}

// ─── Import single dictionary ─────────────────────────────────────────────────

fun SettingsViewModel.importDictionary(lang: String, uri: Uri, contentResolver: ContentResolver) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Importing(lang)
        try {
            val result = withContext(Dispatchers.IO) {
                contentResolver.openInputStream(uri)?.use { input ->
                    dictionaryDownloader.importDictionary(lang, input)
                }
            }
            statusState.update {
                it.copy(message = if (result != null) formatDictionaryImportSuccess() else formatDictionaryImportInvalid())
            }
            if (result != null) refreshDictionaryItems()
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary import failed for $lang", error)
            statusState.update { it.copy(message = formatDictionaryImportInvalid()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
        }
    }
}

// ─── Export all (zip) ─────────────────────────────────────────────────────────

fun SettingsViewModel.exportAllDictionaries(uri: Uri, contentResolver: ContentResolver) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Exporting("__all__")
        try {
            val success = withContext(Dispatchers.IO) {
                val installed = dictionaryDownloader.installedDictionaries()
                    .filter { it.sizeBytes > 0L }
                if (installed.isEmpty()) return@withContext false
                contentResolver.openOutputStream(uri)?.use { output ->
                    ZipOutputStream(output).use { zos ->
                        for (info in installed) {
                            val entryName = "dictionary_${info.language}.dbpack"
                            zos.putNextEntry(ZipEntry(entryName))
                            if (!dictionaryDownloader.exportDictionary(info.language, zos)) {
                                throw IOException("Could not export dictionary ${info.language}")
                            }
                            zos.closeEntry()
                        }
                    }
                    true
                } ?: false
            }
            statusState.update {
                it.copy(message = if (success) formatDictionaryExportSuccess() else formatDictionaryOpError())
            }
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary archive export failed", error)
            statusState.update { it.copy(message = formatDictionaryOpError()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
        }
    }
}

// ─── Import from zip or single file ───────────────────────────────────────────

fun SettingsViewModel.importDictionaryFromUri(uri: Uri, contentResolver: ContentResolver) {
    if (_dictionaryOperationState.value !is DictionaryOperationState.Idle) return
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Importing("__auto__")
        try {
            val importFile = withContext(Dispatchers.IO) {
                val target = File.createTempFile("dictionary_import_", ".tmp", context.cacheDir)
                val copied = try {
                    contentResolver.openInputStream(uri)?.use { input ->
                        target.outputStream().use { output -> input.copyTo(output) }
                        true
                    } ?: false
                } catch (error: Exception) {
                    target.delete()
                    throw error
                }
                if (copied && target.length() > 0L) {
                    target
                } else {
                    target.delete()
                    null
                }
            }
            when (detectDictionaryImportKind(importFile)) {
                DictionaryImportKind.ZIP -> {
                    val zipFile = requireNotNull(importFile)
                    val imported = try {
                        withContext(Dispatchers.IO) { importFromZip(zipFile) }
                    } finally {
                        zipFile.delete()
                    }
                    statusState.update {
                        it.copy(message = if (imported) formatDictionaryImportSuccess() else formatDictionaryImportInvalid())
                    }
                    if (imported) refreshDictionaryItems()
                    _dictionaryOperationState.value = DictionaryOperationState.Idle
                }
                DictionaryImportKind.SINGLE -> {
                    // Keep a disk-backed copy while the user chooses the language;
                    // dictionary modules are too large to retain safely in RAM.
                    _pendingImportFile.value = requireNotNull(importFile)
                    _needsImportLanguageSelection.value = true
                    _dictionaryOperationState.value = DictionaryOperationState.Idle
                }
                DictionaryImportKind.INVALID -> {
                    importFile?.delete()
                    statusState.update { it.copy(message = formatDictionaryImportInvalid()) }
                    _dictionaryOperationState.value = DictionaryOperationState.Idle
                }
            }
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Dictionary import detection failed", error)
            statusState.update { it.copy(message = formatDictionaryImportInvalid()) }
        } finally {
            _dictionaryOperationState.value = DictionaryOperationState.Idle
        }
    }
}

/** Called after the user picks a language for the pending single-file import. */
fun SettingsViewModel.completePendingImport(lang: String) {
    val importFile = _pendingImportFile.value ?: return
    _needsImportLanguageSelection.value = false
    _pendingImportFile.value = null
    viewModelScope.launch {
        _dictionaryOperationState.value = DictionaryOperationState.Importing(lang)
        try {
            val result = withContext(Dispatchers.IO) {
                importFile.inputStream().use { input ->
                    dictionaryDownloader.importDictionary(lang, input)
                }
            }
            statusState.update {
                it.copy(message = if (result != null) formatDictionaryImportSuccess() else formatDictionaryImportInvalid())
            }
            if (result != null) refreshDictionaryItems()
        } catch (error: Exception) {
            Log.e(DICTIONARY_LOG_TAG, "Pending dictionary import failed for $lang", error)
            statusState.update { it.copy(message = formatDictionaryImportInvalid()) }
        } finally {
            importFile.delete()
            _dictionaryOperationState.value = DictionaryOperationState.Idle
        }
    }
}

val SettingsViewModel.needsImportLanguageSelection: StateFlow<Boolean>
    get() = _needsImportLanguageSelection

private fun SettingsViewModel.importFromZip(file: File): Boolean {
    var anyImported = false
    ZipInputStream(file.inputStream().buffered()).use { zis ->
        var entry = zis.nextEntry
        while (entry != null) {
            val name = entry.name
            // Expect entries named dictionary_<lang>.dbpack or <lang>.dbpack
            val lang = when {
                name.startsWith("dictionary_") -> name.removePrefix("dictionary_").removeSuffix(".dbpack")
                name.endsWith(".dbpack") -> name.removeSuffix(".dbpack")
                else -> null
            }
            if (lang != null && DictionaryAssetCatalog.configForLanguage(lang) != null) {
                val result = dictionaryDownloader.importDictionary(lang, zis)
                if (result != null) anyImported = true
            }
            entry = zis.nextEntry
        }
    }
    return anyImported
}

internal enum class DictionaryImportKind {
    ZIP,
    SINGLE,
    INVALID
}

internal fun detectDictionaryImportKind(bytes: ByteArray?): DictionaryImportKind {
    if (bytes == null || bytes.isEmpty()) return DictionaryImportKind.INVALID
    val isZip = bytes.size >= 2 &&
        bytes[0] == 0x50.toByte() &&
        bytes[1] == 0x4B.toByte()
    return if (isZip) DictionaryImportKind.ZIP else DictionaryImportKind.SINGLE
}

private fun detectDictionaryImportKind(file: File?): DictionaryImportKind {
    if (file == null || !file.isFile || file.length() == 0L) return DictionaryImportKind.INVALID
    val header = file.inputStream().use { input ->
        byteArrayOf(input.read().toByte(), input.read().toByte())
    }
    return if (header[0] == 0x50.toByte() && header[1] == 0x4B.toByte()) {
        DictionaryImportKind.ZIP
    } else {
        DictionaryImportKind.SINGLE
    }
}

// ─── Download notification helpers ────────────────────────────────────────────

private const val DICT_NOTIFICATION_CHANNEL_ID = "downloads"
private const val DICTIONARY_LOG_TAG = "SettingsDictionary"
private const val DICT_NOTIFICATION_BASE_ID = 0xD1C7 // 53703 — distinctive base
private var nextDictNotifSlot = 0

/** Ensure channel exists (idempotent) and show an indeterminate start notification.
 *  Returns the notificationId to use for updates and dismissal, or -1 on failure/missing permission. */
private fun SettingsViewModel.ensureDictNotificationChannelAndShowStart(
    ctx: android.content.Context,
    lang: String
): Int {
    val nm = ctx.getSystemService(NotificationManager::class.java) ?: return -1
    // Create channel (no-op if already exists)
    val channel = NotificationChannel(
        DICT_NOTIFICATION_CHANNEL_ID,
        "Downloads",
        NotificationManager.IMPORTANCE_LOW
    ).apply { setShowBadge(false) }
    nm.createNotificationChannel(channel)
    // On API 33+ POST_NOTIFICATIONS is required; skip gracefully if not granted.
    // Permission request is a user flow that callers own; we just bail here.
    val notifId = DICT_NOTIFICATION_BASE_ID + (nextDictNotifSlot++ and 0xFF)
    val langUpper = lang.uppercase()
    val n = Notification.Builder(ctx, DICT_NOTIFICATION_CHANNEL_ID)
        .setSmallIcon(android.R.drawable.stat_sys_download)
        .setContentTitle("Downloading dictionary…")
        .setContentText(langUpper)
        .setProgress(100, 0, true)
        .setOngoing(true)
        .setOnlyAlertOnce(true)
        .build()
    try {
        nm.notify(notifId, n)
    } catch (_: SecurityException) {
        // Missing POST_NOTIFICATIONS permission on API 33+
        return -1
    }
    return notifId
}

/** Update the progress notification (0–100). No-op if notifId < 0. */
private fun SettingsViewModel.updateDictNotification(
    ctx: android.content.Context,
    notifId: Int,
    lang: String,
    progress: Int
) {
    if (notifId < 0) return
    val nm = ctx.getSystemService(NotificationManager::class.java) ?: return
    val langUpper = lang.uppercase()
    val n = Notification.Builder(ctx, DICT_NOTIFICATION_CHANNEL_ID)
        .setSmallIcon(android.R.drawable.stat_sys_download)
        .setContentTitle("Downloading dictionary…")
        .setContentText("$langUpper — ${progress}%")
        .setProgress(100, progress, false)
        .setOngoing(true)
        .setOnlyAlertOnce(true)
        .build()
    try {
        nm.notify(notifId, n)
    } catch (_: SecurityException) { /* no-op */ }
}

/** Remove the notification (success or failure). No-op if notifId < 0. */
private fun SettingsViewModel.dismissDictNotification(
    ctx: android.content.Context,
    notifId: Int,
    @Suppress("UNUSED_PARAMETER") lang: String
) {
    if (notifId < 0) return
    val nm = ctx.getSystemService(NotificationManager::class.java) ?: return
    nm.cancel(notifId)
}

// ─── i18n message formatters (private, 5 languages) ──────────────────────────

private fun SettingsViewModel.formatDictionaryExportSuccess(): String = when (uiState.value.appLanguage) {
    "en" -> "Export completed"
    "ja" -> "エクスポートが完了しました"
    "zh" -> "导出完成"
    "ko" -> "내보내기 완료"
    else -> "Экспорт завершён"
}

private fun SettingsViewModel.formatDictionaryImportSuccess(): String = when (uiState.value.appLanguage) {
    "en" -> "Dictionary imported successfully"
    "ja" -> "辞書のインポートが完了しました"
    "zh" -> "词典导入成功"
    "ko" -> "사전 가져오기 완료"
    else -> "Словарь успешно импортирован"
}

private fun SettingsViewModel.formatDictionaryImportInvalid(): String = when (uiState.value.appLanguage) {
    "en" -> "Invalid dictionary file"
    "ja" -> "無効な辞書ファイルです"
    "zh" -> "无效的词典文件"
    "ko" -> "유효하지 않은 사전 파일"
    else -> "Недопустимый файл словаря"
}

private fun SettingsViewModel.formatDictionaryOpError(): String = when (uiState.value.appLanguage) {
    "en" -> "Error"
    "ja" -> "エラー"
    "zh" -> "错误"
    "ko" -> "오류"
    else -> "Ошибка"
}
