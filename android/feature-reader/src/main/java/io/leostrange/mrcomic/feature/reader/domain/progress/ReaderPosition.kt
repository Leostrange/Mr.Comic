package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.core.model.ReadingMode

/**
 * Structured reading position, replacing the single `currentPage` int as the restore key.
 *
 * TEXT-01: the persistence layer must be able to distinguish
 *  - the engine spine section ([engineSectionIndex]),
 *  - the visual sub-page inside that section ([visualPageIndex]),
 *  - and a scroll/character anchor ([characterOffset] / [webtoonScrollFraction]).
 *
 * The analytical global progress (comic `readingProgress`) is deliberately NOT part of this
 * model — it stays a display metric and never drives restore.
 *
 * @property schemaVersion Bumped when the shape of the persisted position changes; the codec
 *   refuses to parse a payload with a newer version so a future schema can never be silently
 *   misinterpreted as the current one.
 */
data class ReaderPosition(
    /** Engine spine section index (0-based). For raster formats this equals the page index. */
    val engineSectionIndex: Int,
    /** Visual sub-page inside [engineSectionIndex]; 0 when only the section is known. */
    val visualPageIndex: Int = 0,
    /** Character offset (fallback anchor for EPUB/FB2/HTML when no DOM anchor is available). */
    val characterOffset: Int? = null,
    /** DOM anchor (simplified CFI / `id` attribute). Preferred anchor for reflowable text. */
    val domAnchor: String? = null,
    /** Reading mode the position was captured in (PAGE_LTR / PAGE_RTL / WEBTOON / DUAL_PAGE). */
    val mode: ReadingMode = ReadingMode.PAGE_LTR,
    /** Scroll fraction inside the WEBTOON document (0..1), null outside WEBTOON mode. */
    val webtoonScrollFraction: Float? = null,
    /** Epoch millis when the position was captured. */
    val updatedAtMillis: Long = 0L,
    /** Schema version of this payload; see [SCHEMA_VERSION]. */
    val schemaVersion: Int = SCHEMA_VERSION,
) {
    companion object {
        /** Current serialized shape version. Bump on any breaking field change. */
        const val SCHEMA_VERSION: Int = 1

        /** Version written by the legacy single-`currentPage` persistence (no structured fields). */
        const val LEGACY_SCHEMA_VERSION: Int = 0
    }
}
