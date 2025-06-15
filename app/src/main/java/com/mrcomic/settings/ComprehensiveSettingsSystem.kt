package com.example.mrcomic.settings

import android.content.Context
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalContext
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.*
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString

/**
 * Комплексная система настроек и предпочтений для Mr.Comic
 * Объединяет все возможности кастомизации в единый интерфейс
 */

val Context.settingsDataStore: DataStore<Preferences> by preferencesDataStore(name = "comprehensive_settings")

/**
 * Комплексные настройки приложения
 */
@Serializable
data class ComprehensiveSettings(
    // Основные настройки
    val general: GeneralSettings = GeneralSettings(),
    
    // Настройки интерфейса
    val interface: InterfaceSettings = InterfaceSettings(),
    
    // Настройки чтения
    val reading: ReadingSettings = ReadingSettings(),
    
    // Настройки библиотеки
    val library: LibrarySettings = LibrarySettings(),
    
    // Настройки синхронизации
    val sync: SyncSettings = SyncSettings(),
    
    // Настройки безопасности
    val security: SecuritySettings = SecuritySettings(),
    
    // Настройки доступности
    val accessibility: AccessibilitySettings = AccessibilitySettings(),
    
    // Настройки производительности
    val performance: PerformanceSettings = PerformanceSettings(),
    
    // Настройки уведомлений
    val notifications: NotificationSettings = NotificationSettings(),
    
    // Настройки экспорта/импорта
    val backup: BackupSettings = BackupSettings(),
    
    // Экспериментальные настройки
    val experimental: ExperimentalSettings = ExperimentalSettings(),
    
    // Метаданные настроек
    val metadata: SettingsMetadata = SettingsMetadata()
)

/**
 * Основные настройки
 */
@Serializable
data class GeneralSettings(
    val language: String = "ru",
    val region: String = "RU",
    val timeZone: String = "Europe/Moscow",
    val firstLaunch: Boolean = true,
    val onboardingCompleted: Boolean = false,
    val analyticsEnabled: Boolean = true,
    val crashReportingEnabled: Boolean = true,
    val betaFeaturesEnabled: Boolean = false,
    val debugMode: Boolean = false,
    val autoUpdateCheck: Boolean = true,
    val updateChannel: String = "stable", // stable, beta, alpha
    val telemetryLevel: String = "basic", // none, basic, full
    val dataCollection: Boolean = true,
    val personalizedExperience: Boolean = true,
    val offlineMode: Boolean = false
)

/**
 * Настройки интерфейса
 */
@Serializable
data class InterfaceSettings(
    // Темы и цвета
    val themeMode: String = "auto", // light, dark, auto
    val dynamicColors: Boolean = true,
    val materialYou: Boolean = true,
    val customThemeId: String? = null,
    val accentColor: String = "#6750A4",
    val backgroundType: String = "solid", // solid, gradient, image
    val backgroundImagePath: String? = null,
    val backgroundOpacity: Float = 1.0f,
    
    // Шрифты и типографика
    val fontFamily: String = "system", // system, roboto, noto, custom
    val customFontPath: String? = null,
    val fontScale: Float = 1.0f,
    val lineHeight: Float = 1.4f,
    val letterSpacing: Float = 0.0f,
    val fontWeight: String = "normal", // light, normal, medium, bold
    
    // Макет и навигация
    val layoutDensity: String = "comfortable", // compact, comfortable, spacious
    val navigationStyle: String = "bottom", // bottom, rail, drawer
    val tabStyle: String = "fixed", // fixed, scrollable
    val cardStyle: String = "elevated", // filled, elevated, outlined
    val buttonStyle: String = "filled", // filled, outlined, text
    val iconStyle: String = "rounded", // sharp, rounded, outlined
    
    // Анимации и эффекты
    val animationsEnabled: Boolean = true,
    val animationDuration: String = "normal", // fast, normal, slow
    val transitionEffects: Boolean = true,
    val parallaxEffects: Boolean = true,
    val blurEffects: Boolean = true,
    val shadowEffects: Boolean = true,
    val rippleEffects: Boolean = true,
    
    // Дисплей
    val screenOrientation: String = "auto", // portrait, landscape, auto
    val fullscreenMode: Boolean = false,
    val immersiveMode: Boolean = false,
    val statusBarStyle: String = "auto", // light, dark, auto
    val navigationBarStyle: String = "auto", // light, dark, auto, hidden
    val edgeToEdge: Boolean = true,
    
    // Кастомизация
    val customizationLevel: String = "advanced", // basic, intermediate, advanced, expert
    val showAdvancedOptions: Boolean = false,
    val experimentalUI: Boolean = false,
    val previewMode: Boolean = false
)

