package io.leostrange.mrcomic.core.data.dictionary

import android.content.Context
import android.util.Log
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import java.io.FileOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.util.zip.GZIPInputStream
import javax.inject.Inject
import javax.inject.Singleton

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
     * @return The extracted database file, or null if download failed
     */
    suspend fun ensureDictionary(language: String): File? {
        val config = DictionaryAssetCatalog.configForLanguage(language) ?: return null

        // Check if already extracted
        val extractedFile = File(extractedDir, config.extractedFileName)
        if (extractedFile.exists() && extractedFile.length() > 0L) {
            return extractedFile
        }

        // Try local asset first
        if (hasAsset(config.assetPath)) {
            return DictionaryAssetExtractor.ensureExtractedDatabase(context, config)
        }

        // Download from GitHub Releases
        return downloadAndExtract(config)
    }

    private fun downloadAndExtract(config: DictionaryAssetConfig): File? {
        return try {
            val downloadUrl = buildReleaseUrl(config)
            Log.i(TAG, "Downloading dictionary for ${config.language} from $downloadUrl")

            val compressedFile = File(downloadsDir, "${config.language}.dbpack.gz")
            downloadFile(downloadUrl, compressedFile)

            val extractedFile = File(extractedDir, config.extractedFileName)
            extractGzip(compressedFile, extractedFile)

            // Clean up compressed file
            compressedFile.delete()

            Log.i(TAG, "Successfully downloaded and extracted dictionary for ${config.language}")
            extractedFile
        } catch (e: Exception) {
            Log.e(TAG, "Failed to download dictionary for ${config.language}", e)
            null
        }
    }

    private fun buildReleaseUrl(config: DictionaryAssetConfig): String {
        // Format: https://github.com/Leostrange/Mr.Comic/releases/download/v2.3.0/dictionary_en.dbpack.gz
        return "https://github.com/Leostrange/Mr.Comic/releases/download/$DICTIONARY_RELEASE_TAG/${config.language}.dbpack.gz"
    }

    private fun downloadFile(url: String, targetFile: File) {
        val connection = URL(url).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 30_000
            connection.readTimeout = 60_000

            if (connection.responseCode != HttpURLConnection.HTTP_OK) {
                throw Exception("HTTP ${connection.responseCode}: ${connection.responseMessage}")
            }

            connection.inputStream.use { input ->
                FileOutputStream(targetFile).use { output ->
                    input.copyTo(output)
                }
            }
        } finally {
            connection.disconnect()
        }
    }

    private fun extractGzip(compressedFile: File, targetFile: File) {
        compressedFile.inputStream().use { raw ->
            GZIPInputStream(raw).use { gzip ->
                FileOutputStream(targetFile).use { out ->
                    gzip.copyTo(out)
                }
            }
        }
    }

    private fun hasAsset(assetPath: String): Boolean = runCatching {
        context.assets.open(assetPath).use { }
        true
    }.getOrDefault(false)

    companion object {
        private const val TAG = "DictionaryDownloader"
        private const val DICTIONARY_RELEASE_TAG = "v2.3.0"
    }
}
