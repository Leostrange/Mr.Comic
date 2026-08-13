package io.leostrange.mrcomic.feature.reader.harness

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import java.io.File
import java.util.UUID
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

/**
 * Программно создаёт тестовые EPUB-файлы для harness.
 * Не требует внешних файлов — всё генерируется в коде.
 */
object TestBookBuilder {

    data class TestChapter(
        val title: String,
        val paragraphs: List<String>,
        val footnotes: List<Footnote> = emptyList(),
        val images: List<String> = emptyList()
    )

    data class Footnote(
        val id: String,
        val refText: String,
        val noteText: String,
        val type: FootnoteType = FootnoteType.EPUB3
    )

    enum class FootnoteType { EPUB2, EPUB3 }

    fun buildEpub(
        title: String,
        chapters: List<TestChapter>,
        language: String = "en",
        outputDir: File
    ): File {
        val epubDir = File(outputDir, title.replace(" ", "_"))
        epubDir.mkdirs()

        // META-INF/container.xml
        File(epubDir, "META-INF").mkdirs()
        File(epubDir, "META-INF/container.xml").writeText(
            """<?xml version="1.0" encoding="UTF-8"?>
            <container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
              <rootfiles>
                <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
              </rootfiles>
            </container>""".trimIndent()
        )

        // OEBPS/content.opf
        File(epubDir, "OEBPS").mkdirs()
        val spineItems = chapters.mapIndexed { i, ch ->
            """<item id="ch${i + 1}" href="chapter${i + 1}.xhtml" media-type="application/xhtml+xml"/>"""
        }.joinToString("\n    ")
        val spineRefs = chapters.mapIndexed { i, _ ->
            """<itemref idref="ch${i + 1}"/>"""
        }.joinToString("\n    ")

        File(epubDir, "OEBPS/content.opf").writeText(
            """<?xml version="1.0" encoding="UTF-8"?>
            <package xmlns="http://www.idpf.org/2007/opf" version="3.0" unique-identifier="uid">
              <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
                <dc:identifier id="uid">urn:uuid:${stableBookId(title, language, chapters.size)}</dc:identifier>
                <dc:title>$title</dc:title>
                <dc:language>$language</dc:language>
              </metadata>
              <manifest>
                $spineItems
              </manifest>
              <spine>
                $spineRefs
              </spine>
            </package>""".trimIndent()
        )

        // Chapters
        chapters.forEachIndexed { i, chapter ->
            val footnotesHtml = buildFootnotesHtml(chapter.footnotes)
            val bodyHtml = chapter.paragraphs.joinToString("\n") { "<p>$it</p>" }

            File(epubDir, "OEBPS/chapter${i + 1}.xhtml").writeText(
                """<?xml version="1.0" encoding="UTF-8"?>
                <html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">
                <head><title>${chapter.title}</title></head>
                <body>
                  <h1>${chapter.title}</h1>
                  $bodyHtml
                  $footnotesHtml
                </body>
                </html>""".trimIndent()
            )
        }

        // Zip to .epub
        val epubFile = File(outputDir, "$title.epub")
        zipDirectory(epubDir, epubFile)
        epubDir.deleteRecursively()
        return epubFile
    }

    private fun buildFootnotesHtml(footnotes: List<Footnote>): String {
        if (footnotes.isEmpty()) return ""
        return buildString {
            appendLine("""<section epub:type="footnotes">""")
            footnotes.forEach { fn ->
                when (fn.type) {
                    FootnoteType.EPUB3 -> appendLine(
                        """  <aside epub:type="footnote" id="${fn.id}"><p>${fn.noteText}</p></aside>"""
                    )
                    FootnoteType.EPUB2 -> appendLine(
                        """  <div id="${fn.id}"><p>${fn.noteText}</p></div>"""
                    )
                }
            }
            appendLine("</section>")
        }
    }

