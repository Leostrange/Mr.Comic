package com.example.engine.formats.base

import android.graphics.Bitmap
import com.example.core.model.ComicFormat
import com.example.engine.formats.text.MobiFormatReader
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class DocumentEngineContractTest {

    @Test
    fun formatReaderEngineOpensSessionAndCompatibilityReader() = runBlocking {
        val engine = FormatReaderDocumentEngine(
            name = "test-text",
            kind = DocumentKind.REFLOWABLE,
            supportedFormats = setOf(ComicFormat.TXT)
        ) { request ->
            FakeFormatReader(pageCount = 2, html = "<p>${request.path}</p>")
        }

        val session = engine.open(DocumentOpenRequest("book.txt", ComicFormat.TXT))!!
        val reader = DocumentSessionFormatReader(session)

        assertEquals(DocumentKind.REFLOWABLE, session.kind)
        assertEquals(2, reader.getPageCount())
        assertEquals("<p>book.txt</p>", reader.getHtmlPage(0))
        assertNull(reader.getPage(0))
    }

    @Test
    fun mobiReaderIsASeparateFormatReaderImplementation() {
        val reader = MobiFormatReader(
            context = android.content.ContextWrapper(null),
            path = "missing.mobi",
            format = ComicFormat.MOBI
        )

        assertEquals("MobiFormatReader", reader::class.simpleName)
    }

    private class FakeFormatReader(
        private val pageCount: Int,
        private val html: String
    ) : FormatReader {
        override suspend fun getPageCount(): Int = pageCount
        override suspend fun getPage(index: Int): Bitmap? = null
        override suspend fun getHtmlPage(index: Int): String = html
        override fun close() = Unit
    }
}
