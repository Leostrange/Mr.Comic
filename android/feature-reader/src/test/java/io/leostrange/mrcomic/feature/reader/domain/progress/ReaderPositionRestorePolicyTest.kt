package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * TEXT-03: restore must only be planned against the authoritative (post-layout) page count.
 * A provisional one-page model must never produce a restore plan, and legacy records must
 * fall back to the raw page path instead of pretending to know a sub-page or anchor.
 */
class ReaderPositionRestorePolicyTest {

    private fun normalize(page: Int, mode: ReadingMode, totalPages: Int): Int =
        page.coerceIn(0, (totalPages - 1).coerceAtLeast(0))

    private fun pagedPosition(
        section: Int,
        visualPage: Int = 0,
        charOffset: Int? = null,
        domAnchor: String? = null
    ) = ReaderPosition(
        engineSectionIndex = section,
        visualPageIndex = visualPage,
        characterOffset = charOffset,
        domAnchor = domAnchor,
        mode = ReadingMode.PAGE_LTR,
        schemaVersion = ReaderPosition.SCHEMA_VERSION,
    )

    @Test
    fun pagedRestore_carriesSubpageOffsetAndAnchor() {
        val plan = planReaderPositionRestore(
            position = pagedPosition(
                section = 12,
                visualPage = 5,
                charOffset = 1_234,
                domAnchor = "epubcfi(/6/12!/4/2/1:1234)"
            ),
            openingMode = ReadingMode.PAGE_LTR,
            resolvedTotalPages = 200,
            normalizePage = ::normalize,
        )

        assertEquals(12, plan!!.startPage)
        assertEquals(5, plan.sectionCurrentPage)
        assertEquals(1_234, plan.characterOffset)
        assertEquals("epubcfi(/6/12!/4/2/1:1234)", plan.domAnchor)
        assertNull("WEBTOON coordinates must be null outside WEBTOON mode", plan.webtoonSectionIndex)
        assertNull(plan.webtoonScrollFraction)
    }

    @Test
    fun webtoonRestore_carriesSectionAndFractionOnly() {
        val position = ReaderPosition(
            engineSectionIndex = 12,
            visualPageIndex = 7,
            characterOffset = 999,
            domAnchor = "ignore-me",
            mode = ReadingMode.WEBTOON,
            webtoonScrollFraction = 0.42f,
            schemaVersion = ReaderPosition.SCHEMA_VERSION,
        )

        val plan = planReaderPositionRestore(
            position = position,
            openingMode = ReadingMode.WEBTOON,
            resolvedTotalPages = 200,
            normalizePage = ::normalize,
        )

        assertEquals(12, plan!!.startPage)
        assertEquals(12, plan.webtoonSectionIndex)
        assertEquals(0.42f, plan.webtoonScrollFraction!!, 0.0001f)
        assertEquals("Sub-page cursor is meaningless inside a stitched WEBTOON document", 0, plan.sectionCurrentPage)
        assertEquals(999, plan.characterOffset)
        assertEquals("ignore-me", plan.domAnchor)
    }

    @Test
    fun sectionBeyondResolvedSpine_returnsNull() {
        val plan = planReaderPositionRestore(
            position = pagedPosition(section = 250),
            openingMode = ReadingMode.PAGE_LTR,
            resolvedTotalPages = 200,
            normalizePage = ::normalize,
        )

        assertNull("A stale section index from a different edition must not clamp into the new spine", plan)
    }

    @Test
    fun zeroOrNegativeTotalPages_returnsNull() {
        assertNull(
            planReaderPositionRestore(
                position = pagedPosition(section = 3),
                openingMode = ReadingMode.PAGE_LTR,
                resolvedTotalPages = 0,
                normalizePage = ::normalize,
            )
        )
        assertNull(
            planReaderPositionRestore(
                position = pagedPosition(section = 3),
                openingMode = ReadingMode.PAGE_LTR,
                resolvedTotalPages = -5,
                normalizePage = ::normalize,
            )
        )
    }

    @Test
    fun legacyFallbackRecord_returnsNull() {
        val legacy = ReaderPositionCodec.fromLegacy(
            currentPage = 15,
            characterOffset = 42,
            mode = ReadingMode.PAGE_LTR,
        )

        val plan = planReaderPositionRestore(
            position = legacy,
            openingMode = ReadingMode.PAGE_LTR,
            resolvedTotalPages = 200,
            normalizePage = ::normalize,
        )

        assertNull(
            "Legacy records carry only a raw page; they must keep the legacy currentPage path",
            plan
        )
    }

    @Test
    fun startPageIsNormalizedForDualPage() {
        val plan = planReaderPositionRestore(
            position = pagedPosition(section = 13),
            openingMode = ReadingMode.DUAL_PAGE,
            resolvedTotalPages = 200,
            normalizePage = { page, mode, total ->
                val clamped = page.coerceIn(0, (total - 1).coerceAtLeast(0))
                if (mode == ReadingMode.DUAL_PAGE) (clamped / 2) * 2 else clamped
            },
        )

        assertEquals("Dual-page mode must align the start to a spread boundary", 12, plan!!.startPage)
    }

    @Test
    fun nonePlan_hasNoCursorCoordinates() {
        val plan = ReaderPositionRestorePlan.none(startPage = 4)

        assertEquals(4, plan.startPage)
        assertEquals(0, plan.sectionCurrentPage)
        assertNull(plan.characterOffset)
        assertNull(plan.domAnchor)
        assertNull(plan.webtoonSectionIndex)
        assertNull(plan.webtoonScrollFraction)
    }
}
