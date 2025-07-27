package com.example.mrcomic.ui

import androidx.lifecycle.ViewModel
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import androidx.lifecycle.viewModelScope

// Простая модель для результатов поиска
data class SearchResult(
    val id: String,
    val title: String,
    val author: String,
    val coverUrl: String
)

// Состояния экрана поиска
sealed class SearchState {
    object Idle : SearchState() // Начальное состояние
    object Loading : SearchState() // Загрузка
    data class Success(val results: List<SearchResult>) : SearchState() // Успех
    object Empty : SearchState() // Ничего не найдено
    data class Error(val message: String) : SearchState() // Ошибка
}


class SearchViewModel : ViewModel() {
    
    // Поисковый запрос
    var searchQuery by mutableStateOf("")
        private set

    // Состояние экрана
    private val _searchState = MutableStateFlow<SearchState>(SearchState.Idle)
    val searchState: StateFlow<SearchState> = _searchState.asStateFlow()

    private var searchJob: Job? = null
    
    // Статичный список для поиска (заглушка)
    private val allComics = listOf(
        SearchResult("1", "One-Punch Man", "ONE", "https://placehold.co/200x300?text=OPM"),
        SearchResult("2", "Berserk", "Kentaro Miura", "https://placehold.co/200x300?text=Berserk"),
        SearchResult("3", "Vinland Saga", "Makoto Yukimura", "https://placehold.co/200x300?text=Vinland"),
        SearchResult("4", "Attack on Titan", "Hajime Isayama", "https://placehold.co/200x300?text=AoT"),
        SearchResult("5", "Solo Leveling", "Chugong", "https://placehold.co/200x300?text=Solo")
    )

    fun onSearchQueryChanged(query: String) {
        searchQuery = query
        searchJob?.cancel() // Отменяем предыдущий запущенный поиск

        if (query.isBlank()) {
            _searchState.value = SearchState.Idle
            return
        }

        searchJob = viewModelScope.launch {
            _searchState.value = SearchState.Loading
            delay(500) // Имитация задержки ввода для предотвращения частых запросов
            
            try {
                val results = allComics.filter { 
                    it.title.contains(query, ignoreCase = true) || 
                    it.author.contains(query, ignoreCase = true)
                }
                
                if (results.isNotEmpty()) {
                    _searchState.value = SearchState.Success(results)
                } else {
                    _searchState.value = SearchState.Empty
                }
            } catch (e: Exception) {
                _searchState.value = SearchState.Error("Произошла ошибка поиска")
            }
        }
    }
} 