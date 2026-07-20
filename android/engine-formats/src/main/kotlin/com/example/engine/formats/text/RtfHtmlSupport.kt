package com.example.engine.formats.text

import org.jsoup.Jsoup
import java.nio.charset.Charset
import java.util.Base64

internal object RtfHtmlSupport {
    private const val MAX_INLINE_RTF_IMAGE_BYTES = 900_000
    private const val READER_IMAGE_MAX_WIDTH_PT = 430.0
    private const val READER_IMAGE_MAX_HEIGHT_PT = 620.0
    private const val READER_PAGEBREAK_MARKER = "<hr data-mrcomic-pagebreak=\"true\"/>"

    private val DESTINATIONS_TO_SKIP = setOf(
        "fonttbl", "colortbl", "stylesheet", "info", "header", "footer",
        "headerl", "headerr", "headerf", "footerl", "footerr", "footerf",
        "revtbl", "rsidtbl", "listtable", "listoverridetable", "pgdsctbl",
        "latentstyles", "mmathPr"
    )

    data class RtfRenderResult(
        val blocks: List<String>,
        val footnoteMap: Map<String, String>
    )

    fun renderHtmlBlocksWithFootnotes(raw: String): RtfRenderResult {
        val parser = Parser(raw)
        val root = parser.parse()
        val renderer = Renderer(parseColorTable(raw))
        renderer.render(root)
        return RtfRenderResult(
            blocks = renderer.blocks(),
            footnoteMap = renderer.footnoteMap()
        )
    }

    fun renderHtmlBlocks(raw: String): List<String> =
        renderHtmlBlocksWithFootnotes(raw).blocks

    fun extractPlainText(raw: String): String {
        return renderHtmlBlocks(raw)
            .joinToString("\n")
            .let { Jsoup.parse(it).text() }
            .replace(Regex("\\s+\n"), "\n")
            .replace(Regex("\n{3,}"), "\n\n")
            .trim()
    }

    private sealed interface Node {
        data class Group(
            val prefixControls: List<Control>,
            val children: List<Node>,
            val starred: Boolean = false
        ) : Node

        data class Text(val value: String) : Node
        data class Control(val word: String, val param: Int? = null) : Node
    }

