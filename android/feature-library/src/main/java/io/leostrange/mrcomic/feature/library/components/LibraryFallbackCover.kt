package io.leostrange.mrcomic.feature.library.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.LibraryMusic
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlin.math.abs

/**
 * Kind of fallback cover to render. Each kind picks a distinct visual recipe
 * (icon, label shape, accent) so library shelves remain readable when the
 * source file has no embedded artwork.
 */
enum class LibraryFallbackCoverKind {
    /** A regular book or text document. */
    BOOK,

    /** A single audiobook file (mp3/m4b/ogg/...). */
    AUDIO_FILE,

    /** A folder audiobook (multiple chapters). */
    AUDIO_FOLDER,

    /** A folder of mixed content (books, graphic volumes, etc.). */
    FOLDER,

    /** A graphic volume (comic, manga, PDF) without a cover. */
    GRAPHIC,
}

/**
 * Visual recipe for a fallback cover. The helper is pure so it can be unit
 * tested without a Compose runtime; the Composable consumes it via
 * [rememberLibraryFallbackCoverSpec].
 */
data class LibraryFallbackCoverSpec(
    val seedHue: Float,
    val accent: Color,
    val highlight: Color,
    val deep: Color,
    val letter: String,
    val showLetter: Boolean,
)

/**
 * Build a deterministic visual spec from a title and a [LibraryFallbackCoverKind].
 *
 * - [accent] / [highlight] / [deep] are derived from the active theme so the
 *   fallback stays on-brand across light/dark/AMOLED variants.
 * - [seedHue] is a stable angle (0..360) used to position the gradient
 *   highlights so two cards with the same title look identical.
 * - [letter] is the first non-trivial grapheme of the title. Cyrillic,
 *   CJK, digits and emoji are all supported — the helper trims emoji
 *   variation selectors and zero-width joiners.
 */
fun buildLibraryFallbackCoverSpec(
    title: String,
    kind: LibraryFallbackCoverKind,
    primary: Color,
    secondary: Color,
    tertiary: Color,
    onSurface: Color,
): LibraryFallbackCoverSpec {
    val seedHue = titleFallbackSeedHue(title, kind)
    val palette = fallbackCoverPaletteForKind(
        kind = kind,
        primary = primary,
        secondary = secondary,
        tertiary = tertiary,
        seedHue = seedHue,
    )
    return LibraryFallbackCoverSpec(
        seedHue = seedHue,
        accent = palette.accent,
        highlight = palette.highlight,
        deep = palette.deep,
        letter = firstTitleGrapheme(title, kind),
        showLetter = kind != LibraryFallbackCoverKind.FOLDER,
    )
}

internal data class FallbackCoverPalette(
    val accent: Color,
    val highlight: Color,
    val deep: Color,
)

internal fun fallbackCoverPaletteForKind(
    kind: LibraryFallbackCoverKind,
    primary: Color,
    secondary: Color,
    tertiary: Color,
    seedHue: Float,
): FallbackCoverPalette {
    val baseColor = when (kind) {
        LibraryFallbackCoverKind.BOOK -> primary
        LibraryFallbackCoverKind.GRAPHIC -> primary
        LibraryFallbackCoverKind.AUDIO_FILE -> secondary
        LibraryFallbackCoverKind.AUDIO_FOLDER -> secondary
        LibraryFallbackCoverKind.FOLDER -> tertiary
    }
    // 12% of hue drift on the base keeps same-title cards stable while still
    // giving a different look across distinct titles. The shift is wrapped so
    // negative values stay in 0..1 range.
    val hueShift = (((seedHue - 180f) / 720f) + 1f) % 1f
    val hueShifted = baseColor.copy(
        alpha = 1f,
        red = (baseColor.red + hueShift * 0.08f).coerceIn(0f, 1f),
        green = (baseColor.green + hueShift * 0.05f).coerceIn(0f, 1f),
        blue = (baseColor.blue + hueShift * 0.06f).coerceIn(0f, 1f),
    )
    val isLightSurface = hueShifted.luminance() > 0.55f
    val highlight = lerp(hueShifted, Color.White, if (isLightSurface) 0.22f else 0.34f)
    val deep = lerp(hueShifted, Color.Black, if (isLightSurface) 0.42f else 0.18f)
    return FallbackCoverPalette(
        accent = hueShifted,
        highlight = highlight,
        deep = deep,
    )
}

internal fun titleFallbackSeedHue(title: String, kind: LibraryFallbackCoverKind): Float {
    if (title.isBlank()) return kind.ordinal * 67f
    var hash = 0
    var saltShift = kind.ordinal * 31
    for (codePoint in title.codePoints()) {
        hash = (hash * 131 + codePoint + saltShift) xor (hash ushr 13)
        saltShift = (saltShift + 17) and 0x3F
    }
    val normalized = abs(hash) % 36_000
    return (normalized / 100f) % 360f
}

