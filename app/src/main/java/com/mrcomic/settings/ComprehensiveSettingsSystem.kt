package com.mrcomic.settings

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.*
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

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
    val interfaceSettings: InterfaceSettings = InterfaceSettings(),
    
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
        context.settingsDataStore.edit {
            it[SETTINGS_KEY] = json.encodeToString(settings)
        }
    }
    
    /**
     * Получение настроек по умолчанию
     */
    fun getDefaultSettings(): ComprehensiveSettings {
        return ComprehensiveSettings()
    }
    
    /**
     * Резервное копирование настроек
     */
    suspend fun backupSettings(context: Context) {
        context.settingsDataStore.data.firstOrNull()?.let {
            val currentSettingsJson = it[SETTINGS_KEY]
            if (currentSettingsJson != null) {
                context.settingsDataStore.edit {\n                    it[SETTINGS_BACKUP_KEY] = currentSettingsJson
                }
            }
        }
    }
    
    /**
     * Восстановление настроек из резервной копии
     */
    suspend fun restoreSettings(context: Context) {
        context.settingsDataStore.data.firstOrNull()?.let {
            val backupSettingsJson = it[SETTINGS_BACKUP_KEY]
            if (backupSettingsJson != null) {
                context.settingsDataStore.edit {
                    it[SETTINGS_KEY] = backupSettingsJson
                }
            }
        }
    }
    
    /**
     * Сохранение истории изменений настроек
     */
    suspend fun saveSettingsHistory(context: Context, historyEntry: String) {
        context.settingsDataStore.edit {
            val currentHistory = it[SETTINGS_HISTORY_KEY]?.split("\n")?.toMutableList() ?: mutableListOf()
            currentHistory.add("${System.currentTimeMillis()}: $historyEntry")
            it[SETTINGS_HISTORY_KEY] = currentHistory.joinToString("\n")
        }
    }
    
    /**
     * Получение истории изменений настроек
     */
    fun getSettingsHistory(context: Context): Flow<List<String>> {
        return context.settingsDataStore.data.map {
            it[SETTINGS_HISTORY_KEY]?.split("\n") ?: emptyList()
        }
    }
}

/**
 * Composable функция для доступа к настройкам
 */
@Composable
fun rememberSettings(): ComprehensiveSettings {
    val context = LocalContext.current
    val settings by SettingsManager.getSettings(context).collectAsState(initial = SettingsManager.getDefaultSettings())
    return settings
}

/**
 * Composable функция для сохранения настроек
 */
@Composable
fun rememberSaveSettings(): suspend (ComprehensiveSettings) -> Unit {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    return {
        coroutineScope.launch {
            SettingsManager.saveSettings(context, it)
        }
    }
}

/**
 * Composable функция для получения настроек по умолчанию
 */
@Composable
fun rememberDefaultSettings(): ComprehensiveSettings {
    return SettingsManager.getDefaultSettings()
}

/**
 * Composable функция для резервного копирования настроек
 */
@Composable
fun rememberBackupSettings(): suspend () -> Unit {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    return {
        coroutineScope.launch {
            SettingsManager.backupSettings(context)
        }
    }
}

/**
 * Composable функция для восстановления настроек
 */
@Composable
fun rememberRestoreSettings(): suspend () -> Unit {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    return {
        coroutineScope.launch {
            SettingsManager.restoreSettings(context)
        }
    }
}

/**
 * Composable функция для сохранения истории настроек
 */
@Composable
fun rememberSaveSettingsHistory(): suspend (String) -> Unit {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    return {
        coroutineScope.launch {
            SettingsManager.saveSettingsHistory(context, it)
        }
    }
}

/**
 * Composable функция для получения истории настроек
 */
@Composable
fun rememberSettingsHistory(): State<List<String>> {
    val context = LocalContext.current
    return SettingsManager.getSettingsHistory(context).collectAsState(initial = emptyList())
}