    private class Parser(
        private val raw: String
    ) {
        private var index = 0

        fun parse(): Node.Group = parseGroup(inheritedUcSkip = 1, consumeOpeningBrace = false)

        private fun parseGroup(inheritedUcSkip: Int, consumeOpeningBrace: Boolean): Node.Group {
            if (consumeOpeningBrace && index < raw.length && raw[index] == '{') {
                index++
            }

            val nodes = mutableListOf<Node>()
            var ucSkip = inheritedUcSkip

            while (index < raw.length) {
                when (val ch = raw[index]) {
                    '{' -> nodes += parseGroup(ucSkip, consumeOpeningBrace = true)
                    '}' -> {
                        index++
                        break
                    }
                    '\\' -> {
                        val parsed = parseControlOrEscape(ucSkip)
                        ucSkip = parsed.updatedUcSkip
                        parsed.node?.let(nodes::add)
                    }
                    '\r', '\n' -> index++
                    else -> {
                        val start = index
                        while (index < raw.length && raw[index] !in charArrayOf('{', '}', '\\', '\r', '\n')) {
                            index++
                        }
                        nodes += Node.Text(decodeRawText(raw.substring(start, index)))
                    }
                }
            }

            val prefixControls = mutableListOf<Node.Control>()
            var starred = false
            var splitIndex = 0
            while (splitIndex < nodes.size && nodes[splitIndex] is Node.Control) {
                val control = nodes[splitIndex] as Node.Control
                if (control.word == "*") {
                    starred = true
                } else {
                    prefixControls += control
                }
                splitIndex++
            }

            return Node.Group(
                prefixControls = prefixControls,
                children = nodes.drop(splitIndex),
                starred = starred
            )
        }

        private fun parseControlOrEscape(currentUcSkip: Int): ParsedControl {
            index++
            if (index >= raw.length) return ParsedControl(null, currentUcSkip)
            return when (val next = raw[index]) {
                '\\', '{', '}' -> {
                    index++
                    ParsedControl(Node.Text(next.toString()), currentUcSkip)
                }
                '\'' -> {
                    if (index + 2 >= raw.length) {
                        index = raw.length
                        ParsedControl(null, currentUcSkip)
                    } else {
                        val decodedBytes = mutableListOf<Byte>()
                        while (index + 2 < raw.length && raw[index] == '\'') {
                            val hex = raw.substring(index + 1, index + 3)
                            val byte = hex.toIntOrNull(16)?.toByte() ?: break
                            decodedBytes += byte
                            index += 3
                            if (index >= raw.length || raw[index] != '\\' || index + 1 >= raw.length || raw[index + 1] != '\'') {
                                break
                            }
                            index++
                        }
                        ParsedControl(
                            node = decodedBytes.takeIf { it.isNotEmpty() }?.let { bytes ->
                                Node.Text(bytes.toByteArray().toString(currentCharset()))
                            },
                            updatedUcSkip = currentUcSkip
                        )
                    }
                }
                '~' -> {
                    index++
                    ParsedControl(Node.Text("\u00A0"), currentUcSkip)
                }
                '_' -> {
                    index++
                    ParsedControl(Node.Text("\u2011"), currentUcSkip)
                }
                '-' -> {
                    index++
                    ParsedControl(Node.Text("\u00AD"), currentUcSkip)
                }
                '*' -> {
                    index++
                    ParsedControl(Node.Control("*"), currentUcSkip)
                }
                else -> {
                    // Always advance past non-letter / non-identifier characters (P0 #4)
                    index++
                    if (index >= raw.length) return ParsedControl(null, currentUcSkip)
                    if (!next.isLetter()) {
                        return ParsedControl(null, currentUcSkip)
                    }
                    val start = index
                    while (index < raw.length && raw[index].isLetter()) index++
                    val word = raw.substring(start, index)

                    val numberStart = index
                    if (index < raw.length && (raw[index] == '-' || raw[index] == '+')) index++
                    while (index < raw.length && raw[index].isDigit()) index++
                    val param = if (index > numberStart) raw.substring(numberStart, index).toIntOrNull() else null
                    if (index < raw.length && raw[index] == ' ') index++

                    when (word) {
                        "ansicpg" -> {
                            param?.let { updateCharset(it) }
                            ParsedControl(Node.Control(word, param), currentUcSkip)
                        }
                        "uc" -> ParsedControl(Node.Control(word, param), param ?: currentUcSkip)
                        "u" -> {
                            // RTF \uN: N is the Unicode code point. Negative values like \u-1234
                            // mean the character is encoded as high surrogate (0xD800 + N), not 65536+N.
                            // But some RTF writers emit negative values — treat as BMP+offset for surrogate pairs.
                            val codePoint = param?.let { 
                                // Negative means: first, compute the absolute code point from 16-bit signed
                                // then handle surrogates properly (P2)
                                if (it < 0) {
                                    // RTF stores 16-bit signed values: -1 → 0xFFFF (surrogate), -2 → 0xFFFE
                                    // In practice: \u-1234 → codePoint 64402 is already > BMP
                                    // Use the raw value as-is (it's already a valid Unicode code point)
                                    it + 0x10000
                                } else it 
                            } ?: '?'.code
                            val text = runCatching { Character.toChars(codePoint.coerceIn(0, 0x10FFFF)).concatToString() }.getOrDefault("?")
                            skipUnicodeFallback(currentUcSkip)
                            ParsedControl(Node.Text(text), currentUcSkip)
                        }
                        else -> ParsedControl(Node.Control(word, param), currentUcSkip)
                    }
                }
            }
        }

        private fun skipUnicodeFallback(count: Int) {
            repeat(count.coerceAtLeast(0)) {
                if (index >= raw.length) return
                when {
                    raw[index] == '\\' && index + 3 < raw.length && raw[index + 1] == '\'' -> index += 4
                    raw[index] == '\r' || raw[index] == '\n' -> index++
                    else -> index++
                }
            }
        }

        private var charset: Charset = Charsets.ISO_8859_1

        private fun updateCharset(codePage: Int) {
            charset = runCatching { Charset.forName("cp$codePage") }.getOrElse { charset }
        }

        private fun currentCharset(): Charset = charset

        private fun decodeRawText(segment: String): String {
            if (segment.isEmpty()) return segment
            if (segment.all { it.code in 0..0x7F }) return segment
            val bytes = ByteArray(segment.length) { i -> (segment[i].code and 0xFF).toByte() }
            return bytes.toString(currentCharset())
        }

        private data class ParsedControl(
            val node: Node?,
            val updatedUcSkip: Int
        )
    }

