package io.leostrange.mrcomic.feature.reader.ui.components

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderBottomProgressPolicyTest {

    @Test
    fun textBook_prefersBookWideVisualPagesOverSectionCount() {
        val progress = resolveReaderBottomProgress(
            currentPage = 5,
            totalPages = 91,
            isTextBook = true,
            sectionPageCount = 8,
            epubAccumulatedCurrentPage = 14,
            epubAccumulatedTotalPages = 352,
        )

        assertEquals(14, progress.currentPage)
        assertEquals(352, progress.totalPages)
    }

    /**
     * T3 regression: when accumulated pages are available, they must always be preferred
     * even when sectionPageCount is also present.
     */
    @Test
    fun textBook_accumulatedPagesAlwaysWinOverSectionFallback() {
        val progress = resolveReaderBottomProgress(
            currentPage = 10,
            totalPages = 50,
            isTextBook = true,
            sectionPageCount = 8,
            epubAccumulatedCurrentPage = 200,
            epubAccumulatedTotalPages = 800,
        )

        assertEquals(200, progress.currentPage)
        assertEquals(800, progress.totalPages)
    }

    /**
     * T3 regression: non-text books should use raw page values regardless of accumulated data.
     */
    @Test
    fun nonTextBook_ignoresAccumulatedEpubData() {
        val progress = resolveReaderBottomProgress(
            currentPage = 5,
            totalPages = 20,
            isTextBook = false,
            sectionPageCount = 0,
            epubAccumulatedCurrentPage = 999,
            epubAccumulatedTotalPages = 999,
        )

        assertEquals(5, progress.currentPage)
        assertEquals(20, progress.totalPages)
    }

    /**
     * T3 regression: text book without accumulated data falls back to raw values.
     */
    @Test
    fun textBook_fallbackToRawValuesWhenNoAccumulatedData() {
        val progress = resolveReaderBottomProgress(
            currentPage = 3,
            totalPages = 15,
            isTextBook = true,
            sectionPageCount = 10,
            epubAccumulatedCurrentPage = 0,
            epubAccumulatedTotalPages = 0,
        )

        assertEquals(3, progress.currentPage)
        assertEquals(15, progress.totalPages)
    }

    @Test
    fun textBook_preservesIsResolvedFlag() {
        val unresolved = resolveReaderBottomProgress(
            currentPage = 5,
            totalPages = 91,
            isTextBook = true,
            sectionPageCount = 8,
            epubAccumulatedCurrentPage = 14,
            epubAccumulatedTotalPages = 352,
            isTextPaginationResolved = false,
        )
        assertEquals(false, unresolved.isResolved)

        val resolved = resolveReaderBottomProgress(
            currentPage = 5,
            totalPages = 91,
            isTextBook = true,
            sectionPageCount = 8,
            epubAccumulatedCurrentPage = 14,
            epubAccumulatedTotalPages = 352,
            isTextPaginationResolved = true,
        )
        assertEquals(true, resolved.isResolved)
    }

    @Test
    fun textBookWithoutMeasuredSection_doesNotPresentSpineCountAsResolvedPages() {
        val progress = resolveReaderBottomProgress(
            currentPage = 1,
            totalPages = 2,
            isTextBook = true,
            sectionPageCount = 0,
            epubAccumulatedCurrentPage = 0,
            epubAccumulatedTotalPages = 0,
            isTextPaginationResolved = false,
        )

        assertEquals(
            "The raw 2-section EPUB spine must not be exposed as a resolved 2-page book",
            false,
            progress.isResolved,
        )
    }
}
