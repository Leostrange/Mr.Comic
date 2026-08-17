package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.api.FormatReader
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
 * Uses a two-phase publish strategy to minimize WebView reloads:
 * - **Phase 1 (preview):** After the first batch of pages, build and publish an initial
 *   document so the user sees content immediately.
 * - **Phase 2 (background):** Continue loading remaining pages silently. Only publish
 *   once at the end when ALL pages are loaded, avoiding intermediate WebView reloads
 *   that cause jank on large books.
 *
 * @param scope coroutine scope for the loading job.
 * @param builder strategy for building the HTML document from loaded pages.
 * @param batchSize number of pages in the initial preview batch.
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
        publish: (TextWebtoonCachedDocument, Int) -> Unit,
        onBuildFailed: () -> Unit = {}
    ) {
        if (!readerRendersHtmlContent || totalPages <= 0) return
        if (existingHtml != null && existingPageCount >= totalPages) return

        loadJob?.cancel()
        loadJob = scope.launch {
            val loadedPages = ArrayList<CachedHtmlPage>(totalPages.coerceAtMost(256))
            var previewPublished = false

            for (pageIndex in 0 until totalPages) {
                if (!isSessionActive()) return@launch
                val page = loadPage(reader, pageIndex) ?: continue
                loadedPages += page

                // Phase 1: publish preview after first batch so user sees content immediately
                if (!previewPublished && loadedPages.size >= batchSize) {
                    previewPublished = true
                    if (!buildAndPublish(loadedPages, publish, onBuildFailed)) return@launch
                }
            }

            if (loadedPages.isEmpty() || !isSessionActive()) return@launch

            // Phase 2: publish final document with ALL pages (single WebView reload)
            buildAndPublish(loadedPages, publish, onBuildFailed)
        }
    }

    /**
     * Builds the stitched document and publishes it. A failure in either step (e.g.
     * malformed RTF/EPUB HTML that breaks the builder regexes) must not crash the
     * reader coroutine back to the library — it is routed to [onBuildFailed] instead.
     * Returns false when the load loop should abort early.
     */
    private fun buildAndPublish(
        pages: List<CachedHtmlPage>,
        publish: (TextWebtoonCachedDocument, Int) -> Unit,
        onBuildFailed: () -> Unit
    ): Boolean {
        val document = runCatching { builder.build(pages) }.getOrNull()
        if (document == null) {
            onBuildFailed()
            return false
        }
        val published = runCatching { publish(document, pages.size) }
        if (published.isFailure) {
            onBuildFailed()
            return false
        }
        return true
    }

    private companion object {
        private const val TEXT_WEBTOON_DOCUMENT_BATCH_SIZE = 12
    }
}
