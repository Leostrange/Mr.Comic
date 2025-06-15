package com.example.mrcomic.theme.ui.viewmodel

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.theme.data.model.Theme
import com.example.mrcomic.theme.data.repository.ThemeRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для работы с темами сообщества
 */
@HiltViewModel
class ThemeCommunityViewModel @Inject constructor(
    private val themeRepository: ThemeRepository
) : ViewModel() {

    private val _themes = MutableLiveData<List<Theme>>()
    val themes: LiveData<List<Theme>> = _themes

    private val _isLoading = MutableLiveData<Boolean>()
    val isLoading: LiveData<Boolean> = _isLoading

    private val _error = MutableLiveData<String?>()
    val error: LiveData<String?> = _error

    private var currentPage = 1
    private val pageSize = 20
    private var sort: String? = null
    private var order: String? = null
    private var search: String? = null
    private var tags: String? = null

    init {
        loadThemes()
    }

    /**
     * Загрузка тем с сервера
     */
    fun loadThemes(refresh: Boolean = false) {
        if (refresh) {
            currentPage = 1
        }

        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                // Загрузка тем с сервера и сохранение в БД
                themeRepository.refreshThemes(
                    page = currentPage,
                    limit = pageSize,
                    sort = sort,
                    order = order,
                    search = search,
                    tags = tags
                )

                // Получение тем из локальной БД
                themeRepository.getAllThemes().collect { themeList ->
                    _themes.value = themeList
                }
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }

    /**
     * Загрузка следующей страницы тем
     */
    fun loadNextPage() {
        currentPage++
        loadThemes(false)
    }

    /**
     * Обновление параметров фильтрации и сортировки
     */
    fun updateFilters(
        newSort: String? = null,
        newOrder: String? = null,
        newSearch: String? = null,
        newTags: String? = null
    ) {
        sort = newSort
        order = newOrder
        search = newSearch
        tags = newTags
        loadThemes(true)
    }

    /**
     * Загрузка популярных тем
     */
    fun loadTrendingThemes() {
        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                themeRepository.refreshTrendingThemes()

                themeRepository.getTopRatedThemes().collect { themeList ->
                    _themes.value = themeList
                }
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }

    /**
     * Загрузка рекомендованных тем
     */
    fun loadRecommendedThemes() {
        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                themeRepository.refreshRecommendedThemes()

                // Здесь можно было бы использовать специальный метод в репозитории,
                // но пока используем общий список тем
                themeRepository.getAllThemes().collect { themeList ->
                    _themes.value = themeList
                }
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }
}
