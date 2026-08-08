package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.engine.api.FormatReader

/**
 * Text/HTML reader responsibilities extracted from [ReaderViewModel].
 */
internal class TextReaderController(
    private val textWebtoonSessionController: TextWebtoonSessionController,
    private val textPagePaginationController: TextPagePaginationController
) {
    private val htmlPageCache = object : LinkedHashMap<Int, CachedHtmlPage>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Int, CachedHtmlPage>?): Boolean = size > 20
    }

    // htmlPageCache uses accessOrder=true, so even a get() mutates the internal LRU linked
    // list. cacheHtmlPage()/cachedHtmlPage() are called concurrently from prewarm coroutines
    // (Dispatchers.IO) and from the main thread (refreshAdjacentHtmlPages, clearHtmlPageCache).
    // Without synchronization this is a data race: ConcurrentModificationException or a
    // corrupted linked list (NPE / infinite loop / lost pages). Every access is serialized
    // on the cache monitor itself (not `this`) so the lock is colocated with the data.
    fun clearHtmlPageCache() {
        synchronized(htmlPageCache) { htmlPageCache.clear() }
    }

    fun clearCaches() {
        synchronized(htmlPageCache) { htmlPageCache.clear() }
        textPagePaginationController.clear()
        textWebtoonSessionController.cancel()
    }

    fun clearTextPagePagination() {
        textPagePaginationController.clear()
    }

    fun isTextPagePaginationReady(): Boolean = textPagePaginationController.isReady()

    fun textPageDisplayCount(): Int = textPagePaginationController.displayPageCount()

    fun paginatedDisplayPage(index: Int): CachedHtmlPage? =
        textPagePaginationController.getDisplayPage(index)

    fun enginePageForDisplay(index: Int): Int? =
        textPagePaginationController.enginePageForDisplay(index)

    fun displayPageForEngine(enginePage: Int): Int =
        textPagePaginationController.displayPageForEngine(enginePage)

    suspend fun ensureTextPagePagination(
        reader: FormatReader,
        constraints: io.leostrange.mrcomic.engine.api.TextPaginationConstraints,
        key: String
    ): TextPagePaginationSnapshot =
        textPagePaginationController.ensureBuilt(reader, constraints, key)

    suspend fun buildTextReaderSession(
        reader: FormatReader,
        bookSession: io.leostrange.mrcomic.engine.api.BookSession? = null
    ): TextReaderSession? =
        TextBookSessionBridge.buildTextReaderSession(reader, bookSession)

    fun cancelWebtoonLoad() {
        textWebtoonSessionController.cancel()
    }

    fun cacheHtmlPage(index: Int, page: CachedHtmlPage) {
        synchronized(htmlPageCache) { htmlPageCache[index] = page }
    }

    fun cachedHtmlPage(index: Int): CachedHtmlPage? = synchronized(htmlPageCache) { htmlPageCache[index] }

    fun ensureTextWebtoonDocumentLoaded(
        scope: kotlinx.coroutines.CoroutineScope,
        reader: FormatReader?,
        comic: Comic?,
        state: ReaderUiState,
        isSessionActive: (FormatReader, String) -> Boolean,
        loadPage: suspend (FormatReader, Int) -> CachedHtmlPage?,
        publish: (TextWebtoonCachedDocument, Int) -> Unit
    ) {
        val activeReader = reader ?: return
        val activeComic = comic ?: return
        textWebtoonSessionController.ensureLoaded(
            reader = activeReader,
            comicId = activeComic.id,
            totalPages = state.totalPages,
            readerRendersHtmlContent = state.readerRendersHtmlContent,
            existingHtml = state.textWebtoonHtmlContent,
            existingPageCount = state.textWebtoonHtmlPageCount,
            isSessionActive = { isSessionActive(activeReader, activeComic.id) },
            loadPage = loadPage,
            publish = publish
        )
    }
}
