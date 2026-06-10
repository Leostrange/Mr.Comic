package com.example.engine.formats.base

import com.example.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class FormatFactoryArchivePathTest {

    @Test
    fun archiveContainerFormatFromPathRecognizesZipEvenWhenStoredAsText() {
        assertEquals(
            ComicFormat.ZIP,
            archiveContainerFormatFromPath("/storage/emulated/0/Download/book_inside.zip")
        )
    }

    @Test
    fun archiveContainerFormatFromPathRecognizesEncodedContentLikePath() {
        assertEquals(
            ComicFormat.ZIP,
            archiveContainerFormatFromPath("content://tree/Download%2Fbook_inside.zip")
        )
    }

    @Test
    fun archiveContainerFormatFromPathIgnoresRegularTextFiles() {
        assertNull(
            archiveContainerFormatFromPath("/storage/emulated/0/Download/book.txt")
        )
    }
}
