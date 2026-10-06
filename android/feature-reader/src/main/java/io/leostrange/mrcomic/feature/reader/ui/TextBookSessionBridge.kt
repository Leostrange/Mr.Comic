package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.api.ReflowableTextFormatReader
import io.leostrange.mrcomic.engine.api.TocEntry

internal object TextBookSessionBridge {

    suspend fun buildTextReaderSession(
        reader: FormatReader,
        bookSession: BookSession?
    ): TextReaderSession? {
        if (reader !is ReflowableTextFormatReader) return null
        val sections = reader.getTextDocumentSections()
        if (sections.isEmpty()) return null

        val legacyToc = reader.getTableOfContents().associate { entry ->
            entry.pageIndex to entry.title
        }
        val bookToc = bookSession
            ?.let { session -> runCatching { session.tableOfContents() }.getOrNull() }
            ?.let { items -> mapBookTocToPageTitles(items, reader) }

        return TextReaderSession(
            sections = sections,
            totalEnginePages = sections.size.coerceAtLeast(1),
            tocTitlesByPage = bookToc?.takeIf { it.isNotEmpty() } ?: legacyToc
        )
    }

    suspend fun mapBookTocToTocEntries(
        items: List<BookTocItem>,
        reader: FormatReader
    ): List<TocEntry> {
        val entries = mutableListOf<TocEntry>()
        suspend fun visit(nodes: List<BookTocItem>) {
            nodes.forEach { item ->
                val title = item.title.trim()
                if (title.isNotBlank()) {
                    resolveBookTocPageIndex(item, reader)?.let { pageIndex ->
                        entries += TocEntry(
                            title = title,
                            pageIndex = pageIndex,
                            anchorId = tocFragment(item),
                            sectionIndex = pageIndex
                        )
                    }
                }
                if (item.children.isNotEmpty()) {
                    visit(item.children)
                }
            }
        }
        visit(items)
        return entries
    }

    private suspend fun mapBookTocToPageTitles(
        items: List<BookTocItem>,
        reader: FormatReader
    ): Map<Int, String> =
        mapBookTocToTocEntries(items, reader).associate { it.pageIndex to it.title }

    private suspend fun resolveBookTocPageIndex(item: BookTocItem, reader: FormatReader): Int? {
        val locator = item.locator ?: return null
        val href = locator.href?.trim().orEmpty()
        if (reader is ReflowableTextFormatReader) {
            // For reflowable books the index space is section indices, NOT the locator's legacy
            // global pageIndex. Resolve href → section first; only fall back to pageIndex/position
            // when href resolution fails, otherwise TOC jumps land in the wrong chapter.
            if (href.isNotBlank()) {
                reader.getTextDocumentSections().firstOrNull { section ->
                    val sectionId = section.id
                    sectionId != null && hrefMatchesSpineEntry(href, sectionId)
                }?.let { return it.index }
                reader.resolveHrefToPage(href)?.let { legacyPage ->
                    return mapLegacyPageToSectionIndex(reader, legacyPage, href)
                }
            }
            // href unusable: fall back to locator hints, clamped into the section range.
            val sectionCount = reader.getTextDocumentSections().maxOfOrNull { it.index + 1 } ?: 0
            locator.sectionIndex?.let { return it.coerceIn(0, (sectionCount - 1).coerceAtLeast(0)) }
            locator.pageIndex?.let { return it.coerceIn(0, (sectionCount - 1).coerceAtLeast(0)) }
            locator.position?.let { return it.coerceIn(0, (sectionCount - 1).coerceAtLeast(0)) }
            return null
        }
        locator.pageIndex?.let { return it }
        locator.position?.let { return it }
        if (href.isNotBlank()) {
            reader.resolveHrefToPage(href)?.let { legacyPage ->
                return legacyPage
            }
        }
        return null
    }

    private suspend fun mapLegacyPageToSectionIndex(
        reader: ReflowableTextFormatReader,
        legacyPage: Int,
        href: String
    ): Int {
        val sections = reader.getTextDocumentSections()
        if (sections.isEmpty()) return legacyPage
        val filePart = href.substringBefore('#').trim().trimStart('/')
        if (filePart.isNotBlank()) {
            sections.firstOrNull { section ->
                val sectionId = section.id ?: return@firstOrNull false
                hrefMatchesSpineEntry(filePart, sectionId)
            }?.let { return it.index }
        }
        return legacyPage.coerceIn(0, sections.maxOf { it.index })
    }

    /** Fragment of a TOC target, from the locator or the href (`ch2.xhtml#part-3`). */
    private fun tocFragment(item: BookTocItem): String? {
        val locator = item.locator ?: return null
        return locator.fragment?.takeIf { it.isNotBlank() }
            ?: locator.href?.substringAfter('#', "")?.let(::decodeHrefComponent)?.takeIf { it.isNotBlank() }
    }

    /** Same file regardless of URL encoding, `./`/`../` prefixes or the OPF directory prefix. */
    internal fun hrefMatchesSpineEntry(href: String, spineEntry: String): Boolean {
        val normalizedHref = normalizeHrefPath(href)
        val normalizedEntry = normalizeHrefPath(spineEntry)
        if (normalizedHref.isEmpty() || normalizedEntry.isEmpty()) return false
        return normalizedHref == normalizedEntry ||
            normalizedHref.endsWith("/$normalizedEntry") ||
            normalizedEntry.endsWith("/$normalizedHref")
    }

    private fun normalizeHrefPath(value: String): String {
        var path = decodeHrefComponent(value.substringBefore('#')).trim().replace('\\', '/').trim('/')
        while (path.startsWith("./") || path.startsWith("../")) path = path.substringAfter('/')
        return path
    }

    private fun decodeHrefComponent(value: String): String =
        runCatching { java.net.URLDecoder.decode(value.replace("+", "%2B"), "UTF-8") }.getOrDefault(value)
}
