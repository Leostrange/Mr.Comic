package com.example.feature.ocr.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.SettingsRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TranslateOcrViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    val targetLanguage = settingsRepository.targetLanguage.stateIn(
        viewModelScope,
        SharingStarted.WhileSubscribed(5_000),
        "en"
    )

    fun onLanguageSelected(language: String) {
        viewModelScope.launch { settingsRepository.setTargetLanguage(language) }
    }
}
