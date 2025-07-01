package com.mrcomic.reader

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Matrix
import android.graphics.Paint
import android.graphics.RectF
import android.util.Log
import java.io.File
import java.io.FileInputStream
import java.io.IOException

class AdvancedComicReaderEngine {

    private var currentPageBitmap: Bitmap? = null
    private var comicPages: MutableList<File> = mutableListOf()
    private var currentPageIndex: Int = -1

    fun loadComic(comicFiles: List<File>): Boolean {
        if (comicFiles.isEmpty()) {
            Log.e("ComicReaderEngine", "No comic files provided.")
            return false
        }
        comicPages.clear()
        comicPages.addAll(comicFiles)
        currentPageIndex = -1
        return true
    }

    fun goToPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= comicPages.size) {
            Log.e("ComicReaderEngine", "Page index out of bounds: $pageIndex")
            return null
        }
        try {
            val pageFile = comicPages[pageIndex]
            FileInputStream(pageFile).use { fis ->
                currentPageBitmap = BitmapFactory.decodeStream(fis)
                currentPageIndex = pageIndex
                return currentPageBitmap
            }
        } catch (e: IOException) {
            Log.e("ComicReaderEngine", "Error loading page $pageIndex: ${e.message}", e)
            return null
        }
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
        return comicPages.size
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
        paint.colorFilter = filter
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
        comicPages.clear()
        currentPageIndex = -1
        Log.d("ComicReaderEngine", "Resources released.")
    }
}


