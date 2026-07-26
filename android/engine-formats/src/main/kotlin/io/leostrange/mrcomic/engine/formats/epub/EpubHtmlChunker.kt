package io.leostrange.mrcomic.engine.formats.epub

import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode

/**
 * Pure chunking algorithms for EPUB HTML content.
 *
 * Extracted from EpubFormatReader so the structural analysis logic can be
 * tested without ZIP/archive dependencies. All functions are stateless
 * and side-effect-free.
 */

// ── Chunking constants (shared with EpubFormatReader via same package) ───

/** Backend chunks are structural sections. Screen-sized pages are measured by
 * the reader WebView so PAGE mode can fill each viewport without clipping. */
internal const val CHUNK_CHARS_PER_PAGE = 4000

/** Regex for stripping HTML tags when counting content characters. */
internal val CHUNK_HTML_TAG_RE = Regex("<[^>]+>")

internal val CHUNK_BOUNDARY_TAGS = setOf(
    "p", "h1", "h2", "h3", "h4", "h5", "h6",
    "blockquote", "li", "dt", "dd", "tr",
    "figure", "figcaption", "pre", "hr",
    "img", "image", "svg"
)

internal val CHUNK_CONTAINER_TAGS = setOf(
    "body", "main", "div", "section", "article", "aside",
    "nav", "ul", "ol", "dl", "table", "thead", "tbody", "tfoot"
)

internal val CHUNK_ATOMIC_TAGS = setOf(
    "table", "pre", "code", "svg", "math", "figure", "img", "image"
)

// ── Existing functions ──────────────────────────────────────────────────

/**
 * Determines how many structural chunks a spine item should be split into,
 * based on the character counts of its block-level elements.
 *
 * @param blockCharCounts Character count of each block-level element in the spine item.
 * @param charsPerPage Target characters per reader page.
 * @return Number of chunks (minimum 1).
 */
internal fun resolveEpubHtmlChunkCount(
    blockCharCounts: List<Int>,
    charsPerPage: Int = 2000
): Int {
    if (blockCharCounts.isEmpty()) return 1
    val structuralChunkBudget = (charsPerPage * 2).coerceAtLeast(charsPerPage)
    var chunks = 0
    var accumulated = 0
    var hasCurrentChunk = false
    for (blockChars in blockCharCounts) {
        val normalizedChars = blockChars.coerceAtLeast(1)
        if (hasCurrentChunk && accumulated + normalizedChars > structuralChunkBudget) {
            chunks++
            accumulated = 0
            hasCurrentChunk = false
        }
        accumulated += normalizedChars
        hasCurrentChunk = true
    }
    if (hasCurrentChunk) chunks++
    return chunks.coerceAtLeast(1)
}

/**
 * Detects whether the body HTML should be kept as a single chunk rather than
 * split into structural blocks. This is needed for FB2EPUB-generated content
 * where block elements are wrapped in inline `<span>` or `<font>` tags.
 *
 * @param bodyHtml The inner HTML of the `<body>` element.
 * @return true if the body should not be chunked (kept whole).
 */
