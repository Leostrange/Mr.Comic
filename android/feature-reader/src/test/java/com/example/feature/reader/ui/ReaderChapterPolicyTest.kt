package com.example.feature.reader.ui

import com.example.engine.formats.base.TocEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderChapterPolicyTest {

    @Test
    fun currentChapter_resolvesSortedChapterAtItsInclusiveStart() {
        val tableOfContents = listOf(
            TocEntry(title = "Part two", pageIndex = 10),
            TocEntry(title = "Part one", pageIndex = 0),
            TocEntry(title = "Part three", pageIndex = 20)
        )

        assertEquals("Part one", ReaderChapterPolicy.currentChapter(tableOfContents, 9)?.title)
        assertEquals("Part two", ReaderChapterPolicy.currentChapter(tableOfContents, 10)?.title)
        assertEquals("Part three", ReaderChapterPolicy.currentChapter(tableOfContents, 27)?.title)
    }

    @Test
    fun currentChapter_returnsNullBeforeFirstChapterAndForEmptyToc() {
        val tableOfContents = listOf(TocEntry(title = "Start", pageIndex = 3))

        assertNull(ReaderChapterPolicy.currentChapter(tableOfContents, 2))
        assertNull(ReaderChapterPolicy.currentChapter(emptyList(), 2))
    }
}
