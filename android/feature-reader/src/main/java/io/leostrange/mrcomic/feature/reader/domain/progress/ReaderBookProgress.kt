package io.leostrange.mrcomic.feature.reader.domain.progress

/**
 * Canonical book progress (0..1) derived from a document position.
 *
 * Every progress surface (chrome, slider, header/footer, library) reads this one value, so
 * the visual pagination of a single section can never leak into book-level numbers.
 * Text weights are per-section visible text lengths; when they are unknown each section
 * counts equally.
 */
internal object ReaderBookProgress {

    fun text(
        sectionIndex: Int,
        sectionFraction: Double,
        sectionCount: Int,
        sectionWeights: List<Int>?,
        atEnd: Boolean = false,
    ): Float {
        if (sectionCount <= 0) return 0f
        if (atEnd) return 1f
        val section = sectionIndex.coerceIn(0, sectionCount - 1)
        val fraction = sectionFraction.takeIf { it.isFinite() }?.coerceIn(0.0, 1.0) ?: 0.0
        val weights = sectionWeights?.takeIf { isUsable(it, sectionCount) }
            ?: return ((section + fraction) / sectionCount).toFloat().coerceIn(0f, 1f)
        val total = weights.sumOf { it.toLong() }.toDouble()
        val before = weights.subList(0, section).sumOf { it.toLong() }.toDouble()
        return ((before + weights[section] * fraction) / total).toFloat().coerceIn(0f, 1f)
    }

    /** Inverse of [text]: maps book progress back to a section and a fraction inside it. */
    fun locate(progress: Float, sectionCount: Int, sectionWeights: List<Int>?): TextProgressTarget {
        if (sectionCount <= 0) return TextProgressTarget(0, 0.0)
        val p = progress.toDouble().takeIf { it.isFinite() }?.coerceIn(0.0, 1.0) ?: 0.0
        val weights = sectionWeights?.takeIf { isUsable(it, sectionCount) }
        if (weights == null) {
            val scaled = p * sectionCount
            val section = scaled.toInt().coerceAtMost(sectionCount - 1)
            return TextProgressTarget(section, (scaled - section).coerceIn(0.0, 1.0))
        }
        val target = p * weights.sumOf { it.toLong() }
        var before = 0.0
        weights.forEachIndexed { index, weight ->
            if (weight > 0 && target < before + weight) {
                return TextProgressTarget(index, ((target - before) / weight).coerceIn(0.0, 1.0))
            }
            before += weight
        }
        val last = weights.indexOfLast { it > 0 }.coerceAtLeast(0)
        return TextProgressTarget(last, 1.0)
    }

    fun raster(page: Int, totalPages: Int): Float {
        if (totalPages <= 1) return 0f
        return (page.coerceIn(0, totalPages - 1).toFloat() / (totalPages - 1)).coerceIn(0f, 1f)
    }

    private fun isUsable(weights: List<Int>, sectionCount: Int): Boolean =
        weights.size == sectionCount && weights.all { it >= 0 } && weights.any { it > 0 }
}

internal data class TextProgressTarget(val sectionIndex: Int, val sectionFraction: Double)