/**
 * Pick the first meaningful grapheme of [title] for the monogram.
 *
 * Strips:
 * - leading whitespace
 * - common "The / A / An" English articles
 * - leading list markers ("- ", "— ")
 * - emoji variation selectors and zero-width joiners
 *
 * Returns "•" for blank titles so callers always have a renderable string.
 */
internal fun firstTitleGrapheme(title: String, kind: LibraryFallbackCoverKind): String {
    val cleaned = title.trim()
    if (cleaned.isEmpty()) return defaultFallbackLetter(kind)
    // Skip leading invisible/formatting code points: emoji variation selector
    // (0xFE0F), ZWJ (0x200D) and ZWSP (0x200B/0x200C). After skipping, if the
    // string is empty, fall back to the kind-specific placeholder.
    var offset = 0
    while (offset < cleaned.length) {
        val cp = cleaned.codePointAt(offset)
        val isSkippable = cp == 0xFE0F.toInt() ||
            cp == 0x200D.toInt() ||
            cp == 0x200B.toInt() ||
            cp == 0x200C.toInt()
        if (!isSkippable) break
        offset += Character.charCount(cp)
    }
    if (offset >= cleaned.length) return defaultFallbackLetter(kind)
    val trimmed = cleaned.substring(offset)
    val firstCodePoint = trimmed.codePointAt(0)
    // Strip leading articles in any language we know about. Longer articles
    // are checked first so that "An Apple" doesn't match the single-letter
    // "a " article.
    val lower = trimmed.lowercase()
    val articles = listOf(
        "the ", "an ",
        "der ", "die ", "das ",
        "le ", "la ", "les ",
        "el ", "los ", "las ",
        "a ",
    )
    for (article in articles) {
        if (lower.startsWith(article) && lower.length > article.length) {
            return trimmed.substring(article.length, article.length + 1).uppercase()
        }
    }
    // Strip common list markers.
    val listMarkers = listOf("- ", "— ", "* ", "· ", "• ")
    for (marker in listMarkers) {
        if (trimmed.startsWith(marker) && trimmed.length > marker.length) {
            return trimmed.substring(marker.length, marker.length + 1).uppercase()
        }
    }
    return String(Character.toChars(firstCodePoint)).uppercase()
}

private fun defaultFallbackLetter(kind: LibraryFallbackCoverKind): String = when (kind) {
    LibraryFallbackCoverKind.BOOK -> "B"
    LibraryFallbackCoverKind.GRAPHIC -> "G"
    LibraryFallbackCoverKind.AUDIO_FILE -> "♪"
    LibraryFallbackCoverKind.AUDIO_FOLDER -> "♫"
    LibraryFallbackCoverKind.FOLDER -> "•"
}

/**
 * Stable spec for the active theme. Compose callers should always go through
 * this helper to keep the recipe in sync with [buildLibraryFallbackCoverSpec].
 */
@Composable
fun rememberLibraryFallbackCoverSpec(
    title: String,
    kind: LibraryFallbackCoverKind,
): LibraryFallbackCoverSpec {
    val primary = MaterialTheme.colorScheme.primary
    val secondary = MaterialTheme.colorScheme.secondary
    val tertiary = MaterialTheme.colorScheme.tertiary
    val onSurface = MaterialTheme.colorScheme.onSurface
    return remember(title, kind, primary, secondary, tertiary, onSurface) {
        buildLibraryFallbackCoverSpec(
            title = title,
            kind = kind,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
    }
}

/**
 * Drop-in fallback cover for any library card whose source file has no
 * embedded artwork. Renders a soft diagonal gradient with a monogram letter
 * and a small type icon, both themed to the current palette.
 */
@Composable
fun LibraryFallbackCover(
    title: String,
    kind: LibraryFallbackCoverKind,
    modifier: Modifier = Modifier,
    shape: Shape? = null,
    showIcon: Boolean = true,
    letterFontSize: TextUnit = 28.sp,
    iconSize: Dp = 18.dp,
) {
    val spec = rememberLibraryFallbackCoverSpec(title = title, kind = kind)
    val onAccent = if (spec.accent.luminance() > 0.55f) Color.Black else Color.White
    val baseModifier = if (shape != null) modifier.clip(shape) else modifier
    Box(modifier = baseModifier.background(spec.deep)) {
        FallbackCoverBackdrop(
            accent = spec.accent,
            highlight = spec.highlight,
            seedHue = spec.seedHue,
            modifier = Modifier.fillMaxSize(),
        )
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(8.dp),
            verticalArrangement = Arrangement.SpaceBetween,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            if (showIcon) {
                Icon(
                    imageVector = fallbackCoverIcon(kind),
                    contentDescription = null,
                    tint = onAccent.copy(alpha = 0.78f),
                    modifier = Modifier.size(iconSize),
                )
            } else {
                Box(modifier = Modifier.size(iconSize))
            }
            if (spec.showLetter) {
                Text(
                    text = spec.letter,
                    color = onAccent.copy(alpha = 0.94f),
                    fontWeight = FontWeight.Black,
                    fontSize = letterFontSize,
                    maxLines = 1,
                    textAlign = TextAlign.Center,
                    overflow = TextOverflow.Visible,
                )
            }
        }
    }
}

