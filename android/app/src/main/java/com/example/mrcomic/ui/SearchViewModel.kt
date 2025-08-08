package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import androidx.lifecycle.viewModelScope

// A simple data model representing an item returned by a search operation.
data class SearchResult(
    val id: String,
    val title: String,
    val author: String,
    val coverUrl: String
)

// Represent the various states of the search screen.
sealed class SearchState {
    object Idle : SearchState()      // Initial or idle state
    object Loading : SearchState()   // Indicates the search is in progress
    data class Success(val results: List<SearchResult>) : SearchState() // Search returned results
    object Empty : SearchState()     // Search completed but nothing matched
    data class Error(val message: String) : SearchState() // Search encountered an error
}

/**
 * ViewModel responsible for managing the state of the search screen. It exposes the current
 * search query and a state flow representing the loading state and results. A simple in-memory
 * list acts as the data source. When the query changes, the ViewModel debounces the input
 * before filtering the list to simulate an asynchronous search operation.
 */
class SearchViewModel : ViewModel() {

    // Holds the text entered by the user for the search query.
    var searchQuery by mutableStateOf("")
        private set

    // Internal mutable state flow representing the current search state.
    private val _searchState = MutableStateFlow<SearchState>(SearchState.Idle)

    // Exposes an immutable state flow to observers of this ViewModel.
    val searchState: StateFlow<SearchState> = _searchState.asStateFlow()

    // A reference to the current coroutine job used for debouncing search queries.
    private var searchJob: Job? = null

    // A static list of comics used as a simple search data source.
    private val allComics = listOf(
        SearchResult("1", "One-Punch Man", "ONE", "https://placehold.co/200x300?text=OPM"),
        SearchResult("2", "Berserk", "Kentaro Miura", "https://placehold.co/200x300?text=Berserk"),
        SearchResult("3", "Vinland Saga", "Makoto Yukimura", "https://placehold.co/200x300?text=Vinland"),
        SearchResult("4", "Attack on Titan", "Hajime Isayama", "https://placehold.co/200x300?text=AoT"),
        SearchResult("5", "Solo Leveling", "Chugong", "https://placehold.co/200x300?text=Solo")
    )

    /**
     * Called when the user modifies the search query. Cancels any ongoing search and if the
     * query is non-blank starts a new coroutine that debounces the input by 500 ms before
     * performing the search. Results are posted to the state flow.
     */
    fun onSearchQueryChanged(query: String) {
        searchQuery = query
        searchJob?.cancel()

        // Reset to idle state if the query is empty
        if (query.isBlank()) {
            _searchState.value = SearchState.Idle
            return
        }

        searchJob = viewModelScope.launch {
            _searchState.value = SearchState.Loading
            delay(500) // Debounce to prevent searching on every keystroke

            try {
                // Perform a simple filter on the local list of comics
                val results = allComics.filter {
                    it.title.contains(query, ignoreCase = true) ||
                        it.author.contains(query, ignoreCase = true)
                }

                // Emit the appropriate state based on the results
                _searchState.value = if (results.isNotEmpty()) {
                    SearchState.Success(results)
                } else {
                    SearchState.Empty
                }
            } catch (e: Exception) {
                _searchState.value = SearchState.Error("Произошла ошибка поиска")
            }
        }
    }
}