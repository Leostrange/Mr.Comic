package io.leostrange.mrcomic.feature.reader.harness

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
                <dc:identifier id="uid">urn:uuid:${UUID.randomUUID()}</dc:identifier>
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

    private fun zipDirectory(dir: File, output: File) {
        ZipOutputStream(output.outputStream()).use { zos ->
            dir.walkTopDown().filter { it.isFile }.forEach { file ->
                val entryName = file.relativeTo(dir).path
                zos.putNextEntry(ZipEntry(entryName))
                file.inputStream().use { it.copyTo(zos) }
                zos.closeEntry()
            }
        }
    }
}
