package com.example.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderFormatCatalogTest {

    @Test
    fun everySupportedReaderFormatHasAtLeastOneExtension() {
        val supportedFormats = setOf(
            ComicFormat.CBZ,
            ComicFormat.CBR,
            ComicFormat.ZIP,
            ComicFormat.RAR,
            ComicFormat.SEVENZ,
            ComicFormat.TAR,
            ComicFormat.PDF,
            ComicFormat.DJVU,
            ComicFormat.EPUB,
            ComicFormat.FB2,
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.RTF,
            ComicFormat.MOBI,
            ComicFormat.AZW3,
            ComicFormat.DOCX,
            ComicFormat.ODT
        )

        supportedFormats.forEach { format ->
            assertTrue(
                "$format should have extension aliases",
                ReaderFormatCatalog.extensionsFor(format).isNotEmpty()
            )
        }
    }

    @Test
    fun extensionAliasesMapToExpectedFormats() {
        mapOf(
            "book.cb7" to ComicFormat.SEVENZ,
            "book.7z" to ComicFormat.SEVENZ,
            "book.cbt" to ComicFormat.TAR,
            "book.tar" to ComicFormat.TAR,
            "book.djv" to ComicFormat.DJVU,
            "book.djvu" to ComicFormat.DJVU,
            "book.azw" to ComicFormat.AZW3,
            "book.azw3" to ComicFormat.AZW3,
            "book.kf8" to ComicFormat.AZW3,
            "book.prc" to ComicFormat.MOBI,
            "book.xhtml" to ComicFormat.HTML,
            "book.markdown" to ComicFormat.MARKDOWN,
            "book.text" to ComicFormat.TXT
        ).forEach { (name, format) ->
            assertEquals(name, format, ReaderFormatCatalog.detectByExtension(name))
        }
    }

    @Test
    fun readerMimeTypesMapToSupportedFormats() {
        ReaderFormatCatalog.readerOpenDocumentMimeTypes.forEach { mimeType ->
            assertNotEquals(
                "$mimeType should map to a reader format",
                ComicFormat.UNKNOWN,
                ReaderFormatCatalog.detectByMimeType(mimeType)
            )
        }
    }

    @Test
    fun audioMimeTypesAreNotReaderFormats() {
        ReaderFormatCatalog.audioMimeTypes.forEach { mimeType ->
            assertEquals(
                "$mimeType should stay outside reader import detection",
                ComicFormat.UNKNOWN,
                ReaderFormatCatalog.detectByMimeType(mimeType)
            )
        }
    }

    @Test
    fun pickerMimeListDoesNotContainAudioMimeTypes() {
        val readerMimes = ReaderFormatCatalog.readerOpenDocumentMimeTypes.toSet()
        ReaderFormatCatalog.audioMimeTypes.forEach { audioMime ->
            assertFalse("$audioMime should be routed by audiobook policy", audioMime in readerMimes)
        }
    }
}
