package com.example.mrcomic.ui.screens

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val analyticsHelper: AnalyticsHelper,
    private val performanceProfiler: PerformanceProfiler
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()
    
    // Симуляция данных для демонстрации
    private val sampleComics = listOf(
        Comic(
            id = "1",
            title = "Batman: The Dark Knight Returns",
            format = "CBR",
            pageCount = 96,
            currentPage = 24,
            coverPath = null,
            dateAdded = System.currentTimeMillis() - 86400000, // 1 день назад
            lastRead = System.currentTimeMillis() - 3600000 // 1 час назад
        ),
        Comic(
            id = "2", 
            title = "Spider-Man: Into the Spider-Verse",
            format = "CBZ",
            pageCount = 128,
            currentPage = 0,
            coverPath = null,
            dateAdded = System.currentTimeMillis() - 172800000, // 2 дня назад
            lastRead = null
        ),
        Comic(
            id = "3",
            title = "Wonder Woman: Year One",
            format = "PDF",
            pageCount = 144,
            currentPage = 72,
            coverPath = null,
            dateAdded = System.currentTimeMillis() - 259200000, // 3 дня назад
            lastRead = System.currentTimeMillis() - 7200000 // 2 часа назад
        ),
        Comic(
            id = "4",
            title = "The Walking Dead Vol. 1",
            format = "CBR",
            pageCount = 144,
            currentPage = 144,
            coverPath = null,
            dateAdded = System.currentTimeMillis() - 604800000, // 1 неделя назад
            lastRead = System.currentTimeMillis() - 86400000 // 1 день назад
        )
    )
    
    init {
        loadComics()
    }
    
    fun updateSearchQuery(query: String) {
        _uiState.update { it.copy(searchQuery = query) }
        
        // Отслеживаем поисковые запросы
        if (query.isNotEmpty()) {
            viewModelScope.launch {
                analyticsHelper.trackPerformance(
                    metricName = "search_query_updated",
                    value = query.length.toDouble(),
                    unit = "characters",
                    scope = viewModelScope
                )
            }
        }
    }
    
    fun setViewMode(viewMode: ViewMode) {
        val oldMode = _uiState.value.viewMode
        _uiState.update { it.copy(viewMode = viewMode) }
        
        // Отслеживаем изменения режима просмотра
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "view_mode_changed",
                value = 1.0,
                unit = "action",
                scope = viewModelScope
            )
        }
    }
    
    fun setSortType(sortType: SortType) {
        val oldSort = _uiState.value.sortType
        _uiState.update { it.copy(sortType = sortType) }
        
        // Отслеживаем изменения сортировки
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "sort_type_changed",
                value = 1.0,
                unit = "action",
                scope = viewModelScope
            )
        }
    }
    
    fun selectComic(comicId: String) {
        _uiState.update { state ->
            val selectedComics = state.selectedComics.toMutableSet()
            if (comicId in selectedComics) {
                selectedComics.remove(comicId)
            } else {
                selectedComics.add(comicId)
            }
            state.copy(selectedComics = selectedComics)
        }
        
        // Отслеживаем выбор комиксов
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "comic_selection_changed",
                value = _uiState.value.selectedComics.size.toDouble(),
                unit = "items",
                scope = viewModelScope
            )
        }
    }
    
    fun refresh() {
        _uiState.update { it.copy(isLoading = true, error = null) }
        
        // Измеряем время обновления
        val measurementId = performanceProfiler.startMeasurement("library_refresh")
        
        viewModelScope.launch {
            try {
                // Симуляция загрузки данных
                kotlinx.coroutines.delay(1000)
                
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        comics = sampleComics,
                        error = null
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId, 
                    "library_refresh",
                    viewModelScope,
                    mapOf("comics_count" to sampleComics.size)
                )
                
            } catch (e: Exception) {
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "Ошибка загрузки"
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "library_refresh_error", 
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    fun loadMore() {
        if (_uiState.value.isLoading || !_uiState.value.hasMore) return
        
        _uiState.update { it.copy(isLoading = true) }
        
        viewModelScope.launch {
            try {
                // Симуляция загрузки дополнительных данных
                kotlinx.coroutines.delay(500)
                
                val newComics = generateAdditionalComics()
                _uiState.update { state ->
                    state.copy(
                        isLoading = false,
                        comics = state.comics + newComics,
                        hasMore = state.comics.size + newComics.size < 20 // Максимум 20 комиксов
                    )
                }
                
                analyticsHelper.trackPerformance(
                    metricName = "library_load_more",
                    value = newComics.size.toDouble(),
                    unit = "items",
                    scope = viewModelScope
                )
                
            } catch (e: Exception) {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }
    
    fun addComics() {
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "add_comics_initiated",
                value = 1.0,
                unit = "action",
                scope = viewModelScope
            )
        }
        
        // TODO: Открыть диалог выбора файлов или интеграцию с файловой системой
    }
    
    private fun loadComics() {
        _uiState.update { it.copy(isLoading = true) }
        
        val measurementId = performanceProfiler.startMeasurement("library_initial_load")
        
        viewModelScope.launch {
            try {
                // Симуляция начальной загрузки
                kotlinx.coroutines.delay(1500)
                
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        comics = sampleComics,
                        hasMore = true,
                        error = null
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "library_initial_load",
                    viewModelScope,
                    mapOf(
                        "comics_count" to sampleComics.size,
                        "success" to true
                    )
                )
                
            } catch (e: Exception) {
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "Ошибка загрузки комиксов"
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "library_initial_load_error",
                    viewModelScope,
                    mapOf("error" to (e.message ?: "unknown"))
                )
            }
        }
    }
    
    private fun generateAdditionalComics(): List<Comic> {
        val additionalTitles = listOf(
            "X-Men: Days of Future Past",
            "Avengers: Endgame",
            "Captain America: Civil War",
            "Iron Man: Extremis",
            "Thor: God of Thunder",
            "Hulk: Planet Hulk",
            "Guardians of the Galaxy",
            "Doctor Strange: The Oath"
        )
        
        val formats = listOf("CBR", "CBZ", "PDF")
        val currentTime = System.currentTimeMillis()
        
        return additionalTitles.take(3).mapIndexed { index, title ->
            Comic(
                id = "additional_${index + 5}",
                title = title,
                format = formats.random(),
                pageCount = (80..200).random(),
                currentPage = (0..50).random(),
                coverPath = null,
                dateAdded = currentTime - (index + 1) * 86400000L, // Дни назад
                lastRead = if ((0..1).random() == 1) currentTime - (index + 1) * 3600000L else null // Часы назад
            )
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        
        // Очищаем ресурсы и отправляем финальную аналитику
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "library_viewmodel_cleared",
                value = 1.0,
                unit = "lifecycle",
                scope = viewModelScope
            )
        }
    }
}