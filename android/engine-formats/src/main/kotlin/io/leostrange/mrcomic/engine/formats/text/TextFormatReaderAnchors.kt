package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.TocEntry
import org.jsoup.Jsoup

internal fun TextFormatReader.buildAnchorPageIndex(): Map<String, Int> {
    val result = linkedMapOf<String, Int>()
    htmlPages.forEachIndexed { index, html ->
        runCatching {
            val document = Jsoup.parse(html)
            document.select("[id]").forEach { element ->
                val id = element.id().trim()
                if (id.isNotBlank()) {
                    result.putIfAbsent(id, index)
                }
            }
            document.select("a[name]").forEach { element ->
                val name = element.attr("name").trim()
                if (name.isNotBlank()) {
                    result.putIfAbsent(name, index)
                }
            }
        }
    }
    return result
}

internal fun TextFormatReader.buildTableOfContents(): List<TocEntry> {
    // Primary: use detected chapter anchors (h1-h6 headings).
    val fromAnchors = documentData.chapterAnchors.mapNotNull { anchor ->
        val pageIndex = anchorPageIndex[anchor.id] ?: return@mapNotNull null
        val charOffset = findAnchorCharOffset(htmlPages.getOrNull(pageIndex), anchor.id)
        TocEntry(
            title = anchor.title,
            pageIndex = pageIndex,
            anchorId = anchor.id,
            sectionIndex = pageIndex,
            charOffset = charOffset
        )
    }
    if (fromAnchors.isNotEmpty()) return fromAnchors

    // Fallback: when no heading-based anchors were detected (e.g. plain HTML
    // documents without h1-h6), build TOC from all named/id anchors found in
    // the HTML pages. This matches how Moon+ Reader shows TOC for any document
    // that has anchor targets.
    return anchorPageIndex.entries.mapNotNull { (id, pageIndex) ->
        val title = findAnchorTitle(htmlPages.getOrNull(pageIndex), id)
            ?: return@mapNotNull null
        TocEntry(
            title = title,
            pageIndex = pageIndex,
            anchorId = id,
            sectionIndex = pageIndex,
            charOffset = -1
        )
    }
}

internal fun TextFormatReader.findAnchorTitle(html: String?, anchorId: String): String? {
    if (html.isNullOrBlank() || anchorId.isBlank()) return null
    return runCatching {
        val doc = Jsoup.parse(html)
        val el = doc.select("#${anchorId}, [name=$anchorId]").firstOrNull() ?: return@runCatching null
        // Use the element's own text if it looks like a heading or meaningful label;
        // skip generic anchors with empty or very short text.
        val text = el.text().trim()
        text.takeIf { it.length in 2..120 }
    }.getOrNull()
}

internal fun TextFormatReader.findAnchorCharOffset(html: String?, anchorId: String): Int {
    if (html.isNullOrBlank() || anchorId.isBlank()) return -1
    return runCatching {
        val doc = Jsoup.parse(html)
        val element = doc.select("#${anchorId}, [name=$anchorId]").firstOrNull()
        element?.let { html.indexOf("<${it.tagName()}") } ?: -1
    }.getOrDefault(-1)
}
