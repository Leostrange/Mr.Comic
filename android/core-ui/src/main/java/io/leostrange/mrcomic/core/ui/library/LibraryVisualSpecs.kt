package io.leostrange.mrcomic.core.ui.library

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.height
import androidx.compose.material3.ColorScheme
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicElevationTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicLibraryColorTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicLibraryStyleTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicRadiusTokens

data class LibraryBackgroundSpec(
    val baseColor: Color,
    val overlayBrushes: List<Brush>,
    val imageAlpha: Float,
    val imageVeilColor: Color
)

data class LibraryShelfSpec(
    val height: Dp,
    val baseBrush: Brush,
    val rimColor: Color,
    val highlightColor: Color,
    val glowBrush: Brush? = null
)

enum class LibraryBackdropVariant { LIGHT, DARK, AMOLED }

internal fun resolveLibraryBackdropVariant(colorScheme: ColorScheme): LibraryBackdropVariant {
    val backgroundLuminance = colorScheme.background.luminance()
    val surfaceLuminance = colorScheme.surface.luminance()
    return when {
        backgroundLuminance < 0.018f && surfaceLuminance < 0.03f -> LibraryBackdropVariant.AMOLED
        backgroundLuminance < 0.42f -> LibraryBackdropVariant.DARK
        else -> LibraryBackdropVariant.LIGHT
    }
}

internal fun backdropVariantColor(
    variant: LibraryBackdropVariant,
    light: Color,
    dark: Color,
    amoled: Color
): Color = when (variant) {
    LibraryBackdropVariant.LIGHT -> light
    LibraryBackdropVariant.DARK -> dark
    LibraryBackdropVariant.AMOLED -> amoled
}

private fun backdropVariantAlpha(
    variant: LibraryBackdropVariant,
    light: Float,
    dark: Float,
    amoled: Float
): Float = when (variant) {
    LibraryBackdropVariant.LIGHT -> light
    LibraryBackdropVariant.DARK -> dark
    LibraryBackdropVariant.AMOLED -> amoled
}

fun normalizeLibraryBackgroundStyle(raw: String): String = when (raw.uppercase()) {
    "AURORA" -> MrComicLibraryStyleTokens.BackgroundAuroraMist
    "CINEMA" -> MrComicLibraryStyleTokens.BackgroundCinemaNoir
    "PAPER" -> MrComicLibraryStyleTokens.BackgroundPaperGrain
    "DARK_CABINET" -> MrComicLibraryStyleTokens.BackgroundDarkStudy
    "ORANGERY" -> MrComicLibraryStyleTokens.BackgroundLightGreenhouse
    "LAB" -> MrComicLibraryStyleTokens.BackgroundScienceLab
    "CITY" -> MrComicLibraryStyleTokens.BackgroundCityLibrary
    "GLASS" -> MrComicLibraryStyleTokens.BackgroundLiquidGlass
    "MICA" -> MrComicLibraryStyleTokens.BackgroundMidnightMica
    "SUNSET" -> MrComicLibraryStyleTokens.BackgroundSunsetHaze
    else -> raw.uppercase()
}

fun normalizeLibraryShelfStyle(raw: String): String = when (raw.uppercase()) {
    "WOOD" -> MrComicLibraryStyleTokens.ShelfOak
    "MAHOGANY" -> MrComicLibraryStyleTokens.ShelfMahogany
    "CHERRY" -> MrComicLibraryStyleTokens.ShelfCherry
    "MAPLE" -> MrComicLibraryStyleTokens.ShelfMaple
    "BLACK_METAL" -> MrComicLibraryStyleTokens.ShelfBlackMetal
    "ALUMINIUM" -> MrComicLibraryStyleTokens.ShelfAluminum
    "FROSTED" -> MrComicLibraryStyleTokens.ShelfFrost
    "FLOATING" -> MrComicLibraryStyleTokens.ShelfFloat
    else -> raw.uppercase()
}