/**
 * Настройки чтения
 */
@Serializable
data class ReadingSettings(
    // Режимы чтения
    val defaultReadingMode: String = "single_page",
    val autoReadingMode: Boolean = true,
    val mangaMode: Boolean = false,
    val webtoonMode: Boolean = false,
    val continuousScroll: Boolean = false,
    val dualPageMode: Boolean = false,
    val fitToScreen: String = "fit_width", // fit_width, fit_height, fit_screen, original
    
    // Навигация
    val pageTransition: String = "slide", // slide, fade, flip, curl, none
    val tapToTurn: Boolean = true,
    val swipeToTurn: Boolean = true,
    val volumeKeyNavigation: Boolean = false,
    val invertTapZones: Boolean = false,
    val customTapZones: Map<String, String> = emptyMap(),
    
    // Зум и панорамирование
    val zoomEnabled: Boolean = true,
    val maxZoomLevel: Float = 5.0f,
    val minZoomLevel: Float = 0.5f,
    val doubleTapZoom: Float = 2.0f,
    val zoomAnimation: Boolean = true,
    val panningEnabled: Boolean = true,
    val panningInertia: Boolean = true,
    
    // Качество изображения
    val imageQuality: String = "high", // low, medium, high, original
    val imageFiltering: String = "bilinear", // nearest, bilinear, bicubic
    val imageSharpening: Boolean = false,
    val imageEnhancement: Boolean = false,
    val colorCorrection: Boolean = false,
    val contrastAdjustment: Float = 1.0f,
    val brightnessAdjustment: Float = 1.0f,
    val saturationAdjustment: Float = 1.0f,
    
    // Производительность
    val preloadPages: Int = 3,
    val cacheSize: Int = 100, // МБ
    val memoryOptimization: Boolean = true,
    val backgroundLoading: Boolean = true,
    val lowMemoryMode: Boolean = false,
    
    // Комфорт чтения
    val keepScreenOn: Boolean = true,
    val autoRotation: Boolean = true,
    val blueLight: Boolean = false,
    val nightMode: Boolean = false,
    val readingTimer: Boolean = false,
    val breakReminders: Boolean = false,
    val eyeStrainReduction: Boolean = false
)

/**
 * Настройки библиотеки
 */
@Serializable
data class LibrarySettings(
    // Отображение
    val viewMode: String = "grid", // list, grid, cover_flow
    val gridColumns: Int = 3,
    val showTitles: Boolean = true,
    val showAuthors: Boolean = true,
    val showProgress: Boolean = true,
    val showRatings: Boolean = true,
    val showTags: Boolean = false,
    val coverQuality: String = "medium", // low, medium, high
    
    // Сортировка и фильтрация
    val defaultSort: String = "title", // title, author, date_added, date_modified, rating, progress
    val sortOrder: String = "ascending", // ascending, descending
    val groupBy: String = "none", // none, author, genre, series, publisher
    val showEmptyGroups: Boolean = false,
    val quickFilters: List<String> = listOf("unread", "reading", "completed"),
    
    // Поиск
    val searchInContent: Boolean = false,
    val searchHistory: Boolean = true,
    val searchSuggestions: Boolean = true,
    val fuzzySearch: Boolean = true,
    val searchScope: List<String> = listOf("title", "author", "tags"),
    
    // Импорт и сканирование
    val autoScan: Boolean = true,
    val scanInterval: Int = 24, // часы
    val watchFolders: List<String> = emptyList(),
    val autoImport: Boolean = true,
    val duplicateHandling: String = "skip", // skip, replace, rename
    val metadataExtraction: Boolean = true,
    val coverGeneration: Boolean = true,
    
    // Организация
    val autoOrganize: Boolean = false,
    val organizationPattern: String = "{author}/{series}/{title}",
    val createCollections: Boolean = true,
    val autoTags: Boolean = true,
    val smartCollections: Boolean = true
)

/**
 * Настройки синхронизации
 */
@Serializable
data class SyncSettings(
    val enabled: Boolean = false,
    val provider: String = "google_drive", // google_drive, dropbox, onedrive, webdav
    val autoSync: Boolean = true,
    val syncInterval: Int = 60, // минуты
    val syncOnWifiOnly: Boolean = true,
    val syncMetadata: Boolean = true,
    val syncProgress: Boolean = true,
    val syncSettings: Boolean = true,
    val syncAnnotations: Boolean = true,
    val syncBookmarks: Boolean = true,
    val syncCollections: Boolean = true,
    val conflictResolution: String = "newer", // newer, local, remote, ask
    val compressionEnabled: Boolean = true,
    val encryptionEnabled: Boolean = true,
    val maxFileSize: Int = 100, // МБ
    val retryAttempts: Int = 3,
    val backgroundSync: Boolean = true
)

