package io.leostrange.mrcomic.feature.reader.ui

/**
 * ARC-11 S5: semantic anchor for HTML reading position.
 *
 * When geometry changes (font size, toolbar, rotation) the raw pixel scroll
 * position is meaningless. A [ReaderPositionAnchor] captures enough semantic
 * information to restore the reader's place in the document.
 *
 * ## Anchor extraction
 *
 * [extractTextAnchor] scans [html] for the nearest `id` attribute preceding
 * [visibleText] and returns a [ReaderPositionAnchor] with both the element id
 * and the text fragment.
 *
 * ## Anchor restoration
 *
 * [resolveAnchorPosition] resolves an anchor to a simulated position. In
 * production the actual scroll is performed by WebView.evaluateJavascript;
 * this policy provides the pure-Kotlin decision logic (which anchor field
 * to try first, fallback order).
 *
 * ## Section-scoped cursors
 *
 * [readerSectionCursor] bundles a spine-section index and in-section character
 * offset into a stable, comparable value. Reflowable formats (EPUB, FB2) use
 * this cursor to restore reading position within a section after mode switches.
 */
internal data class ReaderPositionAnchor(
    val elementId: String? = null,
    val textContent: String? = null
) {
    init {
        require(elementId != null || textContent != null) {
            "ReaderPositionAnchor must have at least elementId or textContent"
        }
    }
}

/** Limit anchor text to avoid storing entire paragraphs. */
private const val MAX_ANCHOR_TEXT_LENGTH = 120

/**
 * Extracts a semantic anchor from [html] given [visibleText].
 *
 * Strategy:
 * 1. Find [visibleText] in the HTML.
 * 2. Scan backwards for the nearest `id="…"` or `id='…'` attribute.
 * 3. Return a [ReaderPositionAnchor] with both fields populated.
 *
 * Returns `null` when [visibleText] is not found in [html].
 */
internal fun extractTextAnchor(html: String, visibleText: String): ReaderPositionAnchor? {
    if (visibleText.isBlank()) return null
    val textIndex = html.indexOf(visibleText)
    if (textIndex < 0) return null

    val beforeText = html.substring(0, textIndex)
    val idMatch = Regex("""\bid\s*=\s*["']([^"']+)["']""")
        .findAll(beforeText)
        .lastOrNull()
    val elementId = idMatch?.groupValues?.get(1)

    return ReaderPositionAnchor(
        elementId = elementId,
        textContent = visibleText.take(MAX_ANCHOR_TEXT_LENGTH)
    )
}

/**
 * Resolves a [ReaderPositionAnchor] against an HTML document.
 *
 * Priority:
 * 1. Element ID — fastest, most reliable
 * 2. Text content — fallback for documents without IDs
 *
 * Returns `true` when the anchor can be resolved (i.e., the document
 * contains the referenced element or text), `false` otherwise.
 */
internal fun resolveAnchorPosition(html: String, anchor: ReaderPositionAnchor): Boolean {
    // Try element ID first
    if (anchor.elementId != null) {
        if (html.contains("id=\"${anchor.elementId}\"") ||
            html.contains("id='${anchor.elementId}'")) {
            return true
        }
    }
    // Fall back to text content
    if (anchor.textContent != null) {
        if (html.contains(anchor.textContent)) {
            return true
        }
    }
    return false
}

/**
 * Section-scoped cursor for reflowable-position tracking.
 *
 * Combines a spine-section index with an in-section character offset.
 * This cursor survives font-size and viewport changes because the
 * character offset is measured by the WebView paged-layout engine
 * rather than being a pixel coordinate.
 */
internal data class ReaderSectionCursor(
    val sectionIndex: Int,
    val characterOffset: Int
) : Comparable<ReaderSectionCursor> {
    init {
        require(sectionIndex >= 0) { "sectionIndex must be non-negative, got $sectionIndex" }
        require(characterOffset >= 0) { "characterOffset must be non-negative, got $characterOffset" }
    }

    override fun compareTo(other: ReaderSectionCursor): Int {
        val sectionCmp = sectionIndex.compareTo(other.sectionIndex)
        return if (sectionCmp != 0) sectionCmp else characterOffset.compareTo(other.characterOffset)
    }
}

/**
 * Builds a [ReaderSectionCursor] from raw state, defaulting negative values to 0.
 */
internal fun readerSectionCursor(sectionIndex: Int, characterOffset: Int): ReaderSectionCursor =
    ReaderSectionCursor(
        sectionIndex = sectionIndex.coerceAtLeast(0),
        characterOffset = characterOffset.coerceAtLeast(0)
    )
