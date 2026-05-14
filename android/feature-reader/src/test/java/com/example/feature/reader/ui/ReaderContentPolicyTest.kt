package com.example.feature.reader.ui

import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderContentPolicyTest {

    @Test
    fun archivedSingleBookUsesTextReaderChromeEvenWhenStoredFormatIsZip() {
        val state = ReaderUiState(
            comic = Comic(format = ComicFormat.ZIP),
            readerContentIsText = true
        )

        assertTrue(state.usesTextReaderContent())
    }

    @Test
    fun graphicZipDoesNotUseTextReaderChromeWithoutHtmlDelegate() {
        val state = ReaderUiState(
            comic = Comic(format = ComicFormat.ZIP),
            readerContentIsText = false
        )

        assertFalse(state.usesTextReaderContent())
    }

    @Test
    fun htmlCurrentPageKeepsTextReaderChromeDuringInitialLoad() {
        val state = ReaderUiState(
            comic = Comic(format = ComicFormat.ZIP),
            currentHtmlContent = "<p>Archived text page</p>"
        )

        assertTrue(state.usesTextReaderContent())
    }

    @Test
    fun archiveTextContainersDoNotUseDeferredPageCountPath() {
        listOf(
            ComicFormat.ZIP,
            ComicFormat.RAR,
            ComicFormat.SEVENZ,
            ComicFormat.TAR
        ).forEach { format ->
            assertFalse(
                "$format should synchronously resolve its delegated text page count",
                shouldDeferTextPageCount(format = format, contentIsText = true)
            )
        }
    }

    @Test
    fun directHeavyTextFormatsUseDeferredPageCountPath() {
        listOf(
            ComicFormat.EPUB,
            ComicFormat.MOBI,
            ComicFormat.RTF,
            ComicFormat.DOCX
        ).forEach { format ->
            assertTrue(
                "$format should keep the fast-open deferred page count path",
                shouldDeferTextPageCount(format = format, contentIsText = true)
            )
        }
    }
}
