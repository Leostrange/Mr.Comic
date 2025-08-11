package com.example.mrcomic.utils

import android.content.Context
import android.net.Uri
import com.github.junrar.Archive
import java.io.File
import java.io.FileOutputStream
import java.io.BufferedInputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import java.util.zip.ZipInputStream

object FormatProcessor {
    private fun isImageFile(name: String): Boolean {
        val lower = name.lowercase()
        return lower.endsWith(".jpg") ||
                lower.endsWith(".jpeg") ||
                lower.endsWith(".png") ||
                lower.endsWith(".webp")
    }

    fun extractZip(context: Context, uri: Uri, destDir: File): List<Uri> {
        val pages = mutableListOf<Uri>()
        destDir.mkdirs()
        context.contentResolver.openInputStream(uri)?.use { input ->
            ZipInputStream(BufferedInputStream(input)).use { zis ->
                var entry: ZipEntry? = zis.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory && isImageFile(entry.name)) {
                        val outFile = File(destDir, entry.name.substringAfterLast('/'))
                        outFile.outputStream().use { zis.copyTo(it) }
                        pages.add(Uri.fromFile(outFile))
                    }
                    entry = zis.nextEntry
                }
            }
        }
        return pages.sortedBy { it.toString() }
    }

    fun extractRar(context: Context, uri: Uri, destDir: File): List<Uri> {
        val pages = mutableListOf<Uri>()
        destDir.mkdirs()
        val tempFile = File.createTempFile("temp", ".rar", destDir)
        context.contentResolver.openInputStream(uri)?.use { input ->
            FileOutputStream(tempFile).use { input.copyTo(it) }
        }
        try {
            val archive = Archive(tempFile)
            for (header in archive.fileHeaders) {
                if (isImageFile(header.fileName)) {
                    val cleanName = header.fileName.replace("\\", "/").substringAfterLast('/')
                    val outFile = File(destDir, cleanName)
                    if (!outFile.parentFile.exists()) outFile.parentFile.mkdirs()
                    FileOutputStream(outFile).use { fos ->
                        archive.extractFile(header, fos)
                    }
                    pages.add(Uri.fromFile(outFile))
                }
            }
            archive.close()
        } catch (e: Exception) {
            // ignore errors for now
        } finally {
            tempFile.delete()
        }
        return pages.sortedBy { it.toString() }
    }

    fun readTxt(context: Context, uri: Uri): String {
        context.contentResolver.openInputStream(uri)?.use { input ->
            return input.bufferedReader().use { it.readText() }
        }
        return ""
    }

    fun extractEpub(context: Context, uri: Uri, destDir: File): Pair<List<Uri>, Uri?> {
        val pages = mutableListOf<Uri>()
        var coverUri: Uri? = null
        destDir.mkdirs()
        val tempFile = File.createTempFile("temp", ".epub", destDir)
        context.contentResolver.openInputStream(uri)?.use { input ->
            FileOutputStream(tempFile).use { input.copyTo(it) }
        }
        try {
            ZipFile(tempFile).use { zipFile ->
                val entries = zipFile.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    if (entry.isDirectory) continue
                    if (isImageFile(entry.name) && coverUri == null && entry.name.contains("cover", true)) {
                        val outFile = File(destDir, entry.name.substringAfterLast('/'))
                        outFile?.let { file ->
                            zipFile.getInputStream(entry).use { it.copyTo(file.outputStream()) }
                            coverUri = Uri.fromFile(file)
                        }
                    } else if (entry.name.lowercase().endsWith(".xhtml") || entry.name.lowercase().endsWith(".html")) {
                        val outFile = File(destDir, entry.name.substringAfterLast('/'))
                        outFile?.let { file ->
                            zipFile.getInputStream(entry).use { it.copyTo(file.outputStream()) }
                            pages.add(Uri.fromFile(file))
                        }
                    }
                }
                if (coverUri == null) {
                    zipFile.entries().asSequence().firstOrNull { !it.isDirectory && isImageFile(it.name) }?.let { firstImg ->
                        val outFile = File(destDir, firstImg.name.substringAfterLast('/'))
                        outFile?.let { file ->
                            zipFile.getInputStream(firstImg).use { it.copyTo(file.outputStream()) }
                            coverUri = Uri.fromFile(file)
                        }
                    }
                }
            }
        } catch (e: Exception) {
            // ignore for now
        } finally {
            tempFile.delete()
        }
        return Pair(pages.sortedBy { it.toString() }, coverUri)
    }

    fun clearDirectory(dir: File) {
        if (dir.exists()) {
            dir.walkBottomUp().forEach { it.delete() }
        }
    }
}

