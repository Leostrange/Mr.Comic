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
 */
internal class TextWebtoonSessionController(
    private val scope: CoroutineScope,
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
        buildDocument: (List<CachedHtmlPage>) -> TextWebtoonCachedDocument,
        publish: (TextWebtoonCachedDocument, Int) -> Unit
    ) {
        if (!readerRendersHtmlContent || totalPages <= 0) return
        if (existingHtml != null && existingPageCount >= totalPages) return

        loadJob?.cancel()
        loadJob = scope.launch {
            val loadedPages = ArrayList<CachedHtmlPage>(totalPages.coerceAtMost(256))
            suspend fun publishLoadedDocument(force: Boolean = false) {
                if (loadedPages.isEmpty()) return
                if (!force && loadedPages.size % batchSize != 0) return
                if (!isSessionActive()) return
                publish(buildDocument(loadedPages), loadedPages.size)
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
