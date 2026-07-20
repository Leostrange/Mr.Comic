package io.leostrange.mrcomic.engine.formats.epub

import org.w3c.dom.Element
import org.w3c.dom.Node
import org.w3c.dom.NodeList
import org.xml.sax.InputSource
import java.io.StringReader
import javax.xml.parsers.DocumentBuilderFactory

internal data class EpubFootnoteItem(
    val anchorId: String,
    val number: String,
    val text: String
)

internal object EpubFootnoteParser {
    private val notesTitleRe = Regex(
        """^\s*(примечани[ея]|notes?|endnotes?|footnotes?)\s*$""",
        RegexOption.IGNORE_CASE
    )
    private val htmlTagRe = Regex("<[^>]+>")
    private val bodyRe = Regex("""(?is)<body[^>]*>(.*)</body>""")
    private val headingRe = Regex("""(?is)<h[1-6][^>]*>(.*?)</h[1-6]>""")
    private val legacyNoteIdRe = Regex("""^FbAutId_\d+$""", RegexOption.IGNORE_CASE)
    private val noteIdRe = Regex(
        """^(?:FbAutId_\d+|id\d+|fn\d+|fnt[-_]*\d+|note[-_]*\d+|footnote[-_]*\d+|back[-_]*\d+|sup[-_]*\d+|text-fn[-_]*\d+|pn[-_]*\d+|ann[-_]*\d+|annotation[-_]*\d+)$""",
        RegexOption.IGNORE_CASE
    )
    /** EPUB3 semantic attributes that mark an element as a footnote/endnote. */
    private val epubFootnoteTypes = setOf("footnote", "endnote", "rearnote")
    private val docFootnoteRoles = setOf("doc-footnote", "doc-endnote")
    private val noteLabelRe = Regex("""^[\[(]?\d+[\]).]?$|^[IVXLCDM]+[.).]?$""", RegexOption.IGNORE_CASE)
    private val leadingLabelRe = Regex("""^\s*([\[(]?\d+[\]).]?|[IVXLCDM]+[.).]?)(?=\s|$)""", RegexOption.IGNORE_CASE)
    private val emptyAnchorRe = Regex("""(?is)<a\b[^>]*></a>""")
    private val blockTagRe = Regex("""(?is)</?(?:div|p|section|article|aside|blockquote|ul|ol|li)[^>]*>""")
    private val spanNoteRe = Regex(
        """(?is)<span\b[^>]*\bid\s*=\s*["']((?:FbAutId_\d+|id\d+|fn\d+|fnt[-_]*\d+|note[-_]*\d+|footnote[-_]*\d+|back[-_]*\d+|sup[-_]*\d+|text-fn[-_]*\d+|pn[-_]*\d+|ann[-_]*\d+|annotation[-_]*\d+))["'][^>]*>(.*?)</span>""",
        RegexOption.IGNORE_CASE
    )
    private val firstBlockRe = Regex(
        """(?is)^\s*<(?:div|p|h[1-6]|span|sup)[^>]*>(.*?)</(?:div|p|h[1-6]|span|sup)>"""
    )

    fun hasNotesTitle(rawHtml: String): Boolean {
        parseBodyElement(rawHtml)?.let { body ->
            val firstBlockText = body.childNodes.asSequence()
                .mapNotNull { node ->
                    when (node.nodeType) {
                        Node.ELEMENT_NODE,
                        Node.TEXT_NODE -> normalizeText(node.textContent)
                        else -> null
                    }?.takeIf { it.isNotBlank() }
                }
                .firstOrNull()
            if (!firstBlockText.isNullOrBlank()) {
                return notesTitleRe.matches(firstBlockText)
            }
        }

        val bodyText = bodyRe.find(rawHtml)?.groupValues?.get(1)
            ?.let { htmlTagRe.replace(it, " ") }
            ?.let(::normalizeText)
            ?: return false
        return notesTitleRe.matches(bodyText)
    }

    fun extractItems(rawHtml: String): List<EpubFootnoteItem> {
        extractItemsFromDom(rawHtml).takeIf { it.isNotEmpty() }?.let { return it }
        return extractItemsFromRegex(rawHtml)
    }

    private fun extractItemsFromDom(rawHtml: String): List<EpubFootnoteItem> {
        val body = parseBodyElement(rawHtml) ?: return emptyList()
        val result = linkedMapOf<String, EpubFootnoteItem>()

        collectElements(body).forEach { element ->
            val anchorId = element.getAttribute("id").orEmpty().trim()
            val epubType = element.getAttribute("epub:type").orEmpty().trim().lowercase()
            val role = element.getAttribute("role").orEmpty().trim().lowercase()
            val matchesId = noteIdRe.matches(anchorId)
            val isEpub3Footnote = epubType in epubFootnoteTypes || role in docFootnoteRoles
            if ((!matchesId && !isEpub3Footnote) || hasNoteLikeAncestor(element)) return@forEach
            extractItemFromElement(element)?.let { item ->
                result.putIfAbsent(item.anchorId, item)
            }
        }

        return result.values.toList()
    }

