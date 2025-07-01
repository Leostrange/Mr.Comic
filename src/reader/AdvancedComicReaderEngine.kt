package com.mrcomic.reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import android.net.Uri
import android.util.Log
import java.io.File
import java.io.FileInputStream
import java.io.IOException

class AdvancedComicReaderEngine(private val context: Context) {

    private var currentPageBitmap: Bitmap? = null
    private var currentPageIndex: Int = -1
    private var totalPages: Int = 0

    private var pdfPageExtractor: PdfPageExtractor? = null
    private var cbzPageExtractor: CbzPageExtractor? = null

    fun loadComic(uri: Uri): Boolean {
        releaseResources()
        val extension = context.contentResolver.getType(uri)?.substringAfterLast("/") ?: uri.lastPathSegment?.substringAfterLast(".")

        return when (extension?.lowercase()) {
            "pdf" -> {
                pdfPageExtractor = PdfPageExtractor(context)
                totalPages = pdfPageExtractor?.openPdf(uri) ?: 0
                if (totalPages > 0) {
                    goToPage(0)
                    true
                } else {
                    Log.e("ComicReaderEngine", "Failed to load PDF: $uri")
                    false
                }
            }
            "cbz" -> {
                cbzPageExtractor = CbzPageExtractor(context)
                totalPages = cbzPageExtractor?.openCbz(uri) ?: 0
                if (totalPages > 0) {
                    goToPage(0)
                    true
                } else {
                    Log.e("ComicReaderEngine", "Failed to load CBZ: $uri")
                    false
                }
            }
            // TODO: Add CBR support here
            else -> {
                Log.e("ComicReaderEngine", "Unsupported file type: $extension")
                false
            }
        }
    }

    fun goToPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= totalPages) {
            Log.e("ComicReaderEngine", "Page index out of bounds: $pageIndex")
            return null
        }
        val bitmap = pdfPageExtractor?.getPage(pageIndex) ?: cbzPageExtractor?.getPage(pageIndex)
        if (bitmap != null) {
            currentPageBitmap = bitmap
            currentPageIndex = pageIndex
            return currentPageBitmap
        }
        return null
    }

    fun getNextPage(): Bitmap? {
        return goToPage(currentPageIndex + 1)
    }

    fun getPreviousPage(): Bitmap? {
        return goToPage(currentPageIndex - 1)
    }

    fun getCurrentPage(): Bitmap? {
        return currentPageBitmap
    }

    fun getCurrentPageIndex(): Int {
        return currentPageIndex
    }

    fun getTotalPages(): Int {
        return totalPages
    }

    fun zoomPage(scaleFactor: Float): Bitmap? {
        currentPageBitmap?.let {
            val matrix = Matrix()
            matrix.postScale(scaleFactor, scaleFactor)
            val scaledBitmap = Bitmap.createBitmap(it, 0, 0, it.width, it.height, matrix, true)
            currentPageBitmap = scaledBitmap
            return scaledBitmap
        }
        return null
    }

    fun rotatePage(degrees: Float): Bitmap? {
        currentPageBitmap?.let {
            val matrix = Matrix()
            matrix.postRotate(degrees)
            val rotatedBitmap = Bitmap.createBitmap(it, 0, 0, it.width, it.height, matrix, true)
            currentPageBitmap = rotatedBitmap
            return rotatedBitmap
        }
        return null
    }

    fun applyFilter(filterType: FilterType): Bitmap? {
        currentPageBitmap?.let {
            // Placeholder for image processing filters
            val filteredBitmap = when (filterType) {
                FilterType.GRAYSCALE -> toGrayscale(it)
                FilterType.SEPIA -> toSepia(it)
                FilterType.INVERT -> invertColors(it)
                else -> it // No filter or unsupported filter
            }
            currentPageBitmap = filteredBitmap
            return filteredBitmap
        }
        return null
    }

    private fun toGrayscale(bmp: Bitmap): Bitmap {
        val width = bmp.width
        val height = bmp.height
        val grayscaleBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(grayscaleBitmap)
        val paint = Paint()
        val colorMatrix = android.graphics.ColorMatrix()
        colorMatrix.setSaturation(0f)
        val filter = android.graphics.ColorMatrixColorFilter(colorMatrix)
        canvas.drawBitmap(bmp, 0f, 0f, paint)
        return grayscaleBitmap
    }

    private fun toSepia(bmp: Bitmap): Bitmap {
        val width = bmp.width
        val height = bmp.height
        val sepiaBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(sepiaBitmap)
        val paint = Paint()
        val colorMatrix = android.graphics.ColorMatrix()
        colorMatrix.set(
            floatArrayOf(
                0.393f, 0.769f, 0.189f, 0f, 0f,
                0.349f, 0.686f, 0.168f, 0f, 0f,
                0.272f, 0.534f, 0.131f, 0f, 0f,
                0f, 0f, 0f, 1f, 0f
            )
        )
        val filter = android.graphics.ColorMatrixColorFilter(colorMatrix)
        paint.colorFilter = filter
        canvas.drawBitmap(bmp, 0f, 0f, paint)
        return sepiaBitmap
    }

    private fun invertColors(bmp: Bitmap): Bitmap {
        val width = bmp.width
        val height = bmp.height
        val invertedBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(invertedBitmap)
        val paint = Paint()
        val colorMatrix = android.graphics.ColorMatrix()
        colorMatrix.set(floatArrayOf(
            -1.0f, 0f, 0f, 0f, 255f,
            0f, -1.0f, 0f, 0f, 255f,
            0f, 0f, -1.0f, 0f, 255f,
            0f, 0f, 0f, 1.0f, 0f
        ))
        val filter = android.graphics.ColorMatrixColorFilter(colorMatrix)
        paint.colorFilter = filter
        canvas.drawBitmap(bmp, 0f, 0f, paint)
        return invertedBitmap
    }

    enum class FilterType {
        GRAYSCALE, SEPIA, INVERT, NONE
    }

    fun releaseResources() {
        currentPageBitmap?.recycle()
        currentPageBitmap = null
        pdfPageExtractor?.closePdf()
        pdfPageExtractor = null
        cbzPageExtractor?.closeCbz()
        cbzPageExtractor = null
        currentPageIndex = -1
        totalPages = 0
        Log.d("ComicReaderEngine", "Resources released.")
    }
}

