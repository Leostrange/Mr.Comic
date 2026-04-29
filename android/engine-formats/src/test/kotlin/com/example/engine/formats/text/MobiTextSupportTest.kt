package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.charset.Charset

class MobiTextSupportTest {

    @Test
    fun extractsUncompressedHtmlFromMinimalMobiContainer() {
        val record = "<html><body><p>Hello MOBI</p></body></html>".encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertTrue(result.isMarkup)
        assertTrue(result.content.contains("Hello MOBI"))
        assertEquals("UTF-8", result.diagnostics.resolvedEncoding.uppercase())
        assertTrue(result.diagnostics.containsMarkup)
    }

    @Test
    fun decompressesSimplePalmDocBackReference() {
        val compressed = byteArrayOf(
            0x03,
            'a'.code.toByte(),
            'b'.code.toByte(),
            'c'.code.toByte(),
            0x80.toByte(),
            0x18
        )
        val bytes = buildMinimalMobi(
            compression = 2,
            textEncoding = 65001,
            textRecord = compressed
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertEquals("abcabc", result.content)
        assertTrue(!result.isMarkup)
        assertEquals(1, result.diagnostics.textRecordCount)
    }

    @Test
    fun prefersReadableCyrillicDecodingWhenDeclaredEncodingIsWrong() {
        val cp1251 = Charset.forName("windows-1251")
        val textRecord = "Привет из MOBI".toByteArray(cp1251)
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 1252,
            textRecord = textRecord
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertEquals("Привет из MOBI", result.content)
        assertEquals("windows-1251", result.diagnostics.resolvedEncoding)
    }

    @Test
    fun mobiFormatReaderUsesStandaloneReflowablePath() = runBlocking {
        val record = "<html><body><h1>Hello</h1><p>Hello MOBI reader</p></body></html>".encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-reader", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            assertTrue(reader.getPageCount() >= 1)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(firstPage.contains("Hello MOBI reader"))
            assertTrue(reader.getMetadata()["engine"] == "mobi-reflowable-v1")
            assertEquals("2", reader.getMetadata()["parserVersion"])
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun textFormatReaderMobiUsesSameReflowableEngineMetadataAndHtml() = runBlocking {
        val record = "<html><body><h1>Hello</h1><p>Hello from legacy MOBI path</p></body></html>".encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-legacy", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            assertTrue(reader.getPageCount() >= 1)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(firstPage.contains("Hello from legacy MOBI path"))
            assertEquals("mobi-reflowable-v1", reader.getMetadata()["engine"])
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun mobiMarkupPagebreaksProduceMultipleReaderPages() = runBlocking {
        val record = """
            <html><body>
            <div align="center">Title</div>
            <mbp:pagebreak/>
            <p>First chapter paragraph.</p>
            <mbp:pagebreak/>
            <p>Second chapter paragraph.</p>
            </body></html>
        """.trimIndent().encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-pagebreak", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            assertTrue(reader.getPageCount() >= 2)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            val laterPages = (1 until reader.getPageCount()).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue(firstPage.contains("Title"))
            assertTrue(laterPages.contains("Second chapter paragraph"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun mobiOversizedSingleParagraphIsSplitIntoMultipleReaderPages() = runBlocking {
        val hugeParagraph = buildString {
            repeat(320) { index ->
                append("Очень длинный абзац MOBI для проверки разбиения страницы номер ")
                append(index + 1)
                append(". ")
            }
        }
        val record = """
            <html><body><p align="center">$hugeParagraph</p></body></html>
        """.trimIndent().encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-oversized", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            assertTrue("Expected oversized MOBI paragraph to split into multiple pages", reader.getPageCount() >= 3)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            val secondPage = reader.getHtmlPage(1).orEmpty()
            assertTrue(firstPage.contains("align=\"center\"", ignoreCase = true) || firstPage.contains("text-align", ignoreCase = true))
            assertTrue(firstPage.contains("Очень длинный абзац MOBI"))
            assertTrue(secondPage.contains("Очень длинный абзац MOBI"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    private fun buildMinimalMobi(
        compression: Int,
        textEncoding: Int,
        textRecord: ByteArray
    ): ByteArray {
        val record0 = ByteArray(80)
        writeUInt16BE(record0, 0, compression)
        writeUInt16BE(record0, 8, 1)
        writeUInt16BE(record0, 12, 0)
        "MOBI".encodeToByteArray().copyInto(record0, destinationOffset = 16)
        writeUInt32BE(record0, 20, 64)
        writeUInt32BE(record0, 28, textEncoding)

        val recordCount = 2
        val recordInfoOffset = 78
        val record0Offset = recordInfoOffset + recordCount * 8
        val record1Offset = record0Offset + record0.size
        val output = ByteArrayOutputStream()

        output.write(ByteArray(76))
        output.write(byteArrayOf(0x00, recordCount.toByte()))
        output.write(intToBytes(record0Offset))
        output.write(ByteArray(4))
        output.write(intToBytes(record1Offset))
        output.write(ByteArray(4))
        output.write(record0)
        output.write(textRecord)
        return output.toByteArray()
    }

    private fun writeUInt16BE(target: ByteArray, offset: Int, value: Int) {
        target[offset] = ((value shr 8) and 0xFF).toByte()
        target[offset + 1] = (value and 0xFF).toByte()
    }

    private fun writeUInt32BE(target: ByteArray, offset: Int, value: Int) {
        target[offset] = ((value shr 24) and 0xFF).toByte()
        target[offset + 1] = ((value shr 16) and 0xFF).toByte()
        target[offset + 2] = ((value shr 8) and 0xFF).toByte()
        target[offset + 3] = (value and 0xFF).toByte()
    }

    private fun intToBytes(value: Int): ByteArray = byteArrayOf(
        ((value shr 24) and 0xFF).toByte(),
        ((value shr 16) and 0xFF).toByte(),
        ((value shr 8) and 0xFF).toByte(),
        (value and 0xFF).toByte()
    )
}