    private fun extractItemFromElement(element: Element): EpubFootnoteItem? {
        val anchorId = element.getAttribute("id").orEmpty().trim()
        if (anchorId.isBlank()) return null

        val fullText = normalizeText(element.textContent)
        if (fullText.isBlank()) return null

        val labelFromChild = element.childNodes.asSequence()
            .mapNotNull { node ->
                if (node.nodeType != Node.ELEMENT_NODE) return@mapNotNull null
                normalizeText(node.textContent).takeIf { it.isNotBlank() }
            }
            .firstOrNull(::looksLikeNoteLabel)

        val labelFromText = leadingLabelRe.find(fullText)?.groupValues?.get(1)
            ?.trim()
            ?.trimEnd('.', ')', ']')
            ?.takeIf(::looksLikeNoteLabel)

        val fallbackLabel = digitsFromAnchor(anchorId)
        val label = labelFromChild ?: labelFromText ?: fallbackLabel

        if (!legacyNoteIdRe.matches(anchorId) && labelFromChild == null && labelFromText == null) {
            return null
        }

        val number = label.orEmpty().ifBlank { anchorId }
        val text = stripLeadingLabel(fullText, number)
        if (text.isBlank()) return null
        return EpubFootnoteItem(anchorId = anchorId, number = number, text = text)
    }

    private fun extractItemsFromRegex(rawHtml: String): List<EpubFootnoteItem> {
        val body = bodyRe.find(rawHtml)?.groupValues?.get(1)?.trim().orEmpty()
        if (body.isEmpty()) return emptyList()

        extractLegacySingleItem(body)?.let { return listOf(it) }

        val result = linkedMapOf<String, EpubFootnoteItem>()
        spanNoteRe.findAll(body).forEach { match ->
            val anchorId = match.groupValues[1]
            val inner = match.groupValues[2]
            val fullText = normalizeText(
                blockTagRe.replace(
                    emptyAnchorRe.replace(inner, ""),
                    " "
                ).let { htmlTagRe.replace(it, " ") }
            )
            if (fullText.isBlank()) return@forEach

            val label = firstBlockRe.find(inner)?.groupValues?.get(1)
                ?.let { htmlTagRe.replace(it, " ") }
                ?.let(::normalizeText)
                ?.takeIf(::looksLikeNoteLabel)
                ?: leadingLabelRe.find(fullText)?.groupValues?.get(1)
                    ?.trim()
                    ?.trimEnd('.', ')', ']')
                    ?.takeIf(::looksLikeNoteLabel)
                ?: digitsFromAnchor(anchorId)
                ?: return@forEach

            val text = stripLeadingLabel(fullText, label).ifBlank { fullText }
            if (text.isBlank()) return@forEach
            result.putIfAbsent(
                anchorId,
                EpubFootnoteItem(anchorId = anchorId, number = label, text = text)
            )
        }

        return result.values.toList()
    }

    private fun extractLegacySingleItem(body: String): EpubFootnoteItem? {
        val headingMatch = headingRe.find(body) ?: return null
        val anchorId = Regex("""\bid\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(headingMatch.value)?.groupValues?.get(1).orEmpty()
        if (!legacyNoteIdRe.matches(anchorId)) return null

        val number = htmlTagRe.replace(headingMatch.groupValues[1], " ")
            .let(::normalizeText)
            .ifEmpty { digitsFromAnchor(anchorId).orEmpty() }

        val text = body.removeRange(headingMatch.range)
            .replace(emptyAnchorRe, "")
            .replace(Regex("""(?is)<br\s*/?>"""), " ")
            .replace(blockTagRe, " ")
            .let { htmlTagRe.replace(it, " ") }
            .let(::normalizeText)
        if (text.isBlank()) return null

        return EpubFootnoteItem(anchorId = anchorId, number = number, text = text)
    }

    private fun parseBodyElement(rawHtml: String): Element? = runCatching {
        val factory = DocumentBuilderFactory.newInstance().apply {
            isNamespaceAware = false
            isExpandEntityReferences = false
            runCatching { setFeature("http://apache.org/xml/features/disallow-doctype-decl", true) }
            runCatching { setFeature("http://xml.org/sax/features/external-general-entities", false) }
            runCatching { setFeature("http://xml.org/sax/features/external-parameter-entities", false) }
        }
        val builder = factory.newDocumentBuilder().apply {
            setEntityResolver { _, _ -> InputSource(StringReader("")) }
        }
        val document = builder.parse(InputSource(StringReader(rawHtml)))
        document.getElementsByTagName("body").item(0) as? Element
    }.getOrNull()

    private fun hasNoteLikeAncestor(element: Element): Boolean {
        var current = element.parentNode
        while (current is Element) {
            val id = current.getAttribute("id").orEmpty().trim()
            if (noteIdRe.matches(id)) return true
            current = current.parentNode
        }
        return false
    }

    private fun collectElements(root: Element): List<Element> = buildList {
        fun visit(node: Node) {
            if (node.nodeType == Node.ELEMENT_NODE) {
                val element = node as Element
                add(element)
                val children = element.childNodes
                for (index in 0 until children.length) {
                    visit(children.item(index))
                }
            }
        }
        val children = root.childNodes
        for (index in 0 until children.length) {
            visit(children.item(index))
        }
    }

    private fun NodeList.asSequence(): Sequence<Node> = sequence {
        for (index in 0 until length) {
            yield(item(index))
        }
    }

    private fun digitsFromAnchor(anchorId: String): String? =
        anchorId.substringAfterLast('_', anchorId)
            .removePrefix("id")
            .takeIf { it.isNotBlank() && it.all(Char::isDigit) }

    private fun looksLikeNoteLabel(text: String): Boolean {
        val normalized = normalizeText(text).trimEnd('.', ')', ']')
        return normalized.length <= 12 && noteLabelRe.matches(normalized)
    }

    private fun stripLeadingLabel(fullText: String, label: String): String {
        if (label.isBlank()) return fullText.trim()
        val escaped = Regex.escape(label)
        return fullText.replaceFirst(
            Regex("""^\s*$escaped(?:[\s\p{Pd}:;,.]+)?"""),
            ""
        ).trim()
    }

    private fun normalizeText(text: String): String =
        text.replace('\u00A0', ' ')
            .replace(Regex("\\s+"), " ")
            .trim()
}