/**
 * Настройки безопасности
 */
@Serializable
data class SecuritySettings(
    val appLock: Boolean = false,
    val lockMethod: String = "pin", // pin, password, biometric, pattern
    val lockTimeout: Int = 5, // минуты
    val lockOnBackground: Boolean = true,
    val hideInRecents: Boolean = false,
    val screenshotProtection: Boolean = false,
    val incognitoMode: Boolean = false,
    val parentalControls: Boolean = false,
    val ageRestriction: Int = 0,
    val contentFiltering: Boolean = false,
    val safeMode: Boolean = false,
    val dataEncryption: Boolean = false,
    val secureStorage: Boolean = true,
    val networkSecurity: Boolean = true,
    val certificatePinning: Boolean = false
)

/**
 * Настройки доступности
 */
@Serializable
data class AccessibilitySettings(
    val enabled: Boolean = false,
    val screenReader: Boolean = false,
    val highContrast: Boolean = false,
    val largeText: Boolean = false,
    val boldText: Boolean = false,
    val reduceMotion: Boolean = false,
    val colorBlindness: String = "none", // none, protanopia, deuteranopia, tritanopia
    val voiceNavigation: Boolean = false,
    val gestureNavigation: Boolean = false,
    val switchControl: Boolean = false,
    val headTracking: Boolean = false,
    val eyeTracking: Boolean = false,
    val speechToText: Boolean = false,
    val textToSpeech: Boolean = false,
    val hapticFeedback: Boolean = true,
    val audioFeedback: Boolean = false,
    val visualIndicators: Boolean = false,
    val focusIndicators: Boolean = true,
    val skipLinks: Boolean = false,
    val alternativeText: Boolean = true
)

/**
 * Настройки производительности
 */
@Serializable
data class PerformanceSettings(
    val performanceMode: String = "balanced", // power_save, balanced, performance
    val cpuThrottling: Boolean = false,
    val gpuAcceleration: Boolean = true,
    val memoryLimit: Int = 512, // МБ
    val cacheStrategy: String = "adaptive", // minimal, adaptive, aggressive
    val backgroundProcessing: Boolean = true,
    val preloadingEnabled: Boolean = true,
    val compressionLevel: Int = 5, // 1-9
    val imageOptimization: Boolean = true,
    val lazyLoading: Boolean = true,
    val virtualization: Boolean = true,
    val garbageCollection: String = "auto", // manual, auto, aggressive
    val networkOptimization: Boolean = true,
    val diskOptimization: Boolean = true,
    val batteryOptimization: Boolean = true,
    val thermalThrottling: Boolean = true
)

/**
 * Настройки уведомлений
 */
@Serializable
data class NotificationSettings(
    val enabled: Boolean = true,
    val importComplete: Boolean = true,
    val syncComplete: Boolean = true,
    val updateAvailable: Boolean = true,
    val readingReminders: Boolean = false,
    val newContent: Boolean = true,
    val recommendations: Boolean = true,
    val achievements: Boolean = true,
    val errors: Boolean = true,
    val maintenance: Boolean = true,
    val sound: Boolean = true,
    val vibration: Boolean = true,
    val led: Boolean = true,
    val priority: String = "normal", // low, normal, high
    val grouping: Boolean = true,
    val quietHours: Boolean = false,
    val quietStart: String = "22:00",
    val quietEnd: String = "08:00",
    val weekendMode: Boolean = false
)

/**
 * Настройки резервного копирования
 */
@Serializable
data class BackupSettings(
    val autoBackup: Boolean = true,
    val backupInterval: Int = 7, // дни
    val backupLocation: String = "internal", // internal, external, cloud
    val backupPath: String = "",
    val includeImages: Boolean = false,
    val includeSettings: Boolean = true,
    val includeProgress: Boolean = true,
    val includeAnnotations: Boolean = true,
    val includeCollections: Boolean = true,
    val compression: Boolean = true,
    val encryption: Boolean = false,
    val maxBackups: Int = 5,
    val backupOnWifiOnly: Boolean = true,
    val backupOnCharging: Boolean = false,
    val verifyBackups: Boolean = true
)

/**
 * Экспериментальные настройки
 */
