package io.leostrange.mrcomic.core.ui.designsystem

/**
 * Semantic opacity levels for the Editorial Ink design system.
 *
 * Use these instead of raw `.copy(alpha = 0.42f)` so the visual language is
 * consistent and tunable in one place. Existing screens still use raw alpha
 * values; new components should prefer these tokens.
 */
object MrComicAlphaTokens {
    /** Faint, ghosted — borders, dividers, disabled icon containers. */
    const val Subtle: Float = 0.6f

    /** Light veil — secondary containers, scrims, badges. */
    const val Soft: Float = 0.8f

    /** Solid — primary surfaces, primary text on background. */
    const val Solid: Float = 1.0f

    /** Half-strength divider — used by inline list separators. */
    const val Hairline: Float = 0.3f
}
