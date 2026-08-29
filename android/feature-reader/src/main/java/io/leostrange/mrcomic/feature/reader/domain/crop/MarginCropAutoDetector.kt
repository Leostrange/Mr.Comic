package io.leostrange.mrcomic.feature.reader.domain.crop

import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

/**
 * Automatic detection of empty page margins ("Автоматическая" preset).
 *
 * The core works on a small luminance sampling grid so it stays pure Kotlin
 * and unit-testable; the Android Bitmap adapter lives in the UI layer.
 */
object MarginCropAutoDetector {

    /**
     * @param width  sample grid width
     * @param height sample grid height
     * @param luminance luminance sample in 0..255 at grid position (x, y)
     */
    fun detect(
        width: Int,
        height: Int,
        luminance: (Int, Int) -> Int
    ): ReaderMarginCropSides {
        if (width < MIN_GRID || height < MIN_GRID) return ReaderMarginCropSides()

        val background = backgroundLuminance(width, height, luminance)

        val columnHasContent: (Int) -> Boolean = { x ->
            lineHasContent(height, background) { y -> luminance(x, y) }
        }
        val rowHasContent: (Int) -> Boolean = { y ->
            lineHasContent(width, background) { x -> luminance(x, y) }
        }

        val left = firstContentLine(width, columnHasContent)
        val right = width - 1 - lastContentLine(width, columnHasContent)
        val top = firstContentLine(height, rowHasContent)
        val bottom = height - 1 - lastContentLine(height, rowHasContent)

        return ReaderMarginCropSides(
            left = lineFraction(left, width),
            right = lineFraction(right, width),
            top = lineFraction(top, height),
            bottom = lineFraction(bottom, height)
        )
    }

    /**
     * Background estimate: the median of the four corner patches. Page scans
     * have uniform paper near the borders, so corners reliably represent the
     * empty margin color even when the content block is dark.
     */
    private fun backgroundLuminance(
        width: Int,
        height: Int,
        luminance: (Int, Int) -> Int
    ): Int {
        val patch = min(PATCH, min(width, height) / 2)
        val cornerOffsets = listOf(
            0 to 0,
            width - patch to 0,
            0 to height - patch,
            width - patch to height - patch
        )
        val cornerMedians = cornerOffsets.map { (ox, oy) ->
            val samples = buildList {
                for (y in oy until oy + patch) {
                    for (x in ox until ox + patch) add(luminance(x, y))
                }
            }
            median(samples)
        }
        return median(cornerMedians)
    }

    /**
     * A border line counts as content when at least [CONTENT_LINE_SHARE]%
     * of its samples differ from the paper luminance by more than
     * [LUMINANCE_TOLERANCE]. The line-share test ignores specks and dust.
     */
    private inline fun lineHasContent(
        length: Int,
        background: Int,
        sample: (Int) -> Int
    ): Boolean {
        var contentSamples = 0
        val threshold = max(1, length * CONTENT_LINE_SHARE / 100)
        for (i in 0 until length) {
            if (abs(sample(i) - background) > LUMINANCE_TOLERANCE) {
                contentSamples++
                if (contentSamples >= threshold) return true
            }
        }
        return false
    }

    private inline fun firstContentLine(
        dimension: Int,
        hasContent: (Int) -> Boolean
    ): Int {
        val capIndex = min(dimension - 1, (dimension * ReaderMarginCrop.MAX_SIDE_FRACTION).toInt())
        for (index in 0..capIndex) {
            if (hasContent(index)) return index
        }
        // Content starts beyond the cap (extreme margins): crop up to the cap…
        for (index in capIndex + 1 until dimension) {
            if (hasContent(index)) return capIndex
        }
        // …but a fully blank page keeps its full size (never over-crop).
        return 0
    }

    private inline fun lastContentLine(
        dimension: Int,
        hasContent: (Int) -> Boolean
    ): Int {
        val capIndex = max(0, dimension - 1 - (dimension * ReaderMarginCrop.MAX_SIDE_FRACTION).toInt())
        for (index in dimension - 1 downTo capIndex) {
            if (hasContent(index)) return index
        }
        for (index in capIndex - 1 downTo 0) {
            if (hasContent(index)) return capIndex
        }
        return dimension - 1
    }

    private fun lineFraction(lineIndex: Int, dimension: Int): Float =
        (lineIndex.toFloat() / dimension).coerceIn(0f, ReaderMarginCrop.MAX_SIDE_FRACTION)

    private fun median(values: List<Int>): Int {
        if (values.isEmpty()) return 0
        val sorted = values.sorted()
        return sorted[sorted.size / 2]
    }

    /** Corner background patches are sampled at this size on the grid. */
    private const val PATCH = 6
    private const val MIN_GRID = 12

    /** A grid line counts as content when ≥5% of its samples differ from paper. */
    private const val CONTENT_LINE_SHARE = 5

    /** Luminance delta that separates printed content from paper/scan noise. */
    private const val LUMINANCE_TOLERANCE = 28
}
