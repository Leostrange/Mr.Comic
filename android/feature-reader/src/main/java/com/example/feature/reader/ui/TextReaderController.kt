package com.example.feature.reader.ui

import com.example.core.model.Comic
import com.example.core.model.ReadingMode
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry

/**
 * Text/HTML reader responsibilities extracted from [ReaderViewModel].
 */
internal class TextReaderController(
    private val textWebtoonSessionController: TextWebtoonSessionController,
    private val textPagePaginationController: TextPagePaginationController = TextPagePaginationController()
) {
    private val htmlPageCache = object : LinkedHashMap<Int, CachedHtmlPage>(12, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Int, CachedHtmlPage>?): Boolean = size > 10
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
        constraints: com.example.engine.formats.text.pagination.TextPaginationConstraints,
        key: String
    ): TextPagePaginationSnapshot =
        textPagePaginationController.ensureBuilt(reader, constraints, key)

    suspend fun buildTextReaderSession(
        reader: FormatReader,
        bookSession: com.example.engine.api.BookSession? = null
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
        buildDocument: (List<CachedHtmlPage>) -> TextWebtoonCachedDocument,
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
            buildDocument = buildDocument,
            publish = publish
        )
    }
}
