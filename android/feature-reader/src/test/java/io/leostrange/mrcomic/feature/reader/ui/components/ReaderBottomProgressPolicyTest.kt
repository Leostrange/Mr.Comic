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
}
