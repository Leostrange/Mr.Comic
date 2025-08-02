package com.mrcomic

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.github.junrar.Junrar
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader as ZipFileHeader
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.util.*

interface ComicReader {
    val comicId: String
    val title: String
    val pageCount: Int
    val pagePaths: List<String>
    
    fun getPage(pageIndex: Int): String?
    fun extractCover(): String
    fun close()
}

abstract class BaseComicReader(
    protected val context: Context,
    protected val uri: Uri,
    override val comicId: String
) : ComicReader {
    
    protected val tempDir: File
    protected val cacheDir: File
    
    init {
        tempDir = File(context.cacheDir, "comic_$comicId")
        cacheDir = File(context.cacheDir, "comic_cache")
        tempDir.mkdirs()
        cacheDir.mkdirs()
    }
    
    override fun close() {
        try {
            tempDir.deleteRecursively()
        } catch (e: Exception) {
            Log.e("ComicReader", "Failed to clean up temp directory", e)
        }
    }
    
    protected fun isImageFile(fileName: String): Boolean {
        val extension = fileName.substringAfterLast('.', "").lowercase()
        return extension in listOf("jpg", "jpeg", "png", "gif", "webp", "bmp")
    }
    
    protected fun saveBitmapToFile(bitmap: Bitmap, fileName: String): String {
        val file = File(tempDir, fileName)
        FileOutputStream(file).use { out ->
            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, out)
        }
        return file.absolutePath
    }
    
    protected fun naturalSort(paths: List<String>): List<String> {
        return paths.sortedWith { a, b ->
            val aName = a.substringAfterLast('/').substringBeforeLast('.')
            val bName = b.substringAfterLast('/').substringBeforeLast('.')
            
            val aNumbers = Regex("\\d+").findAll(aName).map { it.value.toIntOrNull() ?: Int.MAX_VALUE }.toList()
            val bNumbers = Regex("\\d+").findAll(bName).map { it.value.toIntOrNull() ?: Int.MAX_VALUE }.toList()
            
            for (i in 0 until maxOf(aNumbers.size, bNumbers.size)) {
                val aNum = aNumbers.getOrNull(i) ?: Int.MAX_VALUE
                val bNum = bNumbers.getOrNull(i) ?: Int.MAX_VALUE
                if (aNum != bNum) {
                    return@sortedWith aNum.compareTo(bNum)
                }
            }
            aName.compareTo(bName)
        }
    }
}

class CbzComic(
    context: Context,
    uri: Uri,
    comicId: String
) : BaseComicReader(context, uri, comicId) {
    
    override val title: String
    override val pageCount: Int
    override val pagePaths: List<String>
    
    init {
        val tempFile = File.createTempFile("temp_cbz_", ".cbz", cacheDir)
        
        try {
            // Copy file from URI to temp file
            context.contentResolver.openInputStream(uri)?.use { input ->
                FileOutputStream(tempFile).use { output ->
                    input.copyTo(output)
                }
            } ?: throw IOException("Cannot open input stream from URI")
            
            if (tempFile.length() == 0L) {
                throw IOException("CBZ file is empty or corrupted")
            }
            
            val zipFile = ZipFile(tempFile)
            if (zipFile.isEncrypted) {
                throw IOException("Encrypted CBZ files are not supported")
            }
            
            // Extract image files
            val extractedPaths = mutableListOf<String>()
            for (header in zipFile.fileHeaders) {
                if (!header.isDirectory && isImageFile(header.fileName)) {
                    try {
                        zipFile.extractFile(header, tempDir.absolutePath)
                        val extractedFile = File(tempDir, header.fileName.substringAfterLast('/'))
                        if (extractedFile.exists()) {
                            extractedPaths.add(extractedFile.absolutePath)
                        }
                    } catch (e: Exception) {
                        Log.w("CbzComic", "Failed to extract ${header.fileName}: ${e.message}")
                    }
                }
            }
            
            if (extractedPaths.isEmpty()) {
                throw IOException("No images found in CBZ file")
            }
            
            pagePaths = naturalSort(extractedPaths)
            pageCount = pagePaths.size
            title = uri.lastPathSegment?.substringBeforeLast('.') ?: "Unknown"
            
        } finally {
            tempFile.delete()
        }
    }
    
    override fun getPage(pageIndex: Int): String? {
        return if (pageIndex in 0 until pagePaths.size) {
            pagePaths[pageIndex]
        } else null
    }
    
    override fun extractCover(): String {
        val coverPath = getPage(0) ?: throw IOException("No cover page available")
        val coverFile = File(coverPath)
        
        if (!coverFile.exists()) {
            throw IOException("Cover file not found")
        }
        
        return coverPath
    }
}

