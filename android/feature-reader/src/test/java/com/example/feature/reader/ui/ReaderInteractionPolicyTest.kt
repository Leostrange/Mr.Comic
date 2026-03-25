package com.example.feature.reader.ui

import android.view.KeyEvent
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
    fun hardwareKeyDecisionConsumesVolumeButtonsOnlyWhenEnabled() {
        val disabled = resolveReaderHardwareKeyDecision(
            event = KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_VOLUME_DOWN),
            volumePagingEnabled = false
        )

        assertFalse(disabled.consume)
        assertNull(disabled.pageStep)

        val enabled = resolveReaderHardwareKeyDecision(
            event = KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_VOLUME_DOWN),
            volumePagingEnabled = true
        )

        assertTrue(enabled.consume)
        assertEquals(1, enabled.pageStep)
    }

    @Test
    fun hardwareKeyDecisionConsumesKeyUpWithoutTurningPageAgain() {
        val decision = resolveReaderHardwareKeyDecision(
            event = KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_VOLUME_UP),
            volumePagingEnabled = true
        )

        assertTrue(decision.consume)
        assertNull(decision.pageStep)
    }

    @Test
    fun hardwareKeyDecisionSkipsRepeatedPageTurnOnLongPress() {
        val repeated = KeyEvent(0L, 0L, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_VOLUME_DOWN, 3)
        val decision = resolveReaderHardwareKeyDecision(
            event = repeated,
            volumePagingEnabled = true
        )

        assertTrue(decision.consume)
        assertNull(decision.pageStep)
    }
}
