package com.example.engine.formats.text

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.charset.Charset
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class RichTextFormatReadersTest {

    @Test
    fun dedicatedReadersExposeStableEngineIds() = runBlocking {
        val context = ContextWrapper(null)

        assertEquals(
            "rtf-reflowable-v1",
            RtfFormatReader(context, "C:/tmp/sample.rtf").getMetadata()["engine"]
        )
        assertEquals(
            "docx-reflowable-v1",
            DocxFormatReader(context, "C:/tmp/sample.docx").getMetadata()["engine"]
        )
        assertEquals(
            "odt-reflowable-v1",
            OdtFormatReader(context, "C:/tmp/sample.odt").getMetadata()["engine"]
        )
    }

    @Test
    fun rtfTextSupportDecodesCp1251Escapes() {
        val raw = """{\rtf1\ansi\ansicpg1251 \'cf\'f0\'e8\'e2\'e5\'f2, \'ec\'e8\'f0!}"""

        val text = RtfTextSupport.extractPlainText(raw)

        assertEquals("Привет, мир!", text)
    }

    @Test
    fun rtfTextSupportDecodesRawCp1251TextRuns() {
        val raw = "{\\rtf1\\ansi\\ansicpg1251 ".toByteArray(Charsets.ISO_8859_1) +
            "Ги де Мопассан\nПод солнцем".toByteArray(Charset.forName("windows-1251")) +
            "}".toByteArray(Charsets.ISO_8859_1)

        val text = RtfTextSupport.extractPlainText(raw.toString(Charsets.ISO_8859_1))

        assertTrue(text.contains("Ги де Мопассан"))
        assertTrue(text.contains("Под солнцем"))
        assertFalse(text.contains("Ã"))
        assertFalse(text.contains("Ð"))
    }

    @Test
    fun rtfTextSupportPreservesInlineStylesAndHyperlinksAsHtmlBlocks() {
        val raw = """
            {\rtf1\ansi
            {\pard\qc\b Centered title\par}
            Plain {\i italic} and {\ul underlined} text.
            {\field{\*\fldinst HYPERLINK "https://example.com/book"}{\fldrslt Example link}}\par}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("text-align:center"))
        assertTrue(html.contains("<strong>Centered title</strong>"))
        assertTrue(html.contains("<em>italic</em>"))
        assertTrue(html.contains("<u>underlined</u>"))
        assertTrue(html.contains("""<a href="https://example.com/book">Example link</a>"""))
    }

    @Test
    fun rtfReaderKeepsCp1251StylesInsteadOfFallingBackToPlainText() = runBlocking {
        val raw = """
            {\rtf1\ansi\ansicpg1251
            {\pard\qc\b \'d2\'e5\'f1\'f2\'ee\'e2\'fb\'e9 \'e7\'e0\'e3\'ee\'eb\'ee\'e2\'ee\'ea\par}
            {\pard \'ce\'e1\'fb\'f7\'ed\'fb\'e9 {\i \'ea\'f3\'f0\'f1\'e8\'e2} \'e8 {\ul \'ef\'ee\'e4\'f7\'e5\'f0\'ea\'ed\'f3\'f2\'ee}. \par}
            {\field{\*\fldinst HYPERLINK "https://example.com/ru"}{\fldrslt \'d1\'f1\'fb\'eb\'ea\'e0}}\par}
        """.trimIndent()
        val sample = File.createTempFile("mrcomic-rtf-cp1251", ".rtf").apply {
            writeBytes(raw.toByteArray(Charsets.ISO_8859_1))
            deleteOnExit()
        }

        val reader = RtfFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val joined = (0 until reader.getPageCount())
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")
            val visibleText = Jsoup.parse(joined).text()

            assertTrue(visibleText.contains("Тестовый заголовок"))
            assertTrue(joined.contains("<strong>Тестовый</strong>"))
            assertTrue(joined.contains("<strong>заголовок</strong>"))
            assertTrue(joined.contains("<em>курсив</em>"))
            assertTrue(joined.contains("<u>подчеркнуто</u>"))
            assertTrue(joined.contains("""<a href="https://example.com/ru">Ссылка</a>"""))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun rtfTextSupportPreservesColorHighlightFontSizeAndSuperscript() {
        val raw = """
            {\rtf1\ansi{\colortbl;\red255\green0\blue0;\red255\green255\blue0;}
            {\pard Plain {\cf1 red} {\highlight2 bright} {\fs32 large} x{\super 2}{\nosupersub}\par}}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("color:#ff0000"))
        assertTrue(html.contains("background-color:#ffff00"))
        assertTrue(html.contains("font-size:16pt"))
        assertTrue(html.contains("vertical-align:super"))
    }

    @Test
    fun rtfTextSupportPreservesStrikeAndParagraphSpacing() {
        val raw = """
            {\rtf1\ansi
            {\pard\sb120\sa240 Before {\strike removed} after\par}}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("<s>removed</s>"))
        assertTrue(html.contains("margin-top:6pt"))
        assertTrue(html.contains("margin-bottom:12pt"))
    }

    @Test
    fun rtfTextSupportPreservesListTextGroupsAsListItems() {
        val raw = """
            {\rtf1\ansi
            {\pard{\pntext\f2\'b7\tab}First item\par}
            {\pard{\pntext 2.\tab}Second item\par}}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("<ul><li", ignoreCase = true))
        assertTrue(html.contains("First item"))
        assertTrue(html.contains("Second item"))
    }

    @Test
    fun rtfTextSupportPreservesBasicTableRowsAndCells() {
        val raw = """
            {\rtf1\ansi
            \trowd\intbl Left\cell Right\cell\row
            \trowd\intbl Bottom 1\cell Bottom 2\cell\row
            }
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("<table", ignoreCase = true))
        assertTrue(html.contains("<tr>", ignoreCase = true))
        assertTrue(html.contains("<td>", ignoreCase = true))
        assertTrue(html.contains("Left"))
        assertTrue(html.contains("Right"))
        assertTrue(html.contains("Bottom 1"))
        assertTrue(html.contains("Bottom 2"))
    }

    @Test
    fun rtfTextSupportPreservesPictureSizingMetadata() {
        val raw = """
            {\rtf1\ansi
            {\pict\pngblip\picw100\pich50\picwgoal720\pichgoal360\picscalex150\picscaley200
            89504E470D0A1A0A0000000D49484452000000010000000108060000001F15C4890000000D49444154789C6360606060000000050001A5F645400000000049454E44AE426082}}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("<img", ignoreCase = true))
        assertTrue(html.contains("max-width:100%"))
        assertTrue(html.contains("width:54pt"))
        assertTrue(html.contains("height:36pt"))
    }

    @Test
    fun rtfTextSupportConstrainsOversizedPicturesToReaderPage() {
        val raw = """
            {\rtf1\ansi
            {\pict\jpegblip\picw1359\pich2126\picwgoal20385\pichgoal31890
            ffd8ffe000104a46494600010101004800480000ffd9}}
        """.trimIndent()

        val html = RtfTextSupport.renderHtmlBlocks(raw).joinToString("\n")

        assertTrue(html.contains("<img", ignoreCase = true))
        assertTrue(html.contains("width:100%"))
        assertTrue(html.contains("height:72vh"))
        assertTrue(html.contains("object-fit:contain"))
    }

    @Test
    fun odtTextSupportBuildsStyledBlocksFromContentXml() {
        val xml = """
            <office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
                xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
                xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
                xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0">
              <office:automatic-styles>
                <style:style style:name="T1"><style:text-properties fo:font-weight="bold"/></style:style>
                <style:style style:name="T2"><style:text-properties fo:font-style="italic"/></style:style>
              </office:automatic-styles>
              <office:body>
                <office:text>
                  <text:h text:outline-level="2">Section</text:h>
                  <text:p>Hello <text:span text:style-name="T1">bold</text:span> and <text:span text:style-name="T2">italic</text:span></text:p>
                </office:text>
              </office:body>
            </office:document-content>
        """.trimIndent()

        val blocks = OdtTextSupport.extractBlocks(buildSimpleZip("content.xml", xml))

        assertTrue(blocks.any { it.contains("<h2>Section</h2>") })
        assertTrue(blocks.any { it.contains("<strong>bold</strong>") })
        assertTrue(blocks.any { it.contains("<em>italic</em>") })
    }

    @Test
    fun odtTextSupportRejectsOversizedContentXmlEntry() {
        val oversizedText = "A".repeat(17 * 1024 * 1024)
        val odtBytes = buildSimpleZip(
            "content.xml",
            "<office:document-content><office:body><office:text><text:p>$oversizedText</text:p></office:text></office:body></office:document-content>"
        )

        val blocks = OdtTextSupport.extractBlocks(odtBytes)

        assertEquals(listOf("<p>Unable to read ODT document.</p>"), blocks)
    }

    @Test
    fun docxTextSupportBuildsRichHtmlWithTableImageAndFonts() {
        val docxBytes = buildZip(
            "word/document.xml" to """
                <w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
                    xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
                    xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
                    xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing">
                  <w:body>
                    <w:p>
                      <w:bookmarkStart w:name="intro"/>
                      <w:pPr><w:pStyle w:val="Heading1"/></w:pPr>
                      <w:r><w:t>Demo heading</w:t></w:r>
                    </w:p>
                    <w:p>
                      <w:r>
                        <w:rPr><w:b/><w:rFonts w:ascii="DemoFont"/></w:rPr>
                        <w:t>Bold text</w:t>
                      </w:r>
                    </w:p>
                    <w:tbl>
                      <w:tr><w:tc><w:p><w:r><w:t>Cell</w:t></w:r></w:p></w:tc></w:tr>
                    </w:tbl>
                    <w:p>
                      <w:r>
                        <w:drawing>
                          <wp:inline>
                            <wp:extent cx="95250"/>
                            <wp:docPr descr="Cover"/>
                            <a:graphic><a:graphicData><pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
                              <pic:blipFill><a:blip r:embed="rImg1"/></pic:blipFill>
                            </pic:pic></a:graphicData></a:graphic>
                          </wp:inline>
                        </w:drawing>
                      </w:r>
                    </w:p>
                  </w:body>
                </w:document>
            """.trimIndent(),
            "word/_rels/document.xml.rels" to """
                <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
                  <Relationship Id="rImg1" Target="media/image1.png"/>
                </Relationships>
            """.trimIndent(),
            "word/styles.xml" to """
                <w:styles xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
                  <w:style w:type="paragraph" w:styleId="Heading1">
                    <w:rPr><w:rFonts w:ascii="DemoFont"/></w:rPr>
                  </w:style>
                </w:styles>
            """.trimIndent(),
            "word/fontTable.xml" to """
                <w:fonts xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
                    xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
                  <w:font w:name="DemoFont">
                    <w:embedRegular r:id="font1"/>
                  </w:font>
                </w:fonts>
            """.trimIndent(),
            "word/_rels/fontTable.xml.rels" to """
                <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
                  <Relationship Id="font1" Target="fonts/font1.ttf"/>
                </Relationships>
            """.trimIndent(),
            "word/fonts/font1.ttf" to byteArrayOf(0x00, 0x01, 0x00, 0x00, 0x11, 0x22),
            "word/media/image1.png" to byteArrayOf(
                0x89.toByte(), 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A
            )
        )

        val document = DocxTextSupport.render(docxBytes, "file:///books/")
        val html = (0 until minOf(document.pageCount, 2))
            .joinToString("\n") { document.pageAt(it).orEmpty() }

        assertTrue(html.contains("Demo heading"))
        assertTrue(html.contains("<table", ignoreCase = true))
        assertTrue(html.contains("<img", ignoreCase = true))
        assertTrue(html.contains("@font-face"))
        assertTrue(html.contains("font-family"))
    }

    @Test
    fun docxTextSupportSkipsOversizedEmbeddedMediaButKeepsText() {
        val oversizedImage = ByteArray(9 * 1024 * 1024) { 0x42 }
        val docxBytes = buildZip(
            "word/document.xml" to """
                <w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
                    xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
                    xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
                    xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing">
                  <w:body>
                    <w:p><w:r><w:t>Text survives oversized image</w:t></w:r></w:p>
                    <w:p>
                      <w:r>
                        <w:drawing>
                          <wp:inline>
                            <wp:docPr descr="Huge media"/>
                            <a:graphic><a:graphicData><pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
                              <pic:blipFill><a:blip r:embed="rImgHuge"/></pic:blipFill>
                            </pic:pic></a:graphicData></a:graphic>
                          </wp:inline>
                        </w:drawing>
                      </w:r>
                    </w:p>
                  </w:body>
                </w:document>
            """.trimIndent(),
            "word/_rels/document.xml.rels" to """
                <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
                  <Relationship Id="rImgHuge" Target="media/huge.png"/>
                </Relationships>
            """.trimIndent(),
            "word/media/huge.png" to oversizedImage
        )

        val document = DocxTextSupport.render(docxBytes, "file:///books/")
        val html = document.pageAt(0).orEmpty()

        assertTrue(html.contains("Text survives oversized image"))
        assertFalse(html.contains("data:image/png;base64"))
        assertFalse(html.contains("<img", ignoreCase = true))
    }

    private fun buildSimpleZip(entryName: String, content: String): ByteArray {
        val output = ByteArrayOutputStream()
        ZipOutputStream(output).use { zip ->
            zip.putNextEntry(ZipEntry(entryName))
            zip.write(content.toByteArray(Charsets.UTF_8))
            zip.closeEntry()
        }
        return output.toByteArray()
    }

    private fun buildZip(vararg entries: Pair<String, Any>): ByteArray {
        val output = ByteArrayOutputStream()
        ZipOutputStream(output).use { zip ->
            entries.forEach { (name, content) ->
                zip.putNextEntry(ZipEntry(name))
                when (content) {
                    is String -> zip.write(content.toByteArray(Charsets.UTF_8))
                    is ByteArray -> zip.write(content)
                    else -> error("Unsupported zip entry content for $name")
                }
                zip.closeEntry()
            }
        }
        return output.toByteArray()
    }
}
