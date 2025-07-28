package com.mrcomic.reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import android.content.Context
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.IOException
import java.io.RandomAccessFile

class Cb7PageExtractor(private val context: Context) {

    private var inArchive: IInArchive? = null
    private var filePaths: MutableList<String> = mutableListOf()
    private var totalPages: Int = 0
    private var tempFile: File? = null

    fun openCb7(uri: Uri): Int {
        try {
            tempFile = FileUtils.copyUriToTempFile(context, uri, "temp_cb7_comic.cb7")
            tempFile?.let {
                val randomAccessFile = RandomAccessFile(it, "r")
                inArchive = SevenZip.openInArchive(null, RandomAccessFileInStream(randomAccessFile))

                filePaths.clear()
                for (i in 0 until inArchive!!.numberOfItems) {
                    val path = inArchive!!.getProperty(i, "Path") as String
                    if (!inArchive!!.getProperty(i, "IsFolder") as Boolean && isImageFile(path)) {
                        filePaths.add(path)
                    }
                }
                totalPages = filePaths.size
                return totalPages
            }
        } catch (e: Exception) {
            Log.e("Cb7PageExtractor", "Error opening CB7: ${e.message}", e)
        } finally {
            // tempFile?.delete() // Don't delete here, delete in closeCb7
        }
        return 0
    }

    fun getPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= filePaths.size) {
            return null
        }
        val path = filePaths[pageIndex]
        try {
            val outputStream = ByteArrayOutputStream()
            inArchive?.extract(intArrayOf(inArchive!!.getItemIndex(path)), false, object : net.sf.sevenzipjbinding.IArchiveExtractCallback {
                override fun get  Stream(index: Int, extractAskMode: net.sf.sevenzipjbinding.ExtractAskMode): net.sf.sevenzipjbinding.ISequentialOutStream? {
                    return object : net.sf.sevenzipjbinding.ISequentialOutStream {
                        override fun write(data: ByteArray?): Int {
                            if (data != null) {
                                outputStream.write(data)
                            }
                            return data?.size ?: 0
                        }
                    }
                }

                override fun prepareOperation(extractAskMode: net.sf.sevenzipjbinding.ExtractAskMode) {}
                override fun setOperationResult(extractOperationResult: net.sf.sevenzipjbinding.ExtractOperationResult) {}
                override fun setTotal(total: Long) {}
                override fun setCompleted(complete: Long) {}
            })
            val byteArray = outputStream.toByteArray()
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.size)
        } catch (e: Exception) {
            Log.e("Cb7PageExtractor", "Error extracting page: ${e.message}", e)
        }
        return null
    }

    fun closeCb7() {
        try {
            inArchive?.close()
        } catch (e: IOException) {
            Log.e("Cb7PageExtractor", "Error closing CB7: ${e.message}", e)
        }
        inArchive = null
        filePaths.clear()
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


