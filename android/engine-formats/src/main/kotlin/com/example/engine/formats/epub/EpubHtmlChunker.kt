package com.example.engine.formats.epub

/**
 * Pure chunking algorithms for EPUB HTML content.
 *
 * Extracted from EpubFormatReader so the structural analysis logic can be
 * tested without ZIP/archive dependencies. All functions are stateless
 * and side-effect-free.
 */

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