/**
 * Backwards-compatible convenience wrapper that renders a folder-style
 * cover (icon only, no monogram). The legacy call sites use this shape
 * for LibraryFolderItem and audiobook folder covers.
 */
@Composable
fun LibraryFallbackFolderCover(
    title: String,
    kind: LibraryFallbackCoverKind = LibraryFallbackCoverKind.FOLDER,
    modifier: Modifier = Modifier,
    shape: Shape? = null,
) {
    LibraryFallbackCover(
        title = title,
        kind = kind,
        modifier = modifier,
        shape = shape,
        showIcon = true,
        letterFontSize = 18.sp,
        iconSize = 28.dp,
    )
}

/**
 * Small badge-style fallback (used in the mini-player and audio list rows).
 */
@Composable
fun LibraryFallbackCoverBadge(
    title: String,
    kind: LibraryFallbackCoverKind,
    modifier: Modifier = Modifier,
    shape: Shape? = null,
    iconSize: Dp = 18.dp,
    showLetter: Boolean = false,
) {
    val spec = rememberLibraryFallbackCoverSpec(title = title, kind = kind)
    val onAccent = if (spec.accent.luminance() > 0.55f) Color.Black else Color.White
    val baseModifier = if (shape != null) modifier.clip(shape) else modifier
    Box(modifier = baseModifier.background(spec.accent), contentAlignment = Alignment.Center) {
        Icon(
            imageVector = fallbackCoverIcon(kind),
            contentDescription = null,
            tint = onAccent.copy(alpha = 0.92f),
            modifier = Modifier.size(iconSize),
        )
        if (showLetter) {
            Text(
                text = spec.letter,
                color = onAccent.copy(alpha = 0.96f),
                fontWeight = FontWeight.Black,
                fontSize = 16.sp,
                maxLines = 1,
            )
        }
    }
}

internal fun fallbackCoverIcon(kind: LibraryFallbackCoverKind) = when (kind) {
    LibraryFallbackCoverKind.BOOK,
    LibraryFallbackCoverKind.GRAPHIC -> Icons.AutoMirrored.Filled.MenuBook
    LibraryFallbackCoverKind.AUDIO_FILE -> Icons.Filled.Headphones
    LibraryFallbackCoverKind.AUDIO_FOLDER -> Icons.Filled.LibraryMusic
    LibraryFallbackCoverKind.FOLDER -> Icons.Filled.FolderOpen
}

@Composable
private fun BoxScope.FallbackCoverBackdrop(
    accent: Color,
    highlight: Color,
    seedHue: Float,
    modifier: Modifier = Modifier,
) {
    val angle = (seedHue / 360f) * (Math.PI * 2).toFloat()
    val centerX = 0.5f + kotlin.math.cos(angle) * 0.18f
    val centerY = 0.5f + kotlin.math.sin(angle) * 0.18f
    val highlightCenter = Offset(
        x = (0.5f + kotlin.math.cos(angle + Math.PI.toFloat()) * 0.32f).coerceIn(0f, 1f),
        y = (0.5f + kotlin.math.sin(angle + Math.PI.toFloat()) * 0.32f).coerceIn(0f, 1f),
    )
    Canvas(modifier = modifier) {
        // Diagonal wash.
        drawRect(
            brush = Brush.linearGradient(
                colors = listOf(highlight, accent),
                start = Offset(size.width * 0.05f, size.height * 0.05f),
                end = Offset(size.width * 0.95f, size.height * 0.95f),
            ),
        )
        // Soft accent blob in the upper third.
        drawCircle(
            brush = Brush.radialGradient(
                colors = listOf(
                    highlight.copy(alpha = 0.62f),
                    accent.copy(alpha = 0.18f),
                    Color.Transparent,
                ),
                center = Offset(size.width * centerX, size.height * centerY),
                radius = size.maxDimension * 0.72f,
            ),
            radius = size.maxDimension * 0.72f,
            center = Offset(size.width * centerX, size.height * centerY),
        )
        // Bottom shadow to keep letters readable.
        drawRect(
            brush = Brush.verticalGradient(
                colors = listOf(
                    Color.Transparent,
                    Color.Black.copy(alpha = 0.18f),
                ),
                startY = size.height * 0.55f,
                endY = size.height,
            ),
            topLeft = Offset(0f, size.height * 0.55f),
            size = androidx.compose.ui.geometry.Size(size.width, size.height * 0.45f),
        )
        // Sparkle highlight in the opposite quadrant.
        drawCircle(
            color = Color.White.copy(alpha = 0.18f),
            radius = size.minDimension * 0.06f,
            center = Offset(size.width * highlightCenter.x, size.height * highlightCenter.y),
        )
    }
}

internal fun DrawScope.drawFallbackCoverDebugOverlay() {
    // Reserved for future visual debug overlays; intentionally empty.
}