    private class Renderer(
        private val colorTable: Map<Int, String>
    ) {
        private val blocks = mutableListOf<String>()
        private val paragraph = StringBuilder()
        private var paragraphStyle = ParagraphStyle()
        private val currentTableRows = mutableListOf<List<String>>()
        private val currentRowCells = mutableListOf<String>()
        private val currentCellBlocks = mutableListOf<String>()
        private var insideTableRow = false
        private val footnoteMap = mutableMapOf<String, String>()
        private var footnoteCounter = 0

        fun render(root: Node.Group) {
            val state = StyleState()
            root.children.forEach { renderNode(it, state) }
            flushParagraph()
            flushTable()
        }

        fun blocks(): List<String> =
            blocks.ifEmpty { listOf("<p></p>") }

        fun footnoteMap(): Map<String, String> = footnoteMap.toMap()

        private fun renderNode(node: Node, inheritedState: StyleState) {
            if (!insideTableRow && currentTableRows.isNotEmpty() && !isTableContinuation(node)) {
                flushTable()
            }
            when (node) {
                is Node.Text -> appendStyledText(node.value, inheritedState)
                is Node.Control -> applyControl(node, inheritedState)
                is Node.Group -> renderGroup(node, inheritedState)
            }
        }

        private fun renderGroup(group: Node.Group, inheritedState: StyleState) {
            val destination = group.prefixControls.firstOrNull()?.word
            if (group.starred && destination !in setOf("fldinst", "fldrslt")) return
            if (destination in DESTINATIONS_TO_SKIP && destination !in setOf("pict")) return

            // Handle RTF footnotes: extract content, store in map, insert clickable reference
            if (destination == "footnote") {
                footnoteCounter++
                val id = "rtf-fn-$footnoteCounter"
                val footnoteHtml = renderInlineHtml(group.children, inheritedState.copy())
                val footnoteText = Jsoup.parse(footnoteHtml).text().trim()
                if (footnoteText.isNotBlank()) {
                    footnoteMap[id] = footnoteHtml
                    appendRawHtml("""<sup><a class="fn" href="#$id">$footnoteCounter</a></sup>""")
                }
                return
            }

            if (destination == "listtext" || destination == "pntext") {
                val prefixHtml = renderInlineHtml(group.children, inheritedState.copy())
                if (prefixHtml.isNotBlank()) {
                    paragraphStyle = paragraphStyle.copy(listItem = true)
                    appendRawHtml(prefixHtml)
                }
                return
            }
            if (destination == "field") {
                appendRawHtml(renderField(group, inheritedState))
                return
            }
            if (destination == "pict") {
                renderPicture(group)?.let(::appendRawHtml)
                return
            }
            if (destination == "fldinst") return

            val localState = inheritedState.copy()
            group.prefixControls.forEach { applyControl(it, localState) }
            group.children.forEach { renderNode(it, localState) }
        }

        private fun applyControl(control: Node.Control, state: StyleState) {
            when (control.word) {
                "b" -> state.bold = control.param != 0
                "i" -> state.italic = control.param != 0
                "ul" -> state.underline = control.param != 0
                "ulnone" -> state.underline = false
                "strike", "striked" -> state.strikethrough = control.param != 0
                "cf" -> state.textColor = control.param?.let(colorTable::get)
                "highlight" -> state.backgroundColor = control.param?.let(colorTable::get)
                "fs" -> state.fontSizePt = control.param?.let { it / 2.0 }
                "super" -> state.verticalAlign = "super"
                "sub" -> state.verticalAlign = "sub"
                "nosupersub" -> state.verticalAlign = null
                "plain" -> {
                    state.bold = false
                    state.italic = false
                    state.underline = false
                    state.strikethrough = false
                    state.textColor = null
                    state.backgroundColor = null
                    state.fontSizePt = null
                    state.verticalAlign = null
                }
                "trowd" -> {
                    flushParagraph()
                    if (insideTableRow && (currentCellBlocks.isNotEmpty() || currentRowCells.isNotEmpty())) {
                        finalizeCurrentCell()
                        finalizeCurrentRow()
                    }
                    insideTableRow = true
                }
                "intbl" -> insideTableRow = true
                "cell" -> {
                    flushParagraph()
                    finalizeCurrentCell()
                }
                "row" -> {
                    flushParagraph()
                    finalizeCurrentCell()
                    finalizeCurrentRow()
                    insideTableRow = false
                }
                "par", "page", "sect" -> flushParagraph()
                "line" -> paragraph.append("<br/>")
                "tab" -> paragraph.append("&emsp;")
                "bullet" -> paragraph.append("&#8226; ")
                "emdash" -> paragraph.append("&#8212;")
                "endash" -> paragraph.append("&#8211;")
                "lquote" -> paragraph.append("&#8216;")
                "rquote" -> paragraph.append("&#8217;")
                "ldblquote" -> paragraph.append("&#8220;")
                "rdblquote" -> paragraph.append("&#8221;")
                "qc" -> paragraphStyle = paragraphStyle.copy(align = "center")
                "ql" -> paragraphStyle = paragraphStyle.copy(align = "left")
                "qr" -> paragraphStyle = paragraphStyle.copy(align = "right")
                "qj" -> paragraphStyle = paragraphStyle.copy(align = "justify")
                "li" -> paragraphStyle = paragraphStyle.copy(indentLeftTwips = control.param ?: 0)
                "ri" -> paragraphStyle = paragraphStyle.copy(indentRightTwips = control.param ?: 0)
                "fi" -> paragraphStyle = paragraphStyle.copy(firstLineTwips = control.param ?: 0)
                "sb" -> paragraphStyle = paragraphStyle.copy(spaceBeforeTwips = control.param ?: 0)
                "sa" -> paragraphStyle = paragraphStyle.copy(spaceAfterTwips = control.param ?: 0)
                "pard" -> {
                    flushParagraph()
                    paragraphStyle = ParagraphStyle()
                }
            }
        }

        private fun renderField(group: Node.Group, inheritedState: StyleState): String {
            val instructionGroup = group.children
                .filterIsInstance<Node.Group>()
                .firstOrNull { it.prefixControls.firstOrNull()?.word == "fldinst" }
            val resultGroup = group.children
                .filterIsInstance<Node.Group>()
                .firstOrNull { it.prefixControls.firstOrNull()?.word == "fldrslt" }

            val href = instructionGroup
                ?.let(::renderPlainTextFromGroup)
                ?.let(::extractHyperlinkUrl)
            val displayHtml = resultGroup
                ?.let { renderInlineHtml(it.children, inheritedState.copy()) }
                ?.takeIf { it.isNotBlank() }
                ?: href.orEmpty()

            return if (href.isNullOrBlank()) displayHtml
            else """<a href="${escapeHtml(href)}">$displayHtml</a>"""
        }

        private fun renderPicture(group: Node.Group): String? {
            val controls = collectControls(group)
            val controlWords = controls.map { it.word }
            val mimeType = when {
                "pngblip" in controlWords -> "image/png"
                "jpegblip" in controlWords -> "image/jpeg"
                "jpgblip" in controlWords -> "image/jpeg"
                "emfblip" in controlWords -> "image/emf"
                "wmetafile" in controlWords -> "image/wmf"
                else -> "application/octet-stream"
            }
            val hex = collectText(group)
                .filter { it.isDigit() || it.lowercaseChar() in 'a'..'f' }
            if (hex.length < 8 || hex.length % 2 != 0) return null
            val bytes = ByteArray(hex.length / 2) { offset ->
                hex.substring(offset * 2, offset * 2 + 2).toInt(16).toByte()
            }
            if (bytes.size > MAX_INLINE_RTF_IMAGE_BYTES && isOversizedPictureForReader(controls)) {
                return READER_PAGEBREAK_MARKER
            }
            val base64 = Base64.getEncoder().encodeToString(bytes)
            val style = buildPictureStyle(controls)
            val styleAttr = style?.let { """ style="$it"""" }.orEmpty()
            return """<img src="data:$mimeType;base64,$base64" alt=""$styleAttr/>"""
        }

        private fun renderInlineHtml(nodes: List<Node>, initialState: StyleState): String {
            val inline = StringBuilder()
            val state = initialState.copy()
            nodes.forEach { node ->
                when (node) {
                    is Node.Text -> inline.append(wrapInlineHtml(escapeHtml(node.value), state))
                    is Node.Control -> when (node.word) {
                        "b" -> state.bold = node.param != 0
                        "i" -> state.italic = node.param != 0
                        "ul" -> state.underline = node.param != 0
                        "ulnone" -> state.underline = false
                        "strike", "striked" -> state.strikethrough = node.param != 0
                        "cf" -> state.textColor = node.param?.let(colorTable::get)
                        "highlight" -> state.backgroundColor = node.param?.let(colorTable::get)
                        "fs" -> state.fontSizePt = node.param?.let { it / 2.0 }
                        "super" -> state.verticalAlign = "super"
                        "sub" -> state.verticalAlign = "sub"
                        "nosupersub" -> state.verticalAlign = null
                        "plain" -> {
                            state.bold = false
                            state.italic = false
                            state.underline = false
                            state.strikethrough = false
                            state.textColor = null
                            state.backgroundColor = null
                            state.fontSizePt = null
                            state.verticalAlign = null
                        }
                        "line" -> inline.append("<br/>")
                        "tab" -> inline.append("&emsp;")
                        "emdash" -> inline.append("&#8212;")
                        "endash" -> inline.append("&#8211;")
                        "lquote" -> inline.append("&#8216;")
                        "rquote" -> inline.append("&#8217;")
                        "ldblquote" -> inline.append("&#8220;")
                        "rdblquote" -> inline.append("&#8221;")
                    }
                    is Node.Group -> {
                        val destination = node.prefixControls.firstOrNull()?.word
                        when {
                            node.starred && destination !in setOf("fldinst", "fldrslt") -> Unit
                            destination in DESTINATIONS_TO_SKIP && destination !in setOf("pict") -> Unit
                            destination == "field" -> inline.append(renderField(node, state))
                            destination == "pict" -> renderPicture(node)?.let(inline::append)
                            else -> {
                                val localState = state.copy()
                                node.prefixControls.forEach { control ->
                                    when (control.word) {
                                        "b" -> localState.bold = control.param != 0
                                        "i" -> localState.italic = control.param != 0
                                        "ul" -> localState.underline = control.param != 0
                                        "ulnone" -> localState.underline = false
                                        "strike", "striked" -> localState.strikethrough = control.param != 0
                                        "cf" -> localState.textColor = control.param?.let(colorTable::get)
                                        "highlight" -> localState.backgroundColor = control.param?.let(colorTable::get)
                                        "fs" -> localState.fontSizePt = control.param?.let { it / 2.0 }
                                        "super" -> localState.verticalAlign = "super"
                                        "sub" -> localState.verticalAlign = "sub"
                                        "nosupersub" -> localState.verticalAlign = null
                                        "plain" -> {
                                            localState.bold = false
                                            localState.italic = false
                                            localState.underline = false
                                            localState.strikethrough = false
                                            localState.textColor = null
                                            localState.backgroundColor = null
                                            localState.fontSizePt = null
                                            localState.verticalAlign = null
                                        }
                                    }
                                }
                                inline.append(renderInlineHtml(node.children, localState))
                            }
                        }
                    }
                }
            }
            return inline.toString()
        }

        private fun renderPlainTextFromGroup(group: Node.Group): String =
            collectText(group)
                .replace(Regex("\\s+"), " ")
                .trim()

        private fun collectText(node: Node): String = when (node) {
            is Node.Text -> node.value
            is Node.Control -> ""
            is Node.Group -> node.children.joinToString("") { collectText(it) }
        }

        private fun extractHyperlinkUrl(text: String): String? {
            val match = Regex("""HYPERLINK\s+"([^"]+)"""", RegexOption.IGNORE_CASE).find(text)
                ?: Regex("""HYPERLINK\s+([^\s]+)""", RegexOption.IGNORE_CASE).find(text)
            return match?.groupValues?.getOrNull(1)?.trim()
        }

        private fun appendStyledText(text: String, state: StyleState) {
            if (text.isBlank()) {
                paragraph.append(text)
                return
            }
            paragraph.append(wrapInlineHtml(escapeHtml(text), state))
        }

        private fun appendRawHtml(html: String) {
            if (html.isBlank()) return
            paragraph.append(html)
        }

        private fun wrapInlineHtml(text: String, state: StyleState): String {
            var wrapped = text
            if (state.strikethrough) wrapped = "<s>$wrapped</s>"
            if (state.underline) wrapped = "<u>$wrapped</u>"
            if (state.italic) wrapped = "<em>$wrapped</em>"
            if (state.bold) wrapped = "<strong>$wrapped</strong>"
            val styles = buildList {
                state.textColor?.let { add("color:$it") }
                state.backgroundColor?.let { add("background-color:$it") }
                state.fontSizePt?.let { add("font-size:${trimDouble(it)}pt") }
                state.verticalAlign?.let { add("vertical-align:$it") }
            }.joinToString(";")
            if (styles.isNotBlank()) {
                wrapped = """<span style="$styles">$wrapped</span>"""
            }
            return wrapped
        }

        private fun flushParagraph() {
            val html = normalizeRtfInlineHtml(paragraph.toString().trim())
            if (html.isNotBlank()) {
                if (html.contains(READER_PAGEBREAK_MARKER) &&
                    html.replace(READER_PAGEBREAK_MARKER, "").trim().isBlank()
                ) {
                    blocks += READER_PAGEBREAK_MARKER
                    paragraph.clear()
                    paragraphStyle = ParagraphStyle()
                    return
                }
                val styles = buildList {
                    paragraphStyle.align?.let { add("text-align:$it") }
                    if (paragraphStyle.indentLeftTwips != 0) add("margin-left:${trimDouble(paragraphStyle.indentLeftTwips / 20.0)}pt")
                    if (paragraphStyle.indentRightTwips != 0) add("margin-right:${trimDouble(paragraphStyle.indentRightTwips / 20.0)}pt")
                    if (paragraphStyle.firstLineTwips != 0) add("text-indent:${trimDouble(paragraphStyle.firstLineTwips / 20.0)}pt")
                    if (paragraphStyle.spaceBeforeTwips != 0) add("margin-top:${trimDouble(paragraphStyle.spaceBeforeTwips / 20.0)}pt")
                    if (paragraphStyle.spaceAfterTwips != 0) add("margin-bottom:${trimDouble(paragraphStyle.spaceAfterTwips / 20.0)}pt")
                }.joinToString(";")
                val styleAttr = styles.takeIf { it.isNotBlank() }?.let { """ style="$it"""" }.orEmpty()
                val blockHtml = if (paragraphStyle.listItem) {
                    "<ul><li$styleAttr>$html</li></ul>"
                } else {
                    "<p$styleAttr>$html</p>"
                }
                if (insideTableRow) {
                    currentCellBlocks += blockHtml
                } else {
                    blocks += blockHtml
                }
            }
            paragraph.clear()
            paragraphStyle = ParagraphStyle()
        }

        private fun normalizeRtfInlineHtml(raw: String): String {
            var html = raw
            // RTF often repeats the same font-size control around every word. Keeping those
            // spans fragments normal phrases, breaks tests/search, and makes WebView selection
            // awkward. Preserve semantic styling, but unwrap pure font-size spans.
            val fontSizeOnlySpan = Regex(
                """<span style="font-size:[^"]+">([\s\S]*?)</span>""",
                RegexOption.IGNORE_CASE
            )
            html = fontSizeOnlySpan.replace(html) { it.groupValues[1] }

            val mergeTags = listOf("strong", "em", "u", "s")
            var changed: Boolean
            do {
                changed = false
                mergeTags.forEach { tag ->
                    val merged = Regex(
                        """</$tag>\s+<$tag>""",
                        RegexOption.IGNORE_CASE
                    ).replace(html, " ")
                    if (merged != html) {
                        html = merged
                        changed = true
                    }
                }
            } while (changed)
            return html
        }

        private fun finalizeCurrentCell() {
            val html = currentCellBlocks.joinToString("")
                .ifBlank { paragraph.toString().trim() }
                .ifBlank { "<p></p>" }
            currentRowCells += html
            currentCellBlocks.clear()
            paragraph.clear()
        }

        private fun finalizeCurrentRow() {
            if (currentRowCells.isEmpty()) return
            currentTableRows += currentRowCells.toList()
            currentRowCells.clear()
        }

        private fun flushTable() {
            if (insideTableRow) return
            if (currentTableRows.isEmpty()) return
            val tableHtml = buildString {
                append("<table><tbody>")
                currentTableRows.forEach { row ->
                    append("<tr>")
                    row.forEach { cell ->
                        append("<td>")
                        append(cell)
                        append("</td>")
                    }
                    append("</tr>")
                }
                append("</tbody></table>")
            }
            blocks += tableHtml
            currentTableRows.clear()
        }

        private fun isTableContinuation(node: Node): Boolean = when (node) {
            is Node.Control -> node.word in setOf("trowd", "cell", "row", "intbl", "pard", "plain")
            is Node.Group -> node.prefixControls.firstOrNull()?.word in setOf("pntext", "listtext")
            is Node.Text -> node.value.isBlank()
        }

        private fun escapeHtml(text: String): String = text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")

        private fun collectControls(node: Node): List<Node.Control> = when (node) {
            is Node.Control -> listOf(node)
            is Node.Text -> emptyList()
            is Node.Group -> buildList {
                addAll(node.prefixControls)
                node.children.forEach { addAll(collectControls(it)) }
            }
        }

        private fun buildPictureStyle(controls: List<Node.Control>): String? {
            val (widthPt, heightPt) = pictureDimensionsPt(controls)
            val oversizedForReader = isOversizedPictureForReader(widthPt, heightPt)
            return buildList {
                add("display:block")
                add("margin:0.8rem auto")
                add("max-width:100%")
                if (oversizedForReader) {
                    add("width:100%")
                    add("height:72vh")
                    add("max-height:72vh")
                    add("object-fit:contain")
                } else {
                    widthPt?.let { add("width:${trimDouble(it)}pt") }
                    if (heightPt != null) {
                        add("height:${trimDouble(heightPt)}pt")
                        add("object-fit:contain")
                    } else {
                        add("height:auto")
                    }
                }
            }.joinToString(";").takeIf { it.isNotBlank() }
        }

        private fun isOversizedPictureForReader(controls: List<Node.Control>): Boolean {
            val (widthPt, heightPt) = pictureDimensionsPt(controls)
            return isOversizedPictureForReader(widthPt, heightPt)
        }

        private fun isOversizedPictureForReader(widthPt: Double?, heightPt: Double?): Boolean =
            (widthPt ?: 0.0) > READER_IMAGE_MAX_WIDTH_PT || (heightPt ?: 0.0) > READER_IMAGE_MAX_HEIGHT_PT

        private fun pictureDimensionsPt(controls: List<Node.Control>): Pair<Double?, Double?> {
            val widthTwips = controls.firstNotNullOfOrNull { control ->
                when (control.word) {
                    "picwgoal" -> control.param
                    else -> null
                }
            }
            val heightTwips = controls.firstNotNullOfOrNull { control ->
                when (control.word) {
                    "pichgoal" -> control.param
                    else -> null
                }
            }
            val scaleX = controls.firstNotNullOfOrNull { control ->
                when (control.word) {
                    "picscalex" -> control.param
                    else -> null
                }
            } ?: 100
            val scaleY = controls.firstNotNullOfOrNull { control ->
                when (control.word) {
                    "picscaley" -> control.param
                    else -> null
                }
            } ?: 100
            val widthPt = widthTwips?.let { it / 20.0 * (scaleX / 100.0) }
            val heightPt = heightTwips?.let { it / 20.0 * (scaleY / 100.0) }
            return widthPt to heightPt
        }
    }

    private data class StyleState(
        var bold: Boolean = false,
        var italic: Boolean = false,
        var underline: Boolean = false,
        var strikethrough: Boolean = false,
        var textColor: String? = null,
        var backgroundColor: String? = null,
        var fontSizePt: Double? = null,
        var verticalAlign: String? = null
    )

    private data class ParagraphStyle(
        val align: String? = null,
        val indentLeftTwips: Int = 0,
        val indentRightTwips: Int = 0,
        val firstLineTwips: Int = 0,
        val spaceBeforeTwips: Int = 0,
        val spaceAfterTwips: Int = 0,
        val listItem: Boolean = false
    )

    private fun parseColorTable(raw: String): Map<Int, String> {
        val block = Regex(
            """\{\\colortbl(?<body>[\s\S]*?)\}""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).find(raw)?.groups?.get("body")?.value ?: return emptyMap()

        val entries = block.split(';')
        if (entries.isEmpty()) return emptyMap()

        val colors = linkedMapOf<Int, String>()
        entries.forEachIndexed { index, entry ->
            if (index == 0 && !entry.contains("\\red")) return@forEachIndexed
            val red = Regex("""\\red(\d+)""").find(entry)?.groupValues?.getOrNull(1)?.toIntOrNull()
            val green = Regex("""\\green(\d+)""").find(entry)?.groupValues?.getOrNull(1)?.toIntOrNull()
            val blue = Regex("""\\blue(\d+)""").find(entry)?.groupValues?.getOrNull(1)?.toIntOrNull()
            if (red != null && green != null && blue != null) {
                colors[index] = "#%02x%02x%02x".format(red, green, blue)
            }
        }
        return colors
    }

    private fun trimDouble(value: Double): String {
        val rounded = kotlin.math.round(value * 100.0) / 100.0
        return if (rounded % 1.0 == 0.0) rounded.toInt().toString() else rounded.toString()
    }
}