fun normalizeLibraryGraphicCoverStyle(raw: String): String = when (raw) {
    "CLASSIC" -> MrComicLibraryStyleTokens.CoverPoster
    "DARK" -> MrComicLibraryStyleTokens.CoverInk
    else -> raw.uppercase()
}.let {
    when (it) {
        MrComicLibraryStyleTokens.CoverPoster,
        MrComicLibraryStyleTokens.CoverInk,
        MrComicLibraryStyleTokens.CoverMinimal -> it
        else -> DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
    }
}

const val DEFAULT_LIBRARY_BACKGROUND_STYLE = MrComicLibraryStyleTokens.BackgroundPaperGrain
const val DEFAULT_LIBRARY_SHELF_STYLE = MrComicLibraryStyleTokens.ShelfOak
const val DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE = MrComicLibraryStyleTokens.CoverMinimal
const val DEFAULT_LIBRARY_CARD_STYLE = "BALANCED"
const val DEFAULT_LIBRARY_THUMBNAIL_MODE = "RECTANGLE"
const val DEFAULT_LIBRARY_COVER_SCALE = "CROP"
const val DEFAULT_LIBRARY_BACKDROP_STRENGTH = 0.42f
const val DEFAULT_LIBRARY_BACKGROUND_BLUR = 0.16f
const val DEFAULT_LIBRARY_BACKGROUND_VEIL = 0.12f
const val DEFAULT_LIBRARY_SHELF_DEPTH = 0.42f
const val DEFAULT_LIBRARY_CARD_SHADOW = 0.18f
const val DEFAULT_LIBRARY_TITLE_SCALE = 1.0f
const val DEFAULT_LIBRARY_TITLE_LINES = 2
const val DEFAULT_LIBRARY_CARD_STROKE = 0.18f
const val DEFAULT_LIBRARY_CARD_CORNER_RADIUS = MrComicRadiusTokens.DefaultCornerRadius
const val DEFAULT_LIBRARY_TITLE_PANEL_OPACITY = 0.42f

private fun resolveLibraryBackdropIntensity(
    backdropStrength: Float,
    variant: LibraryBackdropVariant,
    style: String
): Float {
    // STYLE-BACKDROP: raised across the board — the previous values rendered the
    // styled backdrops nearly invisible (≈0.03 alpha), which read as flat gray.
    val variantScale = when (variant) {
        LibraryBackdropVariant.LIGHT -> 0.92f
        LibraryBackdropVariant.DARK -> 0.66f
        LibraryBackdropVariant.AMOLED -> 0.34f
    }
    val styleScale = when (style) {
        "CITY_LIBRARY" -> 0.74f
        "LIGHT_GREENHOUSE" -> 0.78f
        "SCIENCE_LAB" -> 0.82f
        "DARK_STUDY" -> 0.8f
        "LIQUID_GLASS" -> 0.7f
        "MIDNIGHT_MICA" -> 0.74f
        "SUNSET_HAZE" -> 0.76f
        "IMAGE" -> 0.64f
        else -> 0.88f
    }
    return (0.032f + backdropStrength.coerceIn(0f, 1f) * 0.17f) * variantScale * styleScale
}

internal fun resolveLibraryDetailIntensity(
    intensity: Float,
    variant: LibraryBackdropVariant,
    style: String
): Float {
    val variantScale = when (variant) {
        LibraryBackdropVariant.LIGHT -> 0.62f
        LibraryBackdropVariant.DARK -> 0.46f
        LibraryBackdropVariant.AMOLED -> 0.2f
    }
    val styleScale = when (style) {
        "CITY_LIBRARY" -> 0.52f
        "LIGHT_GREENHOUSE" -> 0.58f
        "SCIENCE_LAB" -> 0.64f
        "DARK_STUDY" -> 0.66f
        "LIQUID_GLASS" -> 0.54f
        "MIDNIGHT_MICA" -> 0.58f
        "SUNSET_HAZE" -> 0.56f
        "IMAGE" -> 0.0f
        else -> 0.72f
    }
    return intensity * variantScale * styleScale
}

