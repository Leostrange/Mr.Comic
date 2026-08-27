package io.leostrange.mrcomic.core.data.dictionary

import android.content.Context
import android.util.Log
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream
import java.io.OutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.util.zip.GZIPInputStream
import java.util.zip.GZIPOutputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Where a particular dictionary currently lives on disk.
 *
 * - [BUNDLED] — the extracted file came from the app's `assets/` folder and has
 *   not been replaced by the user. Treated as immutable: no delete, no
 *   re-import by the user.
 * - [DOWNLOADED] — the extracted file was fetched from the GitHub release
 *   assets via [DictionaryDownloader.ensureDictionary]. Removable.
 * - [IMPORTED] — the extracted file was supplied by the user through the
 *   SAF picker. Removable.
 * - [NOT_INSTALLED] — no extracted file present yet. The user can download
 *   or import one.
 */
enum class DictionaryProvenance {
    BUNDLED,
    DOWNLOADED,
    IMPORTED,
    NOT_INSTALLED;

    val isUserOwned: Boolean
        get() = this == DOWNLOADED || this == IMPORTED

    val isInstalled: Boolean
        get() = this != NOT_INSTALLED
}

/**
 * Information about an installed dictionary.
 *
 * [provenance] tracks where the on-disk file came from so the UI can show the
 * correct status (bundled / downloaded / imported) and enable the right
 * actions (delete, import). [isBundled] is kept for backward compatibility
 * with code that still needs the legacy "shipped in assets" flag.
 */
data class DictionaryInstallInfo(
    val language: String,
    val isBundled: Boolean,
    val provenance: DictionaryProvenance,
    val downloadedFile: File?,
    val sizeBytes: Long,
    val sourceName: String = when (provenance) {
        DictionaryProvenance.BUNDLED -> "Asset"
        DictionaryProvenance.DOWNLOADED -> "Download"
        DictionaryProvenance.IMPORTED -> "Import"
        DictionaryProvenance.NOT_INSTALLED -> "Catalog"
    }
)

/**
 * Downloads dictionary databases from GitHub Releases on first use.
 *
 * When a dictionary is not available in assets (e.g., after removing
 * .dbpack files from the repository), this class downloads it from
 * the release assets and extracts it for use.
 */
