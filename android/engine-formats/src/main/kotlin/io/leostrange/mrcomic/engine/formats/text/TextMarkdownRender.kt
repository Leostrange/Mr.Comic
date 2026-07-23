package io.leostrange.mrcomic.engine.formats.text

import org.commonmark.Extension
import org.commonmark.ext.autolink.AutolinkExtension
import org.commonmark.ext.footnotes.FootnotesExtension
import org.commonmark.ext.gfm.strikethrough.StrikethroughExtension
import org.commonmark.ext.gfm.tables.TablesExtension
import org.commonmark.node.Node
import org.commonmark.parser.Parser
import org.commonmark.renderer.html.HtmlRenderer
import org.jsoup.Jsoup
import org.jsoup.safety.Safelist

private val markdownExtensions: List<Extension> = listOf(
    AutolinkExtension.create(),
    TablesExtension.create(),
    StrikethroughExtension.create(),
    FootnotesExtension.create()
)
private val markdownParser: Parser = Parser.builder()
    .extensions(markdownExtensions)
    .build()
private val markdownRenderer: HtmlRenderer = HtmlRenderer.builder()
    .extensions(markdownExtensions)
    .escapeHtml(false)
    .sanitizeUrls(true)
    .build()
private val markdownSafeList: Safelist = Safelist.relaxed()
    .addTags(
        "html", "head", "body", "main", "article", "section", "aside", "header", "footer",
        "figure", "figcaption", "hr", "table", "thead", "tbody", "tfoot", "tr", "th", "td",
        "caption", "colgroup", "col", "sup", "sub", "center", "font", "big", "small",
        "kbd", "details", "summary", "mark", "abbr", "del", "s", "em", "strong",
        "div", "span"
    )
    .addAttributes(":all", "id", "class", "title", "lang", "dir", "style", "align", "data-mrcomic-pagebreak")
    .addAttributes("img", "src", "alt", "title", "width", "height", "loading", "align")
    .addAttributes("a", "href", "name", "target")
    .addAttributes("font", "size", "face", "color")
    .addAttributes("th", "colspan", "rowspan")
    .addAttributes("td", "colspan", "rowspan")
    .addAttributes("table", "width", "border", "cellpadding", "cellspacing", "align")
    .addAttributes("col", "span")
    .addProtocols("a", "href", "http", "https", "mailto", "tel", "file", "content", "#")
    .addProtocols("img", "src", "http", "https", "file", "content", "data")
    .preserveRelativeLinks(true)

/** Renders individual Markdown top-level nodes into reader-safe HTML blocks. */
internal fun renderMarkdownToHtmlBlocks(raw: String): List<String> {
    val document = markdownParser.parse(raw.replace("\r\n", "\n").replace('\r', '\n'))
    val blocks = mutableListOf<String>()
    var node: Node? = document.firstChild
    while (node != null) {
        val rendered = markdownRenderer.render(node).trim()
        if (rendered.isNotBlank()) {
            blocks += Jsoup.clean(rendered, markdownSafeList)
        }
        node = node.next
    }
    return blocks
}
