package io.leostrange.mrcomic.engine.epub.readium

import io.leostrange.mrcomic.core.model.BookMetadata
import io.leostrange.mrcomic.core.model.BookSearchHit
import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.core.model.ReaderLocator
import org.readium.r2.shared.publication.Contributor
import org.readium.r2.shared.publication.Link
import org.readium.r2.shared.publication.Locator
import org.readium.r2.shared.publication.LocatorCollection
import org.readium.r2.shared.publication.Publication
import org.readium.r2.shared.publication.services.search.isSearchable
import org.readium.r2.shared.publication.services.search.search

internal fun Publication.toBookMetadata(): BookMetadata {
    val metadata = metadata
    return BookMetadata(
        title = metadata.title.orEmpty(),
        authors = metadata.authors.mapNotNull { contributor: Contributor -> contributor.name }.filter { it.isNotBlank() },
        language = metadata.language?.toString() ?: metadata.languages.firstOrNull(),
        description = metadata.description,
        coverPath = linkWithRel("cover")?.let { coverLink ->
            runCatching { url(coverLink).toString() }.getOrNull()
        }
    )
}

internal fun Publication.toBookToc(): List<BookTocItem> {
    return tableOfContents.map { it.toBookTocItem() }
}

internal suspend fun Publication.toBookSearchHits(query: String): List<BookSearchHit> {
    val normalizedQuery = query.trim()
    if (normalizedQuery.isBlank() || !isSearchable) {
        return emptyList()
    }

    val iterator = search(normalizedQuery) ?: return emptyList()
    return try {
        val hits = mutableListOf<BookSearchHit>()
        iterator.forEach { collection ->
            hits += collection.toBookSearchHits(normalizedQuery)
        }
        hits
    } finally {
        iterator.close()
    }
}

private fun Link.toBookTocItem(): BookTocItem {
    val hrefValue = href.toString()
    val fragment = hrefValue.readiumTocFragment()
    return BookTocItem(
        title = title ?: hrefValue,
        locator = ReaderLocator(
            href = hrefValue,
            title = title,
            fragment = fragment
        ),
        children = children.map { it.toBookTocItem() }
    )
}

internal fun String.readiumTocFragment(): String? =
    substringAfter('#', "").takeIf { it.isNotBlank() }

private fun LocatorCollection.toBookSearchHits(query: String): List<BookSearchHit> {
    return locators.mapNotNull { locator ->
        locator.toBookSearchHit(query)
    }
}

private fun Locator.toBookSearchHit(query: String): BookSearchHit? {
    val readerLocator = toReaderLocator()
    if (readerLocator.href.isNullOrBlank() && readerLocator.position == null) {
        return null
    }

    val highlight = text.highlight?.takeIf { it.isNotBlank() } ?: query
    return BookSearchHit(
        locator = readerLocator,
        before = text.before.orEmpty(),
        match = highlight,
        after = text.after.orEmpty()
    )
}
