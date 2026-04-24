package com.example.core.model

typealias BookFormat = ComicFormat

sealed interface BookSource {
    val stableId: String

    data class FilePath(val path: String) : BookSource {
        override val stableId: String = path
    }

    data class ContentUri(val uri: String) : BookSource {
        override val stableId: String = uri
    }
}

fun BookSource.asPathString(): String = when (this) {
    is BookSource.FilePath -> path
    is BookSource.ContentUri -> uri
}

data class BookMetadata(
    val title: String = "",
    val authors: List<String> = emptyList(),
    val language: String? = null,
    val description: String? = null,
    val coverPath: String? = null
)

data class ReaderLocator(
    val href: String? = null,
    val progression: Double? = null,
    val position: Int? = null,
    val title: String? = null,
    val fragment: String? = null,
    val pageIndex: Int? = null
)

data class BookTocItem(
    val title: String,
    val locator: ReaderLocator? = null,
    val children: List<BookTocItem> = emptyList()
)

data class BookSearchHit(
    val locator: ReaderLocator,
    val before: String = "",
    val match: String,
    val after: String = ""
)

enum class ReaderRendererKey {
    LEGACY_TEXT_WEB,
    LEGACY_PAGED_BITMAP,
    READIUM_EPUB,
    HYBRID_EPUB_LEGACY_RENDER,
    PAGED_DOCUMENT
}

data class ReaderPreferenceSnapshot(
    val fontScale: Double? = null,
    val fontWeight: Double? = null,
    val lineHeight: Double? = null,
    val paragraphSpacing: Double? = null,
    val letterSpacing: Double? = null,
    val wordSpacing: Double? = null,
    val pageMargins: Double? = null,
    val fontFamily: String? = null,
    val themePreset: String? = null,
    val textAlignment: String? = null,
    val scrolling: Boolean? = null,
    val publisherStyles: Boolean? = null,
    val hyphenation: Boolean? = null
)