    /** Книга со сносками для теста "текст сноски не встраивается в текст". */
    fun buildFootnoteTestBook(outputDir: File): File {
        return buildEpub(
            title = "Footnote Test",
            chapters = listOf(
                TestChapter(
                    title = "Chapter with Footnotes",
                    paragraphs = listOf(
                        "This is the first paragraph with a footnote reference.<a epub:type=\"noteref\" href=\"#fn1\">[1]</a>",
                        "The second paragraph has no footnotes.",
                        "This paragraph has another footnote.<a epub:type=\"noteref\" href=\"#fn2\">[2]</a>",
                        "Final paragraph of the chapter."
                    ),
                    footnotes = listOf(
                        Footnote("fn1", "[1]", "This is the text of footnote 1. It should NOT appear in the main text flow."),
                        Footnote("fn2", "[2]", "This is the text of footnote 2. It should also NOT appear in the main text flow.")
                    )
                )
            ),
            outputDir = outputDir
        )
    }

    /** Длинная книга для стресс-теста пагинации. */
    fun buildLongBook(outputDir: File, chapters: Int = 50, paragraphsPerChapter: Int = 100): File {
        return buildEpub(
            title = "Long Book Stress Test",
            chapters = (1..chapters).map { i ->
                TestChapter(
                    title = "Chapter $i",
                    paragraphs = (1..paragraphsPerChapter).map { j ->
                        "This is paragraph $j of chapter $i. ".repeat(5)
                    }
                )
            },
            outputDir = outputDir
        )
    }

    /** Книга с CJK текстом. */
    fun buildCjkBook(outputDir: File): File {
        return buildEpub(
            title = "CJK Test",
            chapters = listOf(
                TestChapter(
                    title = "日本語テスト",
                    paragraphs = listOf(
                        "これは日本語のテキストです。改行とハイフネーションのテストを行います。".repeat(20)
                    )
                )
            ),
            language = "ja",
            outputDir = outputDir
        )
    }

    /** Книга с длинными словами для теста переносов. */
    fun buildHyphenationTestBook(outputDir: File): File {
        return buildEpub(
            title = "Hyphenation Test",
            chapters = listOf(
                TestChapter(
                    title = "Long Words",
                    paragraphs = listOf(
                        "This paragraph contains supercalifragilisticexpialidocious and " +
                            "antidisestablishmentarianism and pneumonoultramicroscopicsilicovolcanoconiosis " +
                            "to test hyphenation of very long words at line boundaries."
                    )
                )
            ),
            outputDir = outputDir
        )
    }

    /** Deterministic minimal DOCX used by the runtime format matrix. */
    fun buildDocx(outputDir: File): File {
        val docxDir = File(outputDir, "docx_basic_source").apply { mkdirs() }
        File(docxDir, "_rels").mkdirs()
        File(docxDir, "word").mkdirs()
        File(docxDir, "[Content_Types].xml").writeText(
            """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
            <Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
              <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
              <Default Extension="xml" ContentType="application/xml"/>
              <Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>
            </Types>""".trimIndent()
        )
        File(docxDir, "_rels/.rels").writeText(
            """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
            <Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
              <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
            </Relationships>""".trimIndent()
        )
        File(docxDir, "word/document.xml").writeText(
            """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
            <w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
              <w:body>
                <w:p><w:r><w:t>Mr.Comic DOCX runtime fixture</w:t></w:r></w:p>
                <w:p><w:r><w:t>A stable paragraph verifies text readiness and restore.</w:t></w:r></w:p>
                <w:sectPr/>
              </w:body>
            </w:document>""".trimIndent()
        )
        val output = File(outputDir, "docx-basic.docx")
        zipDirectory(docxDir, output)
        docxDir.deleteRecursively()
        return output
    }

    /** Deterministic two-page CBZ used as the raster representative in smoke tests. */
    fun buildCbz(outputDir: File): File {
        val cbzDir = File(outputDir, "cbz_basic_source").apply { mkdirs() }
        buildRasterPages(cbzDir)
        val output = File(outputDir, "cbz-basic.cbz")
        zipDirectory(cbzDir, output)
        cbzDir.deleteRecursively()
        return output
    }

