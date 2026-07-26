package io.leostrange.mrcomic.feature.reader.harness

import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Rect

/**
 * Визуальное сравнение скриншотов для регрессионного тестирования.
 * Обнаруживает изменения в рендеринге текста.
 */
object ScreenshotComparator {

    data class ComparisonResult(
        val matchPercentage: Double,
        val diffRegions: List<Rect>,
        val passed: Boolean
    )

    fun compare(
        baseline: Bitmap,
        actual: Bitmap,
        threshold: Double = 0.99,
        ignoreRegions: List<Rect> = emptyList()
    ): ComparisonResult {
        require(baseline.width == actual.width && baseline.height == actual.height) {
            "Bitmaps must have same dimensions: ${baseline.width}x${baseline.height} vs ${actual.width}x${actual.height}"
        }

        var matchingPixels = 0
        var totalPixels = 0
        val diffRegions = mutableListOf<Rect>()

        for (y in 0 until baseline.height) {
            for (x in 0 until baseline.width) {
                if (ignoreRegions.any { it.contains(x, y) }) continue
                totalPixels++

                val basePixel = baseline.getPixel(x, y)
                val actualPixel = actual.getPixel(x, y)

                if (pixelsMatch(basePixel, actualPixel, tolerance = 10)) {
                    matchingPixels++
                } else {
                    addDiffPixel(diffRegions, x, y)
                }
            }
        }

        val matchPercentage = if (totalPixels > 0) matchingPixels.toDouble() / totalPixels else 1.0
        return ComparisonResult(
            matchPercentage = matchPercentage,
            diffRegions = mergeRegions(diffRegions),
            passed = matchPercentage >= threshold
        )
    }

    private fun pixelsMatch(a: Int, b: Int, tolerance: Int): Boolean {
        val dr = Math.abs(Color.red(a) - Color.red(b))
        val dg = Math.abs(Color.green(a) - Color.green(b))
        val db = Math.abs(Color.blue(a) - Color.blue(b))
        return dr <= tolerance && dg <= tolerance && db <= tolerance
    }

    private fun addDiffPixel(regions: MutableList<Rect>, x: Int, y: Int) {
        val existing = regions.find { it.contains(x, y) || isNear(it, x, y, distance = 5) }
        if (existing != null) {
            existing.union(x, y)
        } else {
            regions.add(Rect(x, y, x + 1, y + 1))
        }
    }

    private fun isNear(rect: Rect, x: Int, y: Int, distance: Int): Boolean {
        return Math.abs(rect.centerX() - x) <= distance &&
            Math.abs(rect.centerY() - y) <= distance
    }

    private fun mergeRegions(regions: List<Rect>): List<Rect> {
        val merged = mutableListOf<Rect>()
        for (region in regions) {
            val existing = merged.find { overlapsOrNear(it, region, distance = 10) }
            if (existing != null) {
                existing.union(region)
            } else {
                merged.add(Rect(region))
            }
        }
        return merged
    }

    private fun overlapsOrNear(a: Rect, b: Rect, distance: Int): Boolean {
        return a.left - distance <= b.right &&
            a.right + distance >= b.left &&
            a.top - distance <= b.bottom &&
            a.bottom + distance >= b.top
    }
}
