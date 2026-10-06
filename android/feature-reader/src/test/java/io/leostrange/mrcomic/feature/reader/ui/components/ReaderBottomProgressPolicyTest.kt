package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderBottomProgressPolicyTest {

    @Test
    fun pagedText_showsChapterPagesWithCanonicalBookPercent() {
        val display = resolveReaderProgressDisplay(
            isTextBook = true,
            readingMode = ReadingMode.PAGE_LTR,
            currentPage = 5,
            totalPages = 91,
            sectionCurrentPage = 2,
            sectionPageCount = 8,
            bookProgress = 0.137f,
        )
        assertEquals("3 / 8", display.pageLabel)
        assertEquals(13, display.percent)
    }

    @Test
    fun verticalText_hasNoPageCounter() {
        val display = resolveReaderProgressDisplay(
            isTextBook = true,
            readingMode = ReadingMode.WEBTOON,
            currentPage = 5,
            totalPages = 91,
            sectionCurrentPage = 2,
            sectionPageCount = 8,
            bookProgress = 0.5f,
        )
        assertNull(display.pageLabel)
        assertEquals(50, display.percent)
    }

    @Test
    fun raster_showsBookPages() {
        val display = resolveReaderProgressDisplay(
            isTextBook = false,
            readingMode = ReadingMode.PAGE_LTR,
            currentPage = 9,
            totalPages = 10,
            sectionCurrentPage = 0,
            sectionPageCount = 0,
            bookProgress = 1f,
        )
        assertEquals("10 / 10", display.pageLabel)
        assertEquals(100, display.percent)
    }

    @Test
    fun percent_reaches100OnlyAtTheEnd() {
        assertEquals(99, readerProgressPercent(0.999f))
        assertEquals(100, readerProgressPercent(1f))
        assertEquals(0, readerProgressPercent(-1f))
        assertEquals(57, readerProgressPercent(0.57f))
    }
}
