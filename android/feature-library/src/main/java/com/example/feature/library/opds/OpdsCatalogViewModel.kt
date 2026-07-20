package com.example.feature.library.opds

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.opds.OpdsRepository
import com.example.core.model.OpdsCatalogSource
import com.example.core.model.OpdsEntry
import com.example.core.model.OpdsFeed
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

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
        val downloadedBook: File? = null,
        val showCatalogPicker: Boolean = true
    )

    private val _uiState = MutableStateFlow(UiState())
    val uiState: StateFlow<UiState> = _uiState.asStateFlow()

    init {
        _uiState.update { it.copy(catalogs = opdsRepository.defaultCatalogs) }
    }

    /** Open a catalog source. */
    fun openCatalog(source: OpdsCatalogSource) {
        _uiState.update { it.copy(showCatalogPicker = false, feedStack = listOf(source.url)) }
        loadFeed(source.url)
    }

    /** Navigate to a sub-feed (catalog or next page). */
    fun navigateTo(url: String) {
        _uiState.update { it.copy(feedStack = it.feedStack + url) }
        loadFeed(url)
    }

    /** Go back to the previous feed. */
    fun goBack() {
        val stack = _uiState.value.feedStack
        if (stack.size <= 1) {
            _uiState.update { it.copy(showCatalogPicker = true, currentFeed = null, feedStack = emptyList()) }
            return
        }
        val newStack = stack.dropLast(1)
        _uiState.update { it.copy(feedStack = newStack) }
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
        _uiState.update { it.copy(isSearchMode = true, searchQuery = query) }
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val result = opdsRepository.search(searchUrl, query)
                _uiState.update { it.copy(currentFeed = result, isLoading = false) }
            } catch (e: Exception) {
                Log.e(TAG, "Search failed: $query", e)
                _uiState.update { it.copy(isLoading = false, error = e.message ?: "Search failed") }
            }
        }
    }

    /** Exit search mode and return to the current catalog. */
    fun exitSearch() {
        _uiState.update { it.copy(isSearchMode = false, searchQuery = "") }
        val stack = _uiState.value.feedStack
        if (stack.isNotEmpty()) loadFeed(stack.last())
    }

    /** Download a book from an OPDS entry. */
    fun downloadBook(entry: OpdsEntry) {
        // Key progress by acquisition href (unique per download) rather than title
        // which can collide across different books on OPDS catalogs.
        val progressKey = entry.acquisitionLink?.href ?: entry.title
        viewModelScope.launch {
            _uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to 0f)) }
            try {
                val file = opdsRepository.downloadBook(entry) { bytesRead, totalBytes ->
                    val progress = if (totalBytes > 0) bytesRead.toFloat() / totalBytes else 0f
                    _uiState.update { it.copy(downloadProgress = it.downloadProgress + (progressKey to progress)) }
                }
                _uiState.update {
                    it.copy(
                        downloadedBook = file,
                        downloadProgress = it.downloadProgress - progressKey
                    )
                }
                Log.d(TAG, "Downloaded: ${file.name} (${file.length()} bytes)")
            } catch (e: Exception) {
                Log.e(TAG, "Download failed: ${entry.title}", e)
                _uiState.update {
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
        _uiState.update { it.copy(downloadedBook = null) }
    }

    /** Show the catalog picker again. */
    fun showCatalogPicker() {
        _uiState.update { it.copy(showCatalogPicker = true, currentFeed = null, feedStack = emptyList()) }
    }

    /** Clear error state. */
    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }

    private fun loadFeed(url: String) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                val feed = opdsRepository.browse(url)
                _uiState.update { it.copy(currentFeed = feed, isLoading = false) }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load feed: $url", e)
                _uiState.update { it.copy(isLoading = false, error = e.message ?: "Unknown error") }
            }
        }
    }
}
