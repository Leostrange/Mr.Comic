package com.example.engine.formats.text

import com.example.engine.formats.base.READER_MOBI_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode
import android.util.Log

internal data class ReflowableDocument(
    val pages: List<String>,
    val toc: List<TocEntry> = emptyList(),
    val anchorPageIndex: Map<String, Int> = emptyMap(),
    val hrefToPage: Map<String, Int> = emptyMap(),
    val footnoteMap: Map<String, String> = emptyMap()
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)

    fun pageAt(index: Int): String? =
        pages.getOrNull(index.coerceIn(0, (pages.size - 1).coerceAtLeast(0)))
}

internal object ReflowableDocumentBuilder {
    private const val PAGE_LAYOUT_UNITS = 8000
    private const val LAYOUT_UNITS_PER_LINE = 100
    private const val READER_TEXT_CHARS_PER_LINE = 38
    private const val READER_HEADING_CHARS_PER_LINE = 28
    private const val READER_PARAGRAPH_INDENT_COLUMNS = 4
    private const val TEXT_CHARS_PER_PAGE = 4000
    private const val MIN_REMAINDER_LAYOUT_UNITS = 100
    private const val MIN_SPLIT_TEXT_CHARS = 34
    private const val MIN_SECTION_BREAK_CURRENT_UNITS = (PAGE_LAYOUT_UNITS * 6) / 10
    private const val MIN_SECTION_VISIBLE_CHARS = 600
    private const val MIN_PAGE_FILL_REMAINDER_UNITS = 220
    private const val MIN_PAGE_FILL_TEXT_CHARS = 72
    private const val MIN_ORPHAN_TEXT_CHARS = 80
    private const val MIN_STANDALONE_PAGE_TEXT_CHARS = 280
    private const val PAGE_FILL_LAYOUT_UNITS = PAGE_LAYOUT_UNITS
    private const val PAGE_FILL_TEXT_TARGET = 4000
    private const val TITLE_PAGE_FILL_TEXT_TARGET = 3200
    private const val MAX_REBALANCED_PAGE_TEXT_CHARS = 4000
    private const val IMAGE_BLOCK_LAYOUT_UNITS = 2400
    private const val FORCED_PAGEBREAK_MARKER = "<hr data-mrcomic-pagebreak=\"true\"/>"
    private val READER_BLOCK_TAGS = setOf(
        "p", "div", "section", "article", "blockquote", "pre",
        "ul", "ol", "li", "table", "thead", "tbody", "tfoot",
        "tr", "td", "th", "figure", "figcaption", "hr",
        "h1", "h2", "h3", "h4", "h5", "h6", "img"
    )
    private val READER_CONTAINER_TAGS = setOf("body", "main", "div", "section", "article", "aside")
    private val NARROW_READER_CHARS = setOf(
        '.', ',', ':', ';', '!', '?', '\'', '"', '\u2019', '\u201D', '\u00AB', '\u00BB'
    )

