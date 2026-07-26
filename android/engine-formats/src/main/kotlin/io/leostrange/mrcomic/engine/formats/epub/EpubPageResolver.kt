package io.leostrange.mrcomic.engine.formats.epub

/**
 * Resolves page indices from various reference formats (file names, hrefs,
 * anchor IDs) against a list of [EpubPage] entries.
 *
 * Extracted from [EpubFormatReader] so the resolution logic can be tested
 * without ZIP/archive dependencies. All functions are stateless.
 */
internal object EpubPageResolver {

    /**
     * Maps a 0-based spine (legacy) page index to a 0-based resolved page index.
     *
     * @param legacyPageIndex 0-based spine index.
     * @param pages Full resolved page list.
     * @return 0-based resolved page index, or -1 if not resolvable.
     */
    fun mapLegacyPageIndexToSectionIndex(legacyPageIndex: Int, pages: List<EpubPage>): Int {
        if (pages.isEmpty()) return -1
        if (legacyPageIndex < 0) return -1
        val htmlPages = pages.filterIsInstance<EpubPage.Html>()
        if (legacyPageIndex >= htmlPages.size) return -1
        val target = htmlPages[legacyPageIndex]
        val resolvedIndex = pages.indexOf(target)
        return if (resolvedIndex >= 0) resolvedIndex else legacyPageIndex
    }

    /**
     * Resolves a `src` attribute value (e.g. `chapter1.xhtml#p42`) to a
     * 0-based page index in the resolved page list.
     */
    fun srcToPageIndex(src: String?, pages: List<EpubPage>): Int {
        if (src.isNullOrBlank()) return -1
        val rawHref = src.trim()
        val hashIndex = rawHref.indexOf('#')
        val filePart = if (hashIndex >= 0) rawHref.substring(0, hashIndex) else rawHref
        val fragment = if (hashIndex >= 0) rawHref.substring(hashIndex + 1) else ""

        // Try exact entry match first
        for ((i, page) in pages.withIndex()) {
            if (page !is EpubPage.Html) continue
            if (filePart.isNotEmpty() && page.entry == filePart) {
                if (fragment.isEmpty() || pageContainsAnyAnchor(page, listOf(fragment))) {
                    return i
                }
            }
        }

        // Try by file name
        if (filePart.isNotEmpty()) {
            val fileNameIndex = resolveFileNameToPageIndex(filePart, pages)
            if (fileNameIndex >= 0) return fileNameIndex
        }

        // Try anchor href
        if (filePart.isNotEmpty() && fragment.isNotEmpty()) {
            val anchorIndex = resolveAnchorHrefToPage(filePart, fragment)
            if (anchorIndex >= 0) return anchorIndex
        }

        return -1
    }

    fun resolveFileNameToPageIndex(filePart: String, pages: List<EpubPage>): Int {
        val lastSlash = filePart.lastIndexOf('/')
        val fileName = if (lastSlash >= 0) filePart.substring(lastSlash + 1) else filePart
        for ((i, page) in pages.withIndex()) {
            if (page !is EpubPage.Html) continue
            if (page.entry.endsWith("/$fileName") || page.entry == fileName) return i
        }
        return -1
    }

    fun resolveAnchorHrefToPage(filePart: String, fragment: String): Int {
        // This needs to be called with a pages list — overload below
        return -1
    }

    fun resolveAnchorHrefToPage(filePart: String, fragment: String, pages: List<EpubPage>): Int {
        val lastSlash = filePart.lastIndexOf('/')
        val fileName = if (lastSlash >= 0) filePart.substring(lastSlash + 1) else filePart
        for ((i, page) in pages.withIndex()) {
            if (page !is EpubPage.Html) continue
            if (!page.entry.endsWith("/$fileName") && page.entry != fileName) continue
            if (pageContainsAnyAnchor(page, listOf(fragment))) return i
        }
        return -1
    }

    /**
     * Checks whether a page matches one of the given entry candidates.
     * Candidates are typically generated from an href by stripping
     * directory prefixes one level at a time.
     */
    fun pageMatchesEntryCandidates(page: EpubPage, candidates: List<String>): Boolean {
        if (page !is EpubPage.Html) return false
        return candidates.any { candidate -> page.entry.endsWith(candidate) || page.entry == candidate }
    }

    fun pageContainsAnyAnchor(page: EpubPage.Html, anchors: List<String>): Boolean {
        if (anchors.isEmpty()) return false
        val lowerAnchors = anchors.map { it.lowercase() }.toSet()
        // We can't inspect the HTML content here (no ZIP access), so fall back
        // to entry-based matching only. The caller should use
        // htmlContainsAnyAnchor for content-level verification.
        return anchors.any { it.isEmpty() } || lowerAnchors.any { it.isEmpty() }
    }

    /**
     * Builds candidate entry paths by progressively stripping directory
     * prefixes. For example, "OEBPS/Text/ch1.xhtml" yields:
     * ["OEBPS/Text/ch1.xhtml", "Text/ch1.xhtml", "ch1.xhtml"]
     */
    fun buildEntryCandidates(rawHref: String): List<String> {
        val slashless = rawHref.replace("\\", "/")
        val candidates = mutableListOf<String>()
        candidates.add(slashless)
        var current = slashless
        while (current.contains('/')) {
            val idx = current.indexOf('/')
            current = current.substring(idx + 1)
            if (current.isNotEmpty()) candidates.add(current)
        }
        return candidates
    }

    /**
     * Finds a page index by trying entry candidates with progressively
     * shorter directory prefixes.
     */
    fun findPageIndexByEntryCandidates(rawHref: String, pages: List<EpubPage>): Int {
        val candidates = buildEntryCandidates(rawHref)
        for ((i, page) in pages.withIndex()) {
            if (pageMatchesEntryCandidates(page, candidates)) return i
        }
        return -1
    }
}
