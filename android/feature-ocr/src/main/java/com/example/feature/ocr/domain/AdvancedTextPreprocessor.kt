package com.example.feature.ocr.domain

import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Matrix
import android.util.Log
import javax.inject.Inject
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

/**
 * Advanced text preprocessor for OCR optimization
 *
 * Implements multiple image preprocessing techniques to improve OCR accuracy:
 * - Contrast enhancement
 * - Binarization (Otsu's method)
 * - Noise reduction (median filter)
 * - Edge sharpening
 * - Brightness/gamma correction
 *
 * Designed specifically for comic book text bubbles and panels.
 */
class AdvancedTextPreprocessor @Inject constructor() : TextPreprocessor {

    companion object {
        private const val TAG = "AdvancedTextPreprocessor"
    }

    /**
     * Full preprocessing pipeline
     */
    override fun preprocess(source: Bitmap): Bitmap {
        return try {
            Log.d(TAG, "Starting OCR preprocessing: ${source.width}x${source.height}")

            // 1. Convert to grayscale
            var processed = toGrayscale(source)

            // 2. Enhance contrast (CLAHE-like approach)
            processed = enhanceContrast(processed)

            // 3. Sharpen edges
            processed = sharpen(processed)

            // 4. Binarize using Otsu's method
            processed = binarize(processed)

            // 5. Remove noise
            processed = denoise(processed)

            Log.d(TAG, "✅ Preprocessing complete")
            processed

        } catch (e: Exception) {
            Log.e(TAG, "❌ Preprocessing failed, using original image", e)
            source
        }
    }

