/*
 * Copyright 2026 Mr.Comic contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.core.model.ReadingMode

/**
 * Cursor coordinates to apply only once the authoritative page count (layout) is known.
 *
 * TEXT-03: PAGE and WEBTOON restore are symmetric — a saved position must never be applied
 * against a provisional one-page model (that would clamp an EPUB mid-book position to the
 * cover), so the opening controller defers this plan until deferred page-count resolution.
 */
internal data class ReaderPositionRestorePlan(
    /** Normalized engine section to open. */
    val startPage: Int,
    /** Visual sub-page inside the section (paged text formats). */
    val sectionCurrentPage: Int,
    /** Character offset cursor (paged text formats); null when unknown. */
    val characterOffset: Int?,
    /** DOM anchor / CFI to scroll to (paged text formats); null when unknown. */
    val domAnchor: String?,
    /** Engine section to scroll to inside the stitched WEBTOON document. */
    val webtoonSectionIndex: Int?,
    /** Free-scroll fraction inside the WEBTOON document (0..1); null when unknown. */
    val webtoonScrollFraction: Float?,
) {
    companion object {
        /** Empty plan: nothing to restore beyond the section index itself. */
        fun none(startPage: Int) = ReaderPositionRestorePlan(
            startPage = startPage,
            sectionCurrentPage = 0,
            characterOffset = null,
            domAnchor = null,
            webtoonSectionIndex = null,
            webtoonScrollFraction = null,
        )
    }
}

/**
 * Builds the restore plan for [position] against [resolvedTotalPages].
 *
 * Returns null when the position cannot be represented against the resolved layout:
 *  - the section index is outside the resolved spine (stale record from a different edition),
 *  - the record is a coarse legacy fallback that only carries a page (no sub-page/anchor).
 * The caller then keeps the legacy `currentPage` path untouched.
 *
 * [normalizePage] mirrors the reader's own clamping so the plan never exceeds the spine.
 */
internal fun planReaderPositionRestore(
    position: ReaderPosition,
    openingMode: ReadingMode,
    resolvedTotalPages: Int,
    normalizePage: (Int, ReadingMode, Int) -> Int,
): ReaderPositionRestorePlan? {
    if (resolvedTotalPages <= 0) return null
    if (position.schemaVersion != ReaderPosition.SCHEMA_VERSION) return null
    val sectionIndex = position.engineSectionIndex
    if (sectionIndex >= resolvedTotalPages) return null

    val startPage = normalizePage(sectionIndex, openingMode, resolvedTotalPages)
    val isWebtoon = openingMode == ReadingMode.WEBTOON
    return ReaderPositionRestorePlan(
        startPage = startPage,
        sectionCurrentPage = if (isWebtoon) 0 else position.visualPageIndex.coerceAtLeast(0),
        // Both containers can restore the same semantic text cursor. PAGE resolves it to a
        // visual sub-page; WEBTOON resolves it to a stitched section plus character offset.
        characterOffset = position.characterOffset,
        domAnchor = position.domAnchor,
        webtoonSectionIndex = if (isWebtoon) sectionIndex else null,
        webtoonScrollFraction = if (isWebtoon) position.webtoonScrollFraction else null,
    )
}
