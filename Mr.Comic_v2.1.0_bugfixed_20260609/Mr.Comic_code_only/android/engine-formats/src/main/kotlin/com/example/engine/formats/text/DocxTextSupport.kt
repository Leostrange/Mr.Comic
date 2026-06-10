package com.example.engine.formats.text

import android.util.Log
import com.example.engine.formats.base.READER_BASE_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.parser.Parser as JsoupXmlParser

internal object DocxTextSupport {
    private const val TAG = "DocxTextSupport"

    fun render(bytes: ByteArray, baseUrl: String?): ReflowableDocument {
        val rendered = renderDocument(bytes, baseUrl)
        safeLogD("render: blocks=${rendered.blocks.size} toc=${rendered.toc.size}")
        val reflowed = ReflowableDocumentBuilder.fromHtmlBlocks(
            blocks = rendered.blocks,
            baseCss = READER_BASE_DOCUMENT_CSS + "\n" + rendered.extraCss
        )
        safeLogD("render: pageCount=${reflowed.pageCount}")
        // Build TOC from the *paginated* pages so page indices are correct.
        // rendered.toc was built from raw blocks (pre-pagination) and has pageIndex=0 for all
        // entries, making every TOC tap land on page 1. buildTocFromPages iterates the final
        // page list and records the actual page index for each heading it finds.
        val toc = buildTocFromPages(reflowed.pages)
        return reflowed.copy(
            toc = toc.ifEmpty { rendered.toc },
            footnoteMap = rendered.footnoteMap
        )
    }

    private fun safeLogD(message: String) {
        runCatching { Log.d(TAG, message) }
    }

    private fun buildTocFromPages(pages: List<String>): List<TocEntry> =
        pages.flatMapIndexed { pageIndex, pageHtml ->
            Regex("""<h([1-6])\b[^>]*>(.*?)</h\1>""", RegexOption.IGNORE_CASE)
                .findAll(pageHtml)
                .mapNotNull { match ->
                    val title = xmlTextToPlain(match.groupValues[2]).ifBlank { return@mapNotNull null }
                    TocEntry(title = title, pageIndex = pageIndex)
                }
                .toList()
        }

    private fun renderDocument(bytes: ByteArray, baseUrl: String?): DocxRenderedDocument {
        val entries = readDocxZipEntries(bytes)
        val xml = entries["word/document.xml"]?.toString(Charsets.UTF_8)
            ?: return DocxRenderedDocument(
                blocks = listOf("<p>Unable to read DOCX document.</p>")
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
            blocks = safeBlocks + footnoteBlocks,
            toc = toc,
            extraCss = archive.styleContext.embeddedFontCss,
            footnoteMap = archive.footnotes + archive.endnotes
        )
    }

    private data class DocxRenderedDocument(
        val blocks: List<String>,
        val toc: List<TocEntry> = emptyList(),
        val extraCss: String = "",
        val footnoteMap: Map<String, String> = emptyMap()
    )

}
