package com.example.core.data.repository

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.stringSetPreferencesKey
import com.example.core.model.SortOrder
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import android.content.Context
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import com.google.gson.Gson

interface SettingsRepository {
    data class SettingsSnapshot(
        val readingMode: String,
        val scaleMode: String,
        val orientation: String,
        val theme: String,
        val language: String,
        val targetLanguage: String,
        val translationProvider: String,
        val ocrEngine: String,
        val libraryFolders: Set<String>
    ) {
        companion object
    }

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
    
    // Backup methods
    suspend fun createLocalBackup()
    suspend fun restoreLocalBackup()
    suspend fun createCloudBackup()
    suspend fun restoreCloudBackup()
    suspend fun changeAppIcon()
    suspend fun clearCache()

    val readerLineSpacing: Flow<Float>
    suspend fun setReaderLineSpacing(spacing: Float)

    val readerFont: Flow<String>
    suspend fun setReaderFont(font: String)

    val readerBackground: Flow<Long>
    suspend fun setReaderBackground(color: Long)

    // Reading (MVP)
    val readingMode: Flow<String> // horizontal|vertical
    suspend fun setReadingMode(mode: String)
    val readingModeAutoDetect: Flow<Boolean>
    suspend fun setReadingModeAutoDetect(enabled: Boolean)
    val readingModePerComic: Flow<Map<String, String>> // comicId -> readingMode
    suspend fun setReadingModeForComic(comicId: String, mode: String)
    suspend fun getReadingModeForComic(comicId: String): String?
    val scaleMode: Flow<String> // width|height|fit|custom
    suspend fun setScaleMode(mode: String)
    val orientation: Flow<String> // auto|portrait|landscape|locked
    suspend fun setOrientation(mode: String)
    val readingDoubleTapZoom: Flow<Float>
    suspend fun setReadingDoubleTapZoom(value: Float)
    val readingBlockSwipeWhenZoomed: Flow<Boolean>
    suspend fun setReadingBlockSwipeWhenZoomed(enabled: Boolean)
    val readerBrightness: Flow<Float>
    suspend fun setReaderBrightness(value: Float)
    val readerAnimationSpeed: Flow<Float>
    suspend fun setReaderAnimationSpeed(value: Float)
    val pageTurnSoundEnabled: Flow<Boolean>
    suspend fun setPageTurnSoundEnabled(enabled: Boolean)

    // Reader Customization Settings
    val readerTapZonesSize: Flow<Float>
    suspend fun setReaderTapZonesSize(size: Float)
    val readerTapZonesSensitivity: Flow<Float>
    suspend fun setReaderTapZonesSensitivity(sensitivity: Float)
    val readerShowPageIndicator: Flow<Boolean>
    suspend fun setReaderShowPageIndicator(show: Boolean)
    val readerShowProgressBar: Flow<Boolean>
    suspend fun setReaderShowProgressBar(show: Boolean)
    val readerAutoHideUI: Flow<Boolean>
    suspend fun setReaderAutoHideUI(autoHide: Boolean)
    val readerAutoHideDelay: Flow<Int>
    suspend fun setReaderAutoHideDelay(delay: Int)
    val readerGestureSensitivity: Flow<Float>
    suspend fun setReaderGestureSensitivity(sensitivity: Float)
    val readerVibrationFeedback: Flow<Boolean>
    suspend fun setReaderVibrationFeedback(vibration: Boolean)

    // Image Quality Settings
    val imageQuality: Flow<String>
    suspend fun setImageQuality(quality: String)
    val imageRenderDpi: Flow<Int>
    suspend fun setImageRenderDpi(dpi: Int)
    val imageCacheSize: Flow<Int>
    suspend fun setImageCacheSize(size: Int)
    val imagePreloadPages: Flow<Int>
    suspend fun setImagePreloadPages(pages: Int)
    val imageCompressionLevel: Flow<Int>
    suspend fun setImageCompressionLevel(level: Int)