fun resolveLibraryBackgroundSpec(
    rawStyle: String,
    colorScheme: ColorScheme,
    variant: LibraryBackdropVariant,
    backdropStrength: Float,
    imageVeil: Float
): LibraryBackgroundSpec {
    val style = normalizeLibraryBackgroundStyle(rawStyle)
    val intensity = resolveLibraryBackdropIntensity(
        backdropStrength = backdropStrength,
        variant = variant,
        style = style
    )
    val veilAmount = imageVeil.coerceIn(0f, 1f)
    val background = colorScheme.background
    val surface = colorScheme.surface
    val primary = colorScheme.primary
    val secondary = colorScheme.secondary
    val tertiary = colorScheme.tertiary

    return when (style) {
        "DARK_STUDY" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFE5D8C6),
                dark = Color(0xFF1A120E),
                amoled = Color(0xFF060504)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF0E6D7), Color(0xFF2C1C15), Color(0xFF120E0A)),
                        backdropVariantColor(variant, Color(0xFFE3D5C5), Color(0xFF1B130F), Color(0xFF080605)),
                        backdropVariantColor(variant, Color(0xFFD5C7B7), Color(0xFF110B08), Color(0xFF020202))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        backdropVariantColor(variant, Color(0xFFF1CF95), Color(0xFFE6B977), Color(0xFFC68D42))
                            .copy(alpha = 0.08f + intensity * backdropVariantAlpha(variant, 0.32f, 0.26f, 0.18f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.1f, 0.06f) + intensity * 0.04f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF4EBDD), Color(0xFF120C09), Color(0xFF050403))
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.28f, 0.42f) + veilAmount * 0.26f)
        )
        "LIGHT_GREENHOUSE" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFF3EBDD),
                dark = Color(0xFF1C241C),
                amoled = Color(0xFF050805)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF9F4EA), Color(0xFF263128), Color(0xFF0B100C)),
                        backdropVariantColor(variant, Color(0xFFE9E0CE), Color(0xFF1B241E), Color(0xFF050805)),
                        backdropVariantColor(variant, Color(0xFFD6D1BC), Color(0xFF111814), Color(0xFF020302))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        backdropVariantColor(variant, Color(0xFFB5D2A3), Color(0xFF7AA06A), Color(0xFF476043))
                            .copy(alpha = 0.08f + intensity * backdropVariantAlpha(variant, 0.24f, 0.2f, 0.12f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.1f, 0.08f, 0.05f) + intensity * 0.04f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF5F0E4), Color(0xFF0F130F), Color(0xFF020402))
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.24f, 0.36f) + veilAmount * 0.24f)
        )
        "SCIENCE_LAB" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFE2E9EF),
                dark = Color(0xFF111820),
                amoled = Color(0xFF030609)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF0F4F8), Color(0xFF202A34), Color(0xFF0C1116)),
                        backdropVariantColor(variant, Color(0xFFD6E0E8), Color(0xFF111820), Color(0xFF05080B)),
                        backdropVariantColor(variant, Color(0xFFBCC8D2), Color(0xFF0A0F14), Color(0xFF010203))
                    )
                ),
                Brush.linearGradient(
                    colors = listOf(
                        Color.Transparent,
                        Color(0xFF6FD8FF).copy(alpha = 0.08f + intensity * backdropVariantAlpha(variant, 0.18f, 0.22f, 0.14f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.1f, 0.06f) + intensity * 0.04f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF1F6FA), Color(0xFF091018), Color(0xFF010307))
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.26f, 0.4f) + veilAmount * 0.24f)
        )
        "CITY_LIBRARY" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFD9DEE1),
                dark = Color(0xFF131920),
                amoled = Color(0xFF020304)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFE7EAEC), Color(0xFF1A222B), Color(0xFF0B0F13)),
                        backdropVariantColor(variant, Color(0xFFD1D6DA), Color(0xFF11171D), Color(0xFF040608)),
                        backdropVariantColor(variant, Color(0xFFB7BEC5), Color(0xFF0A0F13), Color(0xFF010203))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.03f + intensity * backdropVariantAlpha(variant, 0.12f, 0.08f, 0.04f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.08f, 0.07f, 0.04f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF0F3F5), Color(0xFF0B1015), Color(0xFF010203))
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.24f, 0.36f) + veilAmount * 0.22f)
        )
        "LIQUID_GLASS" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFE7EEF8),
                dark = Color(0xFF101A28),
                amoled = Color(0xFF02060D)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF3F7FC), Color(0xFF152233), Color(0xFF060B12)),
                        backdropVariantColor(variant, Color(0xFFDCE7F4), Color(0xFF101824), Color(0xFF03070B)),
                        backdropVariantColor(variant, Color(0xFFC8D8EA), Color(0xFF0A1018), Color(0xFF010204))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.06f + intensity * backdropVariantAlpha(variant, 0.22f, 0.18f, 0.08f)),
                        Color.Transparent
                    )
                ),
                Brush.linearGradient(
                    colors = listOf(
                        Color.Transparent,
                        Color(0xFF8BC7FF).copy(alpha = 0.05f + intensity * backdropVariantAlpha(variant, 0.14f, 0.18f, 0.1f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.1f, 0.06f) + intensity * 0.04f,
            imageVeilColor = backdropVariantColor(
                variant,
                Color(0xFFF6FAFF),
                Color(0xFF09111B),
                Color(0xFF010305)
            ).copy(alpha = backdropVariantAlpha(variant, 0.14f, 0.18f, 0.26f) + veilAmount * 0.2f)
        )
        "MIDNIGHT_MICA" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFDDE2E9),
                dark = Color(0xFF0E121A),
                amoled = Color(0xFF010203)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFEAEFF5), Color(0xFF161C27), Color(0xFF06080B)),
                        backdropVariantColor(variant, Color(0xFFD5DDE7), Color(0xFF0F141D), Color(0xFF020304)),
                        backdropVariantColor(variant, Color(0xFFB9C4D2), Color(0xFF080C11), Color(0xFF000101))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color(0xFFBFCBE0).copy(alpha = 0.06f + intensity * backdropVariantAlpha(variant, 0.18f, 0.16f, 0.08f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.1f, 0.08f, 0.05f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(
                variant,
                Color(0xFFF2F4F8),
                Color(0xFF090D12),
                Color(0xFF010102)
            ).copy(alpha = backdropVariantAlpha(variant, 0.16f, 0.22f, 0.34f) + veilAmount * 0.22f)
        )
        "SUNSET_HAZE" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFF3E3DA),
                dark = Color(0xFF22141A),
                amoled = Color(0xFF080304)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF9EDE7), Color(0xFF35202A), Color(0xFF100709)),
                        backdropVariantColor(variant, Color(0xFFF0D3CB), Color(0xFF24161B), Color(0xFF080405)),
                        backdropVariantColor(variant, Color(0xFFDDA89B), Color(0xFF130B0E), Color(0xFF020101))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color(0xFFFFB38A).copy(alpha = 0.08f + intensity * backdropVariantAlpha(variant, 0.22f, 0.18f, 0.1f)),
                        Color.Transparent
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color(0xFFFCD34D).copy(alpha = 0.04f + intensity * backdropVariantAlpha(variant, 0.1f, 0.08f, 0.04f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.1f, 0.09f, 0.05f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(
                variant,
                Color(0xFFFFF4EE),
                Color(0xFF140A0D),
                Color(0xFF030102)
            ).copy(alpha = backdropVariantAlpha(variant, 0.14f, 0.2f, 0.28f) + veilAmount * 0.2f)
        )
        "CINEMA_NOIR" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFE7DED2),
                dark = Color(0xFF0D1016),
                amoled = Color(0xFF020203)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        lerp(backdropVariantColor(variant, Color(0xFFE8D8C8), Color(0xFF0D1016), Color(0xFF050506)), secondary, intensity * 0.08f),
                        lerp(backdropVariantColor(variant, Color(0xFFD8CCBF), Color(0xFF151B25), Color(0xFF030304)), primary, intensity * 0.06f),
                        backdropVariantColor(variant, Color(0xFFC4B7AA), Color(0xFF090B10), Color(0xFF000000))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.03f + intensity * backdropVariantAlpha(variant, 0.12f, 0.1f, 0.05f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.1f, 0.05f) + intensity * 0.04f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF0E9E0), Color.Black, Color.Black)
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.32f, 0.5f) + veilAmount * 0.24f)
        )
        "PAPER_GRAIN" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFF2E6CF),
                dark = Color(0xFF2A241D),
                amoled = Color(0xFF070605)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF8F1E3), Color(0xFF3A3128), Color(0xFF100D09)),
                        backdropVariantColor(variant, Color(0xFFE8D9C3), Color(0xFF261F19), Color(0xFF070605)),
                        backdropVariantColor(variant, Color(0xFFD9C8AF), Color(0xFF17120E), Color(0xFF020202))
                    )
                ),
                Brush.linearGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.0f),
                        Color(0xFFB38B5C).copy(alpha = 0.04f + intensity * backdropVariantAlpha(variant, 0.14f, 0.12f, 0.06f)),
                        Color.White.copy(alpha = 0.0f)
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.11f, 0.08f, 0.05f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF4EAD6), Color(0xFF17120E), Color(0xFF050403))
                .copy(alpha = backdropVariantAlpha(variant, 0.2f, 0.28f, 0.42f) + veilAmount * 0.24f)
        )
        "MANGA_INK" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = lerp(background, Color(0xFFF5F3EE), 0.78f),
                dark = Color(0xFF171717),
                amoled = Color(0xFF020202)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF9F7F1), Color(0xFF232323), Color(0xFF080808)),
                        backdropVariantColor(variant, Color(0xFFEDE6DA), Color(0xFF171717), Color(0xFF030303)),
                        backdropVariantColor(variant, Color(0xFFE1DBCF), Color(0xFF0F0F0F), Color(0xFF000000))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color(0xFF242424).copy(alpha = 0.06f + intensity * backdropVariantAlpha(variant, 0.16f, 0.14f, 0.08f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.08f, 0.05f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF2EEE7), Color(0xFF111111), Color(0xFF010101))
                .copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.24f, 0.42f) + veilAmount * 0.24f)
        )
        "EINK_WASH" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFE6E6E2),
                dark = Color(0xFF232323),
                amoled = Color(0xFF000000)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF4F4F0), Color(0xFF303030), Color(0xFF0C0C0C)),
                        backdropVariantColor(variant, Color(0xFFE3E3DD), Color(0xFF242424), Color(0xFF050505)),
                        backdropVariantColor(variant, Color(0xFFD2D2CC), Color(0xFF151515), Color(0xFF010101))
                    )
                ),
                Brush.linearGradient(
                    colors = listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.03f + intensity * backdropVariantAlpha(variant, 0.1f, 0.08f, 0.04f)),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.08f, 0.06f, 0.04f) + intensity * 0.02f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF2F2EE), Color(0xFF171717), Color(0xFF000000))
                .copy(alpha = backdropVariantAlpha(variant, 0.22f, 0.26f, 0.44f) + veilAmount * 0.22f)
        )
        "AURORA_MIST" -> LibraryBackgroundSpec(
            baseColor = backdropVariantColor(
                variant,
                light = Color(0xFFEAF0F8),   // --lib-bg-aurora-mist
                dark = Color(0xFF111A28),
                amoled = Color(0xFF020508)
            ),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        backdropVariantColor(variant, Color(0xFFF2F7FE), Color(0xFF16243A), Color(0xFF060B12)),
                        backdropVariantColor(variant, Color(0xFFDDE8F6), Color(0xFF101A28), Color(0xFF030508)),
                        backdropVariantColor(variant, Color(0xFFC8D8EE), Color(0xFF0A1018), Color(0xFF010203))
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color(0xFF7ABFFF).copy(
                            alpha = 0.06f + intensity * backdropVariantAlpha(variant, 0.18f, 0.14f, 0.08f)
                        ),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.10f, 0.08f, 0.05f) + intensity * 0.03f,
            imageVeilColor = backdropVariantColor(variant, Color(0xFFF4F8FF), Color(0xFF090E14), Color(0xFF010203))
                .copy(alpha = backdropVariantAlpha(variant, 0.16f, 0.22f, 0.34f) + veilAmount * 0.22f)
        )
        "IMAGE" -> LibraryBackgroundSpec(
            baseColor = background,
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        background.copy(alpha = backdropVariantAlpha(variant, 0.12f, 0.2f, 0.28f)),
                        Color.Transparent,
                        background.copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.24f, 0.32f))
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.96f, 0.92f, 0.86f),
            imageVeilColor = background.copy(
                alpha = backdropVariantAlpha(variant, 0.08f, 0.14f, 0.22f) + veilAmount * 0.14f
            )
        )
        else -> LibraryBackgroundSpec(
            baseColor = lerp(background, surface, 0.15f),
            overlayBrushes = listOf(
                Brush.verticalGradient(
                    listOf(
                        lerp(background, primary, intensity * 0.55f),
                        lerp(background, secondary, intensity * 0.42f),
                        lerp(background, tertiary, intensity * 0.26f)
                    )
                ),
                Brush.radialGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.03f + intensity * 0.08f),
                        Color.Transparent
                    )
                )
            ),
            imageAlpha = backdropVariantAlpha(variant, 0.12f, 0.1f, 0.06f) + intensity * 0.03f,
            imageVeilColor = background.copy(alpha = backdropVariantAlpha(variant, 0.18f, 0.24f, 0.38f) + veilAmount * 0.2f)
        )
    }
}

