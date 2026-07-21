package io.leostrange.mrcomic.core.data.dictionary

import android.content.Context
import java.io.File
import java.util.zip.GZIPInputStream

internal object DictionaryAssetExtractor {
    fun ensureExtractedDatabase(
        context: Context,
        config: DictionaryAssetConfig,
    ): File {
        val targetDir = File(context.filesDir, "dictionary_assets").apply { mkdirs() }
        val targetFile = File(targetDir, config.extractedFileName)
        if (targetFile.exists() && targetFile.length() > 0L) {
            return targetFile
        }

        targetFile.parentFile?.mkdirs()
        val tempFile = File(targetFile.parentFile, "${targetFile.name}.tmp")
        if (tempFile.exists()) tempFile.delete()

        context.assets.open(config.assetPath).use { raw ->
            GZIPInputStream(raw).use { gzip ->
                tempFile.outputStream().use { out ->
                    gzip.copyTo(out)
                }
            }
        }

        if (targetFile.exists()) targetFile.delete()
        if (!tempFile.renameTo(targetFile)) {
            tempFile.copyTo(targetFile, overwrite = true)
            tempFile.delete()
        }
        return targetFile
    }
}