    // Gesture Settings
    val gestureSwipeThreshold: Flow<Float>
    suspend fun setGestureSwipeThreshold(threshold: Float)
    val gestureZoomSensitivity: Flow<Float>
    suspend fun setGestureZoomSensitivity(sensitivity: Float)
    val gesturePanSensitivity: Flow<Float>
    suspend fun setGesturePanSensitivity(sensitivity: Float)
    val navigationSwipeEnabled: Flow<Boolean>
    suspend fun setNavigationSwipeEnabled(enabled: Boolean)
    val navigationTapZonesEnabled: Flow<Boolean>
    suspend fun setNavigationTapZonesEnabled(enabled: Boolean)
    val navigationKeyboardShortcuts: Flow<Boolean>
    suspend fun setNavigationKeyboardShortcuts(enabled: Boolean)

    // Notification Settings
    val soundPageTurn: Flow<Boolean>
    suspend fun setSoundPageTurn(enabled: Boolean)
    val soundVolume: Flow<Float>
    suspend fun setSoundVolume(volume: Float)
    val vibrationPageTurn: Flow<Boolean>
    suspend fun setVibrationPageTurn(enabled: Boolean)
    val vibrationIntensity: Flow<Float>
    suspend fun setVibrationIntensity(intensity: Float)
    val notificationProgress: Flow<Boolean>
    suspend fun setNotificationProgress(enabled: Boolean)

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

    val lastBackupUri: Flow<String?>
    val lastBackupTime: Flow<Long?>
    suspend fun updateLastBackup(uri: String, timestamp: Long)

    suspend fun getSettingsSnapshot(): SettingsSnapshot
    suspend fun applySettingsSnapshot(snapshot: SettingsSnapshot)
    
    // Reading Progress
    suspend fun setReadingProgress(filePath: String, pageIndex: Int)
    fun getReadingProgress(filePath: String): Flow<Int>
    suspend fun clearReadingProgress(filePath: String)
}

