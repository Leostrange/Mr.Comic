package com.mrcomic.reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.ByteArrayOutputStream
import java.io.IOException
import android.content.Context

class CbrPageExtractor(private val context: Context) {

    private var archive: Archive? = null
    private var fileHeaders: MutableList<FileHeader> = mutableListOf()
    private var totalPages: Int = 0

    fun openCbr(uri: Uri): Int {
        try {
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                archive = Archive(inputStream)
                fileHeaders.clear()
                for (header in archive!!.fileHeaders) {
                    if (!header.isDirectory && isImageFile(header.fileNameString)) {
                        fileHeaders.add(header)
                    }
                }
                totalPages = fileHeaders.size
                return totalPages
            }
        } catch (e: IOException) {
            Log.e("CbrPageExtractor", "Error opening CBR: ${e.message}", e)
        } catch (e: Exception) {
            Log.e("CbrPageExtractor", "Error opening CBR: ${e.message}", e)
        }
        return 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= fileHeaders.size) {
            return null
        }
        val header = fileHeaders[pageIndex]
        try {
            archive?.extractFile(header, ByteArrayOutputStream())?.use { outputStream ->
                val byteArray = (outputStream as ByteArrayOutputStream).toByteArray()
                return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.size)
            }
        } catch (e: Exception) {
            Log.e("CbrPageExtractor", "Error extracting page: ${e.message}", e)
        }
        return null
    }

    fun closeCbr() {
        try {
            archive?.close()
        } catch (e: IOException) {
            Log.e("CbrPageExtractor", "Error closing CBR: ${e.message}", e)
        }
        archive = null
        fileHeaders.clear()
        totalPages = 0
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


