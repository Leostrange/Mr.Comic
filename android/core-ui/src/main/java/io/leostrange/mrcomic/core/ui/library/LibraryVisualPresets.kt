package io.leostrange.mrcomic.core.ui.library

import androidx.compose.ui.graphics.Color
import org.json.JSONObject
import java.util.Locale

data class LibraryThemePresetSnapshot(
    val backgroundStyle: String,
    val backgroundImageUri: String?,
    val backdropStrength: Float,
    val backgroundBlur: Float,
    val backgroundVeil: Float,
    val shelfStyle: String,
    val shelfDepth: Float,
    val cardShadow: Float,
    val titleScale: Float,
    val titleLines: Int,
    val cardStroke: Float,
    val cardCornerRadius: Int,
    val titlePanelOpacity: Float,
    val cardStyle: String,
    val thumbnailMode: String,
    val graphicCoverStyle: String,
    val coverScale: String,
    val surfaceOpacity: Float
) {
    fun serialize(): String = JSONObject()
        .put("backgroundStyle", backgroundStyle)
        .put("backgroundImageUri", backgroundImageUri ?: JSONObject.NULL)
        .put("backdropStrength", backdropStrength)
        .put("backgroundBlur", backgroundBlur)
        .put("backgroundVeil", backgroundVeil)
        .put("shelfStyle", shelfStyle)
        .put("shelfDepth", shelfDepth)
        .put("cardShadow", cardShadow)
        .put("titleScale", titleScale)
        .put("titleLines", titleLines)
        .put("cardStroke", cardStroke)
        .put("cardCornerRadius", cardCornerRadius)
        .put("titlePanelOpacity", titlePanelOpacity)
        .put("cardStyle", cardStyle)
        .put("thumbnailMode", thumbnailMode)
        .put("graphicCoverStyle", graphicCoverStyle)
        .put("coverScale", coverScale)
        .put("surfaceOpacity", surfaceOpacity)
        .toString()
}
fun parseLibraryThemePreset(raw: String?): LibraryThemePresetSnapshot? {
    if (raw.isNullOrBlank()) return null
    return runCatching {
        val json = JSONObject(raw)
        LibraryThemePresetSnapshot(
            backgroundStyle = normalizeLibraryBackgroundStyle(
                json.optString("backgroundStyle", DEFAULT_LIBRARY_BACKGROUND_STYLE)
            ),
            backgroundImageUri = if (json.isNull("backgroundImageUri")) {
                null
            } else {
                json.optString("backgroundImageUri").takeIf { it.isNotBlank() && it != "null" }
            },
            backdropStrength = json.optDouble("backdropStrength", DEFAULT_LIBRARY_BACKDROP_STRENGTH.toDouble()).toFloat().coerceIn(0f, 1f),
            backgroundBlur = json.optDouble("backgroundBlur", DEFAULT_LIBRARY_BACKGROUND_BLUR.toDouble()).toFloat().coerceIn(0f, 1f),
            backgroundVeil = json.optDouble("backgroundVeil", DEFAULT_LIBRARY_BACKGROUND_VEIL.toDouble()).toFloat().coerceIn(0f, 1f),
            shelfStyle = normalizeLibraryShelfStyle(
                json.optString("shelfStyle", DEFAULT_LIBRARY_SHELF_STYLE)
            ),
            shelfDepth = json.optDouble("shelfDepth", DEFAULT_LIBRARY_SHELF_DEPTH.toDouble()).toFloat().coerceIn(0f, 1f),
            cardShadow = json.optDouble("cardShadow", DEFAULT_LIBRARY_CARD_SHADOW.toDouble()).toFloat().coerceIn(0f, 1f),
            titleScale = json.optDouble("titleScale", DEFAULT_LIBRARY_TITLE_SCALE.toDouble()).toFloat().coerceIn(0.85f, 1.3f),
            titleLines = json.optInt("titleLines", DEFAULT_LIBRARY_TITLE_LINES).coerceIn(1, 3),
            cardStroke = json.optDouble("cardStroke", DEFAULT_LIBRARY_CARD_STROKE.toDouble()).toFloat().coerceIn(0f, 1f),
            cardCornerRadius = json.optInt("cardCornerRadius", DEFAULT_LIBRARY_CARD_CORNER_RADIUS).coerceIn(6, 24),
            titlePanelOpacity = json.optDouble("titlePanelOpacity", DEFAULT_LIBRARY_TITLE_PANEL_OPACITY.toDouble()).toFloat().coerceIn(0.18f, 0.78f),
            cardStyle = json.optString("cardStyle", DEFAULT_LIBRARY_CARD_STYLE),
            thumbnailMode = json.optString("thumbnailMode", DEFAULT_LIBRARY_THUMBNAIL_MODE),
            graphicCoverStyle = normalizeLibraryGraphicCoverStyle(
                json.optString("graphicCoverStyle", DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE)
            ),
            coverScale = json.optString("coverScale", DEFAULT_LIBRARY_COVER_SCALE),
            surfaceOpacity = json.optDouble("surfaceOpacity", 1.0).toFloat().coerceIn(0.35f, 1f)
        )
    }.getOrNull()
}

data class LibraryQuickPresetSpec(
    val id: String,
    val accent: Color,
    val snapshot: LibraryThemePresetSnapshot,
    val useAmoledDark: Boolean
)

