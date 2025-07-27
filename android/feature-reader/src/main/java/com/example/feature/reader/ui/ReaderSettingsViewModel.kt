package com.example.feature.reader.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ReaderSettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    val lineSpacing = settingsRepository.readerLineSpacing.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        1.5f
    )

    val font = settingsRepository.readerFont.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "Sans"
    )

    val background = settingsRepository.readerBackground.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        0xFFFFFFFF
    )

    fun onLineSpacingChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReaderLineSpacing(value) }
    }

    fun onFontSelected(font: String) {
        viewModelScope.launch { settingsRepository.setReaderFont(font) }
    }

    fun onBackgroundSelected(color: Long) {
        viewModelScope.launch { settingsRepository.setReaderBackground(color) }
    }
}
