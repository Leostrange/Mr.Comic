package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import org.json.JSONArray
import org.json.JSONObject
import java.util.Locale

/**
 * Preset snapshot data classes, serialization, and parsing.
 *
 * Extracted from SettingsViewModel to reduce its size.
 * Contains theme and reader style preset snapshots with JSON round-trip logic.
 */

data class LibraryThemePresetSlot(
    val index: Int,
    val serialized: String? = null
)

data class ReaderStylePresetSlot(
    val index: Int,
    val serialized: String? = null
)

data class ReaderStylePresetEntry(
    val id: String,
    val snapshot: ReaderStylePresetSnapshot
)

internal data class ImportedReaderTypographyPreset(
    val displayName: String,
    val readerPreset: ReadingPreset,
    val textFontSize: Int,
    val textColorScheme: String,
    val textFontFamily: String,
    val textLineHeight: Float,
    val textLetterSpacing: Float,
    val textWordSpacing: Float,
    val textParagraphSpacing: Float,
    val textAlignment: String,
    val textBold: Boolean,
    val textCustomTextColor: Long?,
    val textCustomBackgroundColor: Long?,
    val textCustomAccentColor: Long?,
    val brightness: Float,
    val immersiveMode: Boolean,
    val pageAnimation: String
)

data class ReaderStylePresetSnapshot(
    val displayName: String? = null,
    val readerPreset: String,
    val textFontSize: Int,
    val textColorScheme: String,
    val textFontFamily: String,
    val textLineHeight: Float,
    val textLetterSpacing: Float,
    val textWordSpacing: Float,
    val textParagraphSpacing: Float,
    val textAlignment: String,
    val textBold: Boolean,
    val textCustomTextColor: Long? = null,
    val textCustomBackgroundColor: Long? = null,
    val textCustomAccentColor: Long? = null,
    val brightness: Float,
    val immersiveMode: Boolean,
    val pageAnimation: String
) {
    fun serialize(): String = JSONObject().apply {
        displayName?.takeIf { it.isNotBlank() }?.let { put("displayName", it) }
        put("readerPreset", readerPreset)
        put("textFontSize", textFontSize)
        put("textColorScheme", textColorScheme)
        put("textFontFamily", textFontFamily)
        put("textLineHeight", textLineHeight.toDouble())
        put("textLetterSpacing", textLetterSpacing.toDouble())
        put("textWordSpacing", textWordSpacing.toDouble())
        put("textParagraphSpacing", textParagraphSpacing.toDouble())
        put("textAlignment", textAlignment)
        put("textBold", textBold)
        textCustomTextColor?.let { put("textCustomTextColor", String.format(Locale.US, "#%08X", it)) }
        textCustomBackgroundColor?.let { put("textCustomBackgroundColor", String.format(Locale.US, "#%08X", it)) }
        textCustomAccentColor?.let { put("textCustomAccentColor", String.format(Locale.US, "#%08X", it)) }
        put("brightness", brightness.toDouble())
        put("immersiveMode", immersiveMode)
        put("pageAnimation", pageAnimation)
    }.toString()
}

internal fun JSONObject.optReaderStyleDisplayName(): String? = listOf(
    "displayName",
    "name",
    "title",
    "presetName"
).firstNotNullOfOrNull { key ->
    optString(key).trim().takeIf { it.isNotEmpty() && it != "null" }
}

internal fun JSONObject.optReaderColorLong(vararg keys: String): Long? = keys.firstNotNullOfOrNull { key ->
    if (!has(key)) return@firstNotNullOfOrNull null
    when (val raw = opt(key)) {
        is Number -> raw.toLong()
        is String -> raw.trim()
            .takeIf { it.isNotEmpty() && it != "null" }
            ?.let { value ->
                when {
                    value.startsWith("#") -> value.removePrefix("#").toLongOrNull(16)?.let { hex ->
                        if (value.length == 7) 0xFF000000L or hex else hex
                    }
                    else -> value.toLongOrNull()
                }
            }
        else -> null
    }
}

