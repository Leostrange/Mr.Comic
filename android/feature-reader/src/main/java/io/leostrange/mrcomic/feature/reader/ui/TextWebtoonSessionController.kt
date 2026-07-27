package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.formats.base.FormatReader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch

internal data class TextWebtoonCachedDocument(
    val html: String,
    val assetBasePath: String?
)

internal data class CachedHtmlPage(
    val html: String,
    val assetBasePath: String?
)

/**
 * Loads and publishes the stitched HTML document used by [ReaderContainerKind.TEXT_WEBTOON].
 *
 * Uses incremental building: the first batch builds the full document, subsequent batches
 * append new sections to the existing HTML, avoiding O(N²) rebuild cost.
 *
 * @param scope coroutine scope for the loading job.
 * @param builder strategy for building the HTML document from loaded pages.
 * @param batchSize number of pages to accumulate before publishing a partial document.
 */
internal class TextWebtoonSessionController(
    private val scope: CoroutineScope,
    private val builder: WebtoonDocumentBuilder,
    private val batchSize: Int = TEXT_WEBTOON_DOCUMENT_BATCH_SIZE
) {
    private var loadJob: Job? = null

    fun cancel() {
        loadJob?.cancel()
        loadJob = null
    }

    fun ensureLoaded(
        reader: FormatReader,
        comicId: String,
        totalPages: Int,
        readerRendersHtmlContent: Boolean,
        existingHtml: String?,
        existingPageCount: Int,
        isSessionActive: () -> Boolean,
        loadPage: suspend (FormatReader, Int) -> CachedHtmlPage?,
        publish: (TextWebtoonCachedDocument, Int) -> Unit
    ) {
        if (!readerRendersHtmlContent || totalPages <= 0) return
        if (existingHtml != null && existingPageCount >= totalPages) return

        loadJob?.cancel()
        loadJob = scope.launch {
            val loadedPages = ArrayList<CachedHtmlPage>(totalPages.coerceAtMost(256))
            var lastPublishedDocument: TextWebtoonCachedDocument? = null

            suspend fun publishLoadedDocument(force: Boolean = false) {
                if (loadedPages.isEmpty()) return
                if (!force && loadedPages.size % batchSize != 0) return
                if (!isSessionActive()) return

                val document = if (lastPublishedDocument == null) {
                    // First batch: build full document
                    builder.build(loadedPages)
                } else {
                    // Subsequent batches: append only new pages
                    val prevCount = loadedPages.size - batchSize
                    val newPages = loadedPages.subList(prevCount, loadedPages.size)
                    builder.appendPages(
                        existingHtml = lastPublishedDocument!!.html,
                        newPages = newPages,
                        startIndex = prevCount
                    )
                }
                lastPublishedDocument = document
                publish(document, loadedPages.size)
            }

            for (pageIndex in 0 until totalPages) {
                if (!isSessionActive()) return@launch
                val page = loadPage(reader, pageIndex) ?: continue
                loadedPages += page
                publishLoadedDocument()
            }
            if (loadedPages.isEmpty() || !isSessionActive()) return@launch
            publishLoadedDocument(force = true)
        }
    }

    private companion object {
        private const val TEXT_WEBTOON_DOCUMENT_BATCH_SIZE = 12
    }
}
