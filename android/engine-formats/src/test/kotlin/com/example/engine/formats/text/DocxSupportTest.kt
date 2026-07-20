package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class DocxSupportTest {

    @Test
    fun docxBodyTextFallsBackToReaderSerifWhileExplicitHeadingFontIsKept() = runBlocking {
        val tempDocx = File.createTempFile("docx_font_inheritance_", ".docx")
        try {
            ZipOutputStream(tempDocx.outputStream().buffered()).use { zip ->
                putZipText(zip, "[Content_Types].xml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
                      <Default Extension="xml" ContentType="application/xml"/>
                    </Types>
                """.trimIndent())
                putZipText(zip, "word/document.xml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
                      <w:body>
                        <w:p>
                          <w:r><w:t>Body paragraph text</w:t></w:r>
                        </w:p>
                        <w:p>
                          <w:pPr><w:pStyle w:val="Heading1"/></w:pPr>
                          <w:r><w:t>Heading paragraph text</w:t></w:r>
                        </w:p>
                      </w:body>
                    </w:document>
                """.trimIndent())
                putZipText(zip, "word/styles.xml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <w:styles xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
                      <w:docDefaults>
                        <w:rPrDefault>
                          <w:rPr>
                            <w:rFonts w:ascii="Calibri" w:hAnsi="Calibri"/>
                          </w:rPr>
                        </w:rPrDefault>
                      </w:docDefaults>
                      <w:style w:type="paragraph" w:styleId="Normal" w:default="1">
                        <w:name w:val="Normal"/>
                        <w:rPr>
                          <w:rFonts w:ascii="Calibri" w:hAnsi="Calibri"/>
                        </w:rPr>
                      </w:style>
                      <w:style w:type="paragraph" w:styleId="Heading1">
                        <w:name w:val="heading 1"/>
                        <w:basedOn w:val="Normal"/>
                        <w:rPr>
                          <w:rFonts w:ascii="Courier New" w:hAnsi="Courier New"/>
                        </w:rPr>
                      </w:style>
                    </w:styles>
                """.trimIndent())
            }

            val reader = TextFormatReader(ContextWrapper(null), tempDocx.absolutePath, ComicFormat.DOCX)
            try {
                val pageCount = reader.getPageCount()
                val html = (0 until pageCount)
                    .mapNotNull { reader.getHtmlPage(it) }
                    .joinToString("\n")

                assertTrue(html.contains("Body paragraph text"))
                assertTrue(html.contains("Heading paragraph text"))
                assertTrue(html.contains("<h1", ignoreCase = true))
                assertTrue(html.contains("font-family:'Courier New';"))
                assertFalse(html.contains("font-family:'Calibri';"))
            } finally {
                reader.close()
            }
        } finally {
            tempDocx.delete()
        }
    }

    @Test
    fun docxTablesInsideStructuredDocumentTagsAreRendered() = runBlocking {
        val tempDocx = File.createTempFile("docx_structured_table_", ".docx")
        try {
            ZipOutputStream(tempDocx.outputStream().buffered()).use { zip ->
                putZipText(zip, "[Content_Types].xml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
                      <Default Extension="xml" ContentType="application/xml"/>
                    </Types>
                """.trimIndent())
                putZipText(zip, "word/document.xml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
                      <w:body>
                        <w:p><w:r><w:t>Before table</w:t></w:r></w:p>
                        <w:sdt>
                          <w:sdtPr/>
                          <w:sdtContent>
                            <w:tbl>
                              <w:tr>
                                <w:tc><w:p><w:r><w:t>Left cell</w:t></w:r></w:p></w:tc>
                                <w:tc><w:p><w:r><w:t>Right cell</w:t></w:r></w:p></w:tc>
                              </w:tr>
                            </w:tbl>
                          </w:sdtContent>
                        </w:sdt>
                        <w:p><w:r><w:t>After table</w:t></w:r></w:p>
                      </w:body>
                    </w:document>
                """.trimIndent())
            }

            val reader = TextFormatReader(ContextWrapper(null), tempDocx.absolutePath, ComicFormat.DOCX)
            try {
                val html = (0 until reader.getPageCount())
                    .mapNotNull { reader.getHtmlPage(it) }
                    .joinToString("\n")

                assertTrue(html.contains("Before table"))
                assertTrue(html.contains("<table", ignoreCase = true))
                assertTrue(html.contains("<td", ignoreCase = true))
                assertTrue(html.contains("Left cell"))
                assertTrue(html.contains("Right cell"))
                assertTrue(html.contains("After table"))
            } finally {
                reader.close()
            }
        } finally {
            tempDocx.delete()
        }
    }

    private fun putZipText(zip: ZipOutputStream, entryName: String, text: String) {
        zip.putNextEntry(ZipEntry(entryName))
        zip.write(text.toByteArray(Charsets.UTF_8))
        zip.closeEntry()
    }
}