@Singleton
class DictionaryDownloader @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private val downloadsDir = File(context.filesDir, "dictionary_downloads").apply { mkdirs() }
    private val extractedDir = File(context.filesDir, "dictionary_assets").apply { mkdirs() }

    /**
     * Ensures the dictionary for the given language is available.
     * First checks local assets, then downloads if not found.
     *
     * @param language Dictionary language code
     * @param onProgress Callback for download progress (0-100)
     * @return The extracted database file, or null if download failed
     */
    suspend fun ensureDictionary(
        language: String,
        onProgress: ((progress: Int) -> Unit)? = null
    ): File? {
        val config = DictionaryAssetCatalog.configForLanguage(language) ?: return null

        // Check if already extracted
        val extractedFile = File(extractedDir, config.extractedFileName)
        if (extractedFile.exists() && extractedFile.length() > 0L) {
            onProgress?.invoke(100)
            return extractedFile
        }

        // Try local asset first
        if (hasAsset(config.assetPath)) {
            onProgress?.invoke(100)
            return DictionaryAssetExtractor.ensureExtractedDatabase(context, config)
        }

        // Download from GitHub Releases
        return downloadAndExtract(config, onProgress)
    }

    private fun downloadAndExtract(
        config: DictionaryAssetConfig,
        onProgress: ((progress: Int) -> Unit)?
    ): File? {
        return try {
            val downloadUrl = buildReleaseUrl(config)
            Log.i(TAG, "Downloading dictionary for ${config.language} from $downloadUrl")

            val downloadedFile = File(downloadsDir, "${config.language}.dbpack")
            downloadFile(downloadUrl, downloadedFile, onProgress)

            onProgress?.invoke(95)
            val extractedFile = File(extractedDir, config.extractedFileName)
            extractDatabase(downloadedFile, extractedFile)

            // Clean up downloaded file
            downloadedFile.delete()

            // Mark the file as user-downloaded so the UI can offer delete
            // and surface the right status.
            writeProvenance(config.language, DictionaryProvenance.DOWNLOADED)

            onProgress?.invoke(100)
            Log.i(TAG, "Successfully downloaded and extracted dictionary for ${config.language}")
            extractedFile
        } catch (e: Exception) {
            Log.e(TAG, "Failed to download dictionary for ${config.language}", e)
            null
        }
    }

    private fun buildReleaseUrl(config: DictionaryAssetConfig): String {
        // Release v2.3.0 assets are published as `dictionary_<lang>.dbpack` (plain).
        // Keep the gzip auto-detection in extractDatabase so future .gz uploads
        // continue to work without a code change.
        return "https://github.com/Leostrange/Mr.Comic/releases/download/$DICTIONARY_RELEASE_TAG/dictionary_${config.language}.dbpack"
    }

    private fun downloadFile(
        url: String,
        targetFile: File,
        onProgress: ((progress: Int) -> Unit)?
    ) {
        val connection = URL(url).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 30_000
            connection.readTimeout = 60_000

            if (connection.responseCode != HttpURLConnection.HTTP_OK) {
                throw Exception("HTTP ${connection.responseCode}: ${connection.responseMessage}")
            }

            val contentLength = connection.contentLength.toLong()
            var bytesDownloaded = 0L

            connection.inputStream.use { input ->
                FileOutputStream(targetFile).use { output ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    var bytesRead: Int
                    while (input.read(buffer).also { bytesRead = it } != -1) {
                        output.write(buffer, 0, bytesRead)
                        bytesDownloaded += bytesRead
                        if (contentLength > 0) {
                            val progress = (bytesDownloaded * 85 / contentLength).toInt() // 0-85%
                            onProgress?.invoke(progress.coerceAtMost(85))
                        }
                    }
                }
            }
        } finally {
            connection.disconnect()
        }
    }

    /**
     * Extracts the downloaded database into [targetFile].
     * Detects gzip by magic bytes (1F 8B) so both plain .dbpack and
     * gzipped uploads are supported transparently.
     */
    private fun extractDatabase(downloadedFile: File, targetFile: File) {
        val gzipped = downloadedFile.inputStream().use { isGzip(it) }
        downloadedFile.inputStream().use { raw ->
            if (gzipped) {
                GZIPInputStream(raw).use { gzip -> FileOutputStream(targetFile).use { out -> gzip.copyTo(out) } }
            } else {
                FileOutputStream(targetFile).use { out -> raw.copyTo(out) }
            }
        }
    }

    private fun hasAsset(assetPath: String): Boolean = runCatching {
        context.assets.open(assetPath).use { }
        true
    }.getOrDefault(false)

    // ─────────────────────────────────────────────────────────────────────────
    // Public API: dictionary management
    // ─────────────────────────────────────────────────────────────────────────

    /**
     * Returns info about every shipped dictionary — whether it is bundled,
     * downloaded, imported, and the size of the on-disk file (or zero for
     * not-yet-fetched).
     *
     * Provenance resolution:
     * 1. If a `.provenance` sidecar exists next to the extracted file, that
     *    value wins (DOWNLOADED or IMPORTED).
     * 2. Otherwise, if the extracted file is present and the same language
     *    ships in assets, the file came from a prior asset extraction
     *    (BUNDLED). The user could still overwrite it via download/import,
     *    which would replace both the extracted file and the sidecar.
     * 3. Otherwise the dictionary is not yet installed.
     */
    fun installedDictionaries(): List<DictionaryInstallInfo> {
        return DictionaryAssetCatalog.shippedLanguages().map { lang ->
            val config = DictionaryAssetCatalog.configForLanguage(lang)!!
            val extractedFile = File(extractedDir, config.extractedFileName)
            val isExtracted = extractedFile.exists() && extractedFile.length() > 0L
            val hasBundled = hasAsset(config.assetPath)
            val downloadedFile = File(downloadsDir, "$lang.dbpack")
            val downloadedExists = downloadedFile.exists() && downloadedFile.length() > 0L
            val sizeBytes = when {
                isExtracted -> extractedFile.length()
                downloadedExists -> downloadedFile.length()
                else -> 0L
            }
            val provenance = readProvenance(lang, isExtracted, hasBundled)
            DictionaryInstallInfo(
                language = lang,
                isBundled = hasBundled,
                provenance = provenance,
                downloadedFile = if (downloadedExists) downloadedFile else null,
                sizeBytes = sizeBytes,
            )
        }
    }

    private fun readProvenance(
        language: String,
        isExtracted: Boolean,
        hasBundled: Boolean,
    ): DictionaryProvenance {
        if (!isExtracted) return DictionaryProvenance.NOT_INSTALLED
        val sidecar = File(extractedDir, "$language.provenance")
        if (sidecar.exists()) {
            val raw = runCatching { sidecar.readText().trim() }.getOrDefault("")
            when (raw.uppercase()) {
                "DOWNLOADED", "DOWNLOAD" -> return DictionaryProvenance.DOWNLOADED
                "IMPORTED", "IMPORT" -> return DictionaryProvenance.IMPORTED
                "BUNDLED", "ASSET" -> return DictionaryProvenance.BUNDLED
            }
        }
        // No sidecar → assume the file came from the bundled assets
        // (this is the initial state of a fresh install).
        return if (hasBundled) DictionaryProvenance.BUNDLED
        else DictionaryProvenance.DOWNLOADED
    }

    private fun writeProvenance(language: String, provenance: DictionaryProvenance) {
        val sidecar = File(extractedDir, "$language.provenance")
        runCatching {
            sidecar.parentFile?.mkdirs()
            sidecar.writeText(provenance.name)
        }
    }

    /**
     * Deletes the extracted database and any downloaded .dbpack for the given language.
     * The provenance sidecar is cleared so a future re-extract from the bundled
     * asset is correctly classified as BUNDLED again.
     * Note: does NOT check if a download is currently in progress — callers should
     * guard via [DictionaryOperationState] before calling.
     *
     * @return true if at least one file was deleted
     */
    fun deleteDictionary(language: String): Boolean {
        val config = DictionaryAssetCatalog.configForLanguage(language) ?: return false
        val extractedFile = File(extractedDir, config.extractedFileName)
        val downloadedFile = File(downloadsDir, "$language.dbpack")
        val sidecarFile = File(extractedDir, "$language.provenance")
        var deleted = false
        if (extractedFile.exists()) { extractedFile.delete(); deleted = true }
        if (downloadedFile.exists()) { downloadedFile.delete(); deleted = true }
        if (sidecarFile.exists()) { sidecarFile.delete(); deleted = true }
        return deleted
    }

    /**
     * Exports the extracted database for [language] as gzip into [target].
     * The caller is responsible for closing the stream.
     *
     * @return true if the export succeeded
     */
    fun exportDictionary(language: String, target: OutputStream): Boolean {
        val config = DictionaryAssetCatalog.configForLanguage(language) ?: return false
        val extractedFile = File(extractedDir, config.extractedFileName)
        if (!extractedFile.exists() || extractedFile.length() == 0L) return false
        return try {
            extractedFile.inputStream().use { input ->
                GZIPOutputStream(target).use { gzip ->
                    input.copyTo(gzip)
                }
            }
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to export dictionary for $language", e)
            false
        }
    }

    /**
     * Imports a dictionary from [source] for the given [language].
     * The source may be gzip-compressed (auto-detected via magic bytes) or plain SQLite.
     * The extracted file is validated to be a SQLite database (header starts with "SQLite format 3").
     *
     * @return The extracted File on success, or null if the source is invalid / not SQLite.
     */
    fun importDictionary(language: String, source: InputStream): File? {
        val config = DictionaryAssetCatalog.configForLanguage(language) ?: return null
        val tempFile = File(downloadsDir, "${language}_import_tmp.dbpack")
        val extractedFile = File(extractedDir, config.extractedFileName)
        val stagedExtractedFile = File(extractedDir, "${language}_import_tmp.db")
        val backupFile = File(extractedDir, "${language}_import_backup.db")
        return try {
            // Write source to temp file
            tempFile.outputStream().use { out -> source.copyTo(out) }
            if (tempFile.length() == 0L) {
                tempFile.delete()
                return null
            }

            // Detect gzip and decompress
            val isGz = tempFile.inputStream().use { isGzip(it) }
            extractedFile.parentFile?.mkdirs()
            stagedExtractedFile.delete()
            backupFile.delete()

            tempFile.inputStream().use { raw ->
                if (isGz) {
                    GZIPInputStream(raw).use { gzip ->
                        FileOutputStream(stagedExtractedFile).use { out -> gzip.copyTo(out) }
                    }
                } else {
                    FileOutputStream(stagedExtractedFile).use { out -> raw.copyTo(out) }
                }
            }

            // Validate SQLite header
            if (!isValidSqlite(stagedExtractedFile)) {
                stagedExtractedFile.delete()
                tempFile.delete()
                Log.w(TAG, "Imported file for $language is not a valid SQLite database")
                return null
            }

            // Keep the old database recoverable until the staged replacement
            // has been installed successfully.
            if (extractedFile.exists() && !extractedFile.renameTo(backupFile)) {
                throw IllegalStateException("Could not stage existing dictionary")
            }
            if (!stagedExtractedFile.renameTo(extractedFile)) {
                if (backupFile.exists()) backupFile.renameTo(extractedFile)
                throw IllegalStateException("Could not install imported dictionary")
            }
            backupFile.delete()

            // Mark the file as user-imported so the UI can offer delete
            // and surface the right status (even if a bundled asset also
            // exists for the same language).
            writeProvenance(language, DictionaryProvenance.IMPORTED)

            tempFile.delete()
            Log.i(TAG, "Successfully imported dictionary for $language")
            extractedFile
        } catch (e: Exception) {
            Log.e(TAG, "Failed to import dictionary for $language", e)
            tempFile.delete()
            stagedExtractedFile.delete()
            if (!extractedFile.exists() && backupFile.exists()) {
                backupFile.renameTo(extractedFile)
            }
            backupFile.delete()
            null
        }
    }

    /**
     * Sum of all extracted dictionary file sizes in bytes.
     */
    fun dictionariesTotalSizeBytes(): Long {
        var total = 0L
        for (lang in DictionaryAssetCatalog.shippedLanguages()) {
            val config = DictionaryAssetCatalog.configForLanguage(lang) ?: continue
            val extractedFile = File(extractedDir, config.extractedFileName)
            if (extractedFile.exists()) total += extractedFile.length()
        }
        return total
    }

    companion object {
        private const val TAG = "DictionaryDownloader"
        private const val DICTIONARY_RELEASE_TAG = "v2.3.0"

        /**
         * Detects gzip magic bytes (0x1F, 0x8B) on a stream.
         * Uses a BufferedInputStream so the peeked bytes are not lost.
         * The stream is NOT closed — the caller owns it.
         */
        internal fun isGzip(stream: InputStream): Boolean {
            val buffered = if (stream is java.io.BufferedInputStream) stream else java.io.BufferedInputStream(stream)
            buffered.mark(2)
            val b1 = buffered.read()
            val b2 = buffered.read()
            buffered.reset()
            return b1 == 0x1F && b2 == 0x8B
        }

        /**
         * Validates that the file starts with the SQLite header "SQLite format 3\000".
         * The magic string is exactly 16 bytes including the trailing NUL.
         */
        internal fun isValidSqlite(file: File): Boolean {
            return try {
                val expected = byteArrayOf(
                    0x53, 0x51, 0x4C, 0x69, 0x74, 0x65, 0x20, 0x66, // "SQLite f"
                    0x6F, 0x72, 0x6D, 0x61, 0x74, 0x20, 0x33, 0x00, // "ormat 3\0"
                )
                file.inputStream().use { input ->
                    val header = ByteArray(16)
                    val read = input.read(header)
                    if (read < 16) return false
                    header.contentEquals(expected)
                }
            } catch (_: Exception) {
                false
            }
        }
    }
}
