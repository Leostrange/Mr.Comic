package com.example.core.data.repository

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.stringSetPreferencesKey
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

    // Reading (MVP)
    val readingMode: Flow<String> // horizontal|vertical
    suspend fun setReadingMode(mode: String)
    val scaleMode: Flow<String> // width|height|fit|custom
    suspend fun setScaleMode(mode: String)
    val orientation: Flow<String> // auto|portrait|landscape|locked
    suspend fun setOrientation(mode: String)
    val readingDoubleTapZoom: Flow<Float>
    suspend fun setReadingDoubleTapZoom(value: Float)
    val readingBlockSwipeWhenZoomed: Flow<Boolean>
    suspend fun setReadingBlockSwipeWhenZoomed(enabled: Boolean)
    val readingOrientation: Flow<String> // auto|portrait|landscape|locked
    suspend fun setReadingOrientation(orientation: String)

    // UI Settings
    val theme: Flow<String> // system|light|dark|sepia|amoled|manga
    suspend fun setTheme(theme: String)
    val language: Flow<String> // ru|en|es|de
    suspend fun setLanguage(language: String)
    val cacheSize: Flow<String>
    val librarySize: Flow<String>

    // Library (MVP)
    val libraryViewMode: Flow<String> // list|grid|folders
    suspend fun setLibraryViewMode(mode: String)
    val librarySortOrder: Flow<SortOrder>
    suspend fun setLibrarySortOrder(order: SortOrder)

    // Cache (MVP)
    val pageCacheLimitMb: Flow<Int>
    suspend fun setPageCacheLimitMb(mb: Int)
    val coverCacheLimitMb: Flow<Int>
    suspend fun setCoverCacheLimitMb(mb: Int)

    // PDF (MVP)
    val pdfRenderDpi: Flow<Int>
    suspend fun setPdfRenderDpi(dpi: Int)
    val pdfPreloadThumbnails: Flow<Boolean>
    suspend fun setPdfPreloadThumbnails(enabled: Boolean)

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

        // Reading
        val READING_MODE = stringPreferencesKey("reading_mode")
        val SCALE_MODE = stringPreferencesKey("scale_mode")
        val ORIENTATION = stringPreferencesKey("orientation")
        val READING_DOUBLE_TAP_ZOOM = stringPreferencesKey("reading_double_tap_zoom")
        val READING_BLOCK_SWIPE_WHEN_ZOOMED = stringPreferencesKey("reading_block_swipe_when_zoomed")
        val READING_ORIENTATION = stringPreferencesKey("reading_orientation")

        // UI Settings
        val THEME = stringPreferencesKey("theme")
        val LANGUAGE = stringPreferencesKey("language")
        val CACHE_SIZE = stringPreferencesKey("cache_size")
        val LIBRARY_SIZE = stringPreferencesKey("library_size")

        // Library
        val LIBRARY_VIEW_MODE = stringPreferencesKey("library_view_mode")
        val LIBRARY_SORT_ORDER = stringPreferencesKey("library_sort_order")

        // Cache limits
        val PAGE_CACHE_LIMIT_MB = stringPreferencesKey("page_cache_limit_mb")
        val COVER_CACHE_LIMIT_MB = stringPreferencesKey("cover_cache_limit_mb")

        // PDF
        val PDF_RENDER_DPI = stringPreferencesKey("pdf_render_dpi")
        val PDF_PRELOAD_THUMBS = stringPreferencesKey("pdf_preload_thumbnails")
    }

    override val sortOrder: Flow<SortOrder> = dataStore.data.map {
        val name = it[PreferencesKeys.SORT_ORDER] ?: SortOrder.DATE_ADDED_DESC.name
        SortOrder.valueOf(name)
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

    // Reading
    override val readingMode: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.READING_MODE] ?: "horizontal"
    }
    override suspend fun setReadingMode(mode: String) {
        dataStore.edit { it[PreferencesKeys.READING_MODE] = mode }
    }

    override val scaleMode: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.SCALE_MODE] ?: "width"
    }
    override suspend fun setScaleMode(mode: String) {
        dataStore.edit { it[PreferencesKeys.SCALE_MODE] = mode }
    }

    override val orientation: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.ORIENTATION] ?: "auto"
    }
    override suspend fun setOrientation(mode: String) {
        dataStore.edit { it[PreferencesKeys.ORIENTATION] = mode }
    }
    override val readingDoubleTapZoom: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READING_DOUBLE_TAP_ZOOM]?.toFloat() ?: 2.0f
    }
    override suspend fun setReadingDoubleTapZoom(value: Float) {
        dataStore.edit { it[PreferencesKeys.READING_DOUBLE_TAP_ZOOM] = value.toString() }
    }
    override val readingBlockSwipeWhenZoomed: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READING_BLOCK_SWIPE_WHEN_ZOOMED]?.toBoolean() ?: true
    }
    override suspend fun setReadingBlockSwipeWhenZoomed(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.READING_BLOCK_SWIPE_WHEN_ZOOMED] = enabled.toString() }
    }
    override val readingOrientation: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.READING_ORIENTATION] ?: "auto"
    }
    override suspend fun setReadingOrientation(orientation: String) {
        dataStore.edit { it[PreferencesKeys.READING_ORIENTATION] = orientation }
    }

    // Library
    override val libraryViewMode: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.LIBRARY_VIEW_MODE] ?: "grid"
    }
    override suspend fun setLibraryViewMode(mode: String) {
        dataStore.edit { it[PreferencesKeys.LIBRARY_VIEW_MODE] = mode }
    }
    override val librarySortOrder: Flow<SortOrder> = dataStore.data.map {
        val name = it[PreferencesKeys.LIBRARY_SORT_ORDER] ?: SortOrder.DATE_ADDED_DESC.name
        SortOrder.valueOf(name)
    }
    override suspend fun setLibrarySortOrder(order: SortOrder) {
        dataStore.edit { it[PreferencesKeys.LIBRARY_SORT_ORDER] = order.name }
    }

    // UI Settings
    override val theme: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.THEME] ?: "system"
    }
    override suspend fun setTheme(theme: String) {
        dataStore.edit { it[PreferencesKeys.THEME] = theme }
    }

    override val language: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.LANGUAGE] ?: "ru"
    }
    override suspend fun setLanguage(language: String) {
        dataStore.edit { it[PreferencesKeys.LANGUAGE] = language }
    }

    override val cacheSize: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.CACHE_SIZE] ?: "150 MB"
    }

    override val librarySize: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.LIBRARY_SIZE] ?: "2.1 GB"
    }

    override suspend fun clearCache() {
        dataStore.edit { it.clear() }
    }

    // Cache
    override val pageCacheLimitMb: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.PAGE_CACHE_LIMIT_MB]?.toInt() ?: 128
    }
    override suspend fun setPageCacheLimitMb(mb: Int) {
        dataStore.edit { it[PreferencesKeys.PAGE_CACHE_LIMIT_MB] = mb.toString() }
    }
    override val coverCacheLimitMb: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.COVER_CACHE_LIMIT_MB]?.toInt() ?: 64
    }
    override suspend fun setCoverCacheLimitMb(mb: Int) {
        dataStore.edit { it[PreferencesKeys.COVER_CACHE_LIMIT_MB] = mb.toString() }
    }

    // PDF
    override val pdfRenderDpi: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.PDF_RENDER_DPI]?.toInt() ?: 200
    }
    override suspend fun setPdfRenderDpi(dpi: Int) {
        dataStore.edit { it[PreferencesKeys.PDF_RENDER_DPI] = dpi.toString() }
    }
    override val pdfPreloadThumbnails: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.PDF_PRELOAD_THUMBS]?.toBoolean() ?: true
    }
    override suspend fun setPdfPreloadThumbnails(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.PDF_PRELOAD_THUMBS] = enabled.toString() }
    }

}