class CbrComic(
    context: Context,
    uri: Uri,
    comicId: String
) : BaseComicReader(context, uri, comicId) {
    
    override val title: String
    override val pageCount: Int
    override val pagePaths: List<String>
    
    init {
        val tempFile = File.createTempFile("temp_cbr_", ".cbr", cacheDir)
        
        try {
            // Copy file from URI to temp file
            context.contentResolver.openInputStream(uri)?.use { input ->
                FileOutputStream(tempFile).use { output ->
                    input.copyTo(output)
                }
            } ?: throw IOException("Cannot open input stream from URI")
            
            if (tempFile.length() == 0L) {
                throw IOException("CBR file is empty or corrupted")
            }
            
            val archive = Archive(tempFile)
            val extractedPaths = mutableListOf<String>()
            
            try {
                var fileHeader: FileHeader? = archive.nextFileHeader()
                while (fileHeader != null) {
                    if (!fileHeader.isDirectory && isImageFile(fileHeader.fileName)) {
                        try {
                            val extractedFile = File(tempDir, fileHeader.fileName.substringAfterLast('/'))
                            FileOutputStream(extractedFile).use { output ->
                                archive.extractFile(fileHeader, output)
                            }
                            if (extractedFile.exists()) {
                                extractedPaths.add(extractedFile.absolutePath)
                            }
                        } catch (e: Exception) {
                            Log.w("CbrComic", "Failed to extract ${fileHeader.fileName}: ${e.message}")
                        }
                    }
                    fileHeader = archive.nextFileHeader()
                }
            } finally {
                archive.close()
            }
            
            if (extractedPaths.isEmpty()) {
                throw IOException("No images found in CBR file")
            }
            
            pagePaths = naturalSort(extractedPaths)
            pageCount = pagePaths.size
            title = uri.lastPathSegment?.substringBeforeLast('.') ?: "Unknown"
            
        } finally {
            tempFile.delete()
        }
    }
    
    override fun getPage(pageIndex: Int): String? {
        return if (pageIndex in 0 until pagePaths.size) {
            pagePaths[pageIndex]
        } else null
    }
    
    override fun extractCover(): String {
        val coverPath = getPage(0) ?: throw IOException("No cover page available")
        val coverFile = File(coverPath)
        
        if (!coverFile.exists()) {
            throw IOException("Cover file not found")
        }
        
        return coverPath
    }
}

class PdfComic(
    context: Context,
    uri: Uri,
    comicId: String
) : BaseComicReader(context, uri, comicId) {
    
    override val title: String
    override val pageCount: Int
    override val pagePaths: List<String>
    
    private var pdfiumCore: com.shockwave.pdfium.PdfiumCore? = null
    private var pdfDocument: com.shockwave.pdfium.PdfDocument? = null
    private var parcelFileDescriptor: android.os.ParcelFileDescriptor? = null
    
    init {
        try {
            pdfiumCore = com.shockwave.pdfium.PdfiumCore(context)
            parcelFileDescriptor = context.contentResolver.openFileDescriptor(uri, "r")
                ?: throw IOException("Cannot open file descriptor for URI")
            
            pdfDocument = pdfiumCore?.newDocument(parcelFileDescriptor)
                ?: throw IOException("Cannot create PDF document")
            
            pageCount = pdfiumCore?.getPageCount(pdfDocument) ?: 0
            if (pageCount <= 0) {
                throw IOException("PDF file contains no pages")
            }
            
            title = uri.lastPathSegment?.substringBeforeLast('.') ?: "Unknown"
            pagePaths = List(pageCount) { "pdf_page_$it" }
            
        } catch (e: Exception) {
            close()
            throw e
        }
    }
    
    override fun getPage(pageIndex: Int): String? {
        if (pageIndex !in 0 until pageCount) return null
        
        try {
            pdfiumCore?.openPage(pdfDocument, pageIndex)
            
            val width = pdfiumCore?.getPageWidthPoint(pdfDocument, pageIndex) ?: 0
            val height = pdfiumCore?.getPageHeightPoint(pdfDocument, pageIndex) ?: 0
            
            // Scale down if too large
            val maxDimension = 2048
            val scale = if (width > maxDimension || height > maxDimension) {
                minOf(maxDimension.toFloat() / width, maxDimension.toFloat() / height)
            } else 1f
            
            val scaledWidth = (width * scale).toInt()
            val scaledHeight = (height * scale).toInt()
            
            val bitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888)
            pdfiumCore?.renderPageBitmap(bitmap, pdfDocument, pageIndex, 0, 0, scaledWidth, scaledHeight)
            pdfiumCore?.closePage(pdfDocument, pageIndex)
            
            val pageFile = File(tempDir, "page_$pageIndex.jpg")
            FileOutputStream(pageFile).use { out ->
                bitmap.compress(Bitmap.CompressFormat.JPEG, 85, out)
            }
            bitmap.recycle()
            
            return pageFile.absolutePath
            
        } catch (e: Exception) {
            Log.e("PdfComic", "Failed to render page $pageIndex", e)
            return null
        }
    }
    
    override fun extractCover(): String {
        return getPage(0) ?: throw IOException("No cover page available")
    }
    
    override fun close() {
        try {
            pdfiumCore?.closeDocument(pdfDocument)
            parcelFileDescriptor?.close()
        } catch (e: Exception) {
            Log.e("PdfComic", "Failed to close PDF", e)
        } finally {
            super.close()
        }
    }
}