class SettingsRepositoryImpl @Inject constructor(
    @ApplicationContext private val context: Context,
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
        val READER_BRIGHTNESS = stringPreferencesKey("reader_brightness")
        val READER_ANIMATION_SPEED = stringPreferencesKey("reader_animation_speed")
        val PAGE_TURN_SOUND = stringPreferencesKey("page_turn_sound")

        // UI Settings
        val THEME = stringPreferencesKey("theme")
        val LANGUAGE = stringPreferencesKey("language")
        val CACHE_SIZE = stringPreferencesKey("cache_size")
        val LIBRARY_SIZE = stringPreferencesKey("library_size")

        // Backup metadata
        val LAST_BACKUP_URI = stringPreferencesKey("backup_last_uri")
        val LAST_BACKUP_TIME = stringPreferencesKey("backup_last_timestamp")

        // Library
        val LIBRARY_VIEW_MODE = stringPreferencesKey("library_view_mode")
        val LIBRARY_SORT_ORDER = stringPreferencesKey("library_sort_order")

        // Cache limits
        val PAGE_CACHE_LIMIT_MB = stringPreferencesKey("page_cache_limit_mb")
        val COVER_CACHE_LIMIT_MB = stringPreferencesKey("cover_cache_limit_mb")

        // PDF
        val PDF_RENDER_DPI = stringPreferencesKey("pdf_render_dpi")
        val PDF_PRELOAD_THUMBS = stringPreferencesKey("pdf_preload_thumbnails")

        // Reader Customization Settings
        val READER_TAP_ZONES_SIZE = stringPreferencesKey("reader_tap_zones_size")
        val READER_TAP_ZONES_SENSITIVITY = stringPreferencesKey("reader_tap_zones_sensitivity")
        val READER_SHOW_PAGE_INDICATOR = stringPreferencesKey("reader_show_page_indicator")
        val READER_SHOW_PROGRESS_BAR = stringPreferencesKey("reader_show_progress_bar")
        val READER_AUTO_HIDE_UI = stringPreferencesKey("reader_auto_hide_ui")
        val READER_AUTO_HIDE_DELAY = stringPreferencesKey("reader_auto_hide_delay")
        val READER_GESTURE_SENSITIVITY = stringPreferencesKey("reader_gesture_sensitivity")
        val READER_VIBRATION_FEEDBACK = stringPreferencesKey("reader_vibration_feedback")

        // Image Quality Settings
        val IMAGE_QUALITY = stringPreferencesKey("image_quality")
        val IMAGE_RENDER_DPI = stringPreferencesKey("image_render_dpi")
        val IMAGE_CACHE_SIZE = stringPreferencesKey("image_cache_size")
        val IMAGE_PRELOAD_PAGES = stringPreferencesKey("image_preload_pages")
        val IMAGE_COMPRESSION_LEVEL = stringPreferencesKey("image_compression_level")

        // Gesture Settings
        val GESTURE_SWIPE_THRESHOLD = stringPreferencesKey("gesture_swipe_threshold")
        val GESTURE_ZOOM_SENSITIVITY = stringPreferencesKey("gesture_zoom_sensitivity")
        val GESTURE_PAN_SENSITIVITY = stringPreferencesKey("gesture_pan_sensitivity")
        val NAVIGATION_SWIPE_ENABLED = stringPreferencesKey("navigation_swipe_enabled")
        val NAVIGATION_TAP_ZONES_ENABLED = stringPreferencesKey("navigation_tap_zones_enabled")
        val NAVIGATION_KEYBOARD_SHORTCUTS = stringPreferencesKey("navigation_keyboard_shortcuts")

        // Notification Settings
        val SOUND_PAGE_TURN = stringPreferencesKey("sound_page_turn")
        val SOUND_VOLUME = stringPreferencesKey("sound_volume")
        val VIBRATION_PAGE_TURN = stringPreferencesKey("vibration_page_turn")
        val VIBRATION_INTENSITY = stringPreferencesKey("vibration_intensity")
        val NOTIFICATION_PROGRESS = stringPreferencesKey("notification_progress")
        
        // Reading Mode Auto Detection
        val READING_MODE_AUTO_DETECT = stringPreferencesKey("reading_mode_auto_detect")
        val READING_MODE_PER_COMIC = stringPreferencesKey("reading_mode_per_comic")
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
        (it[PreferencesKeys.TARGET_LANGUAGE] ?: "en").lowercase()
    }

    override suspend fun setTargetLanguage(language: String) {
        dataStore.edit { it[PreferencesKeys.TARGET_LANGUAGE] = language.lowercase() }
    }

    override val ocrEngine: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.OCR_ENGINE]?.lowercase()?.replaceFirstChar { c -> c.uppercase() } ?: "Tesseract"
    }

    override suspend fun setOcrEngine(engine: String) {
        dataStore.edit { it[PreferencesKeys.OCR_ENGINE] = engine.lowercase() }
    }

    override val translationProvider: Flow<String> = dataStore.data.map {
        (it[PreferencesKeys.TRANSLATION_PROVIDER] ?: "google").lowercase()
    }

    override suspend fun setTranslationProvider(provider: String) {
        dataStore.edit { it[PreferencesKeys.TRANSLATION_PROVIDER] = provider.lowercase() }
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
        normalizeReadingMode(it[PreferencesKeys.READING_MODE])
    }
    override suspend fun setReadingMode(mode: String) {
        dataStore.edit { it[PreferencesKeys.READING_MODE] = normalizeReadingMode(mode) }
    }

    override val scaleMode: Flow<String> = dataStore.data.map {
        normalizeScaleMode(it[PreferencesKeys.SCALE_MODE])
    }
    override suspend fun setScaleMode(mode: String) {
        dataStore.edit { it[PreferencesKeys.SCALE_MODE] = normalizeScaleMode(mode) }
    }

    override val orientation: Flow<String> = dataStore.data.map {
        normalizeOrientation(it[PreferencesKeys.ORIENTATION])
    }
    override suspend fun setOrientation(mode: String) {
        dataStore.edit { it[PreferencesKeys.ORIENTATION] = normalizeOrientation(mode) }
    }
    override val readingDoubleTapZoom: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READING_DOUBLE_TAP_ZOOM]?.toFloatOrNull()?.coerceAtLeast(1.0f) ?: 2.0f
    }
    override suspend fun setReadingDoubleTapZoom(value: Float) {
        dataStore.edit { it[PreferencesKeys.READING_DOUBLE_TAP_ZOOM] = value.coerceAtLeast(1.0f).toString() }
    }
    override val readingBlockSwipeWhenZoomed: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READING_BLOCK_SWIPE_WHEN_ZOOMED]?.toBoolean() ?: true
    }
    override suspend fun setReadingBlockSwipeWhenZoomed(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.READING_BLOCK_SWIPE_WHEN_ZOOMED] = enabled.toString() }
    }
    override val readerBrightness: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_BRIGHTNESS]?.toFloatOrNull()?.coerceIn(0.2f, 1.2f) ?: 1.0f
    }
    override suspend fun setReaderBrightness(value: Float) {
        dataStore.edit { it[PreferencesKeys.READER_BRIGHTNESS] = value.coerceIn(0.2f, 1.2f).toString() }
    }
    override val readerAnimationSpeed: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_ANIMATION_SPEED]?.toFloatOrNull()?.coerceIn(0.5f, 2.0f) ?: 1.0f
    }
    override suspend fun setReaderAnimationSpeed(value: Float) {
        dataStore.edit { it[PreferencesKeys.READER_ANIMATION_SPEED] = value.coerceIn(0.5f, 2.0f).toString() }
    }
    override val pageTurnSoundEnabled: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.PAGE_TURN_SOUND]?.toBoolean() ?: false
    }
    override suspend fun setPageTurnSoundEnabled(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.PAGE_TURN_SOUND] = enabled.toString() }
    }

    // Reader Customization Settings
    override val readerTapZonesSize: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_TAP_ZONES_SIZE]?.toFloat() ?: 1.0f
    }
    override suspend fun setReaderTapZonesSize(size: Float) {
        dataStore.edit { it[PreferencesKeys.READER_TAP_ZONES_SIZE] = size.toString() }
    }
    override val readerTapZonesSensitivity: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_TAP_ZONES_SENSITIVITY]?.toFloat() ?: 1.0f
    }
    override suspend fun setReaderTapZonesSensitivity(sensitivity: Float) {
        dataStore.edit { it[PreferencesKeys.READER_TAP_ZONES_SENSITIVITY] = sensitivity.toString() }
    }
    override val readerShowPageIndicator: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READER_SHOW_PAGE_INDICATOR]?.toBoolean() ?: true
    }
    override suspend fun setReaderShowPageIndicator(show: Boolean) {
        dataStore.edit { it[PreferencesKeys.READER_SHOW_PAGE_INDICATOR] = show.toString() }
    }
    override val readerShowProgressBar: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READER_SHOW_PROGRESS_BAR]?.toBoolean() ?: true
    }
    override suspend fun setReaderShowProgressBar(show: Boolean) {
        dataStore.edit { it[PreferencesKeys.READER_SHOW_PROGRESS_BAR] = show.toString() }
    }
    override val readerAutoHideUI: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READER_AUTO_HIDE_UI]?.toBoolean() ?: true
    }
    override suspend fun setReaderAutoHideUI(autoHide: Boolean) {
        dataStore.edit { it[PreferencesKeys.READER_AUTO_HIDE_UI] = autoHide.toString() }
    }
    override val readerAutoHideDelay: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.READER_AUTO_HIDE_DELAY]?.toInt() ?: 3000
    }
    override suspend fun setReaderAutoHideDelay(delay: Int) {
        dataStore.edit { it[PreferencesKeys.READER_AUTO_HIDE_DELAY] = delay.toString() }
    }
    override val readerGestureSensitivity: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.READER_GESTURE_SENSITIVITY]?.toFloat() ?: 1.0f
    }
    override suspend fun setReaderGestureSensitivity(sensitivity: Float) {
        dataStore.edit { it[PreferencesKeys.READER_GESTURE_SENSITIVITY] = sensitivity.toString() }
    }
    override val readerVibrationFeedback: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READER_VIBRATION_FEEDBACK]?.toBoolean() ?: true
    }
    override suspend fun setReaderVibrationFeedback(vibration: Boolean) {
        dataStore.edit { it[PreferencesKeys.READER_VIBRATION_FEEDBACK] = vibration.toString() }
    }

    // Image Quality Settings
    override val imageQuality: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.IMAGE_QUALITY] ?: "high"
    }
    override suspend fun setImageQuality(quality: String) {
        dataStore.edit { it[PreferencesKeys.IMAGE_QUALITY] = quality }
    }
    override val imageRenderDpi: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.IMAGE_RENDER_DPI]?.toInt() ?: 2560
    }
    override suspend fun setImageRenderDpi(dpi: Int) {
        dataStore.edit { it[PreferencesKeys.IMAGE_RENDER_DPI] = dpi.toString() }
    }
    override val imageCacheSize: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.IMAGE_CACHE_SIZE]?.toInt() ?: 100
    }
    override suspend fun setImageCacheSize(size: Int) {
        dataStore.edit { it[PreferencesKeys.IMAGE_CACHE_SIZE] = size.toString() }
    }
    override val imagePreloadPages: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.IMAGE_PRELOAD_PAGES]?.toInt() ?: 3
    }
    override suspend fun setImagePreloadPages(pages: Int) {
        dataStore.edit { it[PreferencesKeys.IMAGE_PRELOAD_PAGES] = pages.toString() }
    }
    override val imageCompressionLevel: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.IMAGE_COMPRESSION_LEVEL]?.toInt() ?: 80
    }
    override suspend fun setImageCompressionLevel(level: Int) {
        dataStore.edit { it[PreferencesKeys.IMAGE_COMPRESSION_LEVEL] = level.toString() }
    }

    // Gesture Settings
    override val gestureSwipeThreshold: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.GESTURE_SWIPE_THRESHOLD]?.toFloat() ?: 50f
    }
    override suspend fun setGestureSwipeThreshold(threshold: Float) {
        dataStore.edit { it[PreferencesKeys.GESTURE_SWIPE_THRESHOLD] = threshold.toString() }
    }
    override val gestureZoomSensitivity: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.GESTURE_ZOOM_SENSITIVITY]?.toFloat() ?: 1.0f
    }
    override suspend fun setGestureZoomSensitivity(sensitivity: Float) {
        dataStore.edit { it[PreferencesKeys.GESTURE_ZOOM_SENSITIVITY] = sensitivity.toString() }
    }
    override val gesturePanSensitivity: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.GESTURE_PAN_SENSITIVITY]?.toFloat() ?: 1.0f
    }
    override suspend fun setGesturePanSensitivity(sensitivity: Float) {
        dataStore.edit { it[PreferencesKeys.GESTURE_PAN_SENSITIVITY] = sensitivity.toString() }
    }
    override val navigationSwipeEnabled: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.NAVIGATION_SWIPE_ENABLED]?.toBoolean() ?: true
    }
    override suspend fun setNavigationSwipeEnabled(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.NAVIGATION_SWIPE_ENABLED] = enabled.toString() }
    }
    override val navigationTapZonesEnabled: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.NAVIGATION_TAP_ZONES_ENABLED]?.toBoolean() ?: true
    }
    override suspend fun setNavigationTapZonesEnabled(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.NAVIGATION_TAP_ZONES_ENABLED] = enabled.toString() }
    }
    override val navigationKeyboardShortcuts: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.NAVIGATION_KEYBOARD_SHORTCUTS]?.toBoolean() ?: true
    }
    override suspend fun setNavigationKeyboardShortcuts(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.NAVIGATION_KEYBOARD_SHORTCUTS] = enabled.toString() }
    }

    // Notification Settings
    override val soundPageTurn: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.SOUND_PAGE_TURN]?.toBoolean() ?: false
    }
    override suspend fun setSoundPageTurn(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.SOUND_PAGE_TURN] = enabled.toString() }
    }
    override val soundVolume: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.SOUND_VOLUME]?.toFloat() ?: 0.5f
    }
    override suspend fun setSoundVolume(volume: Float) {
        dataStore.edit { it[PreferencesKeys.SOUND_VOLUME] = volume.toString() }
    }
    override val vibrationPageTurn: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.VIBRATION_PAGE_TURN]?.toBoolean() ?: true
    }
    override suspend fun setVibrationPageTurn(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.VIBRATION_PAGE_TURN] = enabled.toString() }
    }
    override val vibrationIntensity: Flow<Float> = dataStore.data.map {
        it[PreferencesKeys.VIBRATION_INTENSITY]?.toFloat() ?: 0.5f
    }
    override suspend fun setVibrationIntensity(intensity: Float) {
        dataStore.edit { it[PreferencesKeys.VIBRATION_INTENSITY] = intensity.toString() }
    }
    override val notificationProgress: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.NOTIFICATION_PROGRESS]?.toBoolean() ?: true
    }
    override suspend fun setNotificationProgress(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.NOTIFICATION_PROGRESS] = enabled.toString() }
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
        (it[PreferencesKeys.THEME] ?: "system").lowercase()
    }
    override suspend fun setTheme(theme: String) {
        dataStore.edit { it[PreferencesKeys.THEME] = theme.lowercase() }
    }

    override val language: Flow<String> = dataStore.data.map {
        (it[PreferencesKeys.LANGUAGE] ?: "ru").lowercase()
    }
    override suspend fun setLanguage(language: String) {
        dataStore.edit { it[PreferencesKeys.LANGUAGE] = language.lowercase() }
    }

    override val cacheSize: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.CACHE_SIZE] ?: "150 MB"
    }

    override val librarySize: Flow<String> = dataStore.data.map {
        it[PreferencesKeys.LIBRARY_SIZE] ?: "2.1 GB"
    }

    override val lastBackupUri: Flow<String?> = dataStore.data.map {
        it[PreferencesKeys.LAST_BACKUP_URI]
    }

    override val lastBackupTime: Flow<Long?> = dataStore.data.map {
        it[PreferencesKeys.LAST_BACKUP_TIME]?.toLongOrNull()
    }

    override suspend fun updateLastBackup(uri: String, timestamp: Long) {
        dataStore.edit {
            it[PreferencesKeys.LAST_BACKUP_URI] = uri
            it[PreferencesKeys.LAST_BACKUP_TIME] = timestamp.toString()
        }
    }

    override suspend fun clearCache() {
        try {
            // Очищаем кэш обложек
            val coversDir = File(context.cacheDir, "covers")
            if (coversDir.exists()) {
                coversDir.deleteRecursively()
            }
            // Очищаем кэш страниц
            val pagesDir = File(context.cacheDir, "pages")
            if (pagesDir.exists()) {
                pagesDir.deleteRecursively()
            }
            android.util.Log.d("SettingsRepository", "✅ Cache cleared successfully")
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ Failed to clear cache", e)
        }
    }

    override suspend fun createLocalBackup() {
        try {
            // Создаём бэкап в Documents/MrComic/Backups
            val backupDir = File(context.getExternalFilesDir(null), "backups")
            if (!backupDir.exists()) {
                backupDir.mkdirs()
            }
            
            val timestamp = System.currentTimeMillis()
            val backupFile = File(backupDir, "mrcomic_backup_$timestamp.json")
            
            // Создаём JSON с настройками
            val settings = getSettingsSnapshot()
            val json = Gson().toJson(settings)
            
            backupFile.writeText(json)
            updateLastBackup(backupFile.absolutePath, timestamp)
            
            android.util.Log.d("SettingsRepository", "✅ Local backup created: ${backupFile.absolutePath}")
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ Failed to create local backup", e)
        }
    }

    override suspend fun restoreLocalBackup() {
        try {
            val lastBackupUri = lastBackupUri.first()
            if (lastBackupUri == null) {
                android.util.Log.w("SettingsRepository", "⚠️ No backup found to restore")
                return
            }
            
            val backupFile = File(lastBackupUri)
            if (!backupFile.exists()) {
                android.util.Log.w("SettingsRepository", "⚠️ Backup file not found: $lastBackupUri")
                return
            }
            
            val json = backupFile.readText()
            val settings = Gson().fromJson(json, SettingsRepository.SettingsSnapshot::class.java)
            
            applySettingsSnapshot(settings)
            android.util.Log.d("SettingsRepository", "✅ Local backup restored from: $lastBackupUri")
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ Failed to restore local backup", e)
        }
    }

    override suspend fun createCloudBackup() {
        try {
            android.util.Log.d("SettingsRepository", "🔄 Cloud backup functionality coming soon...")
            // TODO: Implement cloud backup via CloudBackupManager
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ Cloud backup failed", e)
        }
    }

    override suspend fun restoreCloudBackup() {
        try {
            android.util.Log.d("SettingsRepository", "🔄 Cloud restore functionality coming soon...")
            // TODO: Implement cloud restore via CloudBackupManager
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ Cloud restore failed", e)
        }
    }

    override suspend fun changeAppIcon() {
        try {
            android.util.Log.d("SettingsRepository", "🔄 App icon change functionality available in app settings...")
            // Эта функция реализована в AppIconManager
        } catch (e: Exception) {
            android.util.Log.e("SettingsRepository", "❌ App icon change failed", e)
        }
    }

    // Cache
    override val pageCacheLimitMb: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.PAGE_CACHE_LIMIT_MB]?.toIntOrNull() ?: 128
    }
    override suspend fun setPageCacheLimitMb(mb: Int) {
        dataStore.edit { it[PreferencesKeys.PAGE_CACHE_LIMIT_MB] = mb.toString() }
    }
    override val coverCacheLimitMb: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.COVER_CACHE_LIMIT_MB]?.toIntOrNull() ?: 64
    }
    override suspend fun setCoverCacheLimitMb(mb: Int) {
        dataStore.edit { it[PreferencesKeys.COVER_CACHE_LIMIT_MB] = mb.toString() }
    }

    // PDF
    override val pdfRenderDpi: Flow<Int> = dataStore.data.map {
        it[PreferencesKeys.PDF_RENDER_DPI]?.toIntOrNull()?.coerceIn(72, 600) ?: 200
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

    override suspend fun getSettingsSnapshot(): SettingsRepository.SettingsSnapshot {
        val prefs = dataStore.data.first()
        return SettingsRepository.SettingsSnapshot(
            readingMode = normalizeReadingMode(prefs[PreferencesKeys.READING_MODE]),
            scaleMode = normalizeScaleMode(prefs[PreferencesKeys.SCALE_MODE]),
            orientation = normalizeOrientation(prefs[PreferencesKeys.ORIENTATION]),
            theme = (prefs[PreferencesKeys.THEME] ?: "system").lowercase(),
            language = (prefs[PreferencesKeys.LANGUAGE] ?: "ru").lowercase(),
            targetLanguage = (prefs[PreferencesKeys.TARGET_LANGUAGE] ?: "en").lowercase(),
            translationProvider = (prefs[PreferencesKeys.TRANSLATION_PROVIDER] ?: "google").lowercase(),
            ocrEngine = prefs[PreferencesKeys.OCR_ENGINE]?.lowercase() ?: "tesseract",
            libraryFolders = prefs[PreferencesKeys.LIBRARY_FOLDERS] ?: emptySet()
        )
    }

    override suspend fun applySettingsSnapshot(snapshot: SettingsRepository.SettingsSnapshot) {
        dataStore.edit {
            it[PreferencesKeys.READING_MODE] = normalizeReadingMode(snapshot.readingMode)
            it[PreferencesKeys.SCALE_MODE] = normalizeScaleMode(snapshot.scaleMode)
            it[PreferencesKeys.ORIENTATION] = normalizeOrientation(snapshot.orientation)
            it[PreferencesKeys.THEME] = snapshot.theme.lowercase()
            it[PreferencesKeys.LANGUAGE] = snapshot.language.lowercase()
            it[PreferencesKeys.TARGET_LANGUAGE] = snapshot.targetLanguage.lowercase()
            it[PreferencesKeys.TRANSLATION_PROVIDER] = snapshot.translationProvider.lowercase()
            it[PreferencesKeys.OCR_ENGINE] = snapshot.ocrEngine.lowercase()
            it[PreferencesKeys.LIBRARY_FOLDERS] = snapshot.libraryFolders
        }
    }
    
    // Reading Progress Implementation
    override suspend fun setReadingProgress(filePath: String, pageIndex: Int) {
        dataStore.edit { preferences ->
            val key = stringPreferencesKey("reading_progress_$filePath")
            preferences[key] = pageIndex.toString()
        }
    }
    
    override fun getReadingProgress(filePath: String): Flow<Int> {
        return dataStore.data.map { preferences ->
            val key = stringPreferencesKey("reading_progress_$filePath")
            preferences[key]?.toIntOrNull() ?: 0
        }
    }
    
    override suspend fun clearReadingProgress(filePath: String) {
        dataStore.edit { preferences ->
            val key = stringPreferencesKey("reading_progress_$filePath")
            preferences.remove(key)
        }
    }

    // Reading Mode Auto Detection Implementation
    override val readingModeAutoDetect: Flow<Boolean> = dataStore.data.map {
        it[PreferencesKeys.READING_MODE_AUTO_DETECT]?.toBoolean() ?: true
    }

    override suspend fun setReadingModeAutoDetect(enabled: Boolean) {
        dataStore.edit { it[PreferencesKeys.READING_MODE_AUTO_DETECT] = enabled.toString() }
    }

    override val readingModePerComic: Flow<Map<String, String>> = dataStore.data.map {
        val json = it[PreferencesKeys.READING_MODE_PER_COMIC] ?: "{}"
        try {
            Gson().fromJson(json, Map::class.java) as? Map<String, String> ?: emptyMap()
        } catch (e: Exception) {
            emptyMap()
        }
    }

    override suspend fun setReadingModeForComic(comicId: String, mode: String) {
        dataStore.edit { preferences ->
            val currentJson = preferences[PreferencesKeys.READING_MODE_PER_COMIC] ?: "{}"
            val currentMap = try {
                Gson().fromJson(currentJson, Map::class.java) as? Map<String, String> ?: emptyMap()
            } catch (e: Exception) {
                emptyMap()
            }
            val updatedMap = currentMap.toMutableMap()
            updatedMap[comicId] = mode
            preferences[PreferencesKeys.READING_MODE_PER_COMIC] = Gson().toJson(updatedMap)
        }
    }

    override suspend fun getReadingModeForComic(comicId: String): String? {
        val prefs = dataStore.data.first()
        val json = prefs[PreferencesKeys.READING_MODE_PER_COMIC] ?: "{}"
        return try {
            val map = Gson().fromJson(json, Map::class.java) as? Map<String, String>
            map?.get(comicId)
        } catch (e: Exception) {
            null
        }
    }

}

private fun normalizeReadingMode(raw: String?): String {
    return when (raw?.lowercase()?.trim()) {
        "vertical", "webtoon" -> "webtoon"
        "page", "horizontal" -> "page"
        else -> "page"
    }
}

private fun normalizeScaleMode(raw: String?): String {
    return when (raw?.lowercase()?.trim()) {
        "height" -> "height"
        "fit" -> "fit"
        "custom" -> "custom"
        "width" -> "width"
        else -> "width"
    }
}

private fun normalizeOrientation(raw: String?): String {
    return when (raw?.lowercase()?.trim()) {
        "portrait" -> "portrait"
        "landscape" -> "landscape"
        "locked", "lock" -> "locked"
        else -> "auto"
    }
}
