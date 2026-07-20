package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderInteractionConfigTest {

    @Test
    fun simpleTapZonesFollowLtrDefaults() {
        val layout = resolveReaderSimpleTapZoneLayout(
            readingMode = ReadingMode.PAGE_LTR,
            swapped = false
        )

        assertEquals(ReaderTapZoneAction.PREVIOUS_PAGE, layout.left)
        assertEquals(ReaderTapZoneAction.MENU, layout.center)
        assertEquals(ReaderTapZoneAction.NEXT_PAGE, layout.right)
    }

    @Test
    fun simpleTapZonesFollowRtlDefaults() {
        val layout = resolveReaderSimpleTapZoneLayout(
            readingMode = ReadingMode.PAGE_RTL,
            swapped = false
        )

        assertEquals(ReaderTapZoneAction.NEXT_PAGE, layout.left)
        assertEquals(ReaderTapZoneAction.MENU, layout.center)
        assertEquals(ReaderTapZoneAction.PREVIOUS_PAGE, layout.right)
    }

    @Test
    fun customTapZonesUseStoredActions() {
        val layout = resolveReaderTapZoneLayout(
            mode = ReaderTapZoneMode.CUSTOM,
            readingMode = ReadingMode.PAGE_LTR,
            swapped = false,
            leftAction = ReaderTapZoneAction.PREVIOUS_CHAPTER.name,
            centerAction = ReaderTapZoneAction.TOGGLE_UI.name,
            rightAction = ReaderTapZoneAction.NEXT_CHAPTER.name
        )

        assertEquals(ReaderTapZoneAction.PREVIOUS_CHAPTER, layout.left)
        assertEquals(ReaderTapZoneAction.TOGGLE_UI, layout.center)
        assertEquals(ReaderTapZoneAction.NEXT_CHAPTER, layout.right)
    }
}