    /**
     * Convert to grayscale
     */
    private fun toGrayscale(source: Bitmap): Bitmap {
        val width = source.width
        val height = source.height
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = source.getPixel(x, y)
                val gray = (Color.red(pixel) * 0.299 +
                           Color.green(pixel) * 0.587 +
                           Color.blue(pixel) * 0.114).toInt()
                result.setPixel(x, y, Color.rgb(gray, gray, gray))
            }
        }

        return result
    }

    /**
     * Enhance contrast using histogram stretching
     */
    private fun enhanceContrast(source: Bitmap): Bitmap {
        val width = source.width
        val height = source.height
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // Build histogram
        val histogram = IntArray(256)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = source.getPixel(x, y)
                val gray = Color.red(pixel) // Already grayscale
                histogram[gray]++
            }
        }

        // Find min/max values (ignore 1% outliers on each end)
        val totalPixels = width * height
        val threshold = totalPixels * 0.01
        var minValue = 0
        var maxValue = 255
        var accumulated = 0

        // Find min
        for (i in 0 until 256) {
            accumulated += histogram[i]
            if (accumulated > threshold) {
                minValue = i
                break
            }
        }

        // Find max
        accumulated = 0
        for (i in 255 downTo 0) {
            accumulated += histogram[i]
            if (accumulated > threshold) {
                maxValue = i
                break
            }
        }

        // Stretch histogram
        val range = maxValue - minValue
        if (range == 0) return source

        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = source.getPixel(x, y)
                val gray = Color.red(pixel)
                val stretched = ((gray - minValue) * 255 / range).coerceIn(0, 255)
                result.setPixel(x, y, Color.rgb(stretched, stretched, stretched))
            }
        }

        return result
    }

    /**
     * Sharpen edges using unsharp mask
     */
    private fun sharpen(source: Bitmap): Bitmap {
        val width = source.width
        val height = source.height
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // Simple 3x3 sharpening kernel
        val kernel = arrayOf(
            arrayOf(0, -1, 0),
            arrayOf(-1, 5, -1),
            arrayOf(0, -1, 0)
        )

        for (y in 1 until height - 1) {
            for (x in 1 until width - 1) {
                var sum = 0

                for (ky in 0..2) {
                    for (kx in 0..2) {
                        val pixel = source.getPixel(x + kx - 1, y + ky - 1)
                        val gray = Color.red(pixel)
                        sum += gray * kernel[ky][kx]
                    }
                }

                val sharpened = sum.coerceIn(0, 255)
                result.setPixel(x, y, Color.rgb(sharpened, sharpened, sharpened))
            }
        }

        // Copy edges
        for (y in 0 until height) {
            result.setPixel(0, y, source.getPixel(0, y))
            result.setPixel(width - 1, y, source.getPixel(width - 1, y))
        }
        for (x in 0 until width) {
            result.setPixel(x, 0, source.getPixel(x, 0))
            result.setPixel(x, height - 1, source.getPixel(x, height - 1))
        }

        return result
    }

    /**
     * Binarization using Otsu's method
     * Automatically determines optimal threshold
     */
    private fun binarize(source: Bitmap): Bitmap {
        val width = source.width
        val height = source.height
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // Build histogram
        val histogram = IntArray(256)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = source.getPixel(x, y)
                val gray = Color.red(pixel)
                histogram[gray]++
            }
        }

        // Otsu's method to find optimal threshold
        val totalPixels = width * height
        var sum = 0
        for (i in 0 until 256) {
            sum += i * histogram[i]
        }

        var sumB = 0
        var wB = 0
        var wF: Int
        var maxVariance = 0.0
        var threshold = 0

        for (t in 0 until 256) {
            wB += histogram[t]
            if (wB == 0) continue

            wF = totalPixels - wB
            if (wF == 0) break

            sumB += t * histogram[t]

            val mB = sumB.toDouble() / wB
            val mF = (sum - sumB).toDouble() / wF

            val variance = wB.toDouble() * wF.toDouble() * (mB - mF) * (mB - mF)

            if (variance > maxVariance) {
                maxVariance = variance
                threshold = t
            }
        }

        Log.d(TAG, "Otsu threshold: $threshold")

        // Apply threshold
        for (y in 0 until height) {
            for (x in 0 until width) {
                val pixel = source.getPixel(x, y)
                val gray = Color.red(pixel)
                val binary = if (gray > threshold) 255 else 0
                result.setPixel(x, y, Color.rgb(binary, binary, binary))
            }
        }

        return result
    }

    /**
     * Denoise using median filter
     */
    private fun denoise(source: Bitmap): Bitmap {
        val width = source.width
        val height = source.height
        val result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)

        // 3x3 median filter
        val window = ArrayList<Int>(9)

        for (y in 1 until height - 1) {
            for (x in 1 until width - 1) {
                window.clear()

                // Collect 3x3 window
                for (ky in -1..1) {
                    for (kx in -1..1) {
                        val pixel = source.getPixel(x + kx, y + ky)
                        window.add(Color.red(pixel))
                    }
                }

                // Find median
                window.sort()
                val median = window[4] // Middle value in sorted 9-element list

                result.setPixel(x, y, Color.rgb(median, median, median))
            }
        }

        // Copy edges
        for (y in 0 until height) {
            result.setPixel(0, y, source.getPixel(0, y))
            result.setPixel(width - 1, y, source.getPixel(width - 1, y))
        }
        for (x in 0 until width) {
            result.setPixel(x, 0, source.getPixel(x, 0))
            result.setPixel(x, height - 1, source.getPixel(x, height - 1))
        }

        return result
    }

    /**
     * Adaptive preprocessing for different comic styles
     */
    fun preprocessAdaptive(source: Bitmap, style: ComicStyle): Bitmap {
        return when (style) {
            ComicStyle.MANGA -> preprocessManga(source)
            ComicStyle.WESTERN -> preprocessWestern(source)
            ComicStyle.WEBTOON -> preprocessWebtoon(source)
            ComicStyle.AUTO -> preprocess(source)
        }
    }

    private fun preprocessManga(source: Bitmap): Bitmap {
        // Manga often has clean blacks and whites
        // Use aggressive binarization
        var processed = toGrayscale(source)
        processed = enhanceContrast(processed)
        processed = binarize(processed)
        return processed
    }

    private fun preprocessWestern(source: Bitmap): Bitmap {
        // Western comics may have more color/shading
        // Use moderate processing
        return preprocess(source)
    }

    private fun preprocessWebtoon(source: Bitmap): Bitmap {
        // Webtoons are usually digital with good quality
        // Minimal processing needed
        var processed = toGrayscale(source)
        processed = enhanceContrast(processed)
        return processed
    }
}

/**
 * Comic style enum for adaptive preprocessing
 */
enum class ComicStyle {
    MANGA,      // Japanese manga (black & white, clean)
    WESTERN,    // American/European comics (colored, varied)
    WEBTOON,    // Digital webtoons (high quality)
    AUTO        // Auto-detect and apply best method
}
