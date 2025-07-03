package com.mrcomic.feature_ocr

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import com.mrcomic.shared.ImageProcessor
import java.io.ByteArrayOutputStream

actual class ImageProcessor {
    actual fun preprocessImage(imageData: ByteArray): ByteArray {
        val bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.size)
        if (bitmap == null) {
            throw IllegalArgumentException("Could not decode image data.")
        }

        val preprocessedBitmap = applyImagePreprocessing(bitmap)

        val outputStream = ByteArrayOutputStream()
        preprocessedBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
        return outputStream.toByteArray()
    }

    private fun applyImagePreprocessing(bitmap: Bitmap): Bitmap {
        // 1. Convert to grayscale and binarize (adaptive thresholding)
        val binarizedBitmap = binarizeImage(bitmap)

        // 2. Apply median filter for noise reduction
        val noiseReducedBitmap = reduceNoise(binarizedBitmap)

        return noiseReducedBitmap
    }

    private fun binarizeImage(bitmap: Bitmap): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        val binarizedBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // Simple global thresholding for now. Adaptive thresholding would be more robust.
        val threshold = 128 // Mid-gray threshold

        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = bitmap.getPixel(x, y)
                val gray = (Color.red(pixel) * 0.299 + Color.green(pixel) * 0.587 + Color.blue(pixel) * 0.114).toInt()
                val newPixel = if (gray < threshold) Color.BLACK else Color.WHITE
                binarizedBitmap.setPixel(x, y, newPixel)
            }
        }
        return binarizedBitmap
    }

    private fun reduceNoise(bitmap: Bitmap): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        val noiseReducedBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // Basic 3x3 median filter implementation (conceptual)
        // In a real application, consider using a dedicated image processing library
        // for optimized performance and more robust implementations.
        val pixels = IntArray(9)
        for (y in 1 until height - 1) {
            for (x in 1 until width - 1) {
                // Collect 3x3 neighborhood pixels
                pixels[0] = bitmap.getPixel(x - 1, y - 1)
                pixels[1] = bitmap.getPixel(x, y - 1)
                pixels[2] = bitmap.getPixel(x + 1, y - 1)
                pixels[3] = bitmap.getPixel(x - 1, y)
                pixels[4] = bitmap.getPixel(x, y)
                pixels[5] = bitmap.getPixel(x + 1, y)
                pixels[6] = bitmap.getPixel(x - 1, y + 1)
                pixels[7] = bitmap.getPixel(x, y + 1)
                pixels[8] = bitmap.getPixel(x + 1, y + 1)

                // Sort the pixels by their grayscale value and pick the median
                // This is a simplified approach; a full median filter would sort R, G, B components separately.
                val grayValues = pixels.map { pixel ->
                    (Color.red(pixel) * 0.299 + Color.green(pixel) * 0.587 + Color.blue(pixel) * 0.114).toInt()
                }.sorted()

                val medianGray = grayValues[4] // Median of 9 values
                val newPixelColor = if (medianGray < 128) Color.BLACK else Color.WHITE // Assuming binarized image

                noiseReducedBitmap.setPixel(x, y, newPixelColor)
            }
        }
        // Handle borders (for simplicity, just copy original pixels or extend median logic)
        for (y in 0 until height) {
            noiseReducedBitmap.setPixel(0, y, bitmap.getPixel(0, y))
            noiseReducedBitmap.setPixel(width - 1, y, bitmap.getPixel(width - 1, y))
        }
        for (x in 0 until width) {
            noiseReducedBitmap.setPixel(x, 0, bitmap.getPixel(x, 0))
            noiseReducedBitmap.setPixel(x, height - 1, bitmap.getPixel(x, height - 1))
        }

        return noiseReducedBitmap
    }
}


