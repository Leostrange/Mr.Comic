package com.example.core.ui.library

import android.net.Uri
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.draw.blur
import androidx.compose.foundation.Canvas
import coil.compose.AsyncImage
import com.example.core.ui.designsystem.MrComicElevationTokens
import com.example.core.ui.designsystem.MrComicLibraryColorTokens
import com.example.core.ui.designsystem.MrComicLibraryStyleTokens
import com.example.core.ui.designsystem.MrComicRadiusTokens
import com.example.core.ui.performance.LocalPerformanceUiHints

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

private fun resolveLibraryBackdropVariant(colorScheme: ColorScheme): LibraryBackdropVariant {
    val backgroundLuminance = colorScheme.background.luminance()
    val surfaceLuminance = colorScheme.surface.luminance()
    return when {
        backgroundLuminance < 0.018f && surfaceLuminance < 0.03f -> LibraryBackdropVariant.AMOLED
        backgroundLuminance < 0.42f -> LibraryBackdropVariant.DARK
        else -> LibraryBackdropVariant.LIGHT
    }
}

private fun backdropVariantColor(
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
const val DEFAULT_LIBRARY_BACKDROP_STRENGTH = 0.22f
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
    val variantScale = when (variant) {
        LibraryBackdropVariant.LIGHT -> 0.72f
        LibraryBackdropVariant.DARK -> 0.52f
        LibraryBackdropVariant.AMOLED -> 0.28f
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
    return (0.022f + backdropStrength.coerceIn(0f, 1f) * 0.11f) * variantScale * styleScale
}

private fun resolveLibraryDetailIntensity(
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

@Composable
private fun BoxScope.LibraryDecorLayer(
    normalizedStyle: String,
    intensity: Float,
    variant: LibraryBackdropVariant,
    modifier: Modifier = Modifier
) {
    val detailIntensity = resolveLibraryDetailIntensity(
        intensity = intensity,
        variant = variant,
        style = normalizedStyle
    )
    when (normalizedStyle) {
        "DARK_STUDY" -> Canvas(modifier = modifier.fillMaxSize().blur(48.dp)) {
            // Warm ambient lamp wash without literal scene dressing.
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFFFFD59A).copy(alpha = 0.15f + detailIntensity * 0.15f),
                        Color(0xFFE19A54).copy(alpha = 0.05f + detailIntensity * 0.06f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.86f, size.height * 0.08f),
                    radius = size.minDimension * 0.56f
                ),
                radius = size.minDimension * 0.56f,
                center = Offset(size.width * 0.86f, size.height * 0.08f)
            )
            drawRect(
                brush = Brush.linearGradient(
                    colors = listOf(
                        Color.Transparent,
                        Color(0xFF7A4D2A).copy(alpha = 0.015f + detailIntensity * 0.024f),
                        Color.Transparent
                    ),
                    start = Offset(size.width * 0.58f, 0f),
                    end = Offset(size.width, size.height)
                )
            )
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.Transparent,
                        Color(0xFF1C110B).copy(alpha = 0.08f + detailIntensity * 0.06f)
                    ),
                    startY = size.height * 0.6f,
                    endY = size.height
                ),
                topLeft = Offset(0f, size.height * 0.6f),
                size = Size(size.width, size.height * 0.4f)
            )
            drawRect(
                brush = Brush.radialGradient(
                    listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.08f + detailIntensity * 0.06f)
                    ),
                    center = Offset(size.width / 2f, size.height / 2f),
                    radius = size.maxDimension * 0.72f
                )
            )
        }

        "LIGHT_GREENHOUSE" -> Canvas(modifier = modifier.fillMaxSize().blur(32.dp)) {
            val paneColor = Color.White.copy(alpha = 0.03f + detailIntensity * 0.03f)
            listOf(0.14f, 0.36f, 0.64f, 0.84f).forEach { xFactor ->
                drawLine(
                    color = paneColor,
                    start = Offset(size.width * xFactor, size.height * 0.06f),
                    end = Offset(size.width * xFactor, size.height * 0.88f),
                    strokeWidth = 1.2f
                )
            }
            drawRect(
                brush = Brush.radialGradient(
                    colors = listOf(
                        Color(0xFFD7EDBA).copy(alpha = 0.08f + detailIntensity * 0.06f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.12f, size.height * 0.82f),
                    radius = size.minDimension * 0.36f
                ),
                topLeft = Offset.Zero,
                size = size
            )
            drawRect(
                brush = Brush.radialGradient(
                    colors = listOf(
                        Color(0xFFB8D8A4).copy(alpha = 0.07f + detailIntensity * 0.05f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.88f, size.height * 0.2f),
                    radius = size.minDimension * 0.42f
                ),
                topLeft = Offset.Zero,
                size = size
            )
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color(0xFFFFF8DF).copy(alpha = 0.06f + detailIntensity * 0.04f),
                        Color.Transparent
                    ),
                    startY = 0f,
                    endY = size.height * 0.42f
                ),
                topLeft = Offset.Zero,
                size = Size(size.width, size.height * 0.42f)
            )
        }

        "SCIENCE_LAB" -> Canvas(modifier = modifier.fillMaxSize().blur(40.dp)) {
            val vpX = size.width * 0.50f
            val vpY = size.height * 0.42f
            val gridColor = Color(0xFF6FD8FF).copy(alpha = 0.02f + detailIntensity * 0.03f)
            for (i in 1..6) {
                val t = i / 6f
                val y = vpY + (size.height - vpY) * t * t
                drawLine(gridColor, start = Offset(0f, y), end = Offset(size.width, y), strokeWidth = 0.8f)
            }
            for (i in -4..4) {
                val targetX = size.width / 2f + i * (size.width / 6f)
                drawLine(
                    gridColor,
                    start = Offset(vpX, vpY),
                    end = Offset(targetX, size.height),
                    strokeWidth = 0.8f
                )
            }
            for (i in 1..3) {
                val y = vpY * (1f - i / 5f)
                drawLine(gridColor, start = Offset(0f, y), end = Offset(size.width, y), strokeWidth = 0.6f)
            }
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFF6FD8FF).copy(alpha = 0.08f + intensity * 0.06f),
                        Color(0xFF6FD8FF).copy(alpha = 0.05f + detailIntensity * 0.05f),
                        Color(0xFF1A5080).copy(alpha = 0.06f),
                        Color.Transparent
                    ),
                    center = Offset(vpX, vpY),
                    radius = size.minDimension * 0.38f
                ),
                radius = size.minDimension * 0.38f,
                center = Offset(vpX, vpY)
            )
            val barColor = Color(0xFF00E5FF).copy(alpha = 0.06f + detailIntensity * 0.04f)
            val barWidths = listOf(68f, 95f, 52f)
            barWidths.forEachIndexed { i, w ->
                val y = size.height * (0.2f + i * 0.12f)
                drawRect(barColor, topLeft = Offset(14f, y), size = Size(w, 3f))
                drawCircle(
                    color = Color(0xFF00E5FF).copy(alpha = 0.55f),
                    radius = 3f,
                    center = Offset(14f + w + 5f, y + 1.5f)
                )
            }
            drawRect(
                brush = Brush.radialGradient(
                    listOf(Color.Transparent, Color.Black.copy(alpha = 0.08f + detailIntensity * 0.06f)),
                    center = Offset(size.width / 2f, size.height / 2f),
                    radius = size.maxDimension * 0.78f
                )
            )
        }

        "CITY_LIBRARY" -> Canvas(modifier = modifier.fillMaxSize().blur(32.dp)) {
            val upperTone = backdropVariantColor(
                variant,
                light = Color(0xFFE6EBEF),
                dark = Color(0xFF17212A),
                amoled = Color(0xFF05080A)
            )
            val lowerTone = backdropVariantColor(
                variant,
                light = Color(0xFFD5DDE3),
                dark = Color(0xFF111920),
                amoled = Color(0xFF020304)
            )
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        upperTone.copy(alpha = 0.24f + detailIntensity * 0.04f),
                        lowerTone.copy(alpha = 0.18f + detailIntensity * 0.03f),
                        Color.Transparent,
                        Color.Transparent
                    ),
                    endY = size.height * 0.74f
                )
            )
            val panelColor = backdropVariantColor(
                variant,
                light = Color(0xFF96A4AE),
                dark = Color(0xFF2A3640),
                amoled = Color(0xFF101417)
            ).copy(alpha = 0.07f + detailIntensity * 0.05f)
            listOf(
                0.08f to 0.12f,
                0.24f to 0.16f,
                0.46f to 0.14f,
                0.66f to 0.11f,
                0.82f to 0.1f
            ).forEach { (x, widthFactor) ->
                drawRoundRect(
                    color = panelColor,
                    topLeft = Offset(size.width * x, size.height * 0.12f),
                    size = Size(size.width * widthFactor, size.height * 0.62f)
                )
            }
            for (index in 0..5) {
                val x = size.width * (0.12f + index * 0.14f)
                drawLine(
                    color = Color.White.copy(alpha = 0.02f + detailIntensity * 0.02f),
                    start = Offset(x, size.height * 0.1f),
                    end = Offset(x, size.height * 0.76f),
                    strokeWidth = 1.1f
                )
            }
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.06f + detailIntensity * 0.04f)
                    ),
                    startY = size.height * 0.68f,
                    endY = size.height
                ),
                topLeft = Offset(0f, size.height * 0.68f),
                size = Size(size.width, size.height * 0.32f)
            )
        }

        "CINEMA_NOIR" -> Canvas(modifier = modifier.fillMaxSize().blur(36.dp)) {
            // Spotlight cone from top-right — film-noir aesthetic
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color.White.copy(alpha = 0.04f + detailIntensity * 0.06f),
                        Color.White.copy(alpha = 0.01f + detailIntensity * 0.02f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.78f, size.height * 0.06f),
                    radius = size.minDimension * 0.48f
                ),
                radius = size.minDimension * 0.48f,
                center = Offset(size.width * 0.78f, size.height * 0.06f)
            )
            // Dark lower corners
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.1f + detailIntensity * 0.06f)
                    ),
                    startY = size.height * 0.55f,
                    endY = size.height
                ),
                topLeft = Offset(0f, size.height * 0.55f),
                size = Size(size.width, size.height * 0.45f)
            )
        }

        "PAPER_GRAIN" -> Canvas(modifier = modifier.fillMaxSize().blur(44.dp)) {
            // Warm lamp glow — like reading in candlelight
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFFE8C88A).copy(alpha = 0.06f + detailIntensity * 0.08f),
                        Color(0xFFD4A85C).copy(alpha = 0.02f + detailIntensity * 0.03f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.22f, size.height * 0.14f),
                    radius = size.minDimension * 0.42f
                ),
                radius = size.minDimension * 0.42f,
                center = Offset(size.width * 0.22f, size.height * 0.14f)
            )
            // Edge darkening for depth
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.Transparent,
                        Color(0xFF3D2E1C).copy(alpha = 0.06f + detailIntensity * 0.04f)
                    ),
                    startY = size.height * 0.7f,
                    endY = size.height
                ),
                topLeft = Offset(0f, size.height * 0.7f),
                size = Size(size.width, size.height * 0.3f)
            )
        }

        "MANGA_INK" -> Canvas(modifier = modifier.fillMaxSize().blur(28.dp)) {
            // Faint screen-tone dot grid — manga newspaper texture feel
            val dotAlpha = 0.02f + detailIntensity * 0.03f
            val dotRadius = 1.6f
            val spacing = 18f
            val cols = (size.width / spacing).toInt()
            val rows = (size.height / spacing).toInt()
            for (row in 0..rows step 2) {
                for (col in 0..cols step 2) {
                    val x = col * spacing + if (row % 4 == 0) 0f else spacing * 0.5f
                    val y = row * spacing
                    if (x in 0f..size.width && y in 0f..size.height) {
                        drawCircle(
                            color = Color.Black.copy(alpha = dotAlpha),
                            radius = dotRadius,
                            center = Offset(x, y)
                        )
                    }
                }
            }
            // Ink wash fade at bottom
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.05f + detailIntensity * 0.04f)
                    ),
                    startY = size.height * 0.65f,
                    endY = size.height
                ),
                topLeft = Offset(0f, size.height * 0.65f),
                size = Size(size.width, size.height * 0.35f)
            )
        }

        "AURORA_MIST" -> Canvas(modifier = modifier.fillMaxSize().blur(52.dp)) {
            // Drifting color pools — aurora-like soft blobs
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFF7ABFFF).copy(alpha = 0.06f + detailIntensity * 0.06f),
                        Color(0xFF5A8FCC).copy(alpha = 0.02f + detailIntensity * 0.02f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.3f, size.height * 0.2f),
                    radius = size.minDimension * 0.38f
                ),
                radius = size.minDimension * 0.38f,
                center = Offset(size.width * 0.3f, size.height * 0.2f)
            )
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFFC084FC).copy(alpha = 0.05f + detailIntensity * 0.05f),
                        Color(0xFF9054CC).copy(alpha = 0.02f + detailIntensity * 0.02f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.72f, size.height * 0.55f),
                    radius = size.minDimension * 0.34f
                ),
                radius = size.minDimension * 0.34f,
                center = Offset(size.width * 0.72f, size.height * 0.55f)
            )
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFF6EE7B7).copy(alpha = 0.04f + detailIntensity * 0.04f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.5f, size.height * 0.85f),
                    radius = size.minDimension * 0.28f
                ),
                radius = size.minDimension * 0.28f,
                center = Offset(size.width * 0.5f, size.height * 0.85f)
            )
        }

        "LIQUID_GLASS" -> Canvas(modifier = modifier.fillMaxSize().blur(46.dp)) {
            val paneColor = Color.White.copy(alpha = 0.03f + detailIntensity * 0.04f)
            listOf(
                Offset(size.width * 0.08f, size.height * 0.12f) to Size(size.width * 0.32f, size.height * 0.2f),
                Offset(size.width * 0.48f, size.height * 0.22f) to Size(size.width * 0.38f, size.height * 0.18f),
                Offset(size.width * 0.18f, size.height * 0.58f) to Size(size.width * 0.56f, size.height * 0.16f)
            ).forEach { (offset, panelSize) ->
                drawRoundRect(
                    color = paneColor,
                    topLeft = offset,
                    size = panelSize,
                    cornerRadius = CornerRadius(36f, 36f)
                )
            }
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFF9BCBFF).copy(alpha = 0.06f + detailIntensity * 0.06f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.78f, size.height * 0.14f),
                    radius = size.minDimension * 0.34f
                ),
                radius = size.minDimension * 0.34f,
                center = Offset(size.width * 0.78f, size.height * 0.14f)
            )
        }

        "MIDNIGHT_MICA" -> Canvas(modifier = modifier.fillMaxSize().blur(34.dp)) {
            drawRect(
                brush = Brush.verticalGradient(
                    listOf(
                        Color.White.copy(alpha = 0.02f + detailIntensity * 0.02f),
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.08f + detailIntensity * 0.05f)
                    )
                )
            )
            listOf(0.14f, 0.46f, 0.72f).forEach { xFactor ->
                drawRoundRect(
                    color = Color.White.copy(alpha = 0.02f + detailIntensity * 0.015f),
                    topLeft = Offset(size.width * xFactor, size.height * 0.12f),
                    size = Size(size.width * 0.18f, size.height * 0.62f),
                    cornerRadius = CornerRadius(28f, 28f)
                )
            }
        }

        "SUNSET_HAZE" -> Canvas(modifier = modifier.fillMaxSize().blur(48.dp)) {
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFFFFC58F).copy(alpha = 0.07f + detailIntensity * 0.08f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.18f, size.height * 0.16f),
                    radius = size.minDimension * 0.42f
                ),
                radius = size.minDimension * 0.42f,
                center = Offset(size.width * 0.18f, size.height * 0.16f)
            )
            drawCircle(
                brush = Brush.radialGradient(
                    listOf(
                        Color(0xFFFF8FA3).copy(alpha = 0.05f + detailIntensity * 0.06f),
                        Color.Transparent
                    ),
                    center = Offset(size.width * 0.82f, size.height * 0.62f),
                    radius = size.minDimension * 0.36f
                ),
                radius = size.minDimension * 0.36f,
                center = Offset(size.width * 0.82f, size.height * 0.62f)
            )
        }
    }

    // Vignette for all styled backgrounds
    if (normalizedStyle in setOf(
            "DARK_STUDY", "LIGHT_GREENHOUSE", "SCIENCE_LAB", "CITY_LIBRARY",
            "CINEMA_NOIR", "PAPER_GRAIN", "MANGA_INK", "EINK_WASH", "AURORA_MIST",
            "LIQUID_GLASS", "MIDNIGHT_MICA", "SUNSET_HAZE"
        )
    ) {
        Canvas(modifier = modifier.fillMaxSize()) {
            drawRect(
                brush = Brush.radialGradient(
                    listOf(
                        Color.Transparent,
                        Color.Black.copy(alpha = 0.05f + detailIntensity * 0.04f)
                    ),
                    center = Offset(size.width / 2f, size.height / 2f),
                    radius = size.maxDimension * 0.76f
                )
            )
        }
    }
}

