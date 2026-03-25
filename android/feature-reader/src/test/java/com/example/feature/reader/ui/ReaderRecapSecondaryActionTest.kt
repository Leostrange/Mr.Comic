package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderRecapSecondaryActionTest {

    @Test
    fun readerMilestoneRecapSecondaryAction_prefersChaptersWhenAvailable() {
        val action = readerMilestoneRecapSecondaryAction(
            type = ReaderProgressRecapType.CHAPTER,
            hasChapters = true,
            hasBookmarks = true
        )

        assertEquals(ReaderMilestoneRecapSecondaryAction.CHAPTERS, action)
    }

    @Test
    fun readerMilestoneRecapSecondaryAction_fallsBackToBookmarksWithoutToc() {
        val action = readerMilestoneRecapSecondaryAction(
            type = ReaderProgressRecapType.CHAPTER,
            hasChapters = false,
            hasBookmarks = true
        )

        assertEquals(ReaderMilestoneRecapSecondaryAction.BOOKMARKS, action)
    }

    @Test
    fun readerMilestoneRecapSecondaryAction_doesNotExposeSheetActionForTitleComplete() {
        val action = readerMilestoneRecapSecondaryAction(
            type = ReaderProgressRecapType.TITLE_COMPLETE,
            hasChapters = true,
            hasBookmarks = true
        )

        assertNull(action)
    }
}