@Serializable
data class ExperimentalSettings(
    val enabled: Boolean = false,
    val aiRecommendations: Boolean = false,
    val voiceControl: Boolean = false,
    val gestureRecognition: Boolean = false,
    val eyeTracking: Boolean = false,
    val brainInterface: Boolean = false,
    val augmentedReality: Boolean = false,
    val virtualReality: Boolean = false,
    val cloudProcessing: Boolean = false,
    val edgeComputing: Boolean = false,
    val quantumEncryption: Boolean = false,
    val blockchainSync: Boolean = false,
    val neuralNetworks: Boolean = false,
    val machineLearning: Boolean = false,
    val predictiveLoading: Boolean = false,
    val adaptiveUI: Boolean = false,
    val contextAwareness: Boolean = false,
    val emotionDetection: Boolean = false,
    val biometricAnalysis: Boolean = false,
    val environmentalAdaptation: Boolean = false
)

/**
 * Метаданные настроек
 */
@Serializable
data class SettingsMetadata(
    val version: String = "1.0.0",
    val createdAt: Long = System.currentTimeMillis(),
    val lastModified: Long = System.currentTimeMillis(),
    val modificationCount: Int = 0,
    val deviceId: String = "",
    val userId: String = "",
    val profileId: String = "",
    val migrationVersion: Int = 1,
    val checksum: String = "",
    val signature: String = "",
    val source: String = "user", // user, import, sync, default
    val validated: Boolean = true,
    val locked: Boolean = false,
    val readOnly: Boolean = false
)

/**
 * Менеджер настроек
 */
object SettingsManager {
    
    private val SETTINGS_KEY = stringPreferencesKey("comprehensive_settings")
    private val SETTINGS_BACKUP_KEY = stringPreferencesKey("settings_backup")
    private val SETTINGS_HISTORY_KEY = stringPreferencesKey("settings_history")
    
    private val json = Json { 
        ignoreUnknownKeys = true
        encodeDefaults = true
        prettyPrint = true
    }
    
    /**
     * Получение настроек
     */
    fun getSettings(context: Context): Flow<ComprehensiveSettings> {
        return context.settingsDataStore.data.map { preferences ->
            val settingsJson = preferences[SETTINGS_KEY]
            if (settingsJson != null) {
                try {
                    json.decodeFromString<ComprehensiveSettings>(settingsJson)
                } catch (e: Exception) {
                    getDefaultSettings()
                }
            } else {
                getDefaultSettings()
            }
        }
    }
    
    /**
     * Сохранение настроек
     */
    suspend fun saveSettings(context: Context, settings: ComprehensiveSettings) {
        val updatedSettings = settings.copy(
            metadata = settings.metadata.copy(
                lastModified = System.currentTimeMillis(),
                modificationCount = settings.metadata.modificationCount + 1
            )
        )
        
        context.settingsDataStore.edit { preferences ->
            preferences[SETTINGS_KEY] = json.encodeToString(updatedSettings)
        }
        
        // Сохраняем в историю
        saveToHistory(context, updatedSettings)
    }
    
    /**
     * Получение настроек по умолчанию
     */
    private fun getDefaultSettings(): ComprehensiveSettings {
        return ComprehensiveSettings()
    }
    
