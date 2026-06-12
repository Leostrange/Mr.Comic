package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class TextReaderNavigationTest {

    @Test
    fun resolveTextPosition_clampsNegativeValues() {
        val resolved = TextReaderNavigation.resolveTextPosition(
            enginePage = -1,
            splitIndex = -2,
            pageInSplit = -3
        )
        assertEquals(0, resolved.enginePage)
        assertEquals(0, resolved.splitIndex)
        assertEquals(0, resolved.pageInSplit)
    }

    @Test
    fun resolveNavigationPagePassthroughWhenPaginationNotReady() {
        val controller = TextReaderController(
            TextWebtoonSessionController(kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Unconfined))
        )
        val state = ReaderUiState(
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            readerRendersHtmlContent = true
        )
        assertEquals(
            5,
            TextReaderNavigation.resolveNavigationPage(
                state = state,
                controller = controller,
                page = 5,
                progressSource = ReaderNavigationProgressSource.JUMP
            )
        )
    }

    @Test
    fun enginePageForUiPagePassthroughWhenPaginationNotReady() {
        val controller = TextReaderController(
            TextWebtoonSessionController(kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Unconfined))
        )
        val state = ReaderUiState(
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            readerRendersHtmlContent = true
        )
        assertEquals(
            3,
            TextReaderNavigation.enginePageForUiPage(state, controller, page = 3)
        )
    }
}
