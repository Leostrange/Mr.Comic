package com.example.feature.settings.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.LocalResourcesRepository
import com.example.core.data.repository.SettingsRepository
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import com.example.core.ui.theme.ThemePreferencesRepository
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ReaderThemeMode
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
    private val localResourcesRepository: LocalResourcesRepository,
    private val themePreferencesRepository: ThemePreferencesRepository
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
        selectedModelFlow,
        themePreferencesRepository.themeConfig,
        themePreferencesRepository.readerThemeConfig,
        // Reading
        settingsRepository.readingMode,
        settingsRepository.scaleMode,
        settingsRepository.readingDoubleTapZoom,
        settingsRepository.readingBlockSwipeWhenZoomed,
        settingsRepository.readerBackground,
        settingsRepository.readerBrightness,
        settingsRepository.readerAnimationSpeed,
        settingsRepository.pageTurnSoundEnabled
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
        val themeConfig = values[11] as com.example.core.ui.theme.ThemeConfig
        val readerThemeConfig = values[12] as com.example.core.ui.theme.ReaderThemeConfig
        val readingMode = values[13] as String
        val scaleMode = values[14] as String
        val doubleTapZoom = values[15] as Float
        val blockSwipeWhenZoomed = values[16] as Boolean
        val readerBackground = values[17] as Long
        val readerBrightness = values[18] as Float
        val readerAnimationSpeed = values[19] as Float
        val pageTurnSoundEnabled = values[20] as Boolean
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
            selectedModel = selectedModel,
            themeMode = themeConfig.themeMode,
            useDynamicColor = themeConfig.useDynamicColor,
            useAmoledDark = themeConfig.useAmoledDark,
            readerThemeMode = readerThemeConfig.themeMode,
            readerUseAmoled = readerThemeConfig.useAmoled,
            readingMode = readingMode,
            scaleMode = scaleMode,
            doubleTapZoom = doubleTapZoom,
            blockSwipeWhenZoomed = blockSwipeWhenZoomed,
            readerBackground = readerBackground,
            readerBrightness = readerBrightness,
            readerAnimationSpeed = readerAnimationSpeed,
            pageTurnSoundEnabled = pageTurnSoundEnabled
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

    fun createLocalBackup() {
        viewModelScope.launch {
            settingsRepository.createLocalBackup()
        }
    }

    fun restoreLocalBackup() {
        viewModelScope.launch {
            settingsRepository.restoreLocalBackup()
        }
    }

    fun createCloudBackup() {
        viewModelScope.launch {
            settingsRepository.createCloudBackup()
        }
    }

    fun restoreCloudBackup() {
        viewModelScope.launch {
            settingsRepository.restoreCloudBackup()
        }
    }

    fun changeAppIcon() {
        viewModelScope.launch {
            settingsRepository.changeAppIcon()
        }
    }

    fun clearCache() {
        viewModelScope.launch {
            settingsRepository.clearCache()
        }
    }
    
    // Reading-related methods
    fun onReadingModeChanged(mode: String) {
        viewModelScope.launch { settingsRepository.setReadingMode(mode) }
    }
    fun onScaleModeChanged(mode: String) {
        viewModelScope.launch { settingsRepository.setScaleMode(mode) }
    }
    fun onDoubleTapZoomChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReadingDoubleTapZoom(value) }
    }
    fun onBlockSwipeWhenZoomedChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setReadingBlockSwipeWhenZoomed(enabled) }
    }
    fun onReaderBackgroundChanged(color: Long) {
        viewModelScope.launch { settingsRepository.setReaderBackground(color) }
    }
    fun onReaderBrightnessChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReaderBrightness(value) }
    }
    fun onReaderAnimationSpeedChanged(value: Float) {
        viewModelScope.launch { settingsRepository.setReaderAnimationSpeed(value) }
    }
    fun onPageTurnSoundChanged(enabled: Boolean) {
        viewModelScope.launch { settingsRepository.setPageTurnSoundEnabled(enabled) }
    }

    // Theme-related methods
    fun onThemeModeChanged(themeMode: ThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setThemeMode(themeMode)
        }
    }
    
    fun onDynamicColorChanged(useDynamicColor: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseDynamicColor(useDynamicColor)
        }
    }
    
    fun onAmoledDarkChanged(useAmoledDark: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setUseAmoledDark(useAmoledDark)
        }
    }
    
    fun onReaderThemeModeChanged(readerThemeMode: ReaderThemeMode) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderThemeMode(readerThemeMode)
        }
    }
    
    fun onReaderUseAmoledChanged(readerUseAmoled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setReaderUseAmoled(readerUseAmoled)
        }
    }
}