    /** ZIP containing a text book; exercises archive delegation into a reflowable reader. */
    fun buildTextArchive(outputDir: File): File {
        val sourceDir = File(outputDir, "text_archive_basic_source").apply { mkdirs() }
        File(sourceDir, "book.txt").writeText(
            "Mr.Comic text archive fixture.\n\n" +
                "The second section is long enough to exercise reflow and restore. ".repeat(20)
        )
        return File(outputDir, "text-archive-basic.txt.zip").also { output ->
            zipDirectory(sourceDir, output)
            sourceDir.deleteRecursively()
        }
    }

    /** Two-page image folder used to verify directory-backed raster reading. */
    fun buildImageFolder(outputDir: File): File =
        File(outputDir, "image-folder-basic").apply {
            mkdirs()
            buildRasterPages(this)
        }

    /** Minimal deterministic two-page PDF without a runtime PDF-generation dependency. */
    fun buildPdf(outputDir: File): File {
        val pageOne = "BT /F1 18 Tf 72 720 Td (Mr.Comic PDF page 1) Tj ET"
        val pageTwo = "BT /F1 18 Tf 72 720 Td (Mr.Comic PDF page 2) Tj ET"
        val objects = listOf(
            "<< /Type /Catalog /Pages 2 0 R >>",
            "<< /Type /Pages /Kids [3 0 R 4 0 R] /Count 2 >>",
            "<< /Type /Page /Parent 2 0 R /MediaBox [0 0 612 792] /Resources << /Font << /F1 7 0 R >> >> /Contents 5 0 R >>",
            "<< /Type /Page /Parent 2 0 R /MediaBox [0 0 612 792] /Resources << /Font << /F1 7 0 R >> >> /Contents 6 0 R >>",
            "<< /Length ${pageOne.length} >>\nstream\n$pageOne\nendstream",
            "<< /Length ${pageTwo.length} >>\nstream\n$pageTwo\nendstream",
            "<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica >>"
        )
        val body = StringBuilder("%PDF-1.4\n")
        val offsets = objects.mapIndexed { index, value ->
            body.length.also { body.append("${index + 1} 0 obj\n$value\nendobj\n") }
        }
        val xrefOffset = body.length
        body.append("xref\n0 ${objects.size + 1}\n")
        body.append("0000000000 65535 f \n")
        offsets.forEach { body.append(it.toString().padStart(10, '0')).append(" 00000 n \n") }
        body.append("trailer\n<< /Size ${objects.size + 1} /Root 1 0 R >>\n")
        body.append("startxref\n$xrefOffset\n%%EOF\n")
        return File(outputDir, "pdf-basic.pdf").apply { writeText(body.toString(), Charsets.US_ASCII) }
    }

    private fun buildRasterPages(directory: File) {
        repeat(2) { pageIndex ->
            val bitmap = Bitmap.createBitmap(320, 480, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(bitmap)
            canvas.drawColor(if (pageIndex == 0) Color.WHITE else Color.rgb(235, 240, 250))
            val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                color = Color.BLACK
                textSize = 28f
            }
            canvas.drawText("Mr.Comic page ${pageIndex + 1}", 30f, 80f, paint)
            File(directory, "page-${pageIndex + 1}.png").outputStream().use { stream ->
                check(bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream))
            }
            bitmap.recycle()
        }
    }

    private fun stableBookId(title: String, language: String, chapterCount: Int): UUID =
        UUID.nameUUIDFromBytes("$title|$language|$chapterCount".toByteArray(Charsets.UTF_8))

    private fun zipDirectory(dir: File, output: File) {
        ZipOutputStream(output.outputStream()).use { zos ->
            dir.walkTopDown().filter { it.isFile }.forEach { file ->
                val entryName = file.relativeTo(dir).path.replace(File.separatorChar, '/')
                zos.putNextEntry(ZipEntry(entryName).apply { time = 0L })
                file.inputStream().use { it.copyTo(zos) }
                zos.closeEntry()
            }
        }
    }
}
