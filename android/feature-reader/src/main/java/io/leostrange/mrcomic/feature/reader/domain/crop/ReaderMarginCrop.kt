package io.leostrange.mrcomic.feature.reader.domain.crop

/**
 * Per-side document margin crop ("обрезка пустых полей").
 *
 * All values are fractions of the page size (0..[MAX_SIDE_FRACTION]) and are
 * stored per side so PDF/DJVU pages with asymmetric scans can be cropped
 * precisely. Pure Kotlin: no Android dependencies, unit-testable.
 */
data class ReaderMarginCrop(
    val enabled: Boolean = false,
    val left: Float = 0f,
    val top: Float = 0f,
    val right: Float = 0f,
    val bottom: Float = 0f,
    val symmetric: Boolean = true,
    val showWarning: Boolean = true
) {
    /** Crop is visually active only when enabled and at least one side is non-zero. */
    val hasVisibleCrop: Boolean
        get() = left > 0f || top > 0f || right > 0f || bottom > 0f

    val isActive: Boolean
        get() = enabled && hasVisibleCrop

    fun clamped(): ReaderMarginCrop = copy(
        left = coerceSide(left),
        top = coerceSide(top),
        right = coerceSide(right),
        bottom = coerceSide(bottom)
    )

    /**
     * Enforces the symmetric invariant (left == right, top == bottom).
     * Keeps the larger of each pair so enabling symmetric never silently
     * reduces an already configured crop.
     */
    fun withSymmetricEnforced(): ReaderMarginCrop {
        val base = clamped()
        if (!base.symmetric) return base
        return base.copy(
            left = maxOf(base.left, base.right),
            right = maxOf(base.left, base.right),
            top = maxOf(base.top, base.bottom),
            bottom = maxOf(base.top, base.bottom)
        )
    }

    /** Averages each axis pair; used when the user turns symmetric mode on. */
    fun withPairsAveraged(): ReaderMarginCrop {
        val base = clamped()
        val horizontal = (base.left + base.right) / 2f
        val vertical = (base.top + base.bottom) / 2f
        return base.copy(
            left = horizontal,
            right = horizontal,
            top = vertical,
            bottom = vertical
        )
    }

    /**
     * Sets one side. In symmetric mode the opposite side of the same axis
     * follows the new value.
     */
    fun withSide(side: ReaderMarginCropSide, value: Float): ReaderMarginCrop {
        val safe = coerceSide(value)
        val base = clamped()
        return when (side) {
            ReaderMarginCropSide.LEFT ->
                if (base.symmetric) base.copy(left = safe, right = safe) else base.copy(left = safe)
            ReaderMarginCropSide.RIGHT ->
                if (base.symmetric) base.copy(left = safe, right = safe) else base.copy(right = safe)
            ReaderMarginCropSide.TOP ->
                if (base.symmetric) base.copy(top = safe, bottom = safe) else base.copy(top = safe)
            ReaderMarginCropSide.BOTTOM ->
                if (base.symmetric) base.copy(top = safe, bottom = safe) else base.copy(bottom = safe)
        }
        // NOTE: `enabled` is intentionally untouched here — the enable toggle is
        // a separate control (matches the reference dialog where sides can be
        // tuned while crop is disabled).
    }

    /** Seeds per-side values from the legacy symmetric H/V preferences. */
    fun seededFromLegacy(horizontal: Float, vertical: Float): ReaderMarginCrop {
        val h = coerceSide(horizontal)
        val v = coerceSide(vertical)
        return copy(left = h, right = h, top = v, bottom = v)
    }

    companion object {
        /** Hard cap for one side, shared with the rendering crop model. */
        const val MAX_SIDE_FRACTION = 0.22f

        fun coerceSide(value: Float): Float = value.coerceIn(0f, MAX_SIDE_FRACTION)

        /** Default disabled state used when no preferences exist yet. */
        val Default = ReaderMarginCrop()
    }
}

enum class ReaderMarginCropSide(val storedValue: String) {
    LEFT("left"),
    TOP("top"),
    RIGHT("right"),
    BOTTOM("bottom");

    companion object {
        fun fromStored(value: String?): ReaderMarginCropSide? =
            entries.firstOrNull { it.storedValue.equals(value?.trim(), ignoreCase = true) }
    }
}

/**
 * The crop sides that are actually applied to a rendered page: zeros when the
 * format does not support cropping or the user disabled the feature.
 */
data class ReaderMarginCropSides(
    val left: Float = 0f,
    val top: Float = 0f,
    val right: Float = 0f,
    val bottom: Float = 0f
) {
    val isZero: Boolean
        get() = left <= 0f && top <= 0f && right <= 0f && bottom <= 0f
}

fun ReaderMarginCrop.effectiveSides(supported: Boolean): ReaderMarginCropSides {
    val base = clamped()
    if (!supported || !base.isActive) return ReaderMarginCropSides()
    return ReaderMarginCropSides(left = base.left, top = base.top, right = base.right, bottom = base.bottom)
}
