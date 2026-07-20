package io.leostrange.mrcomic.engine.epub.readium

import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.engine.api.BookSession

suspend fun BookSession.resolveReadiumOpenTotalPages(
    initialLocator: ReaderLocator?,
    requestedPage: Int
): Int {
    val readingOrderSize = (this as? ReadiumPublicationSessionAccess)
        ?.readingOrderSize()
    val current = runCatching { currentLocator() }.getOrNull()
    val toc = runCatching { tableOfContents() }.getOrDefault(emptyList())
    val maxTocPage = toc.maxLocatorPageIndexOrNull()
    return resolveReadiumOpenTotalPages(
        readingOrderSize = readingOrderSize,
        currentLocator = current,
        initialLocator = initialLocator,
        maxTocPage = maxTocPage,
        requestedPage = requestedPage
    )
}

fun resolveReadiumOpenTotalPages(
    readingOrderSize: Int?,
    currentLocator: ReaderLocator?,
    initialLocator: ReaderLocator?,
    maxTocPage: Int?,
    requestedPage: Int
): Int {
    val observedMaxPage = listOfNotNull(
        currentLocator?.pageIndex,
        currentLocator?.position,
        initialLocator?.pageIndex,
        initialLocator?.position,
        maxTocPage,
        requestedPage
    ).maxOrNull()
    return maxOf(
        readingOrderSize?.takeIf { it > 0 } ?: 0,
        observedMaxPage?.plus(1) ?: 1
    )
}

private fun List<BookTocItem>.maxLocatorPageIndexOrNull(): Int? {
    var maxPage: Int? = null

    fun visit(items: List<BookTocItem>) {
        items.forEach { item ->
            val page = item.locator?.pageIndex ?: item.locator?.position
            if (page != null) {
                maxPage = maxOf(maxPage ?: page, page)
            }
            if (item.children.isNotEmpty()) {
                visit(item.children)
            }
        }
    }

    visit(this)
    return maxPage
}
