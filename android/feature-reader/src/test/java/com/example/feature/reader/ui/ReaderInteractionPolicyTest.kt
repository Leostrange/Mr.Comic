package com.example.feature.reader.ui

import android.view.KeyEvent
import com.example.engine.formats.base.TocEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderInteractionPolicyTest {

    @Test
    fun chapterNavigationFindsPreviousAndNextEntries() {
        val toc = listOf(
            TocEntry("Intro", 0),
            TocEntry("Chapter 1", 12),
            TocEntry("Chapter 2", 30)
        )

        assertEquals(12, previousReaderChapterPage(toc, 20))
        assertEquals(30, nextReaderChapterPage(toc, 20))
    }

    @Test
    fun currentChapterTitleUsesNearestPreviousEntry() {
        val toc = listOf(
            TocEntry("Intro", 0),
            TocEntry("Chapter 1", 12),
            TocEntry("Chapter 2", 30)
        )

        assertEquals("Chapter 1", currentReaderChapterTitle(toc, 20))
        assertNull(currentReaderChapterTitle(emptyList(), 20))
    }

    @Test
    fun volumePagingStepUsesUpForPreviousAndDownForNext() {
        assertEquals(-1, readerVolumePagingStep(KeyEvent.KEYCODE_VOLUME_UP))
        assertEquals(1, readerVolumePagingStep(KeyEvent.KEYCODE_VOLUME_DOWN))
        assertNull(readerVolumePagingStep(KeyEvent.KEYCODE_MENU))
    }
}
