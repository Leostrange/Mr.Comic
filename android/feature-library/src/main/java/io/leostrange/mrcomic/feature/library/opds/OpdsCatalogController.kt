package io.leostrange.mrcomic.feature.library.opds

import android.util.Log
import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File

/**
 * OPDS catalog browsing, search and book download (4.2 slice 4).
 *
 * Extracted from OpdsCatalogViewModel into an explicit-dependency controller
 * (delegate-controller pattern, AGENTS.md): the ViewModel stays the single
 * owner of state and lifecycle; this controller needs only the repository,
 * the scope and the UI state flow.
 */
internal class OpdsCatalogController(
    private val opdsRepository: OpdsRepository,
    private val scope: CoroutineScope,
    private val uiState: MutableStateFlow<OpdsCatalogUiState>,
) {

    companion object {
        private const val TAG = "OpdsCatalogViewModel"
    }

    private var feedRequestJob: Job? = null

    init {
        uiState.update { it.copy(catalogs = opdsRepository.defaultCatalogs) }
    }

    /** Open a catalog source. */
    fun openCatalog(source: OpdsCatalogSource) {
        uiState.update {
            it.copy(
                showCatalogPicker = false,
                currentFeed = null,
                feedStack = listOf(source.url),
                searchQuery = "",
                isSearchMode = false
            )
        }
        loadFeed(source.url)
    }

    /** Navigate to a sub-feed (catalog or next page). */
    fun navigateTo(url: String) {
        uiState.update {
            it.copy(
                showCatalogPicker = false,
                isSearchMode = false,
                searchQuery = "",
                feedStack = it.feedStack + url
            )
        }
        loadFeed(url)
    }

    /** Go back to the previous feed. */
    fun goBack() {
        val stack = uiState.value.feedStack
        if (stack.size <= 1) {
            feedRequestJob?.cancel()
            uiState.update {
                it.copy(
                    showCatalogPicker = true,
                    currentFeed = null,
                    feedStack = emptyList(),
                    isLoading = false,
                    error = null,
                    isSearchMode = false,
                    searchQuery = "",
                    failedDownload = null
                )
            }
            return
        }
        val newStack = stack.dropLast(1)
        uiState.update {
            it.copy(
                feedStack = newStack,
                isSearchMode = false,
                searchQuery = "",
                failedDownload = null
            )
        }
        loadFeed(newStack.last())
    }

    /** Load the next page of the current feed. */
    fun loadNextPage() {
        val nextLink = uiState.value.currentFeed?.nextLink ?: return
        navigateTo(nextLink)
    }

    /** Start a search. */
    fun search(query: String) {
        val feed = uiState.value.currentFeed ?: return
        val searchUrl = feed.searchLink ?: return
        feedRequestJob?.cancel()
        uiState.update {
            it.copy(
                isSearchMode = true,
                searchQuery = query,
                isLoading = true,
                error = null,
                failedDownload = null
            )
        }
        feedRequestJob = scope.launch {
            try {
                val result = opdsRepository.search(searchUrl, query)
                uiState.update { it.copy(currentFeed = result, isLoading = false) }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Search failed: $query", e)
                uiState.update { it.copy(isLoading = false, error = e.message ?: "Search failed") }
            }
        }
    }

    /** Retry the currently visible feed or search request. */
    fun retry() {
        uiState.value.failedDownload?.let { entry ->
            uiState.update { it.copy(error = null, failedDownload = null) }
            downloadBook(entry)
            return
        }
        if (uiState.value.isSearchMode && uiState.value.searchQuery.isNotBlank()) {
            search(uiState.value.searchQuery)
        } else {
            uiState.value.feedStack.lastOrNull()?.let(::loadFeed)
        }
    }

    /** Exit search mode and return to the current catalog. */
    fun exitSearch() {
        uiState.update { it.copy(isSearchMode = false, searchQuery = "") }
        uiState.value.feedStack.lastOrNull()?.let(::loadFeed)
    }

    /** Download a book from an OPDS entry. */
    fun downloadBook(entry: OpdsEntry) {
        // Acquisition href is stable per resource and avoids title collisions.
        val progressKey = entry.acquisitionLink?.href ?: entry.title
        if (progressKey in uiState.value.downloadProgress) return

        scope.launch {
            uiState.update {
                it.copy(
                    error = null,
                    failedDownload = null,
                    downloadProgress = it.downloadProgress + (progressKey to 0f)
                )
            }
            try {
                val file = opdsRepository.downloadBook(entry) { bytesRead, totalBytes ->
                    val progress = if (totalBytes > 0) bytesRead.toFloat() / totalBytes else 0f
                    uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to progress)) }
                }
                uiState.update {
                    it.copy(
                        downloadedBooks = it.downloadedBooks + file,
                        downloadProgress = it.downloadProgress - progressKey,
                        failedDownload = null
                    )
                }
                Log.d(TAG, "Downloaded: ${file.name} (${file.length()} bytes)")
            } catch (e: CancellationException) {
                uiState.update { it.copy(downloadProgress = it.downloadProgress - progressKey) }
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Download failed: ${entry.title}", e)
                uiState.update {
                    it.copy(
                        error = "Download failed: ${e.message}",
                        downloadProgress = it.downloadProgress - progressKey,
                        failedDownload = entry
                    )
                }
            }
        }
    }

    /** Clear one queued downloaded book after it has been imported. */
    fun clearDownloadedBook(file: File) {
        uiState.update { state ->
            state.copy(downloadedBooks = state.downloadedBooks - file)
        }
    }

    /** Clear the first queued downloaded book after it has been imported. */
    fun clearDownloadedBook() {
        uiState.value.downloadedBooks.firstOrNull()?.let(::clearDownloadedBook)
    }

    /** Show the catalog picker again. */
    fun showCatalogPicker() {
        feedRequestJob?.cancel()
        uiState.update {
            it.copy(
                showCatalogPicker = true,
                currentFeed = null,
                feedStack = emptyList(),
                isLoading = false,
                isSearchMode = false,
                searchQuery = "",
                failedDownload = null
            )
        }
    }

    /** Clear error state. */
    fun clearError() {
        uiState.update { it.copy(error = null) }
    }

    private fun loadFeed(url: String) {
        feedRequestJob?.cancel()
        uiState.update { it.copy(isLoading = true, error = null, failedDownload = null) }
        feedRequestJob = scope.launch {
            try {
                val feed = opdsRepository.browse(url)
                uiState.update { it.copy(currentFeed = feed, isLoading = false) }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load feed: $url", e)
                uiState.update { it.copy(isLoading = false, error = e.message ?: "Unknown error") }
            }
        }
    }
}