    /**
     * Сохранение в историю
     */
    private suspend fun saveToHistory(context: Context, settings: ComprehensiveSettings) {
        context.settingsDataStore.edit { preferences ->
            val historyJson = preferences[SETTINGS_HISTORY_KEY] ?: "[]"
            val history = try {
                json.decodeFromString<List<ComprehensiveSettings>>(historyJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<ComprehensiveSettings>()
            }
            
            history.add(0, settings)
            if (history.size > 10) {
                history.removeAt(history.size - 1)
            }
            
            preferences[SETTINGS_HISTORY_KEY] = json.encodeToString(history)
        }
    }
    
    /**
     * Создание резервной копии настроек
     */
    suspend fun backupSettings(context: Context): String {
        val settings = getSettings(context).first()
        val backupData = json.encodeToString(settings)
        
        context.settingsDataStore.edit { preferences ->
            preferences[SETTINGS_BACKUP_KEY] = backupData
        }
        
        return backupData
    }
    
    /**
     * Восстановление настроек из резервной копии
     */
    suspend fun restoreSettings(context: Context, backupData: String): Boolean {
        return try {
            val settings = json.decodeFromString<ComprehensiveSettings>(backupData)
            saveSettings(context, settings)
            true
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Сброс настроек к значениям по умолчанию
     */
    suspend fun resetSettings(context: Context) {
        val defaultSettings = getDefaultSettings()
        saveSettings(context, defaultSettings)
    }
    
    /**
     * Экспорт настроек
     */
    suspend fun exportSettings(context: Context): String {
        val settings = getSettings(context).first()
        return json.encodeToString(settings)
    }
    
    /**
     * Импорт настроек
     */
    suspend fun importSettings(context: Context, settingsJson: String): Boolean {
        return try {
            val settings = json.decodeFromString<ComprehensiveSettings>(settingsJson)
            saveSettings(context, settings)
            true
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Валидация настроек
     */
    fun validateSettings(settings: ComprehensiveSettings): List<String> {
        val errors = mutableListOf<String>()
        
        // Проверка диапазонов значений
        if (settings.interface.fontScale < 0.5f || settings.interface.fontScale > 3.0f) {
            errors.add("Font scale must be between 0.5 and 3.0")
        }
        
        if (settings.reading.maxZoomLevel < settings.reading.minZoomLevel) {
            errors.add("Max zoom level must be greater than min zoom level")
        }
        
        if (settings.library.gridColumns < 1 || settings.library.gridColumns > 10) {
            errors.add("Grid columns must be between 1 and 10")
        }
        
        if (settings.performance.memoryLimit < 64 || settings.performance.memoryLimit > 2048) {
            errors.add("Memory limit must be between 64 and 2048 MB")
        }
        
        return errors
    }
    
    /**
     * Миграция настроек
     */
    suspend fun migrateSettings(context: Context, fromVersion: Int, toVersion: Int) {
        val settings = getSettings(context).first()
        
        // Здесь будет логика миграции между версиями
        val migratedSettings = when {
            fromVersion < 2 && toVersion >= 2 -> {
                // Миграция с версии 1 на версию 2
                settings.copy(
                    metadata = settings.metadata.copy(
                        migrationVersion = 2
                    )
                )
            }
            else -> settings
        }
        
        saveSettings(context, migratedSettings)
    }
    
    /**
     * Поиск настроек
     */
    fun searchSettings(settings: ComprehensiveSettings, query: String): List<SettingItem> {
        val results = mutableListOf<SettingItem>()
        val lowerQuery = query.lowercase()
        
        // Здесь будет логика поиска по всем настройкам
        // Возвращаем список найденных настроек
        
        return results
    }
    
    /**
     * Получение категорий настроек
     */
    fun getSettingsCategories(): List<SettingsCategory> {
        return listOf(
            SettingsCategory("general", "Основные", "Основные настройки приложения"),
            SettingsCategory("interface", "Интерфейс", "Настройки внешнего вида"),
            SettingsCategory("reading", "Чтение", "Настройки процесса чтения"),
            SettingsCategory("library", "Библиотека", "Настройки библиотеки"),
            SettingsCategory("sync", "Синхронизация", "Настройки синхронизации"),
            SettingsCategory("security", "Безопасность", "Настройки безопасности"),
            SettingsCategory("accessibility", "Доступность", "Настройки доступности"),
            SettingsCategory("performance", "Производительность", "Настройки производительности"),
            SettingsCategory("notifications", "Уведомления", "Настройки уведомлений"),
            SettingsCategory("backup", "Резервные копии", "Настройки резервного копирования"),
            SettingsCategory("experimental", "Экспериментальные", "Экспериментальные функции")
        )
    }
}

/**
 * Элемент настройки
 */
data class SettingItem(
    val key: String,
    val title: String,
    val description: String,
    val category: String,
    val type: String, // boolean, string, int, float, list
    val value: Any,
    val defaultValue: Any,
    val options: List<String> = emptyList(),
    val min: Float? = null,
    val max: Float? = null,
    val step: Float? = null,
    val unit: String? = null,
    val dependencies: List<String> = emptyList(),
    val experimental: Boolean = false,
    val requiresRestart: Boolean = false
)

/**
 * Категория настроек
 */
data class SettingsCategory(
    val id: String,
    val title: String,
    val description: String,
    val icon: String? = null,
    val order: Int = 0
)

/**
 * Composable для настроек
 */
@Composable
fun SettingsProvider(
    content: @Composable (ComprehensiveSettings) -> Unit
) {
    val context = LocalContext.current
    val settings by SettingsManager.getSettings(context).collectAsState(
        initial = ComprehensiveSettings()
    )
    
    content(settings)
}

/**
 * Хук для работы с настройками
 */
@Composable
fun rememberSettingsManager(): SettingsManager {
    return remember { SettingsManager }
}

