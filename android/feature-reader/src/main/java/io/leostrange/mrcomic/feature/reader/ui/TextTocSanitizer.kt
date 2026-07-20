package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.formats.base.TocEntry
import java.util.Locale

internal object TextTocSanitizer {

    fun sanitize(entries: List<TocEntry>): List<TocEntry> {
        if (entries.isEmpty()) return entries
        val sanitized = ArrayList<TocEntry>(entries.size)
        var insideNotesSection = false
        var notesSectionAdded = false

        entries.forEach { entry ->
            val title = entry.title.trim()
            if (title.isBlank()) return@forEach
            val isNotesSection = isReaderNotesTocTitle(title)
            val isFootnoteChild = insideNotesSection && isReaderFootnoteTocChildTitle(title)

            when {
                isNotesSection -> {
                    if (!notesSectionAdded) {
                        sanitized += entry.copy(title = "Примечания")
                        notesSectionAdded = true
                    }
                    insideNotesSection = true
                }
                isFootnoteChild -> Unit
                else -> {
                    sanitized += entry
                    if (!isReaderFootnoteTocChildTitle(title)) {
                        insideNotesSection = false
                    }
                }
            }
        }
        return sanitized.distinctBy { it.title.trim().lowercase(Locale.ROOT) to it.pageIndex }
    }

    internal fun isReaderNotesTocTitle(title: String): Boolean {
        val normalized = title.trim().lowercase(Locale.ROOT)
            .replace("ё", "е")
            .replace(Regex("""[\s._\-]+"""), " ")
        return normalized in setOf(
            "notes",
            "note",
            "footnotes",
            "footnote",
            "endnotes",
            "endnote",
            "примечания",
            "примечание",
            "сноски",
            "сноска"
        )
    }

    internal fun isReaderFootnoteTocChildTitle(title: String): Boolean {
        val normalized = title.trim()
        return normalized.matches(Regex("""^[\[\(]?\d{1,4}[\]\)]?$""")) ||
            normalized.matches(Regex("""^\*{1,4}$""")) ||
            normalized.matches(Regex("""^(?:fn|note|footnote)[-_]?\d{1,4}$""", RegexOption.IGNORE_CASE))
    }
}
