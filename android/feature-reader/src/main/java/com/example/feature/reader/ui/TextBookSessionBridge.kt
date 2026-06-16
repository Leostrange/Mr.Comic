package com.example.feature.reader.ui

import com.example.core.model.BookTocItem
import com.example.engine.api.BookSession
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.text.ReflowableTextFormatReader

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
                        entries += TocEntry(title = title, pageIndex = pageIndex)
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
        if (reader is ReflowableTextFormatReader && href.isNotBlank()) {
            reader.getTextDocumentSections().indexOfFirst { section ->
                val sectionId = section.id
                sectionId != null && hrefMatchesSpineEntry(href, sectionId)
            }.takeIf { it >= 0 }?.let { return it }
        }
        locator.pageIndex?.let { return it }
        locator.position?.let { return it }
        if (href.isNotBlank()) {
            reader.resolveHrefToPage(href)?.let { legacyPage ->
                if (reader is ReflowableTextFormatReader) {
                    return mapLegacyPageToSectionIndex(reader, legacyPage, href)
                }
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
            val matched = sections.indexOfFirst { section ->
                val sectionId = section.id ?: return@indexOfFirst false
                hrefMatchesSpineEntry(filePart, sectionId)
            }
            if (matched >= 0) return matched
        }
        return legacyPage.coerceIn(0, sections.lastIndex)
    }

    private fun hrefMatchesSpineEntry(href: String, spineEntry: String): Boolean {
        val normalizedHref = href.substringBefore('#').trim().trim('/')
        val normalizedEntry = spineEntry.trim().trim('/')
        if (normalizedHref.isEmpty() || normalizedEntry.isEmpty()) return false
        return normalizedHref == normalizedEntry ||
            normalizedHref.endsWith(normalizedEntry) ||
            normalizedEntry.endsWith(normalizedHref)
    }
}
