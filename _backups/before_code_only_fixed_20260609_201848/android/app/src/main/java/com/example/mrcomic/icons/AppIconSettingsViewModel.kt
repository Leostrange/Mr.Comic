package com.example.mrcomic.icons

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.ui.locale.normalizeAppLanguageCode
import com.example.mrcomic.ui.appIconScreenText
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.stateIn
import javax.inject.Inject

@HiltViewModel
class AppIconSettingsViewModel @Inject constructor(
    private val appIconManager: AppIconManager,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _errorMessage = MutableStateFlow<String?>(null)
    val errorMessage: StateFlow<String?> = _errorMessage.asStateFlow()

    // Hot StateFlow so the UI reflects selection changes immediately
    val currentIcon: StateFlow<String> = appIconManager.currentIcon
        .stateIn(viewModelScope, SharingStarted.Eagerly, AppIconManager.DEFAULT_ICON)

    fun getAvailableIcons(): List<AppIcon> = appIconManager.getAvailableIcons()

    suspend fun changeIcon(iconId: String): Boolean {
        _isLoading.value = true
        _errorMessage.value = null
        val text = appIconScreenText(currentAppLanguage())
        return try {
            val changed = appIconManager.setAppIcon(iconId)
            if (!changed) {
                _errorMessage.value = text.applyFailed
                return false
            }
            appIconManager.restartAppForIconChange(iconId)
            changed
        } catch (e: Exception) {
            _errorMessage.value = text.applyFailedWithDetail(e.message ?: text.applyFailed)
            false
        } finally {
            _isLoading.value = false
        }
    }
    fun clearError() { _errorMessage.value = null }

    private suspend fun currentAppLanguage(): String =
        normalizeAppLanguageCode(
            UserPreferences(context.dataStore)
                .get(PreferencesKeys.APP_LANGUAGE, "ru")
                .first()
        )
}
