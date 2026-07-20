package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.formats.base.TocEntry

/** Resolves a chapter from an engine page without relying on reader UI state. */
internal object ReaderChapterPolicy {

    fun currentChapter(tableOfContents: List<TocEntry>, enginePage: Int): TocEntry? =
        tableOfContents.asSequence()
            .sortedBy { it.pageIndex }
            .lastOrNull { it.pageIndex <= enginePage }
}
