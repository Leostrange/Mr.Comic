package com.example.feature.reader.ui

import android.view.KeyEvent
import com.example.core.model.ReadingMode
import com.example.engine.formats.base.TocEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
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

    @Test
    fun pagedModesAllowHorizontalTurnAndLockHtmlVerticalScroll() {
        val pagedModes = listOf(
            ReadingMode.PAGE_LTR,
            ReadingMode.PAGE_RTL,
            ReadingMode.DUAL_PAGE
        )

        pagedModes.forEach { mode ->
            assertTrue("$mode should accept horizontal page turns", readerModeAllowsHorizontalPageTurn(mode))
            assertTrue("$mode should lock HTML vertical scroll", readerModeLocksHtmlVerticalScroll(mode))
        }
    }

    @Test
    fun webtoonModeUsesVerticalFeedOnly() {
        assertFalse(readerModeAllowsHorizontalPageTurn(ReadingMode.WEBTOON))
        assertFalse(readerModeLocksHtmlVerticalScroll(ReadingMode.WEBTOON))
    }
}
