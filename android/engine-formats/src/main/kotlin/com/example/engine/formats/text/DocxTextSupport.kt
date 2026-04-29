package com.example.engine.formats.text

import com.example.engine.formats.base.READER_PRESERVE_LAYOUT_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.parser.Parser as JsoupXmlParser

internal object DocxTextSupport {
    fun render(bytes: ByteArray, baseUrl: String?): ReflowableDocument {
        val rendered = renderDocument(bytes, baseUrl)
        return ReflowableDocument(
            pages = rendered.pages,
            toc = rendered.toc
        )
    }

    private fun renderDocument(bytes: ByteArray, baseUrl: String?): DocxRenderedDocument {
        val entries = readDocxZipEntries(bytes)
        val xml = entries["word/document.xml"]?.toString(Charsets.UTF_8)
            ?: return DocxRenderedDocument(
                pages = listOf(buildDocxHtmlPage("<p>Unable to read DOCX document.</p>", baseUrl))
            )
        val relationships = parseDocxRelationships(
            entries["word/_rels/document.xml.rels"]?.toString(Charsets.UTF_8)
        )
        val archive = buildDocxArchive(entries, relationships)
        val document = Jsoup.parse(xml, "", JsoupXmlParser.xmlParser())
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.getElementsByTag("w:body").firstOrNull()

        val blocks = body?.children()?.mapNotNull { child ->
            when (child.tagName()) {
                "w:p" -> renderDocxParagraph(child, archive)
                "w:tbl" -> renderDocxTable(child, archive)
                else -> null
            }
        }.orEmpty()

        val safeBlocks = blocks.ifEmpty {
            listOf("<p>${escapeDocxHtml(xmlTextToPlain(xml))}</p>")
        }
        val footnoteBlocks = buildList {
            if (archive.footnotes.isNotEmpty() || archive.endnotes.isNotEmpty()) {
                val items = (archive.footnotes.entries + archive.endnotes.entries)
                    .sortedBy { it.key.toIntOrNull() ?: Int.MAX_VALUE }
                    .joinToString(separator = "") { (id, text) ->
                        """<li id="docx-footnote-$id">${escapeDocxHtml(text)}</li>"""
                    }
                add("""<section class="footnotes"><h2>Footnotes</h2><ol>$items</ol></section>""")
            }
        }
        val toc = safeBlocks.mapNotNull { block ->
            Regex("""<h([1-6])\b[^>]*id="([^"]+)"[^>]*>(.*?)</h\1>""", RegexOption.IGNORE_CASE)
                .find(block)
                ?.let { match ->
                    TocEntry(
                        title = xmlTextToPlain(match.groupValues[3]).ifBlank { "Section" },
                        pageIndex = 0
                    )
                }
        }
        return DocxRenderedDocument(
            pages = listOf(
                buildDocxHtmlPage(
                    body = (safeBlocks + footnoteBlocks).joinToString(separator = ""),
                    baseUrl = baseUrl,
                    extraCss = archive.styleContext.embeddedFontCss
                )
            ),
            toc = toc
        )
    }

    private data class DocxRenderedDocument(
        val pages: List<String>,
        val toc: List<TocEntry> = emptyList()
    )

    private fun buildDocxHtmlPage(body: String, baseUrl: String?, extraCss: String = ""): String =
        buildUnifiedReaderHtmlDocument(
            body = body,
            baseUrl = baseUrl,
            extraCss = extraCss,
            baseCss = READER_PRESERVE_LAYOUT_DOCUMENT_CSS,
            preservePublisherLayout = true
        )
}
