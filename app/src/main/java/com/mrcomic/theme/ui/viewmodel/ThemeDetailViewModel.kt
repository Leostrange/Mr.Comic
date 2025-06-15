package com.example.mrcomic.theme.ui.viewmodel

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.theme.data.model.Theme
import com.example.mrcomic.theme.data.repository.ThemeRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для детального просмотра темы
 */
@HiltViewModel
class ThemeDetailViewModel @Inject constructor(
    private val themeRepository: ThemeRepository
) : ViewModel() {

    private val _theme = MutableLiveData<Theme>()
    val theme: LiveData<Theme> = _theme

    private val _isLoading = MutableLiveData<Boolean>()
    val isLoading: LiveData<Boolean> = _isLoading

    private val _error = MutableLiveData<String?>()
    val error: LiveData<String?> = _error

    /**
     * Загрузка детальной информации о теме
     */
    fun loadTheme(themeId: String) {
        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                // Загрузка темы с сервера и сохранение в БД
                themeRepository.refreshTheme(themeId)

                // Получение темы из локальной БД
                val theme = themeRepository.getThemeById(themeId)
                theme?.let {
                    _theme.value = it
                } ?: run {
                    _error.value = "Тема не найдена"
                }
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }

    /**
     * Скачивание темы
     */
    fun downloadTheme(themeId: String, deviceInfo: Map<String, String>) {
        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                // Здесь будет логика для скачивания темы
                // и регистрации загрузки на сервере

                // После успешной загрузки обновляем информацию о теме
                loadTheme(themeId)
            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }

    /**
     * Применение темы
     */
    fun applyTheme(theme: Theme) {
        viewModelScope.launch {
            try {
                _isLoading.value = true
                _error.value = null

                // Здесь будет логика для применения темы
                // к приложению Mr.Comic

            } catch (e: Exception) {
                _error.value = e.message
            } finally {
                _isLoading.value = false
            }
        }
    }
}
