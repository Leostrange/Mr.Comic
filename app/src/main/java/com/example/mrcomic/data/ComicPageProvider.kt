package com.example.mrcomic.data

import android.graphics.Bitmap
import android.os.ParcelFileDescriptor
import android.graphics.pdf.PdfRenderer
import java.io.File
import android.content.Context
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.FileOutputStream
import android.util.Log
import android.os.Build
import androidx.annotation.RequiresApi
import java.util.zip.ZipFile
import java.util.zip.ZipEntry
import android.graphics.BitmapFactory

interface PageProvider {
    val pageCount: Int
    fun getPage(index: Int): Bitmap?
}

interface ComicPageProvider {
    fun getPageCount(): Int
    fun getPage(page: Int): Bitmap?
    fun getThumbnail(page: Int, size: Int = 96): Bitmap? = getPage(page)?.let {
        Bitmap.createScaledBitmap(it, size, size, true)
    }
}

class CbzPageProvider(private val zipFile: ZipFile, private val imageEntries: List<ZipEntry>) : PageProvider {
    override val pageCount: Int get() = imageEntries.size
    override fun getPage(index: Int): Bitmap? {
        return try {
            if (index !in 0 until pageCount) {
                Log.w(TAG, "Index $index out of bounds (0..${pageCount - 1})")
                return null
            }
            val entry = imageEntries[index]
            val inputStream = zipFile.getInputStream(entry)
            val bitmap = BitmapFactory.decodeStream(inputStream)
            if (bitmap == null) {
                Log.e(TAG, "Failed to decode bitmap from CBZ entry: ${entry.name}")
            } else {
                Log.d(TAG, "Successfully loaded CBZ page $index (${entry.name})")
            }
            bitmap
        } catch (e: Exception) {
            Log.e(TAG, "Exception in getPage($index) [CBZ]", e)
            null
        }
    }
    companion object {
        private const val TAG = "CbzPageProvider"
    }
}

class PdfPageProvider(private val pdfRenderer: PdfRenderer) : PageProvider {
    override val pageCount: Int get() = pdfRenderer.pageCount
    override fun getPage(index: Int): Bitmap? {
        return try {
            if (index !in 0 until pageCount) {
                Log.w(TAG, "PDF index $index out of bounds (0..${pageCount - 1})")
                return null
            }
            val page = pdfRenderer.openPage(index)
            val width = page.width
            val height = page.height
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
            page.close()
            Log.d(TAG, "Successfully rendered PDF page $index ($width x $height)")
            bitmap
        } catch (e: Exception) {
            Log.e(TAG, "Exception in getPage($index) [PDF]", e)
            null
        }
    }
    companion object {
        private const val TAG = "PdfPageProvider"
    }
}

class CbrPageProvider(private val imageFiles: List<File>) : PageProvider {
    override val pageCount: Int get() = imageFiles.size
    override fun getPage(index: Int): Bitmap? {
        return try {
            if (index !in 0 until pageCount) {
                Log.w(TAG, "Index $index out of bounds (0..${pageCount - 1})")
                return null
            }
            val file = imageFiles[index]
            if (!file.exists()) {
                Log.e(TAG, "CBR file not found: ${file.absolutePath}")
                return null
            }
            val bitmap = BitmapFactory.decodeFile(file.absolutePath)
            if (bitmap == null) {
                Log.e(TAG, "Failed to decode bitmap from CBR file: ${file.name}")
            } else {
                Log.d(TAG, "Successfully loaded CBR page $index (${file.name})")
            }
            bitmap
        } catch (e: Exception) {
            Log.e(TAG, "Exception in getPage($index) [CBR]", e)
            null
        }
    }
    companion object {
        private const val TAG = "CbrPageProvider"
    }
}

fun createPageProvider(context: Context, file: File): PageProvider? {
    return when (file.extension.lowercase()) {
        "cbz" -> {
            val zipFile = ZipFile(file)
            val entries = zipFile.entries().toList().filter { it.name.endsWith(".jpg", true) || it.name.endsWith(".png", true) }
            CbzPageProvider(zipFile, entries)
        }
        "cbr" -> {
            // Распаковка, если нужно, должна быть выполнена заранее
            val tempDir = File(file.absolutePath + "_cbr_cache")
            val imageFiles = tempDir.listFiles()?.filter {
                it.name.endsWith(".jpg", true) || it.name.endsWith(".png", true)
            }?.sortedBy { it.name } ?: emptyList()
            CbrPageProvider(imageFiles)
        }
        "pdf" -> {
            val fileDescriptor = ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY)
            val pdfRenderer = PdfRenderer(fileDescriptor)
            PdfPageProvider(pdfRenderer)
        }
        else -> null
    }
}