@Composable
fun LibraryBackdropLayer(
    backgroundStyle: String,
    backgroundImageUri: String?,
    colorScheme: ColorScheme,
    backdropStrength: Float,
    backgroundBlur: Float,
    imageVeil: Float,
    modifier: Modifier = Modifier
) {
    val performanceHints = LocalPerformanceUiHints.current
    val normalizedStyle = remember(backgroundStyle) { normalizeLibraryBackgroundStyle(backgroundStyle) }
    val variant = remember(colorScheme) { resolveLibraryBackdropVariant(colorScheme) }
    val effectiveBackdropStrength = if (performanceHints.reducedVisualEffects) {
        backdropStrength.coerceIn(0f, 1f) * 0.35f
    } else {
        backdropStrength
    }
    val effectiveImageVeil = if (performanceHints.reducedVisualEffects) {
        imageVeil.coerceIn(0f, 1f).coerceAtLeast(0.18f)
    } else {
        imageVeil
    }
    val effectiveBackgroundBlur = if (performanceHints.reducedVisualEffects) {
        backgroundBlur.coerceIn(0f, 1f) * 0.28f
    } else {
        backgroundBlur.coerceIn(0f, 1f)
    }
    val overlayBlurModifier = if (effectiveBackgroundBlur > 0.01f) {
        Modifier.blur((6f + effectiveBackgroundBlur * 16f).dp)
    } else {
        Modifier
    }
    val imageBlurModifier = if (effectiveBackgroundBlur > 0.01f) {
        Modifier.blur((8f + effectiveBackgroundBlur * 22f).dp)
    } else {
        Modifier
    }
    val spec = remember(
        normalizedStyle,
        colorScheme,
        variant,
        effectiveBackdropStrength,
        effectiveImageVeil,
        effectiveBackgroundBlur,
        performanceHints.reducedVisualEffects
    ) {
        resolveLibraryBackgroundSpec(
            rawStyle = normalizedStyle,
            colorScheme = colorScheme,
            variant = variant,
            backdropStrength = effectiveBackdropStrength,
            imageVeil = effectiveImageVeil
        )
    }

    Box(modifier = modifier.fillMaxSize().background(spec.baseColor))

     if (normalizedStyle == "IMAGE" && !backgroundImageUri.isNullOrBlank()) {
         AsyncImage(
              model = Uri.parse(backgroundImageUri),
              contentDescription = null,
              contentScale = ContentScale.Crop,
              modifier = modifier.fillMaxSize().then(imageBlurModifier),
              alpha = spec.imageAlpha
         )
         Box(
             modifier = modifier
                 .fillMaxSize()
                 .background(spec.imageVeilColor)
         )
     }

    val overlayBrushes = if (performanceHints.reducedVisualEffects) {
        spec.overlayBrushes.take(1)
    } else {
        spec.overlayBrushes
    }
    overlayBrushes.forEach { brush ->
        Box(modifier = modifier.fillMaxSize().then(overlayBlurModifier).background(brush))
    }

    if (effectiveBackgroundBlur > 0.01f) {
        Box(
            modifier = modifier
                .fillMaxSize()
                .background(
                    colorScheme.surface.copy(
                        alpha = 0.02f + effectiveBackgroundBlur * if (normalizedStyle == "LIQUID_GLASS") 0.14f else 0.08f
                    )
                )
        )
    }

    if (!performanceHints.reducedVisualEffects) {
        Box(modifier = modifier.fillMaxSize().then(overlayBlurModifier)) {
            LibraryDecorLayer(
                normalizedStyle = normalizedStyle,
                intensity = backdropStrength.coerceIn(0f, 1f),
                variant = variant,
                modifier = Modifier.fillMaxSize()
            )
        }
    }
}

