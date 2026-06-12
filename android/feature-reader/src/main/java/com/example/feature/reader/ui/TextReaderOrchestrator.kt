package com.example.feature.reader.ui

import android.content.Context
import android.util.Log
import com.example.core.model.ReadingMode
import com.example.engine.api.BookSession
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.renderViewportTarget
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Text/HTML reader orchestration extracted from [ReaderViewModel].
 * Raster preload, progress persistence, and bitmap paths stay in the VM.
 */
internal class TextReaderOrchestrator(
    val controller: TextReaderController
) {
    var activeSession: TextReaderSession? = null

    private var paginationJob: Job? = null
    private var prewarmJob: Job? = null

    fun cancelPaginationJob() {
        paginationJob?.cancel()
    }

    fun cancelPrewarmJob() {
        prewarmJob?.cancel()
    }

    fun cancelAllJobs() {
        cancelPaginationJob()
        cancelPrewarmJob()
    }

    fun resetSessionAndCaches(onClearWebtoonState: () -> Unit) {
        activeSession = null
        controller.clearCaches()
        onClearWebtoonState()
    }

    fun clearTextPagePagination() {
        controller.clearTextPagePagination()
    }

    fun cancelWebtoonLoad() {
        controller.cancelWebtoonLoad()
    }

    suspend fun loadHtmlPage(
        reader: FormatReader,
        index: Int,
        containerKind: ReaderContainerKind,
        onWebtoonPageCached: (Int, String) -> Unit
    ): CachedHtmlPage? {
        if (containerKind == ReaderContainerKind.TEXT_PAGE &&
            controller.isTextPagePaginationReady()
        ) {
            return controller.paginatedDisplayPage(index)
        }
        controller.cachedHtmlPage(index)?.let { return it }
        val html = withContext(Dispatchers.IO) { reader.getHtmlPage(index) }
        if (html == null) return null
        val cached = CachedHtmlPage(
            html = html,
            assetBasePath = reader.htmlAssetBasePath(index)
        )
        controller.cacheHtmlPage(index, cached)
        onWebtoonPageCached(index, html)
        return cached
    }

    fun loadErrorHtml(index: Int, error: Throwable): String {
        val message = error.message
            ?.takeIf { it.isNotBlank() }
            ?: error::class.java.simpleName
            ?: "Unknown reader error"
        val safeMessage = message
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
        return """
            <!doctype html>
            <html>
            <head>
              <meta name="viewport" content="width=device-width,initial-scale=1">
            </head>
            <body>
              <p>Не удалось загрузить текстовую страницу ${index + 1}.</p>
              <p>$safeMessage</p>
            </body>
            </html>
        """.trimIndent()
    }

    suspend fun resolveTableOfContents(
        reader: FormatReader,
        bookSession: BookSession?
    ): List<TocEntry> {
        return when {
            bookSession != null -> {
                runCatching { bookSession.tableOfContents() }.getOrNull()
                    ?.let { TextBookSessionBridge.mapBookTocToTocEntries(it, reader) }
                    ?.takeIf { it.isNotEmpty() }
                    ?: TextTocSanitizer.sanitize(reader.getTableOfContents())
            }
            else -> TextTocSanitizer.sanitize(reader.getTableOfContents())
        }
    }

    fun syncBookEngineTextLayer(
        scope: CoroutineScope,
        reader: FormatReader,
        bookSession: BookSession?,
        isStillActive: () -> Boolean,
        onTocUpdated: suspend (List<TocEntry>) -> Unit
    ) {
        scope.launch(Dispatchers.IO) {
            activeSession = controller.buildTextReaderSession(
                reader = reader,
                bookSession = bookSession
            )
            val session = bookSession ?: return@launch
            if (!isStillActive()) return@launch
            runCatching { session.tableOfContents() }.getOrNull()?.let { bookToc ->
                val entries = TextBookSessionBridge.mapBookTocToTocEntries(bookToc, reader)
                if (entries.isEmpty()) return@let
                withContext(Dispatchers.Main) {
                    if (!isStillActive()) return@withContext
                    onTocUpdated(TextTocSanitizer.sanitize(entries))
                }
            }
        }
    }

    data class PaginationApplyResult(
        val displayCount: Int,
        val displayStart: Int
    )

    fun scheduleTextPagePaginationBuild(
        scope: CoroutineScope,
        context: Context,
        reader: FormatReader,
        comicId: String,
        getUiState: () -> ReaderUiState,
        getBookSession: () -> BookSession?,
        isStillActive: () -> Boolean,
        onComplete: suspend (PaginationApplyResult) -> Unit
    ) {
        val state = getUiState()
        if (state.readerContainerKind != ReaderContainerKind.TEXT_PAGE) return
        if (!state.readerRendersHtmlContent) return

        paginationJob?.cancel()
        paginationJob = scope.launch(Dispatchers.IO) {
            val (viewportWidthPx, viewportHeightPx) = context.renderViewportTarget()
            val uiSnapshot = getUiState()
            if (uiSnapshot.comic?.id != comicId || !isStillActive()) return@launch
            val paginationKey = uiSnapshot.textPagePaginationKey(viewportWidthPx, viewportHeightPx)
            val constraints = uiSnapshot.toTextPaginationConstraints(viewportWidthPx, viewportHeightPx)
            val enginePageBeforeBuild = uiSnapshot.currentPage
            val snapshot = runCatching {
                controller.ensureTextPagePagination(reader, constraints, paginationKey)
            }.getOrElse { error ->
                Log.w(TAG, "Text PAGE pagination build failed", error)
                return@launch
            }
            activeSession = controller.buildTextReaderSession(
                reader = reader,
                bookSession = getBookSession()
            )
            if (!isStillActive()) return@launch
            if (getUiState().readerContainerKind != ReaderContainerKind.TEXT_PAGE) return@launch

            val displayCount = snapshot.pages.size.coerceAtLeast(1)
            val displayStart = controller.displayPageForEngine(enginePageBeforeBuild)
                .coerceIn(0, (displayCount - 1).coerceAtLeast(0))
            withContext(Dispatchers.Main) {
                if (!isStillActive()) return@withContext
                controller.clearHtmlPageCache()
                onComplete(PaginationApplyResult(displayCount, displayStart))
            }
        }
    }

    fun prewarmHtmlPagesAround(
        scope: CoroutineScope,
        reader: FormatReader,
        comicId: String,
        centerPage: Int,
        getUiState: () -> ReaderUiState,
        visiblePagesFor: (Int, ReadingMode) -> List<Int>,
        isStillActive: () -> Boolean,
        loadPage: suspend (Int) -> Unit,
        onPagePrewarmed: () -> Unit,
        delayMillis: Long = 0L
    ) {
        val state = getUiState()
        val totalPages = state.totalPages
        if (totalPages <= 0) return
        val preloadDistance = state.preloadPages.coerceIn(1, 8)
        val visiblePages = visiblePagesFor(centerPage, state.readingMode)
        val minVisible = visiblePages.minOrNull() ?: centerPage
        val maxVisible = visiblePages.maxOrNull() ?: centerPage
        val pagesToPrewarm = buildList {
            for (offset in 1..preloadDistance) {
                val left = minVisible - offset
                if (left >= 0) add(left)
                val right = maxVisible + offset
                if (right < totalPages) add(right)
            }
        }.distinct()
        if (pagesToPrewarm.isEmpty()) return

        prewarmJob?.cancel()
        prewarmJob = scope.launch {
            if (delayMillis > 0L) delay(delayMillis)
            for (pageIndex in pagesToPrewarm) {
                if (!isStillActive()) return@launch
                if (controller.cachedHtmlPage(pageIndex) != null) continue
                runCatching {
                    loadPage(pageIndex)
                }.onFailure { error ->
                    Log.w(TAG, "Failed to prewarm HTML page $pageIndex", error)
                }.onSuccess {
                    if (isStillActive()) {
                        onPagePrewarmed()
                    }
                }
            }
        }
    }

    private companion object {
        const val TAG = "TextReaderOrchestrator"
    }
}