const val LIBRARY_QUICK_PRESET_PAPER = "PAPER"
const val LIBRARY_QUICK_PRESET_DARK_SHELF = "DARK_SHELF"
const val LIBRARY_QUICK_PRESET_AMOLED = "AMOLED"
const val LIBRARY_QUICK_PRESET_COMICS_NEON = "COMICS_NEON"

private val libraryQuickPresetSpecs = listOf(
    LibraryQuickPresetSpec(
        id = LIBRARY_QUICK_PRESET_PAPER,
        accent = Color(0xFFC89E63),
        snapshot = LibraryThemePresetSnapshot(
            backgroundStyle = "PAPER_GRAIN",
            backgroundImageUri = null,
            backdropStrength = 0.22f,
            backgroundBlur = 0.08f,
            backgroundVeil = 0.12f,
            shelfStyle = "OAK",
            shelfDepth = 0.42f,
            cardShadow = 0.18f,
            titleScale = 1.0f,
            titleLines = 2,
            cardStroke = 0.16f,
            cardCornerRadius = 12,
            titlePanelOpacity = 0.34f,
            cardStyle = "BALANCED",
            thumbnailMode = "RECTANGLE",
            graphicCoverStyle = "MINIMAL",
            coverScale = DEFAULT_LIBRARY_COVER_SCALE,
            surfaceOpacity = 0.96f
        ),
        useAmoledDark = false
    ),
    LibraryQuickPresetSpec(
        id = LIBRARY_QUICK_PRESET_DARK_SHELF,
        accent = Color(0xFF7E5636),
        snapshot = LibraryThemePresetSnapshot(
            backgroundStyle = "DARK_STUDY",
            backgroundImageUri = null,
            backdropStrength = 0.3f,
            backgroundBlur = 0.14f,
            backgroundVeil = 0.3f,
            shelfStyle = "WALNUT",
            shelfDepth = 0.64f,
            cardShadow = 0.34f,
            titleScale = 1.02f,
            titleLines = 2,
            cardStroke = 0.24f,
            cardCornerRadius = 14,
            titlePanelOpacity = 0.46f,
            cardStyle = "BALANCED",
            thumbnailMode = "RECTANGLE",
            graphicCoverStyle = "INK",
            coverScale = "CROP",
            surfaceOpacity = 0.88f
        ),
        useAmoledDark = false
    ),
    LibraryQuickPresetSpec(
        id = LIBRARY_QUICK_PRESET_AMOLED,
        accent = Color(0xFF5E6A78),
        snapshot = LibraryThemePresetSnapshot(
            backgroundStyle = "EINK_WASH",
            backgroundImageUri = null,
            backdropStrength = 0.08f,
            backgroundBlur = 0.02f,
            backgroundVeil = 0.44f,
            shelfStyle = "MINIMAL",
            shelfDepth = 0.18f,
            cardShadow = 0.12f,
            titleScale = 0.94f,
            titleLines = 1,
            cardStroke = 0.08f,
            cardCornerRadius = 10,
            titlePanelOpacity = 0.24f,
            cardStyle = "COMPACT",
            thumbnailMode = "RECTANGLE",
            graphicCoverStyle = "MINIMAL",
            coverScale = "CROP",
            surfaceOpacity = 0.74f
        ),
        useAmoledDark = true
    ),
    LibraryQuickPresetSpec(
        id = LIBRARY_QUICK_PRESET_COMICS_NEON,
        accent = Color(0xFF41D8F5),
        snapshot = LibraryThemePresetSnapshot(
            backgroundStyle = "MANGA_INK",
            backgroundImageUri = null,
            backdropStrength = 0.32f,
            backgroundBlur = 0.08f,
            backgroundVeil = 0.2f,
            shelfStyle = "NEON",
            shelfDepth = 0.62f,
            cardShadow = 0.46f,
            titleScale = 1.08f,
            titleLines = 2,
            cardStroke = 0.34f,
            cardCornerRadius = 16,
            titlePanelOpacity = 0.5f,
            cardStyle = "SHOWCASE",
            thumbnailMode = "RECTANGLE",
            graphicCoverStyle = "POSTER",
            coverScale = "CROP",
            surfaceOpacity = 0.9f
        ),
        useAmoledDark = false
    )
)

fun libraryQuickPresetSpec(presetId: String): LibraryQuickPresetSpec? =
    libraryQuickPresetSpecs.firstOrNull { it.id == presetId.uppercase(Locale.ROOT) }

fun matchesLibraryQuickPreset(
    snapshot: LibraryThemePresetSnapshot,
    useAmoledDark: Boolean,
    presetId: String
): Boolean = when (presetId.uppercase(Locale.ROOT)) {
    LIBRARY_QUICK_PRESET_PAPER ->
        snapshot.backgroundStyle == "PAPER_GRAIN" &&
            snapshot.shelfStyle == "OAK" &&
            snapshot.graphicCoverStyle == "MINIMAL"
    LIBRARY_QUICK_PRESET_DARK_SHELF ->
        snapshot.backgroundStyle == "DARK_STUDY" &&
            snapshot.shelfStyle == "WALNUT" &&
            snapshot.graphicCoverStyle == "INK"
    LIBRARY_QUICK_PRESET_AMOLED ->
        snapshot.backgroundStyle == "EINK_WASH" &&
            snapshot.shelfStyle == "MINIMAL" &&
            useAmoledDark
    LIBRARY_QUICK_PRESET_COMICS_NEON ->
        snapshot.backgroundStyle == "MANGA_INK" &&
            snapshot.shelfStyle == "NEON" &&
            snapshot.graphicCoverStyle == "POSTER"
    else -> false
}
