package com.mrcomic.reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import android.content.Context
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.IOException

class CbtPageExtractor(private val context: Context) {

    private var pageBitmaps: MutableList<Bitmap> = mutableListOf()
    private var totalPages: Int = 0
    private var tempFile: File? = null

    fun openCbt(uri: Uri): Int {
        try {
            tempFile = FileUtils.copyUriToTempFile(context, uri, "temp_cbt_comic.cbt")
            tempFile?.let {
                FileInputStream(it).use { fileInputStream ->
                    TarArchiveInputStream(fileInputStream).use { tarInputStream ->
                        var entry = tarInputStream.nextEntry
                        while (entry != null) {
                            if (!entry.isDirectory && isImageFile(entry.name)) {
                                val byteArrayOutputStream = ByteArrayOutputStream()
                                tarInputStream.copyTo(byteArrayOutputStream)
                                val byteArray = byteArrayOutputStream.toByteArray()
                                val bitmap = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.size)
                                bitmap?.let { pageBitmaps.add(it) }
                            }
                            entry = tarInputStream.nextEntry
                        }
                    }
                }
                totalPages = pageBitmaps.size
                return totalPages
            }
        } catch (e: IOException) {
            Log.e("CbtPageExtractor", "Error opening CBT: ${e.message}", e)
        } finally {
            // tempFile?.delete() // Don't delete here, delete in closeCbt
        }
        return 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= pageBitmaps.size) {
            return null
        }
        return pageBitmaps[pageIndex]
    }

    fun closeCbt() {
        pageBitmaps.forEach { it.recycle() }
        pageBitmaps.clear()
        totalPages = 0
        tempFile?.delete()
        tempFile = null
    }

    private fun isImageFile(fileName: String): Boolean {
        val lowerCaseFileName = fileName.lowercase()
        return lowerCaseFileName.endsWith(".jpg") ||
                lowerCaseFileName.endsWith(".jpeg") ||
                lowerCaseFileName.endsWith(".png") ||
                lowerCaseFileName.endsWith(".gif") ||
                lowerCaseFileName.endsWith(".bmp")
    }
}


