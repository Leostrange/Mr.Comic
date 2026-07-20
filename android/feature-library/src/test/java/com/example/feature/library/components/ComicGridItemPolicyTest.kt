package com.example.feature.library.components

import com.example.core.model.ComicReadingStatus
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ComicGridItemPolicyTest {

    @Test
    fun hidesProgressLineForNewItemsEvenWithStaleProgress() {
        assertFalse(
            shouldShowLibraryProgressLine(
                showProgressIndicators = true,
                readingStatus = ComicReadingStatus.NEW,
                readingProgress = 1f
            )
        )
    }

    @Test
    fun showsProgressLineForReadingAndCompletedItemsWithProgress() {
        assertTrue(
            shouldShowLibraryProgressLine(
                showProgressIndicators = true,
                readingStatus = ComicReadingStatus.READING,
                readingProgress = 0.42f
            )
        )
        assertTrue(
            shouldShowLibraryProgressLine(
                showProgressIndicators = true,
                readingStatus = ComicReadingStatus.COMPLETED,
                readingProgress = 1f
            )
        )
    }
}
