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

    val performanceMode: Flow<Boolean>
    suspend fun setPerformanceMode(enabled: Boolean)

    val readerLineSpacing: Flow<Float>
    suspend fun setReaderLineSpacing(spacing: Float)

    val readerFont: Flow<String>
    suspend fun setReaderFont(font: String)

    val readerBackground: Flow<Long>
    suspend fun setReaderBackground(color: Long)

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
        val PERFORMANCE_MODE = stringPreferencesKey("performance_mode")
        val READER_LINE_SPACING = stringPreferencesKey("reader_line_spacing")
        val READER_FONT = stringPreferencesKey("reader_font")
        val READER_BACKGROUND = stringPreferencesKey("reader_background")
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

    override val readerLineSpacing: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_LINE_SPACING]?.toFloat() ?: 1.5f
    }

    override suspend fun setReaderLineSpacing(spacing: Float) {
        dataStore.edit { it[PreferencesKeys.READER_LINE_SPACING] = spacing.toString() }
    }

    override val readerFont: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.READER_FONT] ?: "Sans"
    }

    override suspend fun setReaderFont(font: String) {
        dataStore.edit { it[PreferencesKeys.READER_FONT] = font }
    }

    override val readerBackground: Flow<Long> = dataStore.data.map {
        it[PreferencesKeys.READER_BACKGROUND]?.toLong() ?: 0xFFFFFFFF
    }

    override suspend fun setReaderBackground(color: Long) {
        dataStore.edit { it[PreferencesKeys.READER_BACKGROUND] = color.toString() }
    }

    override suspend fun clearCache() {
        dataStore.edit { it.clear() }
    }
}
