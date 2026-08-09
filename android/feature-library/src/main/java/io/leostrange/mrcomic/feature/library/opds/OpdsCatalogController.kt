package io.leostrange.mrcomic.feature.library.opds

import android.util.Log
import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

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

    init {
        uiState.update { it.copy(catalogs = opdsRepository.defaultCatalogs) }
    }

    /** Open a catalog source. */
    fun openCatalog(source: OpdsCatalogSource) {
        uiState.update { it.copy(showCatalogPicker = false, feedStack = listOf(source.url)) }
        loadFeed(source.url)
    }

    /** Navigate to a sub-feed (catalog or next page). */
    fun navigateTo(url: String) {
        uiState.update { it.copy(feedStack = it.feedStack + url) }
        loadFeed(url)
    }

    /** Go back to the previous feed. */
    fun goBack() {
        val stack = uiState.value.feedStack
        if (stack.size <= 1) {
            uiState.update { it.copy(showCatalogPicker = true, currentFeed = null, feedStack = emptyList()) }
            return
        }
        val newStack = stack.dropLast(1)
        uiState.update { it.copy(feedStack = newStack) }
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
        uiState.update { it.copy(isSearchMode = true, searchQuery = query) }
        scope.launch {
            uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val result = opdsRepository.search(searchUrl, query)
                uiState.update { it.copy(currentFeed = result, isLoading = false) }
            } catch (e: Exception) {
                Log.e(TAG, "Search failed: $query", e)
                uiState.update { it.copy(isLoading = false, error = e.message ?: "Search failed") }
            }
        }
    }

    /** Exit search mode and return to the current catalog. */
    fun exitSearch() {
        uiState.update { it.copy(isSearchMode = false, searchQuery = "") }
        val stack = uiState.value.feedStack
        if (stack.isNotEmpty()) loadFeed(stack.last())
    }

    /** Download a book from an OPDS entry. */
    fun downloadBook(entry: OpdsEntry) {
        // Key progress by acquisition href (unique per download) rather than title
        // which can collide across different books on OPDS catalogs.
        val progressKey = entry.acquisitionLink?.href ?: entry.title
        scope.launch {
            uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to 0f)) }
            try {
                val file = opdsRepository.downloadBook(entry) { bytesRead, totalBytes ->
                    val progress = if (totalBytes > 0) bytesRead.toFloat() / totalBytes else 0f
                    uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to progress)) }
                }
                uiState.update {
                    it.copy(
                        downloadedBook = file,
                        downloadProgress = it.downloadProgress - progressKey
                    )
                }
                Log.d(TAG, "Downloaded: ${file.name} (${file.length()} bytes)")
            } catch (e: Exception) {
                Log.e(TAG, "Download failed: ${entry.title}", e)
                uiState.update {
                    it.copy(
                        error = "Download failed: ${e.message}",
                        downloadProgress = it.downloadProgress - progressKey
                    )
                }
            }
        }
    }

    /** Clear the downloaded book state (after import). */
    fun clearDownloadedBook() {
        uiState.update { it.copy(downloadedBook = null) }
    }

    /** Show the catalog picker again. */
    fun showCatalogPicker() {
        uiState.update { it.copy(showCatalogPicker = true, currentFeed = null, feedStack = emptyList()) }
    }

    /** Clear error state. */
    fun clearError() {
        uiState.update { it.copy(error = null) }
    }

    private fun loadFeed(url: String) {
        scope.launch {
            uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val feed = opdsRepository.browse(url)
                uiState.update { it.copy(currentFeed = feed, isLoading = false) }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load feed: $url", e)
                uiState.update { it.copy(isLoading = false, error = e.message ?: "Unknown error") }
            }
        }
    }
}
