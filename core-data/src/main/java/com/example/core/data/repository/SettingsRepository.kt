package com.example.core.data.repository

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringSetPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import com.example.core.model.SortOrder
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject

interface SettingsRepository {
    val sortOrder: Flow<SortOrder>
    suspend fun setSortOrder(sortOrder: SortOrder)

    val searchQuery: Flow<String>
    suspend fun setSearchQuery(query: String)

    val libraryFolders: Flow<Set<String>>
    suspend fun addLibraryFolder(folderUri: String)
    suspend fun removeLibraryFolder(folderUri: String)

    val targetLanguage: Flow<String>
    suspend fun setTargetLanguage(language: String)

    val ocrEngine: Flow<String>
    suspend fun setOcrEngine(engine: String)

    val translationProvider: Flow<String>
    suspend fun setTranslationProvider(provider: String)

    val translationApiKey: Flow<String>
    suspend fun setTranslationApiKey(key: String)

    suspend fun clearCache()
}

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
    }

    override val sortOrder: Flow<SortOrder> = dataStore.data
        .map { preferences ->
            val sortOrderName = preferences[PreferencesKeys.SORT_ORDER] ?: SortOrder.DATE_ADDED_DESC.name
            SortOrder.valueOf(sortOrderName)
        }

    override suspend fun setSortOrder(sortOrder: SortOrder) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.SORT_ORDER] = sortOrder.name
        }
    }

    override val searchQuery: Flow<String> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.SEARCH_QUERY] ?: ""
        }

    override suspend fun setSearchQuery(query: String) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.SEARCH_QUERY] = query
        }
    }

    override val libraryFolders: Flow<Set<String>> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
        }

    override val targetLanguage: Flow<String> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.TARGET_LANGUAGE] ?: "en"
        }

    override val ocrEngine: Flow<String> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.OCR_ENGINE] ?: "Tesseract"
        }

    override val translationProvider: Flow<String> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.TRANSLATION_PROVIDER] ?: "Google"
        }

    override val translationApiKey: Flow<String> = dataStore.data
        .map { preferences ->
            preferences[PreferencesKeys.TRANSLATION_API_KEY] ?: ""
        }

    override suspend fun addLibraryFolder(folderUri: String) {
        dataStore.edit { preferences ->
            val currentFolders = preferences[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
            preferences[PreferencesKeys.LIBRARY_FOLDERS] = currentFolders + folderUri
        }
    }

    override suspend fun removeLibraryFolder(folderUri: String) {
        dataStore.edit { preferences ->
            val currentFolders = preferences[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
            preferences[PreferencesKeys.LIBRARY_FOLDERS] = currentFolders - folderUri
        }
    }

    override suspend fun setTargetLanguage(language: String) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.TARGET_LANGUAGE] = language
        }
    }

    override suspend fun setOcrEngine(engine: String) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.OCR_ENGINE] = engine
        }
    }

    override suspend fun setTranslationProvider(provider: String) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.TRANSLATION_PROVIDER] = provider
        }
    }

    override suspend fun setTranslationApiKey(key: String) {
        dataStore.edit { preferences ->
            preferences[PreferencesKeys.TRANSLATION_API_KEY] = key
        }
    }

    override suspend fun clearCache() {
        dataStore.edit { preferences ->
            preferences.clear()
        }
    }
}