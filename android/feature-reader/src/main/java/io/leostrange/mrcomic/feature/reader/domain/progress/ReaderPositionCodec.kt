package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.core.model.ReadingMode
import org.json.JSONObject

/**
 * JSON codec + legacy migration for [ReaderPosition] (TEXT-01).
 *
 * Serialization is intentionally hand-rolled over `org.json` (available in the Android SDK and
 * mirrored by the `org.json:json` test artifact) so the reader module needs no Gson/serialization
 * plugin for a single persisted blob.
 *
 * Contract:
 *  - unknown fields are ignored (forward-compatible);
 *  - a payload with `schemaVersion > [ReaderPosition.SCHEMA_VERSION]` is rejected (returns null)
 *    so a future schema is never misinterpreted;
 *  - legacy records (no JSON, or schemaVersion 0) are converted by [fromLegacy] into a position
 *    that is explicitly a coarse fallback — it never pretends to know the sub-page or anchor.
 */
object ReaderPositionCodec {

    private const val KEY_SCHEMA_VERSION = "v"
    private const val KEY_SECTION_INDEX = "s"
    private const val KEY_VISUAL_PAGE = "p"
    private const val KEY_CHAR_OFFSET = "c"
    private const val KEY_DOM_ANCHOR = "a"
    private const val KEY_MODE = "m"
    private const val KEY_WEBTOON_FRACTION = "w"
    private const val KEY_UPDATED_AT = "t"

    /** Serializes [position] to a compact JSON string; never null. */
    fun encode(position: ReaderPosition): String =
        JSONObject()
            .put(KEY_SCHEMA_VERSION, position.schemaVersion)
            .put(KEY_SECTION_INDEX, position.engineSectionIndex)
            .put(KEY_VISUAL_PAGE, position.visualPageIndex)
            .apply {
                position.characterOffset?.let { put(KEY_CHAR_OFFSET, it) }
                position.domAnchor?.let { put(KEY_DOM_ANCHOR, it) }
                position.webtoonScrollFraction?.let { put(KEY_WEBTOON_FRACTION, it) }
            }
            .put(KEY_MODE, position.mode.name)
            .put(KEY_UPDATED_AT, position.updatedAtMillis)
            .toString()

    /**
     * Parses a persisted JSON string back into a [ReaderPosition].
     *
     * Returns null for malformed JSON, a missing section index, or a payload written by a newer
     * schema version than this build understands. Callers fall back to legacy handling on null.
     */
    fun decode(json: String?): ReaderPosition? {
        if (json.isNullOrBlank()) return null
        val obj = runCatching { JSONObject(json) }.getOrNull() ?: return null
        val version = obj.optInt(KEY_SCHEMA_VERSION, ReaderPosition.LEGACY_SCHEMA_VERSION)
        if (version > ReaderPosition.SCHEMA_VERSION) return null
        val sectionIndex = obj.optInt(KEY_SECTION_INDEX, -1)
        if (sectionIndex < 0) return null
        val modeName = obj.optString(KEY_MODE, ReadingMode.PAGE_LTR.name)
        val mode = runCatching { ReadingMode.valueOf(modeName) }.getOrDefault(ReadingMode.PAGE_LTR)
        val rawFraction = if (obj.has(KEY_WEBTOON_FRACTION)) obj.optDouble(KEY_WEBTOON_FRACTION) else null
        return ReaderPosition(
            engineSectionIndex = sectionIndex,
            visualPageIndex = obj.optInt(KEY_VISUAL_PAGE, 0).coerceAtLeast(0),
            characterOffset = if (obj.has(KEY_CHAR_OFFSET)) obj.optInt(KEY_CHAR_OFFSET) else null,
            domAnchor = obj.optString(KEY_DOM_ANCHOR).takeIf { it.isNotBlank() },
            mode = mode,
            webtoonScrollFraction = sanitizeFraction(rawFraction),
            updatedAtMillis = obj.optLong(KEY_UPDATED_AT, 0L),
            schemaVersion = version,
        )
    }

    /**
     * Converts a legacy persisted record into a [ReaderPosition].
     *
     * Legacy records only stored a raw visual page (and, since a later build, an optional
     * character offset). [engineSectionIndex] and [visualPageIndex] are both mapped to that raw
     * page and the position is tagged [ReaderPosition.LEGACY_SCHEMA_VERSION] so callers know it
     * is a coarse fallback — never a precise text position.
     */
    fun fromLegacy(
        currentPage: Int,
        characterOffset: Int?,
        mode: ReadingMode = ReadingMode.PAGE_LTR,
        updatedAtMillis: Long = 0L,
    ): ReaderPosition = ReaderPosition(
        engineSectionIndex = currentPage.coerceAtLeast(0),
        visualPageIndex = currentPage.coerceAtLeast(0),
        characterOffset = characterOffset?.takeIf { it > 0 },
        mode = mode,
        updatedAtMillis = updatedAtMillis,
        schemaVersion = ReaderPosition.LEGACY_SCHEMA_VERSION,
    )

    /** Returns null for NaN / Infinity / out-of-range; keeps [ReaderPosition] scroll data sane. */
    private fun sanitizeFraction(value: Double?): Float? {
        if (value == null) return null
        if (!value.isFinite() || value < 0.0 || value > 1.0) return null
        return value.toFloat()
    }
}