    fun fromPlainText(text: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val blocks = textBlocks(text)
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromHtmlBlocks(blocks: List<String>, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromMarkup(markup: String, baseUrl: String?, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val normalized = renderHtmlToReaderDocument(markup, baseUrl)
        return ReflowableDocument(splitReaderDocument(normalized, baseCss))
    }

    fun error(message: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument =
        ReflowableDocument(
            listOf(
                buildUnifiedReaderHtmlDocument(
                    body = "<p>${escapeHtml(message)}</p>",
                    baseCss = baseCss
                )
            )
        )

    private fun textBlocks(raw: String): List<String> {
        return raw
            .replace("\r\n", "\n")
            .replace('\r', '\n')
            .split(Regex("\n\\s*\n"))
            .mapNotNull { part ->
                val trimmed = part.trim()
                if (trimmed.isBlank()) null else "<p>${escapeHtml(trimmed).replace("\n", "<br/>")}</p>"
            }
            .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    }

    private fun paginateBlocks(blocks: List<String>, baseCss: String): List<String> =
        paginateInternal(blocks, baseCss, requireMinContentBeforeSectionBreak = true)

    private fun splitReaderDocument(html: String, baseCss: String): List<String> {
        val blocks = extractReaderBlocks(html)
        return if (blocks.isEmpty()) {
            listOf(html)
        } else {
            paginateMarkupBlocks(blocks, baseCss)
        }
    }

    private fun extractReaderBlocks(html: String): List<String> = runCatching {
        val document = Jsoup.parse(html)
        document.outputSettings(document.outputSettings().prettyPrint(false))
        flattenReaderNodes(document.body())
    }.getOrElse { emptyList() }

    private fun flattenReaderNodes(root: Element): List<String> {
        val blocks = mutableListOf<String>()
        val inlineBuffer = mutableListOf<Node>()

        fun flushInlineBuffer() {
            if (inlineBuffer.isEmpty()) return
            val wrapper = Element("p")
            inlineBuffer.forEach { wrapper.appendChild(it.clone()) }
            val html = wrapper.outerHtml().trim()
            if (html.isNotBlank()) {
                blocks += html
            }
            inlineBuffer.clear()
        }

        root.childNodes().forEach { node ->
            when (node) {
                is TextNode -> {
                    if (!node.text().isNullOrBlank()) {
                        inlineBuffer.add(node.clone())
                    }
                }
                is Element -> {
                    if (isForcedPagebreak(node)) {
                        flushInlineBuffer()
                        blocks += FORCED_PAGEBREAK_MARKER
                    } else if (shouldEmitStandaloneBlock(node)) {
                        flushInlineBuffer()
                        blocks += node.outerHtml().trim()
                    } else if (hasNestedBlockChildren(node)) {
                        flushInlineBuffer()
                        blocks += flattenReaderNodes(node)
                    } else {
                        inlineBuffer.add(node.clone())
                    }
                }
            }
        }

        flushInlineBuffer()
        return blocks
    }

    private fun paginateMarkupBlocks(blocks: List<String>, baseCss: String): List<String> =
        paginateInternal(blocks, baseCss, requireMinContentBeforeSectionBreak = false)

    private fun paginateInternal(
        blocks: List<String>,
        baseCss: String,
        requireMinContentBeforeSectionBreak: Boolean
    ): List<String> {
        val pageBodySegments = mutableListOf<MutableList<String>>(mutableListOf())
        val current = StringBuilder()
        var currentLength = 0

        fun flushPage() {
            if (current.isNotEmpty()) {
                pageBodySegments.last() += current.toString()
                current.clear()
                currentLength = 0
            }
        }

        fun startNewSegment() {
            if (pageBodySegments.last().isNotEmpty()) {
                pageBodySegments.add(mutableListOf())
            }
        }

        fun appendBlock(block: String) {
            if (block == FORCED_PAGEBREAK_MARKER) {
                flushPage()
                startNewSegment()
                return
            }
            if (current.isNotEmpty() && block.isReaderSectionStartBlock()) {
                if (!requireMinContentBeforeSectionBreak || currentLength >= MIN_SECTION_BREAK_CURRENT_UNITS) {
                    flushPage()
                    startNewSegment()
                }
            }
            val blockLayoutCost = block.readerLayoutCost()
            if (current.isNotEmpty() && currentLength + blockLayoutCost > PAGE_LAYOUT_UNITS) {
                flushPage()
            }
            current.append(block)
            currentLength += blockLayoutCost
        }

        blocks.flatMap(::splitOversizedMarkupBlock).forEach { block ->
            val blockTextLength = block.visibleTextLength()
            val remaining = PAGE_LAYOUT_UNITS - currentLength
            val firstChunkTextBudget = block.readerTextBudgetForLayoutUnits(remaining)
            val splitForRemainder = if (
                current.isNotEmpty() &&
                remaining >= MIN_REMAINDER_LAYOUT_UNITS &&
                firstChunkTextBudget >= MIN_SPLIT_TEXT_CHARS &&
                blockTextLength > firstChunkTextBudget
            ) {
                splitTextMarkupBlock(block, firstChunkTextBudget, TEXT_CHARS_PER_PAGE)
            } else {
                null
            }

            if (splitForRemainder != null) {
                splitForRemainder.forEach(::appendBlock)
            } else {
                appendBlock(block)
            }
        }
        flushPage()
        val result = normalizePageBodySegments(pageBodySegments)
            .map { wrapBody(it, baseCss) }
            .ifEmpty { listOf(wrapBody("<p></p>", baseCss)) }
        Log.d("ReflowDoc", "paginateInternal: blocks=${blocks.size}, pageBodySegments=${pageBodySegments.size}, result=${result.size}")
        result.forEachIndexed { i, p ->
            val visible = p.replace(Regex("<[^>]+>"), " ").replace(Regex("\\s+"), " ").trim()
            Log.d("ReflowDoc", "  page[$i]: ${p.length} chars, visible=${visible.take(60)}...")
        }
        return result
    }

    private fun normalizePageBodySegments(pageBodySegments: List<List<String>>): List<String> =
        pageBodySegments
            .filter { it.isNotEmpty() }
            .flatMap(::normalizePageBodies)

    private fun normalizePageBodies(pageBodies: List<String>): List<String> {
        if (pageBodies.size < 2) return pageBodies
        return rebalanceShortPageBodies(
            fillUnderfilledPageBodies(
                rebalanceShortPageBodies(pageBodies)
            )
        )
    }

    private fun splitOversizedMarkupBlock(block: String): List<String> {
        if (block == FORCED_PAGEBREAK_MARKER) return listOf(block)
        if (block.visibleTextLength() <= TEXT_CHARS_PER_PAGE &&
            block.readerLayoutCost() <= PAGE_LAYOUT_UNITS
        ) {
            return listOf(block)
        }

        val firstChunkTextBudget = block.readerTextBudgetForLayoutUnits(PAGE_LAYOUT_UNITS)
            .coerceIn(MIN_SPLIT_TEXT_CHARS, TEXT_CHARS_PER_PAGE)
        return splitTextMarkupBlock(
            block = block,
            firstChunkSize = firstChunkTextBudget,
            subsequentChunkSize = TEXT_CHARS_PER_PAGE
        ) ?: listOf(block)
    }

    private fun splitTextMarkupBlock(
        block: String,
        firstChunkSize: Int,
        subsequentChunkSize: Int
    ): List<String>? = runCatching {
        val body = Jsoup.parseBodyFragment(block).body()
        val root = body.children().firstOrNull()
        if (root != null && !isSplittableTextBlock(root)) return@runCatching null

        val text = body.text().trim()
        if (text.length <= firstChunkSize) return@runCatching null

        val tag = root?.normalName()?.takeIf { it.isNotBlank() } ?: "p"
        // Exclude 'id' from attributes on split chunks to avoid DOM duplication.
        // Only the first chunk should carry the original id.
        val attrs = root?.attributes()
            ?.filter { it.key != "id" }
            ?.joinToString(" ") { attr -> """${attr.key}="${escapeHtml(attr.value)}"""" }
            ?.takeIf { it.isNotBlank() }
            ?.let { " $it" }
            .orEmpty()
        val idAttr = root?.attr("id")?.takeIf { it.isNotBlank() }
            ?.let { """ id="${escapeHtml(it)}"""" }
            .orEmpty()

        val splitRoot = root ?: body
        val chunks = splitChildNodesToHtmlChunks(
            parent = splitRoot,
            firstChunkSize = firstChunkSize,
            subsequentChunkSize = subsequentChunkSize
        ) ?: return@runCatching null

        mergeTrailingOrphanHtmlChunks(chunks)
            .filter { it.visibleTextLength() > 0 }
            .mapIndexed { index, chunk ->
                // Only the first chunk gets the original id attribute
                val chunkIdAttr = if (index == 0) idAttr else ""
                "<$tag$attrs$chunkIdAttr>$chunk</$tag>"
            }
            .takeIf { it.size > 1 }
    }.getOrNull()

    private fun splitChildNodesToHtmlChunks(
        parent: Element,
        firstChunkSize: Int,
        subsequentChunkSize: Int
    ): List<String>? {
        val chunks = mutableListOf<String>()
        val current = StringBuilder()
        var currentTextLength = 0
        var budget = firstChunkSize.coerceAtLeast(MIN_SPLIT_TEXT_CHARS)

        fun flushChunk() {
            val html = current.toString().trim()
            if (html.isNotBlank()) {
                chunks += html
            }
            current.clear()
            currentTextLength = 0
            budget = subsequentChunkSize.coerceAtLeast(MIN_SPLIT_TEXT_CHARS)
        }

        fun appendHtml(html: String, textLength: Int) {
            if (html.isBlank()) return
            if (currentTextLength > 0 && currentTextLength + textLength > budget) {
                flushChunk()
            }
            current.append(html)
            currentTextLength += textLength
            if (currentTextLength >= budget) {
                flushChunk()
            }
        }

        fun appendText(textNode: TextNode) {
            var text = textNode.text()
            while (text.isNotEmpty()) {
                val available = (budget - currentTextLength).coerceAtLeast(0)
                if (available <= 0) {
                    flushChunk()
                    continue
                }
                if (text.length <= available) {
                    current.append(escapeHtml(text))
                    currentTextLength += text.length
                    text = ""
                } else {
                    val boundary = text.lastIndexOf(' ', startIndex = (available - 1).coerceAtLeast(0))
                        .let { if (it > 0) it else available.coerceAtMost(text.length) }
                    val head = text.substring(0, boundary).trimEnd()
                    if (head.isNotBlank()) {
                        current.append(escapeHtml(head))
                        currentTextLength += head.length
                    }
                    flushChunk()
                    text = text.substring(boundary).trimStart()
                }
            }
        }

        parent.childNodes().forEach { node ->
            when (node) {
                is TextNode -> appendText(node)
                is Element -> {
                    val nodeTextLength = node.text().length
                    if (nodeTextLength == 0 && !node.outerHtml().contains("<img", ignoreCase = true)) {
                        current.append(node.outerHtml())
                    } else {
                        appendHtml(node.outerHtml(), nodeTextLength.coerceAtLeast(1))
                    }
                }
            }
        }

        flushChunk()
        return chunks.takeIf { it.size > 1 }
    }

    private fun isSplittableTextBlock(element: Element): Boolean {
        val tag = element.normalName()
        if (tag !in setOf("p", "div")) return false
        return element.children().none { child ->
            child.normalName() in READER_BLOCK_TAGS && child.normalName() !in setOf(
                "span", "a", "strong", "em", "b", "i", "u", "sup", "sub", "font", "small", "big"
            )
        }
    }

    private fun splitTextAtBoundary(text: String, maxChars: Int): Pair<String, String>? {
        if (text.length <= maxChars) return null
        val targetEnd = maxChars.coerceIn(1, text.length)
        var boundary = targetEnd
        if (targetEnd < text.length) {
            val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd - 1)
            if (whitespaceBoundary > maxChars / 2) {
                boundary = whitespaceBoundary
            }
        }
        val first = text.substring(0, boundary).trim()
        val second = text.substring(boundary).trim()
        return if (first.isNotBlank() && second.isNotBlank()) first to second else null
    }

    private fun splitTextIntoReaderChunks(text: String, charsPerPage: Int): List<String> {
        if (text.length <= charsPerPage) return listOf(text)
        val chunks = mutableListOf<String>()
        var start = 0
        while (start < text.length) {
            val targetEnd = (start + charsPerPage).coerceAtMost(text.length)
            var boundary = targetEnd
            if (targetEnd < text.length) {
                val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd - 1)
                if (whitespaceBoundary > start + charsPerPage / 3) {
                    boundary = whitespaceBoundary
                }
            }
            val chunk = text.substring(start, boundary).trim()
            if (chunk.isNotBlank()) chunks += chunk
            start = boundary.coerceAtLeast(start + 1)
            while (start < text.length && text[start].isWhitespace()) start++
        }
        return chunks.ifEmpty { listOf(text) }
    }

    private fun mergeTrailingOrphanTextChunks(chunks: List<String>): List<String> {
        if (chunks.size < 2) return chunks
        val merged = chunks.toMutableList()
        val last = merged.last()
        if (last.length in 1 until MIN_ORPHAN_TEXT_CHARS) {
            val previousIndex = merged.lastIndex - 1
            merged[previousIndex] = listOf(merged[previousIndex], last).joinToString(" ").trim()
            merged.removeAt(merged.lastIndex)
        }
        return merged
    }

    private fun mergeTrailingOrphanHtmlChunks(chunks: List<String>): List<String> {
        if (chunks.size < 2) return chunks
        val merged = chunks.toMutableList()
        val last = merged.last()
        if (last.visibleTextLength() in 1 until MIN_ORPHAN_TEXT_CHARS) {
            val previousIndex = merged.lastIndex - 1
            merged[previousIndex] = merged[previousIndex] + last
            merged.removeAt(merged.lastIndex)
        }
        return merged
    }

    private fun rebalanceShortPageBodies(pageBodies: List<String>): List<String> {
        if (pageBodies.size < 2) return pageBodies
        val rebalanced = mutableListOf<String>()
        var index = 0
        while (index < pageBodies.size) {
            val body = pageBodies[index]
            val textLength = body.visibleTextLength()
            if (index < pageBodies.lastIndex && textLength in 1 until MIN_STANDALONE_PAGE_TEXT_CHARS) {
                if (rebalanced.isNotEmpty()) {
                    val previousCombined = rebalanced.last() + body
                    if (previousCombined.canRebalanceIntoSinglePage()) {
                        rebalanced[rebalanced.lastIndex] = previousCombined
                        index++
                        continue
                    }
                }
                val next = pageBodies[index + 1]
                val combined = body + next
                if (combined.canRebalanceIntoSinglePage()) {
                    rebalanced += combined
                    index += 2
                    continue
                }
            }
            rebalanced += body
            index++
        }
        return rebalanced
    }

    private fun fillUnderfilledPageBodies(pageBodies: List<String>): List<String> {
        if (pageBodies.size < 2) return pageBodies
        val bodies = pageBodies.map { body -> body.readerBlocksForBody() }.toMutableList()
        var index = 0
        while (index < bodies.lastIndex) {
            while (index < bodies.lastIndex) {
                val currentBlocks = bodies[index]
                val currentTextLength = currentBlocks.visibleTextLength()
                val targetTextLength = if (currentBlocks.containsTitleLikeBlock()) {
                    TITLE_PAGE_FILL_TEXT_TARGET
                } else {
                    PAGE_FILL_TEXT_TARGET
                }
                if (currentTextLength >= targetTextLength) break

                val remainingUnits = PAGE_FILL_LAYOUT_UNITS - currentBlocks.readerLayoutCost()
                if (remainingUnits < MIN_PAGE_FILL_REMAINDER_UNITS) break

                val nextBlocks = bodies[index + 1]
                val firstNextBlock = nextBlocks.firstOrNull() ?: break
                if (firstNextBlock.startsChapterLikeBlock()) break

                val textBudget = firstNextBlock
                    .readerTextBudgetForLayoutUnits(remainingUnits)
                    .coerceAtMost(targetTextLength - currentTextLength)
                    .coerceAtLeast(0)
                if (textBudget < MIN_PAGE_FILL_TEXT_CHARS) break

                val moved = takeLeadingBlockForPageFill(
                    block = firstNextBlock,
                    textBudget = textBudget,
                    remainingUnits = remainingUnits
                ) ?: break

                val updatedCurrentBlocks = currentBlocks + moved.first
                if (updatedCurrentBlocks.readerLayoutCost() > PAGE_FILL_LAYOUT_UNITS) break
                if (updatedCurrentBlocks.visibleTextLength() > targetTextLength + MIN_PAGE_FILL_TEXT_CHARS) break

                val updatedNextBlocks = buildList {
                    moved.second?.takeIf { it.visibleTextLength() > 0 }?.let(::add)
                    addAll(nextBlocks.drop(1))
                }
                if (updatedNextBlocks.isEmpty()) break

                bodies[index] = updatedCurrentBlocks
                bodies[index + 1] = updatedNextBlocks
            }
            index++
        }
        return bodies.map { blocks -> blocks.joinToString("") }
    }

    private fun takeLeadingBlockForPageFill(
        block: String,
        textBudget: Int,
        remainingUnits: Int
    ): Pair<String, String?>? {
        val blockCost = block.readerLayoutCost()
        if (blockCost <= remainingUnits && block.visibleTextLength() <= textBudget) {
            return block to null
        }

        val split = splitTextMarkupBlock(
            block = block,
            firstChunkSize = textBudget,
            subsequentChunkSize = TEXT_CHARS_PER_PAGE
        ) ?: return null
        val leading = split.firstOrNull() ?: return null
        if (leading.visibleTextLength() < MIN_PAGE_FILL_TEXT_CHARS) return null
        val remainder = split.drop(1).joinToString("").takeIf { it.isNotBlank() }
        return leading to remainder
    }

    private fun shouldEmitStandaloneBlock(element: Element): Boolean {
        val tag = element.normalName()
        if (tag == "hr") return true
        if (tag == "img") return true
        if (tag !in READER_BLOCK_TAGS) return false
        return tag !in READER_CONTAINER_TAGS || !hasNestedBlockChildren(element)
    }

    private fun hasNestedBlockChildren(element: Element): Boolean =
        element.children().any { child ->
            val tag = child.normalName()
            isForcedPagebreak(child) ||
                tag in READER_BLOCK_TAGS && tag !in setOf("span", "a", "strong", "em", "b", "i", "u", "sup", "sub")
        }

    private fun isForcedPagebreak(element: Element): Boolean {
        if (element.normalName() != "hr") return false
        return element.hasAttr("data-mrcomic-pagebreak") ||
            element.classNames().contains("mrcomic-pagebreak")
    }

    private fun String.isReaderSectionStartBlock(): Boolean = runCatching {
        val first = Jsoup.parseBodyFragment(this).body().children().firstOrNull() ?: return@runCatching false
        val tag = first.normalName()
        tag in setOf("h1", "h2", "h3") ||
            first.hasClass("chapter") ||
            first.attr("data-mrcomic-section-start").equals("true", ignoreCase = true)
    }.getOrDefault(false)

    private fun String.isPlainTextChapterStartBlock(): Boolean {
        val text = visibleTextForLayout()
        if (text.length > 80) return false
        return Regex("""(?i)^(chapter|part|book|section|глава|часть)\b""").containsMatchIn(text)
    }

    private fun wrapBody(body: String, baseCss: String): String =
        buildUnifiedReaderHtmlDocument(
            body = body,
            baseCss = baseCss
        )

    private fun String.visibleTextLength(): Int =
        replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
            .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
            .replace(Regex("<[^>]+>"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()
            .length

    private fun String.readerLayoutCost(): Int {
        val estimatedLines = estimatedReaderLineCount()
        if (contains("<img", ignoreCase = true)) {
            return IMAGE_BLOCK_LAYOUT_UNITS + estimatedLines * LAYOUT_UNITS_PER_LINE
        }
        return estimatedLines * LAYOUT_UNITS_PER_LINE + readerLayoutOverhead()
    }

    private fun String.readerBodyLayoutCost(): Int =
        extractReaderBlocks("<body>$this</body>")
            .ifEmpty { listOf(this) }
            .sumOf { it.readerLayoutCost() }

    private fun String.readerBlocksForBody(): List<String> =
        extractReaderBlocks("<body>$this</body>")
            .filter { it.visibleTextLength() > 0 || it.contains("<img", ignoreCase = true) }
            .ifEmpty { listOf(this) }

    private fun List<String>.visibleTextLength(): Int = sumOf { it.visibleTextLength() }

    private fun List<String>.readerLayoutCost(): Int = sumOf { it.readerLayoutCost() }

    private fun String.canRebalanceIntoSinglePage(): Boolean =
        visibleTextLength() <= MAX_REBALANCED_PAGE_TEXT_CHARS &&
            (!contains("<img", ignoreCase = true) || readerBodyLayoutCost() <= PAGE_LAYOUT_UNITS)

    private fun List<String>.containsTitleLikeBlock(): Boolean =
        any { block ->
            block.startsChapterLikeBlock() ||
                Regex("""(?is)<\s*(center|h[1-6])\b""").containsMatchIn(block)
        }

    private fun String.startsChapterLikeBlock(): Boolean {
        val tag = Regex("""(?is)^\s*<\s*([a-z0-9:]+)\b""")
            .find(this)
            ?.groupValues
            ?.getOrNull(1)
            ?.lowercase()
            .orEmpty()
        return tag in setOf("h1", "h2", "h3", "h4", "h5", "h6") ||
            contains("mrcomic-pagebreak", ignoreCase = true)
    }

    private fun String.readerTextBudgetForLayoutUnits(layoutUnits: Int): Int {
        val usableUnits = layoutUnits - readerLayoutOverhead()
        if (usableUnits < MIN_REMAINDER_LAYOUT_UNITS) return 0
        val usableLines = usableUnits / LAYOUT_UNITS_PER_LINE
        if (usableLines <= 0) return 0
        return (usableLines * READER_TEXT_CHARS_PER_LINE)
            .coerceIn(MIN_SPLIT_TEXT_CHARS, TEXT_CHARS_PER_PAGE)
    }

    private fun String.estimatedReaderLineCount(): Int {
        val text = visibleTextForLayout()
        if (text.isBlank()) return 1
        val columnsPerLine = if (startsHeadingLikeBlock()) {
            READER_HEADING_CHARS_PER_LINE
        } else {
            READER_TEXT_CHARS_PER_LINE
        }
        val startsWithIndent = startsParagraphLikeBlock() && !startsCenteredLikeBlock()
        var lineCount = 0
        var currentColumns = if (startsWithIndent) READER_PARAGRAPH_INDENT_COLUMNS else 0

        text.split(Regex("\\s+"))
            .filter(String::isNotBlank)
            .forEach { word ->
                val wordColumns = word.readerColumnWidth().coerceAtLeast(1)
                val separatorColumns = if (currentColumns > 0) 1 else 0
                if (currentColumns > 0 && currentColumns + separatorColumns + wordColumns > columnsPerLine) {
                    lineCount++
                    currentColumns = 0
                }
                if (wordColumns > columnsPerLine) {
                    lineCount += wordColumns / columnsPerLine
                    currentColumns = wordColumns % columnsPerLine
                } else {
                    currentColumns += (if (currentColumns > 0) 1 else 0) + wordColumns
                }
            }
        if (currentColumns > 0) lineCount++
        return lineCount.coerceAtLeast(1)
    }

    private fun String.readerColumnWidth(): Int {
        var width = 0
        for (char in this) {
            width += when {
                char == '\u00AD' -> 0
                char.isWhitespace() -> 1
                char in NARROW_READER_CHARS -> 1
                char == '\u2014' || char == '-' || char == '\u2013' -> 1
                char.isUpperCase() -> 2
                else -> 1
            }
        }
        return width
    }

    private fun String.visibleTextForLayout(): String =
        replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
            .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
            .replace(Regex("(?i)<br\\s*/?>"), "\n")
            .replace(Regex("<[^>]+>"), " ")
            .replace('\u00A0', ' ')
            .replace(Regex("[ \\t\\x0B\\f\\r]+"), " ")
            .trim()

    private fun String.startsHeadingLikeBlock(): Boolean =
        Regex("""(?is)^\s*<\s*h[1-6]\b""").containsMatchIn(this)

    private fun String.startsParagraphLikeBlock(): Boolean =
        Regex("""(?is)^\s*<\s*(p|div|section|article)\b""").containsMatchIn(this)

    private fun String.startsCenteredLikeBlock(): Boolean =
        contains("text-align:center", ignoreCase = true) ||
            contains("align=\"center\"", ignoreCase = true) ||
            contains("class=\"center", ignoreCase = true)

    private fun String.readerLayoutOverhead(): Int {
        if (this == FORCED_PAGEBREAK_MARKER) return 0
        val tag = Regex("""(?is)<\s*([a-z0-9:]+)\b""")
            .find(this)
            ?.groupValues
            ?.getOrNull(1)
            ?.lowercase()
            .orEmpty()
        val visible = visibleTextLength()
        val centered = contains("text-align:center", ignoreCase = true) ||
            contains("align=\"center\"", ignoreCase = true) ||
            contains("class=\"center", ignoreCase = true)
        return when {
            tag in setOf("h1", "h2", "h3") -> 360
            tag in setOf("h4", "h5", "h6") -> 270
            tag == "img" || contains("<img", ignoreCase = true) -> IMAGE_BLOCK_LAYOUT_UNITS
            tag in setOf("blockquote", "pre", "table", "ul", "ol") -> 180
            centered && visible <= 120 -> 220
            visible <= 32 -> 170
            visible <= 96 -> 110
            else -> 30
        }
    }

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")

    internal fun sectionsFromPlainText(
        text: String,
        baseCss: String = READER_MOBI_DOCUMENT_CSS
    ): List<TextDocumentSection> =
        sectionizeBlocks(textBlocks(text), baseCss)

    internal fun sectionsFromHtmlBlocks(
        blocks: List<String>,
        baseCss: String = READER_MOBI_DOCUMENT_CSS,
        baseUrl: String? = null
    ): List<TextDocumentSection> =
        sectionizeBlocks(blocks, baseCss, baseUrl)

    internal fun sectionsFromMarkup(
        markup: String,
        baseUrl: String?,
        baseCss: String = READER_MOBI_DOCUMENT_CSS
    ): List<TextDocumentSection> {
        val normalized = renderHtmlToReaderDocument(markup, baseUrl)
        val blocks = extractReaderBlocks(normalized)
        return if (blocks.isEmpty()) {
            listOf(
                TextDocumentSection(
                    index = 0,
                    html = normalized,
                    baseUrl = baseUrl
                )
            )
        } else {
            sectionizeBlocks(blocks, baseCss, baseUrl)
        }
    }

    private fun sectionizeBlocks(
        blocks: List<String>,
        baseCss: String,
        baseUrl: String? = null
    ): List<TextDocumentSection> {
        val sectionBodies = mutableListOf<List<String>>()
        // Track what caused each section break: true = structural (heading/pagebreak),
        // false = implicit. Used to prevent merging across structural boundaries.
        val structuralSplitAfter = mutableListOf<Boolean>()
        val current = mutableListOf<String>()

        fun flush(structural: Boolean = false) {
            if (current.isNotEmpty()) {
                sectionBodies += current.toList()
                structuralSplitAfter += structural
                current.clear()
            }
        }

        blocks.forEach { block ->
            if (block == FORCED_PAGEBREAK_MARKER) {
                flush(structural = true)
                return@forEach
            }
            if (current.isNotEmpty() && block.isReaderSectionStartBlock()) {
                flush(structural = true)
            }
            if (current.isNotEmpty() && block.isPlainTextChapterStartBlock()) {
                flush(structural = true)
            }
            current += block
        }
        flush()

        // Merge short sections to avoid half-empty pages, but never merge
        // across structural boundaries (heading splits, forced pagebreaks).
        val mergedBodies = mergeShortSections(sectionBodies, structuralSplitAfter, MIN_SECTION_VISIBLE_CHARS)

        return mergedBodies.mapIndexed { index, bodyBlocks ->
            TextDocumentSection(
                index = index,
                id = sectionIdFromBlocks(bodyBlocks),
                title = sectionTitleFromBlocks(bodyBlocks),
                html = wrapBody(bodyBlocks.joinToString(""), baseCss),
                baseUrl = baseUrl
            )
        }.ifEmpty {
            listOf(
                TextDocumentSection(
                    index = 0,
                    html = wrapBody("<p></p>", baseCss),
                    baseUrl = baseUrl
                )
            )
        }
    }

    /**
     * Merge adjacent sections that are shorter than [minChars] visible characters.
     * Short sections are appended to the preceding section so they don't produce
     * half-empty reader pages. Sections separated by structural boundaries (headings,
     * forced pagebreaks) are never merged regardless of length.
     *
     * @param structuralSplitAfter boolean list of size `sections.size`; element i is
     *   true when a heading or pagebreak caused the split after section i. The last
     *   element is always false (nothing follows the final section).
     */
    private fun mergeShortSections(
        sections: List<List<String>>,
        structuralSplitAfter: List<Boolean>,
        minChars: Int
    ): List<List<String>> {
        if (sections.size <= 1) return sections
        val merged = mutableListOf<MutableList<String>>()
        // prevHadStructuralSplit tracks whether a structural boundary exists
        // between the previous section and the current one. The first section
        // has no predecessor, so it starts false.
        var prevHadStructuralSplit = false
        for (i in sections.indices) {
            val blocks = sections[i]
            val visibleLen = blocks.sumOf { it.visibleTextForLayout().length }
            if (merged.isNotEmpty() && visibleLen < minChars && !prevHadStructuralSplit) {
                // Append short non-structural section to previous
                merged.last() += blocks
            } else {
                merged.add(blocks.toMutableList())
            }
            prevHadStructuralSplit = structuralSplitAfter.getOrElse(i) { false }
        }
        return merged
    }

    private fun sectionTitleFromBlocks(blocks: List<String>): String? {
        blocks.asSequence()
            .mapNotNull { block ->
                runCatching {
                    Jsoup.parseBodyFragment(block).body().children().firstOrNull()
                }.getOrNull()
            }
            .firstOrNull { element ->
                element.normalName() in setOf("h1", "h2", "h3")
            }
            ?.let { heading ->
                heading.text().trim().takeIf { it.isNotBlank() }
            }
            ?.let { return it }

        return blocks.joinToString(" ") { it.visibleTextForLayout() }
            .trim()
            .take(120)
            .takeIf { it.isNotBlank() }
    }

    private fun sectionIdFromBlocks(blocks: List<String>): String? {
        return blocks.asSequence()
            .mapNotNull { block ->
                runCatching {
                    Jsoup.parseBodyFragment(block).body().children().firstOrNull()
                }.getOrNull()
            }
            .firstNotNullOfOrNull { element ->
                element.attr("id").trim().takeIf { it.isNotBlank() }
            }
    }
}
