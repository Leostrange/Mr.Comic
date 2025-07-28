package com.example.mrcomic.data

import android.content.Context
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.File
import java.io.FileOutputStream
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.BufferedReader
import java.io.InputStreamReader

object CbrTextExtractor {

    suspend fun extractTextFromCbr(context: Context, file: File): List<String> = withContext(Dispatchers.IO) {
        val texts = mutableListOf<String>()
        val tempDir = File(context.cacheDir, file.nameWithoutExtension + "_cbr_text_cache")
        if (!tempDir.exists()) {
            tempDir.mkdirs()
        }

        try {
            val archive = Archive(file.absolutePath)
            for (header in archive.fileHeaders) {
                // Only extract text files (e.g., .txt, .xml, .html) if they exist within the CBR
                // For image-based comics, this will be empty unless text is embedded.
                if (header.fileName.endsWith(".txt", true) || header.fileName.endsWith(".xml", true) || header.fileName.endsWith(".html", true)) {
                    val outputFile = File(tempDir, header.fileName.replace("\\", "/"))
                    if (!outputFile.parentFile.exists()) {
                        outputFile.parentFile.mkdirs()
                    }
                    FileOutputStream(outputFile).use { outputStream ->
                        archive.extractFile(header, outputStream)
                    }

                    // Read the extracted text file
                    BufferedReader(InputStreamReader(outputFile.inputStream())).use { reader ->
                        texts.add(reader.readText())
                    }
                }
            }
            archive.close()
        } catch (e: Exception) {
            Log.e("CbrTextExtractor", "Error extracting text from CBR: ${e.message}", e)
        }
        // Clean up temporary files (optional, depending on caching strategy)
        // tempDir.deleteRecursively()
        texts
    }
}