@Composable
fun LibraryShelfBar(
    shelfStyle: String,
    colorScheme: ColorScheme,
    depth: Float,
    modifier: Modifier = Modifier
) {
    val spec = remember(shelfStyle, colorScheme, depth) {
        resolveLibraryShelfSpec(
            rawStyle = shelfStyle,
            colorScheme = colorScheme,
            depth = depth
        )
    } ?: return

    val normalizedStyle = normalizeLibraryShelfStyle(shelfStyle)
    val clampedDepth = depth.coerceIn(0f, 1f)
    val isWood = normalizedStyle in setOf("OAK", "WALNUT", "WOOD", "MAHOGANY", "CHERRY", "MAPLE")
    val isGlass = normalizedStyle in setOf("GLASS", "FROST")
    val isNeon = normalizedStyle == "NEON"

    Canvas(
        modifier = modifier
            .fillMaxWidth()
            .height(spec.height + 2.dp)
    ) {
        val w = size.width
        val h = size.height
        val shelfH = h * 0.42f
        val shelfTop = h - shelfH - h * 0.08f
        val shelfCorner = CornerRadius(shelfH * 0.34f, shelfH * 0.34f)

        // Soft ambient shadow under the shelf, without the old heavy stripe.
        drawRoundRect(
            brush = Brush.verticalGradient(
                listOf(
                    Color.Black.copy(alpha = 0.1f + clampedDepth * 0.06f),
                    Color.Transparent
                ),
                startY = shelfTop + shelfH * 0.72f,
                endY = h
            ),
            topLeft = Offset(w * 0.06f, shelfTop + shelfH * 0.72f),
            size = Size(w * 0.88f, h * 0.24f),
            cornerRadius = CornerRadius(h * 0.16f, h * 0.16f)
        )

        // Main shelf beam.
        drawRoundRect(
            brush = spec.baseBrush,
            topLeft = Offset(0f, shelfTop),
            size = Size(w, shelfH),
            cornerRadius = shelfCorner
        )

        // Wood grain stays restrained so shelves do not overpower the covers.
        if (isWood) {
            val grainAlpha = 0.03f + clampedDepth * 0.025f
            val grains = listOf(
                0.18f to 0.55f,
                0.42f to 0.80f,
                0.68f to 0.50f,
                0.86f to 0.70f
            )
            grains.forEach { (xFactor, alphaFactor) ->
                val gx = w * xFactor
                drawLine(
                    Color(0xFF3A1A08).copy(alpha = grainAlpha * alphaFactor),
                    start = Offset(gx, shelfTop + shelfH * 0.14f),
                    end = Offset(gx + w * 0.006f, shelfTop + shelfH * 0.86f),
                    strokeWidth = 0.6f
                )
            }
        }

        // Upper highlight keeps a clean edge without a thick stripe effect.
        drawLine(
            color = spec.highlightColor.copy(alpha = 0.7f),
            start = Offset(w * 0.02f, shelfTop + 1f),
            end = Offset(w * 0.98f, shelfTop + 1f),
            strokeWidth = 1.1f
        )

        // Lower rim
        drawLine(
            color = spec.rimColor.copy(alpha = 0.78f),
            start = Offset(w * 0.02f, shelfTop + shelfH - 1f),
            end = Offset(w * 0.98f, shelfTop + shelfH - 1f),
            strokeWidth = 0.9f
        )

        // Glass refraction
        if (isGlass) {
            drawRoundRect(
                brush = Brush.linearGradient(
                    listOf(
                        Color.Transparent,
                        Color.White.copy(alpha = 0.16f),
                        Color.Transparent
                    ),
                    start = Offset(w * 0.24f, shelfTop),
                    end = Offset(w * 0.54f, shelfTop + shelfH)
                ),
                topLeft = Offset(0f, shelfTop),
                size = Size(w, shelfH),
                cornerRadius = shelfCorner
            )
        }

        // Neon glow stays narrow so it reads like a lit edge, not a painted band.
        if (isNeon) {
            spec.glowBrush?.let { glow ->
                drawRoundRect(
                    brush = glow,
                    topLeft = Offset(0f, shelfTop),
                    size = Size(w, shelfH),
                    cornerRadius = shelfCorner
                )
            }
            drawRoundRect(
                brush = Brush.verticalGradient(
                    listOf(Color(0xFF7AE7FF).copy(alpha = 0.08f), Color.Transparent),
                    startY = shelfTop + shelfH,
                    endY = shelfTop + shelfH + h * 0.18f
                ),
                topLeft = Offset(w * 0.06f, shelfTop + shelfH),
                size = Size(w * 0.88f, h * 0.18f),
                cornerRadius = CornerRadius(h * 0.12f, h * 0.12f)
            )
        }
    }
}
