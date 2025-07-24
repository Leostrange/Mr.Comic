@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    val uiState = combine(
        settingsRepository.sortOrder,
        settingsRepository.libraryFolders,
        settingsRepository.targetLanguage,
        settingsRepository.ocrEngine,
        settingsRepository.translationProvider,
        settingsRepository.translationApiKey,
        settingsRepository.performanceMode
    ) { sortOrder, folders, language, engine, provider, apiKey, perfMode ->
        SettingsUiState(
            sortOrder = sortOrder,
            libraryFolders = folders,
            targetLanguage = language,
            ocrEngine = engine,
            translationProvider = provider,
            translationApiKey = apiKey,
            performanceMode = perfMode
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = SettingsUiState()
    )

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
