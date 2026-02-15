package com.example.feature.ocr.domain

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import java.io.ByteArrayOutputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Image processor for OCR preprocessing
 */
@Singleton
class ImageProcessor @Inject constructor() {
    
    fun preprocessImage(imageData: ByteArray): ByteArray {
        val bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.size)
            ?: throw IllegalArgumentException("Could not decode image data.")
        
        val preprocessedBitmap = applyImagePreprocessing(bitmap)
        
        val outputStream = ByteArrayOutputStream()
        preprocessedBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
        return outputStream.toByteArray()
    }
    
    private fun applyImagePreprocessing(bitmap: Bitmap): Bitmap {
        // 1. Convert to grayscale and binarize
        val binarizedBitmap = binarizeImage(bitmap)
        // 2. Apply noise reduction
        return reduceNoise(binarizedBitmap)
    }
    
    private fun binarizeImage(bitmap: Bitmap): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        val binarizedBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        
        val threshold = 128
        
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
        
        val pixels = IntArray(9)
        for (y in 1 until height - 1) {
            for (x in 1 until width - 1) {
                pixels[0] = bitmap.getPixel(x - 1, y - 1)
                pixels[1] = bitmap.getPixel(x, y - 1)
                pixels[2] = bitmap.getPixel(x + 1, y - 1)
                pixels[3] = bitmap.getPixel(x - 1, y)
                pixels[4] = bitmap.getPixel(x, y)
                pixels[5] = bitmap.getPixel(x + 1, y)
                pixels[6] = bitmap.getPixel(x - 1, y + 1)
                pixels[7] = bitmap.getPixel(x, y + 1)
                pixels[8] = bitmap.getPixel(x + 1, y + 1)
                
                val grayValues = pixels.map { pixel ->
                    (Color.red(pixel) * 0.299 + Color.green(pixel) * 0.587 + Color.blue(pixel) * 0.114).toInt()
                }.sorted()
                
                val medianGray = grayValues[4]
                val newPixelColor = if (medianGray < 128) Color.BLACK else Color.WHITE
                noiseReducedBitmap.setPixel(x, y, newPixelColor)
            }
        }
        
        // Handle borders
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
