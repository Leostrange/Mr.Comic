package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
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
    fun decodesUtf8SplitAcrossTextRecordBoundary() {
        val prefix = "<html><body><p>Korean ".encodeToByteArray()
        val korean = "한글".encodeToByteArray()
        val suffix = "</p></body></html>".encodeToByteArray()
        val firstRecord = prefix + korean.copyOfRange(0, 1)
        val secondRecord = korean.copyOfRange(1, korean.size) + suffix
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = firstRecord,
            extraTextRecords = listOf(secondRecord)
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertTrue(result.content.contains("Korean 한글"))
        assertTrue("Decoded MOBI text must not contain replacement characters", '\uFFFD' !in result.content)
        assertEquals("UTF-8", result.diagnostics.resolvedEncoding.uppercase())
    }

    @Test
    fun reportsHuffCdicCompressionWithStructuredDetails() {
        val bytes = buildMinimalMobi(
            compression = 17480,
            textEncoding = 65001,
            textRecord = byteArrayOf(),
            extraRecords = listOf(
                "HUFF".encodeToByteArray() + byteArrayOf(0x00, 0x01),
                "CDIC".encodeToByteArray() + byteArrayOf(0x00, 0x01)
            )
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Unsupported)
        result as MobiExtractionResult.Unsupported
        assertTrue(result.message.contains("HUFF/CDIC"))
        assertEquals("huff-cdic", result.details?.reason)
        assertEquals(17480, result.details?.compression)
        assertEquals(1, result.details?.textRecordCount)
        assertTrue(result.details?.containsHuffCdicTables == true)
    }

    @Test
    fun mobiFormatReaderExposesUnsupportedHuffCdicMetadata() = runBlocking {
        val bytes = buildMinimalMobi(
            compression = 17480,
            textEncoding = 65001,
            textRecord = byteArrayOf(),
            extraRecords = listOf("HUFF".encodeToByteArray())
        )
        val sample = File.createTempFile("mrcomic-mobi-huff-cdic", ".azw3").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.AZW3)
        try {
            val firstPage = reader.getHtmlPage(0).orEmpty()
            val metadata = reader.getMetadata()
            assertTrue(firstPage.contains("HUFF/CDIC"))
            assertEquals("huff-cdic", metadata["unsupportedReason"])
            assertEquals("17480", metadata["compression"])
            assertEquals("true", metadata["containsHuffCdicTables"])
        } finally {
            reader.close()
            sample.delete()
        }
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
    fun mobiReaderClampsLegacyFontTagsToUserTypography() = runBlocking {
        val record = """
            <html><body><h1><font size="7" face="Arial">Ты не можешь</font></h1><p>Обычный текст.</p></body></html>
        """.trimIndent().encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-font-clamp", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(firstPage.contains("Ты не можешь"))
            assertTrue(firstPage.contains("font-size: 1em !important"))
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
    fun mobiFileposFootnoteIsAvailableForPopup() = runBlocking {
        val html = """
            <html><body>
            <p>Text with a note <a filepos="%FILEPOS%">[1]</a> and more body text.</p>
            <p>Filler before the note target so the file position lands later in the MOBI stream.</p>
            <p>Примечание переводчика: текст сноски должен открываться во всплывающем окне.</p>
            </body></html>
        """.trimIndent()
        val noteFilepos = html.indexOf("Примечание").coerceAtLeast(0)
        val record = html.replace("%FILEPOS%", noteFilepos.toString()).encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-footnote", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val page = reader.getHtmlPage(0).orEmpty()
            assertTrue(page.take(2000), page.contains("""href="#mobi-filepos-$noteFilepos""""))
            val note = reader.getFootnoteText("mobi-filepos-$noteFilepos").orEmpty()
            assertTrue(note, note.contains("Примечание переводчика"))
            assertTrue(
                reader.getFootnoteText("#mobi-filepos-${noteFilepos.toString().padStart(6, '0')}").orEmpty(),
                reader.getFootnoteText("#mobi-filepos-${noteFilepos.toString().padStart(6, '0')}").orEmpty()
                    .contains("Примечание переводчика")
            )
            assertTrue(
                reader.getFootnoteText("kindle:pos:fid:0000:off:$noteFilepos").orEmpty(),
                reader.getFootnoteText("kindle:pos:fid:0000:off:$noteFilepos").orEmpty()
                    .contains("Примечание переводчика")
            )
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun mobiFileposFootnoteWinsOverLegacyHref() = runBlocking {
        val html = """
            <html><body>
            <p>Text with a note <a href="kindle:pos:fid:0000:off:0000" filepos="%FILEPOS%">[1]</a>.</p>
            <p>Filler before the note target.</p>
            <p>Примечание: MOBI-сноска с filepos должна открываться по filepos, а не по legacy href.</p>
            </body></html>
        """.trimIndent()
        val noteFilepos = html.indexOf("Примечание").coerceAtLeast(0)
        val record = html.replace("%FILEPOS%", noteFilepos.toString()).encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )
        val sample = File.createTempFile("mrcomic-mobi-footnote-href", ".mobi").apply {
            writeBytes(bytes)
            deleteOnExit()
        }
        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val page = reader.getHtmlPage(0).orEmpty()
            assertTrue(page.take(2000), page.contains("""href="#mobi-filepos-$noteFilepos""""))
            assertTrue(page.take(2000), page.contains("""data-mrcomic-filepos="$noteFilepos""""))
            val note = reader.getFootnoteText("mobi-filepos-$noteFilepos").orEmpty()
            assertTrue(note, note.contains("MOBI-сноска"))
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
            val allPages = (0 until reader.getPageCount()).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue(allPages.contains("Title"))
            assertTrue(allPages.contains("Second chapter paragraph"))
            assertTrue(
                "Soft MOBI pagebreaks should not create mostly empty reader pages",
                (0 until reader.getPageCount()).all { page -> reader.getHtmlPage(page).orEmpty().visibleTextLengthForTest() > 40 }
            )
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun mobiOversizedSingleParagraphIsSplitIntoMultipleReaderPages() = runBlocking {
        val hugeParagraph = buildString {
            repeat(2_000) { index ->
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

    @Test
    fun realMobiSampleRepairsCyrillicUtf8Mojibake() = runBlocking {
        val sample = File("../../reference/formats/samples/Под солнцем_868805.mobi").canonicalFile
        assumeTrue("Sample MOBI is not available in this checkout", sample.isFile)

        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val firstPages = (0 until minOf(reader.getPageCount(), 8))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(firstPages.contains("Ги де Мопассан"))
            assertTrue(firstPages.contains("Под солнцем"))
            assertTrue("MOBI output must not expose UTF-8 mojibake", !firstPages.contains("Ð"))
            assertTrue("MOBI output must not expose CP1251 mojibake", !firstPages.contains("Ã"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun realMobiSampleFootnoteLinkResolvesToPopupText() = runBlocking {
        val sample = File("../../reference/formats/samples/Под солнцем_868805.mobi").canonicalFile
        assumeTrue("Sample MOBI is not available in this checkout", sample.isFile)

        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val pages = (0 until reader.getPageCount())
                .mapNotNull { reader.getHtmlPage(it) }
            val allHtml = pages.joinToString("\n")
            val hrefs = pages
                .flatMap { html ->
                    Regex("""<a\b[^>]*href=["']([^"']*(?:mobi-filepos-|note|fn)[^"']*)["'][^>]*>""")
                        .findAll(html)
                        .mapNotNull { it.groupValues.getOrNull(1) }
                        .toList()
                }

            assertTrue("Expected real MOBI sample to expose footnote links", hrefs.isNotEmpty())
            val resolvedNote = hrefs.firstNotNullOfOrNull { href ->
                val normalized = href.substringAfterLast('#').trimStart('#')
                reader.getFootnoteText(normalized)
                    ?.takeIf { it.isNotBlank() }
                    ?.let { href to it }
            }
            val firstTarget = hrefs.firstOrNull().orEmpty().substringAfterLast('#')
            assertTrue(
                "Expected footnote popup text for one of $hrefs; " +
                    "firstTarget=$firstTarget, hasId=${allHtml.contains("id=\"$firstTarget\"")}, " +
                    "hasName=${allHtml.contains("name=\"$firstTarget\"")}",
                resolvedNote != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun repairsSingleLocalizedUtf8MojibakeFragmentInsideUtf8Mobi() {
        val record = """
            <html><body><p>Нормальный русский текст с одним поврежденным словом: РџСЂРёРІРµС‚.</p></body></html>
        """.trimIndent().encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertTrue(result.content.contains("Привет"))
        assertTrue("Localized UTF-8 mojibake must not leak", !result.content.contains("Рџ"))
    }

    @Test
    fun repairsLocalizedUtf8MojibakePunctuationInsideUtf8Mobi() {
        val record = """
            <html><body><p>В«Под солнцемВ» вЂ” РџСЂРёРІРµС‚.</p></body></html>
        """.trimIndent().encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertTrue(result.content.contains("«Под солнцем» — Привет"))
        assertTrue("Localized quote mojibake must not leak", !result.content.contains("В«"))
        assertTrue("Localized dash mojibake must not leak", !result.content.contains("вЂ"))
        assertTrue("Localized Cyrillic mojibake must not leak", !result.content.contains("Рџ"))
    }

    @Test
    fun realMobiSampleHasCleanCyrillicAcrossDocumentAndBalancedPages() = runBlocking {
        val sample = File("../../reference/formats/samples/Под солнцем_868805.mobi").canonicalFile
        assumeTrue("Sample MOBI is not available in this checkout", sample.isFile)

        val reader = MobiFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val pages = (0 until reader.getPageCount()).mapNotNull { reader.getHtmlPage(it) }
            val allText = pages.joinToString("\n") { it.visibleTextForTest() }
            val filledFragmentLengths = pages
                .map { it.visibleTextLengthForTest() }
                .filter { it > 0 }
            val middleFragmentLengths = if (filledFragmentLengths.size > 2) {
                filledFragmentLengths.drop(1).dropLast(1)
            } else {
                filledFragmentLengths
            }
            val sortedMiddleFragmentLengths = middleFragmentLengths.sorted()

            assertTrue(
                "MOBI real sample must keep title text; encoding=" +
                    reader.getMetadata()["resolvedEncoding"] + " excerpt=" + allText.take(360),
                allText.contains("Ги де Мопассан")
            )
            assertTrue(
                "MOBI real sample must keep publisher text; encoding=" +
                    reader.getMetadata()["resolvedEncoding"] + " excerpt=" + allText.take(360),
                allText.contains("Издательство АСТ")
            )
            assertTrue("MOBI output must not expose UTF-8 mojibake", !allText.contains("Ð"))
            assertTrue("MOBI output must not expose CP1251 mojibake", !allText.contains("Ã"))
            assertTrue("MOBI output must not contain replacement glyphs", !allText.contains("\uFFFD"))
            assertTrue(
                "MOBI PalmDOC trailing record bytes must not leak into words",
                allText.contains("они стоят на вершинах скал") &&
                    allText.contains("излучали ласку из-под ресниц")
            )
            assertTrue(
                "MOBI output must not contain stray CP1251/UTF-8 mojibake Cyrillic supplement glyphs: " +
                    reader.getMetadata()["resolvedEncoding"] + " :: " + allText.suspiciousMobiGlyphContextsForTest(),
                allText.suspiciousMobiGlyphContextsForTest().isEmpty()
            )
            assertTrue(
                "MOBI output must not contain localized UTF-8 mojibake pairs: " +
                    reader.getMetadata()["resolvedEncoding"] + " :: " + allText.localizedMobiMojibakeContextsForTest(),
                allText.localizedMobiMojibakeContextsForTest().isEmpty()
            )
            assertTrue(
                "MOBI output must not contain stray Latin letters inside Cyrillic text: " +
                    reader.getMetadata()["resolvedEncoding"] + " :: " + allText.latinInsideCyrillicContextsForTest(),
                allText.latinInsideCyrillicContextsForTest().isEmpty()
            )
            assertTrue(
                "MOBI output must not contain stray extended Latin letters inside Cyrillic text: " +
                    reader.getMetadata()["resolvedEncoding"] + " :: " + allText.extendedLatinInsideCyrillicContextsForTest(),
                allText.extendedLatinInsideCyrillicContextsForTest().isEmpty()
            )
            assertTrue(
                "Middle MOBI backend fragments should be screen-sized and bounded: " +
                    middleFragmentLengths.readerPageFillStatsForTest(),
                sortedMiddleFragmentLengths.isNotEmpty() &&
                    sortedMiddleFragmentLengths[sortedMiddleFragmentLengths.lastIndex / 2] in 500..1_600 &&
                    sortedMiddleFragmentLengths.last() <= 2_200
            )
        } finally {
            reader.close()
        }
    }

    private fun String.visibleTextForTest(): String =
        replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
            .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
            .replace(Regex("<[^>]+>"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()

    private fun String.visibleTextLengthForTest(): Int = visibleTextForTest().length

    private fun List<Int>.readerPageFillStatsForTest(): String {
        if (isEmpty()) return "empty"
        val sorted = sorted()
        return "min=${sorted.first()}, p10=${sorted[(sorted.lastIndex * 0.10).toInt()]}, " +
            "median=${sorted[sorted.lastIndex / 2]}, p90=${sorted[(sorted.lastIndex * 0.90).toInt()]}, " +
            "max=${sorted.last()}, count=$size"
    }

    private fun String.suspiciousMobiGlyphContextsForTest(): String {
        val regex = Regex("[\u0402\u0403\u0409\u040A\u040B\u040C\u040F\u0452\u0453\u0459\u045A\u045B\u045C\u045F]")
        return regex.findAll(this)
            .take(8)
            .joinToString(" | ") { match ->
                val start = (match.range.first - 36).coerceAtLeast(0)
                val end = (match.range.last + 36).coerceAtMost(length)
                substring(start, end)
            }
    }

    private fun String.localizedMobiMojibakeContextsForTest(): String {
        val regex = Regex("[РС][\\u0402\\u0403\\u201A\\u0453\\u201E\\u2026\\u2020\\u2021\\u20AC\\u2030\\u0409\\u2039\\u040A\\u040C\\u040B\\u040F\\u0452\\u2018\\u2019\\u201C\\u201D\\u2022\\u2013\\u2014\\uFFFD\\u2122\\u0459\\u203A\\u045A\\u045C\\u045B\\u045F\\u00A0\\u040E\\u045E\\u0408\\u00A4\\u0490\\u00A6\\u00A7\\u0401\\u00A9\\u0404\\u00AB\\u00AC\\u00AD\\u00AE\\u0407\\u00B0\\u00B1\\u0406\\u0456\\u0491\\u00B5\\u00B6\\u00B7\\u0451\\u2116\\u0454\\u00BB\\u0458\\u0405\\u0455\\u0457]")
        return regex.findAll(this)
            .take(8)
            .joinToString(" | ") { match ->
                val start = (match.range.first - 36).coerceAtLeast(0)
                val end = (match.range.last + 36).coerceAtMost(length)
                substring(start, end)
            }
    }

    private fun String.latinInsideCyrillicContextsForTest(): String {
        val regex = Regex("""(?iu)[а-яё]\s*[abcefghjknopqrstuwyz]\s*[а-яё]""")
        return regex.findAll(this)
            .take(8)
            .joinToString(" | ") { match ->
                val start = (match.range.first - 36).coerceAtLeast(0)
                val end = (match.range.last + 36).coerceAtMost(length)
                substring(start, end)
            }
    }

    private fun String.extendedLatinInsideCyrillicContextsForTest(): String {
        val regex = Regex("""(?iu)[а-яё]\s*[\u00C0-\u024F]\s*[а-яё]""")
        return regex.findAll(this)
            .take(8)
            .joinToString(" | ") { match ->
                val start = (match.range.first - 36).coerceAtLeast(0)
                val end = (match.range.last + 36).coerceAtMost(length)
                substring(start, end)
            }
    }

    private fun buildMinimalMobi(
        compression: Int,
        textEncoding: Int,
        textRecord: ByteArray,
        extraTextRecords: List<ByteArray> = emptyList(),
        extraRecords: List<ByteArray> = emptyList()
    ): ByteArray {
        val record0 = ByteArray(80)
        writeUInt16BE(record0, 0, compression)
        writeUInt16BE(record0, 8, 1 + extraTextRecords.size)
        writeUInt16BE(record0, 12, 0)
        "MOBI".encodeToByteArray().copyInto(record0, destinationOffset = 16)
        writeUInt32BE(record0, 20, 64)
        writeUInt32BE(record0, 28, textEncoding)

        val records = listOf(record0, textRecord) + extraTextRecords + extraRecords
        val recordCount = records.size
        val recordInfoOffset = 78
        var nextOffset = recordInfoOffset + recordCount * 8
        val offsets = records.map { record ->
            val offset = nextOffset
            nextOffset += record.size
            offset
        }
        val output = ByteArrayOutputStream()

        output.write(ByteArray(76))
        output.write(byteArrayOf(0x00, recordCount.toByte()))
        offsets.forEach { offset ->
            output.write(intToBytes(offset))
            output.write(ByteArray(4))
        }
        records.forEach(output::write)
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