internal fun shouldKeepWholeEpubHtmlBody(bodyHtml: String): Boolean {
    val trimmedBody = bodyHtml.trimStart()
    // Quick path: body starts with an inline wrapper — classic FB2EPUB pattern.
    if (trimmedBody.startsWith("<span", ignoreCase = true) ||
        trimmedBody.startsWith("<font", ignoreCase = true)
    ) {
        return true
    }

    // Tail-based detection: if the body ENDS with a closing inline wrapper
    // (</span> or </font>) that sits outside (after) the last block-level close,
    // it means block content is wrapped in an inline element — unsafe to chunk.
    val trailingCloseRegex = Regex(
        """</(?:span|font)\s*>\s*(?:</(?:div|section|article|aside)\s*>\s*)*$""",
        RegexOption.IGNORE_CASE
    )
    if (trailingCloseRegex.containsMatchIn(bodyHtml.trimEnd())) {
        val hasBlockContent = Regex(
            """<(?:p|h[1-6]|blockquote|ul|ol|table)\b""",
            RegexOption.IGNORE_CASE
        ).containsMatchIn(bodyHtml)
        if (hasBlockContent) return true
    }

    // General detection: look for orphaned closing wrapper tags among
    // first 6 AND last 6 regex blocks (previous .take(12) missed long chapters).
    val htmlTagRegex = Regex("<[^>]+>")
    val htmlBlockRegex = Regex(
        """(.+?</(?:p|div|h1|h2|h3|h4|h5|h6|blockquote|li|tr|section|article|aside|ul|ol)>|.+$)""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val closingWrapperRegex = Regex(
        """^</(?:span|font)\b""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val allBlocks = htmlBlockRegex.findAll(bodyHtml)
        .map { it.value.trim() }
        .filter { it.isNotEmpty() }
        .toList()
    val toCheck = if (allBlocks.size <= 12) allBlocks
                  else allBlocks.take(6) + allBlocks.takeLast(6)
    return toCheck.any { block ->
        val hasVisibleContent = htmlTagRegex.replace(block, "")
            .any { !it.isWhitespace() }
        !hasVisibleContent && closingWrapperRegex.containsMatchIn(block)
    }
}

// ── Chunking functions extracted from EpubFormatReader ──────────────────

internal fun estimateChunkCount(
    bodyHtml: String,
    visibleCharCount: Int,
    charsPerPage: Int
): Int {
    if (visibleCharCount <= charsPerPage) return 1
    // COUNT chunks with the lightweight char-count estimator (Jsoup parse + tree walk, no HTML
    // re-serialization). The exact DOM extraction (extractChunkBlocks → wrapInChunkAncestors →
    // outerHtml per paragraph) is 2–18 s per large section and is only needed at render time in
    // extractChunk — running it here per spine item made opening a book take ~70 s.
    val estimatedBlocks = extractEstimatedChunkBlocks(bodyHtml)
    val blockCounts = estimatedBlocks.flatMap { block ->
        if (block.canSplitOversized && block.visibleCharCount > charsPerPage) {
            splitEstimatedCharCount(block.visibleCharCount, charsPerPage)
        } else {
            listOf(block.visibleCharCount.coerceAtLeast(1))
        }
    }
    return if (blockCounts.isEmpty()) {
        splitEstimatedCharCount(visibleCharCount, charsPerPage).size.coerceAtLeast(1)
    } else {
        resolveEpubHtmlChunkCount(blockCounts, charsPerPage)
    }
}

internal fun splitEstimatedCharCount(charCount: Int, charsPerPage: Int): List<Int> {
    val chunks = mutableListOf<Int>()
    var remaining = charCount.coerceAtLeast(1)
    while (remaining > 0) {
        val next = remaining.coerceAtMost(charsPerPage)
        chunks += next
        remaining -= next
    }
    return chunks
}

/**
 * Extracts one chunk from a fully-inlined HTML string using character-based boundaries.
 * Splits at </p> boundaries; a new chunk starts when the accumulated non-tag character
 * count reaches [totalChars / totalChunks].  Preserves <head> (with CSS) in every chunk.
 */
internal fun extractChunk(html: String, chunkIndex: Int, totalChunks: Int): String {
    val headEndIdx = html.indexOf("</head>", ignoreCase = true)
    val head = if (headEndIdx >= 0) html.substring(0, headEndIdx + "</head>".length) else ""

    val bodyOpenMatch = Regex("<body[^>]*>", RegexOption.IGNORE_CASE)
        .find(html, startIndex = (headEndIdx + 1).coerceAtLeast(0))
    val bodyStart = if (bodyOpenMatch != null) bodyOpenMatch.range.last + 1
                    else (headEndIdx + "</head>".length).coerceAtLeast(0)
    val bodyEnd = html.lastIndexOf("</body>", ignoreCase = true)
        .let { if (it < 0) html.length else it }
    val bodyOpen = bodyOpenMatch?.value ?: "<body>"
    val bodyHtml = html.substring(bodyStart, bodyEnd.coerceAtLeast(bodyStart))
    val blocks = extractChunkBlocks(bodyHtml)
    if (blocks.isEmpty()) return "${head}${bodyOpen}</body></html>"
    var chunkedBlocks = partitionChunkBlocks(blocks, CHUNK_CHARS_PER_PAGE)
    if (totalChunks > 1 && chunkedBlocks.size == 1) {
        val paragraphFallbackBlocks = extractParagraphFallbackChunkBlocks(bodyHtml)
        if (paragraphFallbackBlocks.size > 1) {
            chunkedBlocks = partitionChunkBlocks(paragraphFallbackBlocks, CHUNK_CHARS_PER_PAGE)
        }
    }
    val normalizedChunkIndex = chunkIndex.coerceIn(0, (chunkedBlocks.lastIndex).coerceAtLeast(0))
    val chunkHtml = chunkedBlocks
        .getOrElse(normalizedChunkIndex) { listOf(blocks.last()) }
        .joinToString(separator = "") { it.html }

    return "${head}${bodyOpen}${chunkHtml}</body></html>"
}

internal fun extractChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> {
    val visibleCharCount = CHUNK_HTML_TAG_RE.replace(bodyHtml, "").count { !it.isWhitespace() }
    if (shouldKeepWholeEpubHtmlBody(bodyHtml) && visibleCharCount <= CHUNK_CHARS_PER_PAGE * 2) {
        val hasRenderableMedia = Regex(
            """<\s*(?:img|image|svg)\b""",
            RegexOption.IGNORE_CASE
        ).containsMatchIn(bodyHtml)
        return when {
            visibleCharCount > 0 -> listOf(
                EpubHtmlChunkBlock(
                    html = bodyHtml,
                    visibleCharCount = visibleCharCount
                )
            )
            hasRenderableMedia -> listOf(
                EpubHtmlChunkBlock(
                    html = bodyHtml,
                    visibleCharCount = 1
                )
            )
            else -> emptyList()
        }
    }
    return extractDomChunkBlocks(bodyHtml)
        .flatMap { block -> splitOversizedEpubBlock(block, CHUNK_CHARS_PER_PAGE) }
}

internal fun extractEstimatedChunkBlocks(bodyHtml: String): List<EpubEstimatedChunkBlock> = runCatching {
    val document = Jsoup.parseBodyFragment(bodyHtml)
    val blocks = mutableListOf<EpubEstimatedChunkBlock>()

    fun appendBlock(node: Element) {
        val visibleCharCount = visibleTextCharCount(node)
        val hasRenderableMedia = hasRenderableMedia(node)
        when {
            visibleCharCount > 0 -> blocks += EpubEstimatedChunkBlock(
                visibleCharCount = visibleCharCount,
                canSplitOversized = canSplitEstimatedBlock(node)
            )
            hasRenderableMedia -> blocks += EpubEstimatedChunkBlock(
                visibleCharCount = 1,
                canSplitOversized = false
            )
        }
    }

    fun collect(parent: Element) {
        var inlineChars = 0
        var inlineHasMedia = false

        fun flushInlineNodes() {
            if (inlineChars <= 0 && !inlineHasMedia) return
            blocks += EpubEstimatedChunkBlock(
                visibleCharCount = inlineChars.coerceAtLeast(1),
                canSplitOversized = true
            )
            inlineChars = 0
            inlineHasMedia = false
        }

        parent.childNodes().forEach { node ->
            when (node) {
                is TextNode -> {
                    inlineChars += node.text().count { !it.isWhitespace() }
                }
                is Element -> {
                    when {
                        node.normalName() in CHUNK_ATOMIC_TAGS -> {
                            flushInlineNodes()
                            appendBlock(node)
                        }
                        shouldRecurseIntoEpubChunkContainer(node) -> {
                            flushInlineNodes()
                            collect(node)
                        }
                        isEpubChunkBoundaryElement(node) -> {
                            flushInlineNodes()
                            appendBlock(node)
                        }
                        else -> {
                            inlineChars += visibleTextCharCount(node)
                            inlineHasMedia = inlineHasMedia || hasRenderableMedia(node)
                        }
                    }
                }
            }
        }

        flushInlineNodes()
    }

    collect(document.body())
    blocks
}.getOrDefault(emptyList())

internal fun visibleTextCharCount(node: Node): Int = when (node) {
    is TextNode -> node.text().count { !it.isWhitespace() }
    is Element -> {
        when (node.normalName()) {
            "script", "style", "head", "title" -> 0
            else -> node.childNodes().sumOf { child -> visibleTextCharCount(child) }
        }
    }
    else -> 0
}

internal fun hasRenderableMedia(node: Node): Boolean = when (node) {
    is Element -> {
        node.normalName() in setOf("img", "image", "svg") ||
            node.childNodes().any { child -> hasRenderableMedia(child) }
    }
    else -> false
}

internal fun canSplitEstimatedBlock(element: Element): Boolean {
    if (element.normalName() in CHUNK_ATOMIC_TAGS) return false
    return !element.childNodes().any { child ->
        child is Element && (
            child.normalName() in CHUNK_ATOMIC_TAGS ||
                !canSplitEstimatedBlock(child)
            )
    }
}

internal fun extractDomChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> = runCatching {
    val document = Jsoup.parseBodyFragment(bodyHtml)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val blocks = mutableListOf<EpubHtmlChunkBlock>()

    fun appendBlock(html: String, ancestorWrappers: List<Element>) {
        val wrappedHtml = wrapInChunkAncestors(html, ancestorWrappers).trim()
        if (wrappedHtml.isBlank()) return

        val visibleCharCount = CHUNK_HTML_TAG_RE.replace(wrappedHtml, "").count { !it.isWhitespace() }
        val hasRenderableMedia = Regex(
            """<\s*(?:img|image|svg)\b""",
            RegexOption.IGNORE_CASE
        ).containsMatchIn(wrappedHtml)
        when {
            visibleCharCount > 0 -> blocks += EpubHtmlChunkBlock(
                html = wrappedHtml,
                visibleCharCount = visibleCharCount
            )
            hasRenderableMedia -> blocks += EpubHtmlChunkBlock(
                html = wrappedHtml,
                visibleCharCount = 1
            )
        }
    }

    fun collect(parent: Element, ancestorWrappers: List<Element>) {
        val inlineNodes = mutableListOf<Node>()

        fun flushInlineNodes() {
            if (inlineNodes.isEmpty()) return
            val paragraph = Element("p")
            inlineNodes.forEach { paragraph.appendChild(it.clone()) }
            appendBlock(paragraph.outerHtml(), ancestorWrappers)
            inlineNodes.clear()
        }

        parent.childNodes().forEach { node ->
            when (node) {
                is TextNode -> {
                    if (node.text().isNotBlank()) inlineNodes.add(node.clone())
                }
                is Element -> {
                    when {
                        node.normalName() in CHUNK_ATOMIC_TAGS -> {
                            flushInlineNodes()
                            appendBlock(node.outerHtml(), ancestorWrappers)
                        }
                        shouldRecurseIntoEpubChunkContainer(node) -> {
                            flushInlineNodes()
                            collect(node, ancestorWrappers + node)
                        }
                        isEpubChunkBoundaryElement(node) -> {
                            flushInlineNodes()
                            appendBlock(node.outerHtml(), ancestorWrappers)
                        }
                        else -> {
                            inlineNodes.add(node.clone())
                        }
                    }
                }
            }
        }

        flushInlineNodes()
    }

    collect(document.body(), emptyList())
    blocks
}.getOrElse {
    emptyList()
}

internal fun shouldRecurseIntoEpubChunkContainer(element: Element): Boolean {
    val tag = element.normalName()
    return tag in CHUNK_CONTAINER_TAGS &&
        tag !in CHUNK_ATOMIC_TAGS &&
        hasNestedEpubChunkBoundary(element)
}

internal fun hasNestedEpubChunkBoundary(element: Element): Boolean {
    return element.children().any { child ->
        isEpubChunkBoundaryElement(child) || shouldRecurseIntoEpubChunkContainer(child)
    }
}

internal fun isEpubChunkBoundaryElement(element: Element): Boolean {
    val tag = element.normalName()
    return tag in CHUNK_BOUNDARY_TAGS ||
        (tag in CHUNK_CONTAINER_TAGS && !hasNestedEpubChunkBoundary(element))
}

internal fun wrapInChunkAncestors(html: String, ancestorWrappers: List<Element>): String {
    var result = html
    for (source in ancestorWrappers.asReversed()) {
        val wrapper = Element(source.normalName())
        source.attributes().forEach { attr ->
            if (attr.key != "id") wrapper.attr(attr.key, attr.value)
        }
        wrapper.html(result)
        result = wrapper.outerHtml()
    }
    return result
}

internal fun extractParagraphFallbackChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> {
    val paragraphLikeBlocks = Regex(
        """<(p|h1|h2|h3|h4|h5|h6|blockquote|li|tr)\b[^>]*>.*?</\1>""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    ).findAll(bodyHtml)
        .map { it.value }
        .filter { it.isNotBlank() }
        .toList()
    if (paragraphLikeBlocks.size <= 1) return emptyList()

    return paragraphLikeBlocks.flatMap { blockHtml ->
        val visible = CHUNK_HTML_TAG_RE.replace(blockHtml, "").count { !it.isWhitespace() }
        if (visible <= 0) {
            emptyList()
        } else {
            splitOversizedEpubBlock(
                block = EpubHtmlChunkBlock(
                    html = blockHtml,
                    visibleCharCount = visible
                ),
                charsPerPage = CHUNK_CHARS_PER_PAGE
            )
        }
    }
}

internal fun splitOversizedEpubBlock(
    block: EpubHtmlChunkBlock,
    charsPerPage: Int
): List<EpubHtmlChunkBlock> {
    if (block.visibleCharCount <= charsPerPage) return listOf(block)
    if (Regex("""<\s*(?:img|image|svg|table|pre|code)\b""", RegexOption.IGNORE_CASE).containsMatchIn(block.html)) {
        return listOf(block)
    }

    val body = Jsoup.parseBodyFragment(block.html).body()
    val text = body.text().trim()
    if (text.length <= charsPerPage) return listOf(block)

    val element = body.children().firstOrNull()
    val tag = element?.normalName()?.takeIf { it in setOf("p", "div", "section", "article", "blockquote", "li") }
        ?: "p"
    val attrs = element?.attributes()
        ?.asList()
        ?.filter { attr -> attr.key in setOf("class", "style", "lang", "dir") }
        ?.joinToString(separator = "") { attr -> " ${attr.key}=\"${escapeHtmlAttr(attr.value)}\"" }
        .orEmpty()
    val chunks = splitTextForEpubBlocks(text, charsPerPage)
    if (chunks.size <= 1) return listOf(block)

    return chunks.map { chunk ->
        EpubHtmlChunkBlock(
            html = "<$tag$attrs>${escapeHtmlText(chunk)}</$tag>",
            visibleCharCount = chunk.count { !it.isWhitespace() }.coerceAtLeast(1)
        )
    }
}

internal fun splitTextForEpubBlocks(text: String, charsPerPage: Int): List<String> {
    val chunks = mutableListOf<String>()
    var start = 0
    while (start < text.length) {
        val targetEnd = (start + charsPerPage).coerceAtMost(text.length)
        if (targetEnd == text.length) {
            chunks += text.substring(start).trim()
            break
        }
        val searchStart = (targetEnd - charsPerPage / 3).coerceAtLeast(start)
        val boundary = text.lastIndexOfAny(charArrayOf('.', '!', '?', ';', ':', '…', '\n'), targetEnd)
            .takeIf { it >= searchStart }
            ?: text.lastIndexOf(' ', targetEnd).takeIf { it >= searchStart }
            ?: targetEnd
        chunks += text.substring(start, (boundary + 1).coerceAtMost(text.length)).trim()
        start = (boundary + 1).coerceAtMost(text.length)
        while (start < text.length && text[start].isWhitespace()) start++
    }
    return chunks.filter { it.isNotBlank() }
}

internal fun partitionChunkBlocks(
    blocks: List<EpubHtmlChunkBlock>,
    charsPerPage: Int
): List<List<EpubHtmlChunkBlock>> {
    if (blocks.isEmpty()) return emptyList()
    val chunks = mutableListOf<MutableList<EpubHtmlChunkBlock>>()
    var currentChunk = mutableListOf<EpubHtmlChunkBlock>()
    var accumulatedChars = 0

    for (block in blocks) {
        if (
            currentChunk.isNotEmpty() &&
            (block.isEpubSectionStartBlock() || accumulatedChars + block.visibleCharCount > charsPerPage)
        ) {
            chunks += currentChunk
            currentChunk = mutableListOf()
            accumulatedChars = 0
        }
        currentChunk += block
        accumulatedChars += block.visibleCharCount
    }

    if (currentChunk.isNotEmpty()) {
        chunks += currentChunk
    }

    return rebalanceTrailingChunkPair(chunks, charsPerPage)
}

internal fun rebalanceTrailingChunkPair(
    chunks: List<MutableList<EpubHtmlChunkBlock>>,
    charsPerPage: Int
): List<List<EpubHtmlChunkBlock>> {
    if (chunks.size < 2) return chunks
    val last = chunks.last()
    if (last.isEmpty()) return chunks
    if (last.firstOrNull()?.isEpubSectionStartBlock() == true) return chunks

    val lastWeight = last.sumOf { it.visibleCharCount }.coerceAtLeast(1)
    val minTailWeight = (charsPerPage * 0.35f).toInt().coerceAtLeast(280)
    if (lastWeight >= minTailWeight) return chunks

    val previous = chunks[chunks.lastIndex - 1]
    if (previous.isEmpty()) return chunks

    val mergedBlocks = (previous + last)
    val mergedWeight = mergedBlocks.sumOf { it.visibleCharCount }.coerceAtLeast(1)
    if (mergedWeight <= minTailWeight) return chunks

    val targetWeight = (mergedWeight / 2).coerceAtLeast(minTailWeight)
    val rebalanced = mutableListOf<MutableList<EpubHtmlChunkBlock>>(mutableListOf(), mutableListOf())
    var currentIndex = 0
    var currentWeight = 0

    for (block in mergedBlocks) {
        val blockWeight = block.visibleCharCount.coerceAtLeast(1)
        val shouldSplit = currentIndex == 0 &&
            rebalanced[0].isNotEmpty() &&
            !block.isEpubSectionStartBlock() &&
            currentWeight >= targetWeight
        if (shouldSplit) {
            currentIndex = 1
            currentWeight = 0
        }
        rebalanced[currentIndex] += block
        currentWeight += blockWeight
    }

    if (rebalanced[1].isEmpty()) return chunks

    val result = chunks.dropLast(2).map { it.toList() }.toMutableList()
    result += rebalanced[0].toList()
    result += rebalanced[1].toList()
    return result
}

internal fun EpubHtmlChunkBlock.isEpubSectionStartBlock(): Boolean = runCatching {
    val first = Jsoup.parseBodyFragment(html).body().children().firstOrNull() ?: return@runCatching false
    val tag = first.normalName()
    tag in setOf("h1", "h2", "h3") ||
        first.hasClass("chapter") ||
        first.attr("data-mrcomic-section-start").equals("true", ignoreCase = true)
}.getOrDefault(false)

internal fun escapeHtmlText(text: String): String =
    text.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")

internal fun escapeHtmlAttr(text: String): String =
    escapeHtmlText(text)
        .replace("\"", "&quot;")