fun resolveLibraryShelfSpec(
    rawStyle: String,
    colorScheme: ColorScheme,
    depth: Float
): LibraryShelfSpec? {
    val style = normalizeLibraryShelfStyle(rawStyle)
    val clampedDepth = depth.coerceIn(0f, 1f)
    val height = (8f + (clampedDepth * 8f)).dp

    return when (style) {
        "NONE" -> null
        "GLASS" -> LibraryShelfSpec(
            height = 5.dp + (clampedDepth * 6f).dp,
            baseBrush = Brush.verticalGradient(
                listOf(
                    Color(0xFFE7F6FF).copy(alpha = 0.72f),
                    Color(0xFFB0D6EA).copy(alpha = 0.52f),
                    Color(0xFF5A7285).copy(alpha = 0.42f)
                )
            ),
            rimColor = Color.White.copy(alpha = 0.34f),
            highlightColor = Color.White.copy(alpha = 0.62f),
            glowBrush = Brush.horizontalGradient(
                listOf(
                    Color.Transparent,
                    Color.White.copy(alpha = 0.22f),
                    Color.Transparent
                )
            )
        )
        MrComicLibraryStyleTokens.ShelfOak -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.oakTop, MrComicLibraryColorTokens.oakMiddle, MrComicLibraryColorTokens.oakBottom)
            ),
            rimColor = Color(0xFF2A140A),
            highlightColor = Color(0xFFD7B286).copy(alpha = 0.8f)
        )
        MrComicLibraryStyleTokens.ShelfWalnut -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.walnutTop, MrComicLibraryColorTokens.walnutMiddle, MrComicLibraryColorTokens.walnutBottom)
            ),
            rimColor = Color(0xFF160C07),
            highlightColor = Color(0xFFA9744E).copy(alpha = 0.7f)
        )
        MrComicLibraryStyleTokens.ShelfSteel -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.steelTop, MrComicLibraryColorTokens.steelMiddle, MrComicLibraryColorTokens.steelBottom)
            ),
            rimColor = Color(0xFF313840),
            highlightColor = Color.White.copy(alpha = 0.65f)
        )
        MrComicLibraryStyleTokens.ShelfLacquer -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.lacquerTop, Color(0xFF17101F), Color(0xFF0E0A13))
            ),
            rimColor = Color(0xFF09060D),
            highlightColor = colorScheme.primary.copy(alpha = 0.55f)
        )
        MrComicLibraryStyleTokens.ShelfNeon -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(Color(0xFF0D2230), Color(0xFF123543), Color(0xFF09141E))
            ),
            rimColor = Color(0xFF4DE4FF).copy(alpha = 0.35f),
            highlightColor = MrComicLibraryColorTokens.neonGlow.copy(alpha = 0.95f),
            glowBrush = Brush.horizontalGradient(
                listOf(Color.Transparent, MrComicLibraryColorTokens.neonGlow, Color.Transparent)
            )
        )
        MrComicLibraryStyleTokens.ShelfMahogany -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.mahoganyTop, MrComicLibraryColorTokens.mahoganyMiddle, MrComicLibraryColorTokens.mahoganyBottom)
            ),
            rimColor = Color(0xFF2E120A),
            highlightColor = Color(0xFFD4A574).copy(alpha = 0.8f)
        )
        MrComicLibraryStyleTokens.ShelfCherry -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.cherryTop, MrComicLibraryColorTokens.cherryMiddle, MrComicLibraryColorTokens.cherryBottom)
            ),
            rimColor = Color(0xFF260A0A),
            highlightColor = Color(0xFFC78A8A).copy(alpha = 0.7f)
        )
        MrComicLibraryStyleTokens.ShelfMaple -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.mapleTop, MrComicLibraryColorTokens.mapleMiddle, MrComicLibraryColorTokens.mapleBottom)
            ),
            rimColor = Color(0xFF4A3A2A),
            highlightColor = Color(0xFFF5E6D3).copy(alpha = 0.8f)
        )
        "BLACK_METAL" -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(Color(0xFF2B2B2B), Color(0xFF1A1A1A), Color(0xFF0D0D0D))
            ),
            rimColor = Color(0xFF000000),
            highlightColor = Color(0xFF6E6E6E).copy(alpha = 0.6f),
            glowBrush = Brush.horizontalGradient(
                listOf(Color.Transparent, Color(0xFF6E6E6E), Color.Transparent)
            )
        )
        MrComicLibraryStyleTokens.ShelfAluminum -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(MrComicLibraryColorTokens.aluminumTop, MrComicLibraryColorTokens.aluminumMiddle, MrComicLibraryColorTokens.aluminumBottom)
            ),
            rimColor = Color(0xFF545C66),
            highlightColor = Color.White.copy(alpha = 0.72f)
        )
        "FROST" -> LibraryShelfSpec(
            height = 5.dp + (clampedDepth * 5f).dp,
            baseBrush = Brush.verticalGradient(
                listOf(
                    Color(0xFFF7FBFF).copy(alpha = 0.62f),
                    Color(0xFFDDE9F4).copy(alpha = 0.46f),
                    Color(0xFF8EA8BC).copy(alpha = 0.34f)
                )
            ),
            rimColor = Color.White.copy(alpha = 0.3f),
            highlightColor = Color.White.copy(alpha = 0.72f),
            glowBrush = Brush.horizontalGradient(
                listOf(Color.Transparent, Color.White.copy(alpha = 0.18f), Color.Transparent)
            )
        )
        "FLOAT" -> LibraryShelfSpec(
            height = 3.dp + (clampedDepth * 3f).dp,
            baseBrush = Brush.verticalGradient(
                listOf(
                    colorScheme.surfaceContainerHigh.copy(alpha = 0.56f),
                    colorScheme.surfaceVariant.copy(alpha = 0.38f)
                )
            ),
            rimColor = Color.Transparent,
            highlightColor = Color.White.copy(alpha = 0.1f)
        )
        "MINIMAL" -> LibraryShelfSpec(
            height = 4.dp + (clampedDepth * 4f).dp,
            baseBrush = Brush.verticalGradient(
                listOf(
                    colorScheme.surfaceContainerHigh.copy(alpha = 0.7f),
                    colorScheme.surfaceVariant.copy(alpha = 0.6f)
                )
            ),
            rimColor = colorScheme.outlineVariant.copy(alpha = 0.45f),
            highlightColor = Color.White.copy(alpha = 0.16f)
        )
        else -> LibraryShelfSpec(
            height = height,
            baseBrush = Brush.verticalGradient(
                listOf(
                    colorScheme.surfaceContainerHighest.copy(alpha = 0.75f),
                    colorScheme.surfaceContainerHigh.copy(alpha = 0.65f),
                    colorScheme.surfaceVariant.copy(alpha = 0.55f)
                )
            ),
            rimColor = colorScheme.outlineVariant.copy(alpha = 0.42f),
            highlightColor = Color.White.copy(alpha = 0.24f)
        )
    }
}

fun libraryCardElevation(shadow: Float): Dp =
    MrComicElevationTokens.libraryCardElevation(shadow)

