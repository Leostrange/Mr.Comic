package com.example.feature.settings.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.LocalResourcesRepository
import com.example.core.data.repository.SettingsRepository
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository,
    private val localResourcesRepository: LocalResourcesRepository
) : ViewModel() {

    private val dictionariesFlow = MutableStateFlow<List<LocalDictionary>>(emptyList())
    private val modelsFlow = MutableStateFlow<List<LocalModel>>(emptyList())
    private val selectedDictionaryFlow = MutableStateFlow<LocalDictionary?>(null)
    private val selectedModelFlow = MutableStateFlow<LocalModel?>(null)

    val uiState = combine(
        settingsRepository.sortOrder,
        settingsRepository.libraryFolders,
        settingsRepository.targetLanguage,
        settingsRepository.ocrEngine,
        settingsRepository.translationProvider,
        settingsRepository.translationApiKey,
        settingsRepository.performanceMode,
        dictionariesFlow,
        modelsFlow,
        selectedDictionaryFlow,
        selectedModelFlow
    ) { values ->
        val sortOrder = values[0] as SortOrder
        val folders = values[1] as Set<String>
        val language = values[2] as String
        val engine = values[3] as String
        val provider = values[4] as String
        val apiKey = values[5] as String
        val perfMode = values[6] as Boolean
        val dictionaries = values[7] as List<LocalDictionary>
        val models = values[8] as List<LocalModel>
        val selectedDictionary = values[9] as LocalDictionary?
        val selectedModel = values[10] as LocalModel?
        SettingsUiState(
            sortOrder = sortOrder,
            libraryFolders = folders,
            targetLanguage = language,
            ocrEngine = engine,
            translationProvider = provider,
            translationApiKey = apiKey,
            performanceMode = perfMode,
            availableDictionaries = dictionaries,
            availableModels = models,
            selectedDictionary = selectedDictionary,
            selectedModel = selectedModel
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = SettingsUiState()
    )

    init {
        refreshLocalResources()
    }

    fun refreshLocalResources() {
        viewModelScope.launch {
            dictionariesFlow.value = localResourcesRepository.listDictionaries()
            modelsFlow.value = localResourcesRepository.listModels()
        }
    }

    fun selectDictionary(dictionary: LocalDictionary?) {
        selectedDictionaryFlow.value = dictionary
    }

    fun selectModel(model: LocalModel?) {
        selectedModelFlow.value = model
    }

    fun onSortOrderSelected(sortOrder: SortOrder) {
        viewModelScope.launch {
            settingsRepository.setSortOrder(sortOrder)
        }
    }

    fun onAddFolder(folderUri: String) {
        viewModelScope.launch {
            settingsRepository.addLibraryFolder(folderUri)
        }
    }

    fun onRemoveFolder(folderUri: String) {
        viewModelScope.launch {
            settingsRepository.removeLibraryFolder(folderUri)
        }
    }

    fun onLanguageSelected(language: String) {
        viewModelScope.launch {
            settingsRepository.setTargetLanguage(language)
        }
    }

    fun onOcrEngineSelected(engine: String) {
        viewModelScope.launch {
            settingsRepository.setOcrEngine(engine)
        }
    }

    fun onTranslationProviderSelected(provider: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationProvider(provider)
        }
    }

    fun onApiKeyChanged(key: String) {
        viewModelScope.launch {
            settingsRepository.setTranslationApiKey(key)
        }
    }

    fun onPerformanceModeChanged(enabled: Boolean) {
        viewModelScope.launch {
            settingsRepository.setPerformanceMode(enabled)
        }
    }

    fun clearCache() {
        viewModelScope.launch {
            settingsRepository.clearCache()
        }
    }
}
