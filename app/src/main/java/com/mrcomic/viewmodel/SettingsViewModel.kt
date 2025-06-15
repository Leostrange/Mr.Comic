package com.example.mrcomic.viewmodel

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.*
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import java.io.File
import kotlinx.coroutines.flow.MutableStateFlow

class SettingsViewModel(private val context: Context) : ViewModel() {
    val themeSettings: StateFlow<ThemeSettings> = ThemeSettingsManager.getThemeSettings(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, ThemeSettings())
    val librarySettings: StateFlow<LibrarySettings> = LibrarySettingsManager.getLibrarySettings(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, LibrarySettings())
    val readerSettings: StateFlow<ReaderSettings> = ReaderSettingsManager.getReaderSettings(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, ReaderSettings())
    val notificationSettings: StateFlow<NotificationSettings> = NotificationSettingsManager.getNotificationSettings(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, NotificationSettings())
    val gestureSettings: StateFlow<GestureSettings> = GestureSettingsManager.getGestureSettings(context)
        .stateIn(viewModelScope, SharingStarted.Lazily, GestureSettings())

    private val _themes = MutableStateFlow<List<CustomTheme>>(emptyList())
    val themes: StateFlow<List<CustomTheme>> = _themes

    fun saveThemeSettings(theme: ThemeSettings) {
        viewModelScope.launch { ThemeSettingsManager.saveThemeSettings(context, theme) }
    }
    fun saveLibrarySettings(library: LibrarySettings) {
        viewModelScope.launch { LibrarySettingsManager.saveLibrarySettings(context, library) }
    }
    fun saveReaderSettings(reader: ReaderSettings) {
        viewModelScope.launch { ReaderSettingsManager.saveReaderSettings(context, reader) }
    }
    fun saveNotificationSettings(notification: NotificationSettings) {
        viewModelScope.launch { NotificationSettingsManager.saveNotificationSettings(context, notification) }
    }
    fun saveGestureSettings(settings: GestureSettings) {
        viewModelScope.launch { GestureSettingsManager.saveGestureSettings(context, settings) }
    }
    fun exportSettings(): File {
        return SettingsBackup.exportSettings(
            context,
            themeSettings.value,
            librarySettings.value,
            readerSettings.value,
            notificationSettings.value
        )
    }
    suspend fun importFromFile(file: File) {
        SettingsBackup.importSettings(context, file)
    }
    // Методы для экспорта/импорта настроек будут добавлены после создания SettingsBackup

    fun applyTheme(theme: CustomTheme) {
        // Реализация применения темы
    }
} 