fun parseReaderStylePreset(serialized: String?): ReaderStylePresetSnapshot? = serialized
    ?.takeIf { it.isNotBlank() }
    ?.let { raw ->
        runCatching {
            val json = JSONObject(raw)
            ReaderStylePresetSnapshot(
                displayName = json.optReaderStyleDisplayName(),
                readerPreset = ReadingPreset.fromStored(
                    json.optString("readerPreset", ReadingPreset.CUSTOM.name)
                ).name,
                textFontSize = json.optInt("textFontSize", 18).coerceIn(12, 32),
                textColorScheme = when (json.optString("textColorScheme", "DAY").uppercase()) {
                    "SEPIA", "NIGHT", "DAY" -> json.optString("textColorScheme", "DAY").uppercase()
                    else -> "DAY"
                },
                textFontFamily = json.optString("textFontFamily", "Georgia").ifBlank { "Georgia" },
                textLineHeight = json.optDouble("textLineHeight", 1.8).toFloat().coerceIn(1.0f, 3.0f),
                textLetterSpacing = json.optDouble("textLetterSpacing", 0.0).toFloat().coerceIn(0f, 0.2f),
                textWordSpacing = json.optDouble("textWordSpacing", 0.0).toFloat().coerceIn(0f, 0.6f),
                textParagraphSpacing = json.optDouble("textParagraphSpacing", 0.2).toFloat().coerceIn(0.1f, 1.2f),
                textAlignment = when (json.optString("textAlignment", "justify").lowercase()) {
                    "justify", "left", "right", "center" -> json.optString("textAlignment", "justify").lowercase()
                    else -> "justify"
                },
                textBold = json.optBoolean("textBold", false),
                textCustomTextColor = json.optReaderColorLong(
                    "textCustomTextColor",
                    "customTextColor",
                    "overrideTextColor"
                ),
                textCustomBackgroundColor = json.optReaderColorLong(
                    "textCustomBackgroundColor",
                    "customBackgroundColor",
                    "overrideBackgroundColor"
                ),
                textCustomAccentColor = json.optReaderColorLong(
                    "textCustomAccentColor",
                    "customAccentColor",
                    "overrideAccentColor"
                ),
                brightness = json.optDouble("brightness", -1.0).toFloat().let {
                    if (it <= 0.01f) -1f else it.coerceIn(0.05f, 1f)
                },
                immersiveMode = json.optBoolean("immersiveMode", false),
                pageAnimation = when (json.optString("pageAnimation", "SLIDE").uppercase()) {
                    "NONE", "FADE", "SLIDE" -> json.optString("pageAnimation", "SLIDE").uppercase()
                    else -> "SLIDE"
                }
            )
        }.getOrNull()
    }

internal fun parseReaderStylePresetEntries(serialized: String?): List<ReaderStylePresetEntry> = serialized
    ?.takeIf { it.isNotBlank() }
    ?.let { raw ->
        runCatching {
            val jsonArray = JSONArray(raw)
            buildList {
                for (index in 0 until jsonArray.length()) {
                    val item = jsonArray.optJSONObject(index) ?: continue
                    val snapshot = parseReaderStylePreset(item.toString()) ?: continue
                    val id = item.optString("id").trim().ifBlank { "preset_${index + 1}" }
                    add(ReaderStylePresetEntry(id = id, snapshot = snapshot))
                }
            }
        }.getOrDefault(emptyList())
    }
    ?: emptyList()

internal fun serializeReaderStylePresetEntries(entries: List<ReaderStylePresetEntry>): String = JSONArray().apply {
    entries.forEach { entry ->
        put(JSONObject(entry.snapshot.serialize()).apply { put("id", entry.id) })
    }
}.toString()

internal fun migrateLegacyReaderStyleSlotsToEntries(
    slots: List<ReaderStylePresetSlot>
): List<ReaderStylePresetEntry> = slots.mapNotNull { slot ->
    parseReaderStylePreset(slot.serialized)?.let { snapshot ->
        ReaderStylePresetEntry(
            id = "legacy_slot_${slot.index}",
            snapshot = snapshot
        )
    }
}
