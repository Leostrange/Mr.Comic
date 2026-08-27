package io.leostrange.mrcomic.core.ui.library

import android.net.Uri
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.material3.ColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import androidx.compose.ui.draw.blur
import androidx.compose.foundation.Canvas
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.ui.performance.LocalPerformanceUiHints

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
    val variant = resolveLibraryBackdropVariant(colorScheme)
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

    // AMBIENT-WASH: three soft scheme-tinted radial blobs give every backdrop
    // style a gentle sense of depth and tie the background to the active theme
    // palette without touching any individual style spec. Skipped for IMAGE
    // (user photo already carries color) and reduced-visual-effects mode.
    if (!performanceHints.reducedVisualEffects && normalizedStyle != "IMAGE") {
        Canvas(modifier = modifier.fillMaxSize()) {
            val dim = maxOf(size.width, size.height)
            val washAlpha = (0.05f + effectiveBackdropStrength.coerceIn(0f, 1f) * 0.15f) *
                when (variant) {
                    LibraryBackdropVariant.LIGHT -> 1.00f
                    LibraryBackdropVariant.DARK -> 0.78f
                    LibraryBackdropVariant.AMOLED -> 0.38f
                }
            fun drawTintBlob(color: Color, alpha: Float, cx: Float, cy: Float, radiusScale: Float) {
                drawRect(
                    brush = Brush.radialGradient(
                        colors = listOf(color.copy(alpha = alpha), Color.Transparent),
                        center = Offset(size.width * cx, size.height * cy),
                        radius = dim * radiusScale
                    )
                )
            }
            drawTintBlob(colorScheme.primary, washAlpha, 0.14f, 0.10f, 0.85f)
            drawTintBlob(colorScheme.secondary, washAlpha * 0.90f, 0.90f, 0.34f, 0.75f)
            drawTintBlob(colorScheme.tertiary, washAlpha * 0.70f, 0.42f, 0.98f, 0.90f)
        }
    }

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
