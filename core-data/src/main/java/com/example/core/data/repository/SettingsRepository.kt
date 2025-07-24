class SettingsRepositoryImpl @Inject constructor(
    private val dataStore: DataStore<Preferences>
) : SettingsRepository {

    private object PreferencesKeys {
        val SORT_ORDER = stringPreferencesKey("sort_order")
        val SEARCH_QUERY = stringPreferencesKey("search_query")
        val LIBRARY_FOLDERS = stringSetPreferencesKey("library_folders")
        val TARGET_LANGUAGE = stringPreferencesKey("target_language")
        val OCR_ENGINE = stringPreferencesKey("ocr_engine")
        val TRANSLATION_PROVIDER = stringPreferencesKey("translation_provider")
        val TRANSLATION_API_KEY = stringPreferencesKey("translation_api_key")
        val PERFORMANCE_MODE = stringPreferencesKey("performance_mode")
    }

    override val sortOrder: Flow<SortOrder> = dataStore.data.map {
        val sortOrderName = it[PreferencesKeys.SORT_ORDER] ?: SortOrder.DATE_ADDED_DESC.name
        SortOrder.valueOf(sortOrderName)
    }

    override suspend fun setSortOrder(sortOrder: SortOrder) {
        dataStore.edit { it[PreferencesKeys.SORT_ORDER] = sortOrder.name }
    }

    override val searchQuery: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.SEARCH_QUERY] ?: ""
    }

    override suspend fun setSearchQuery(query: String) {
        dataStore.edit { it[PreferencesKeys.SEARCH_QUERY] = query }
    }

    override val libraryFolders: Flow<Set<String>> = dataStore.data.map {
        it[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
    }

    override suspend fun addLibraryFolder(folderUri: String) {
        dataStore.edit {
            val current = it[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
            it[PreferencesKeys.LIBRARY_FOLDERS] = current + folderUri
        }
    }

    override suspend fun removeLibraryFolder(folderUri: String) {
        dataStore.edit {
            val current = it[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
            it[PreferencesKeys.LIBRARY_FOLDERS] = current - folderUri
        }
    }

    override val targetLanguage: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.TARGET_LANGUAGE] ?: "en"
    }

    override suspend fun setTargetLanguage(language: String) {
        dataStore.edit { it[PreferencesKeys.TARGET_LANGUAGE] = language }
    }

    override val ocrEngine: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.OCR_ENGINE] ?: "Tesseract"
    }

    override suspend fun setOcrEngine(engine: String) {
        dataStore.edit { it[PreferencesKeys.OCR_ENGINE] = engine }
    }

    override val translationProvider: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.TRANSLATION_PROVIDER] ?: "Google"
    }

    override suspend fun setTranslationProvider(provider: String) {
        dataStore.edit { it[PreferencesKeys.TRANSLATION_PROVIDER] = provider }
    }

    override val translationApiKey: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.TRANSLATION_API_KEY] ?: ""
    }

    override suspend fun setTranslationApiKey(key: String) {
        dataStore.edit { it[PreferencesKeys.TRANSLATION_API_KEY] = key }
    }

    override val performanceMode: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.PERFORMANCE_MODE]?.toBoolean() ?: false
    }

    override suspend fun setPerformanceMode(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.PERFORMANCE_MODE] = enabled.toString() }
    }

    override suspend fun clearCache() {
        dataStore.edit { it.clear() }
    }
}
