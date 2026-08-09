package io.leostrange.mrcomic.feature.library.opds

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
import java.io.File
import javax.inject.Inject
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

@HiltViewModel
class OpdsCatalogViewModel @Inject constructor(
    private val opdsRepository: OpdsRepository
) : ViewModel() {

    companion object {
        private const val TAG = "OpdsCatalogViewModel"
    }

    data class UiState(
        val catalogs: List<OpdsCatalogSource> = emptyList(),
        val currentFeed: OpdsFeed? = null,
        val feedStack: List<String> = emptyList(),
        val isLoading: Boolean = false,
        val error: String? = null,
        val searchQuery: String = "",
        val isSearchMode: Boolean = false,
        val downloadProgress: Map<String, Float> = emptyMap(),
        val downloadedBooks: List<File> = emptyList(),
        val failedDownload: OpdsEntry? = null,
        val showCatalogPicker: Boolean = true
    ) {
        /** Backwards-compatible view of the first queued download result. */
        val downloadedBook: File?
            get() = downloadedBooks.firstOrNull()
    }

    private val _uiState = MutableStateFlow(UiState())
    val uiState: StateFlow<UiState> = _uiState.asStateFlow()

    private var feedRequestJob: Job? = null

    init {
        _uiState.update { it.copy(catalogs = opdsRepository.defaultCatalogs) }
    }

    /** Open a catalog source. */
    fun openCatalog(source: OpdsCatalogSource) {
        _uiState.update {
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
        _uiState.update {
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
        val stack = _uiState.value.feedStack
        if (stack.size <= 1) {
            feedRequestJob?.cancel()
            _uiState.update {
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
        _uiState.update {
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
        val nextLink = _uiState.value.currentFeed?.nextLink ?: return
        navigateTo(nextLink)
    }

    /** Start a search. */
    fun search(query: String) {
        val feed = _uiState.value.currentFeed ?: return
        val searchUrl = feed.searchLink ?: return
        feedRequestJob?.cancel()
        _uiState.update {
            it.copy(
                isSearchMode = true,
                searchQuery = query,
                isLoading = true,
                error = null,
                failedDownload = null
            )
        }
        feedRequestJob = viewModelScope.launch {
            try {
                val result = opdsRepository.search(searchUrl, query)
                _uiState.update { it.copy(currentFeed = result, isLoading = false) }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Search failed: $query", e)
                _uiState.update { it.copy(isLoading = false, error = e.message ?: "Search failed") }
            }
        }
    }

    /** Retry the currently visible feed or search request. */
    fun retry() {
        _uiState.value.failedDownload?.let { entry ->
            _uiState.update { it.copy(error = null, failedDownload = null) }
            downloadBook(entry)
            return
        }
        if (_uiState.value.isSearchMode && _uiState.value.searchQuery.isNotBlank()) {
            search(_uiState.value.searchQuery)
        } else {
            _uiState.value.feedStack.lastOrNull()?.let(::loadFeed)
        }
    }

    /** Exit search mode and return to the current catalog. */
    fun exitSearch() {
        _uiState.update { it.copy(isSearchMode = false, searchQuery = "") }
        _uiState.value.feedStack.lastOrNull()?.let(::loadFeed)
    }

    /** Download a book from an OPDS entry. */
    fun downloadBook(entry: OpdsEntry) {
        // Acquisition href is stable per resource and avoids title collisions.
        val progressKey = entry.acquisitionLink?.href ?: entry.title
        if (progressKey in _uiState.value.downloadProgress) return

        viewModelScope.launch {
            _uiState.update {
                it.copy(
                    error = null,
                    failedDownload = null,
                    downloadProgress = it.downloadProgress + (progressKey to 0f)
                )
            }
            try {
                val file = opdsRepository.downloadBook(entry) { bytesRead, totalBytes ->
                    val progress = if (totalBytes > 0) bytesRead.toFloat() / totalBytes else 0f
                    _uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to progress)) }
                }
                _uiState.update {
                    it.copy(
                        downloadedBooks = it.downloadedBooks + file,
                        downloadProgress = it.downloadProgress - progressKey,
                        failedDownload = null
                    )
                }
                Log.d(TAG, "Downloaded: ${file.name} (${file.length()} bytes)")
            } catch (e: CancellationException) {
                _uiState.update { it.copy(downloadProgress = it.downloadProgress - progressKey) }
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Download failed: ${entry.title}", e)
                _uiState.update {
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
        _uiState.update { state ->
            state.copy(downloadedBooks = state.downloadedBooks - file)
        }
    }

    /** Clear the first queued downloaded book after it has been imported. */
    fun clearDownloadedBook() {
        _uiState.value.downloadedBooks.firstOrNull()?.let(::clearDownloadedBook)
    }

    /** Show the catalog picker again. */
    fun showCatalogPicker() {
        feedRequestJob?.cancel()
        _uiState.update {
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
        _uiState.update { it.copy(error = null) }
    }

    private fun loadFeed(url: String) {
        feedRequestJob?.cancel()
        _uiState.update { it.copy(isLoading = true, error = null, failedDownload = null) }
        feedRequestJob = viewModelScope.launch {
            try {
                val feed = opdsRepository.browse(url)
                _uiState.update { it.copy(currentFeed = feed, isLoading = false) }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load feed: $url", e)
                _uiState.update { it.copy(isLoading = false, error = e.message ?: "Unknown error") }
            }
        }
    }
}
