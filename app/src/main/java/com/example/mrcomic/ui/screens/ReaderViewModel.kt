package com.example.mrcomic.ui.screens

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val analyticsHelper: AnalyticsHelper,
    private val performanceProfiler: PerformanceProfiler
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState: StateFlow<ReaderUiState> = _uiState.asStateFlow()
    
    fun loadComic(comicId: String) {
        _uiState.update { it.copy(isLoading = true, error = null) }
        
        val measurementId = performanceProfiler.startMeasurement("comic_load")
        
        viewModelScope.launch {
            try {
                // Симуляция загрузки комикса
                kotlinx.coroutines.delay(2000)
                
                // Создаем тестовый комикс
                val comic = Comic(
                    id = comicId,
                    title = when (comicId) {
                        "1" -> "Batman: The Dark Knight Returns"
                        "2" -> "Spider-Man: Into the Spider-Verse"
                        "3" -> "Wonder Woman: Year One"
                        "4" -> "The Walking Dead Vol. 1"
                        else -> "Test Comic #$comicId"
                    },
                    format = "CBR",
                    pageCount = 20,
                    currentPage = 0
                )
                
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        comic = comic,
                        currentPage = comic.currentPage,
                        error = null
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "comic_load",
                    viewModelScope,
                    mapOf(
                        "comic_id" to comicId,
                        "page_count" to comic.pageCount,
                        "success" to true
                    )
                )
                
            } catch (e: Exception) {
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "Ошибка загрузки комикса"
                    )
                }
                
                performanceProfiler.finishMeasurement(
                    measurementId,
                    "comic_load_error",
                    viewModelScope,
                    mapOf(
                        "comic_id" to comicId,
                        "error" to (e.message ?: "unknown")
                    )
                )
            }
        }
    }
    
    fun goToPage(page: Int) {
        val comic = _uiState.value.comic ?: return
        if (page < 0 || page >= comic.pageCount) return
        
        val oldPage = _uiState.value.currentPage
        _uiState.update { it.copy(currentPage = page) }
        
        // Отслеживаем переход между страницами
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "page_changed",
                value = page.toDouble(),
                unit = "page",
                scope = viewModelScope
            )
            
            // Сохраняем прогресс чтения
            saveReadingProgress(comic.id, page)
        }
    }
    
    fun toggleSettings() {
        _uiState.update { it.copy(showSettings = !it.showSettings) }
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "reader_settings_toggled",
                value = if (_uiState.value.showSettings) 1.0 else 0.0,
                unit = "state",
                scope = viewModelScope
            )
        }
    }
    
    fun updateSettings(settings: ReaderSettings) {
        _uiState.update { it.copy(settings = settings) }
        
        viewModelScope.launch {
            analyticsHelper.trackPerformance(
                metricName = "reader_settings_changed",
                value = 1.0,
                unit = "action",
                scope = viewModelScope
            )
        }
    }
    
    private suspend fun saveReadingProgress(comicId: String, currentPage: Int) {
        try {
            // TODO: Интеграция с реальным UseCase для сохранения прогресса
            val measurementId = performanceProfiler.startMeasurement("save_reading_progress")
            
            // Симуляция сохранения
            kotlinx.coroutines.delay(100)
            
            performanceProfiler.finishMeasurement(
                measurementId,
                "save_reading_progress",
                viewModelScope,
                mapOf(
                    "comic_id" to comicId,
                    "page" to currentPage
                )
            )
            
        } catch (e: Exception) {
            // Логируем ошибку, но не показываем пользователю
            analyticsHelper.trackError(
                exception = e,
                context = "save_reading_progress",
                scope = viewModelScope
            )
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        
        val comic = _uiState.value.comic
        val currentPage = _uiState.value.currentPage
        
        if (comic != null) {
            viewModelScope.launch {
                // Финальное сохранение прогресса
                saveReadingProgress(comic.id, currentPage)
                
                // Отслеживаем завершение чтения
                analyticsHelper.trackPerformance(
                    metricName = "reading_session_ended",
                    value = currentPage.toDouble(),
                    unit = "page",
                    scope = viewModelScope
                )
                
                if (currentPage >= comic.pageCount - 1) {
                    // Комикс дочитан до конца
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.ReadingFinished(
                            comicId = comic.id,
                            timeSpent = 0L // TODO: Реальное время
                        ),
                        viewModelScope
                    )
                }
            }
        }
    }
}