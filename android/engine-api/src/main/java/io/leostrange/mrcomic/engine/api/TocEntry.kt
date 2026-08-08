package io.leostrange.mrcomic.engine.api

/**
 * One entry in the book's table of contents.
 *
 * Moved from engine.formats.base to engine-api so feature modules
 * can reference TOC entries without depending on engine-formats.
 */
data class TocEntry(
    val title: String,
    val pageIndex: Int,
    val anchorId: String? = null,
    val sectionIndex: Int = -1,
    val charOffset: Int = -1
)
