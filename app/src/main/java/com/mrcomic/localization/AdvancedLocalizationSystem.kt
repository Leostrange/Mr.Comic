package com.example.mrcomic.localization

import android.content.Context
import android.content.res.Configuration
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.runtime.*
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.intl.Locale
import androidx.compose.ui.unit.LayoutDirection
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.*
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import java.text.DateFormat
import java.text.NumberFormat
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.ConcurrentHashMap

/**
 * Расширенная система локализации для Mr.Comic
 * Поддерживает множество языков, региональные настройки, RTL и динамическую локализацию
 */

val Context.localizationDataStore: DataStore<Preferences> by preferencesDataStore(name = "localization_settings")

/**
 * Настройки локализации
 */
@Serializable
data class LocalizationSettings(
    val language: String = "ru",
    val country: String = "RU",
    val region: String = "RU",
    val script: String = "",
    val variant: String = "",
    val timeZone: String = TimeZone.getDefault().id,
    val dateFormat: String = "dd.MM.yyyy",
    val timeFormat: String = "HH:mm",
    val numberFormat: String = "decimal",
    val currencyCode: String = "RUB",
    val measurementSystem: String = "metric", // metric, imperial
    val firstDayOfWeek: Int = Calendar.MONDAY,
    val use24HourFormat: Boolean = true,
    val enableRTL: Boolean = false,
    val fontScale: Float = 1.0f,
    val enablePluralRules: Boolean = true,
    val enableGenderForms: Boolean = true,
    val enableContextualTranslations: Boolean = true,
    val fallbackLanguage: String = "en",
    val autoDetectLanguage: Boolean = false,
    val downloadTranslations: Boolean = true,
    val offlineMode: Boolean = false
)

/**
 * Поддерживаемые языки
 */
enum class SupportedLanguage(
    val code: String,
    val name: String,
    val nativeName: String,
    val isRTL: Boolean = false,
    val hasPlurals: Boolean = true,
    val hasGenders: Boolean = false,
    val completeness: Float = 1.0f
) {
    RUSSIAN("ru", "Russian", "Русский", hasGenders = true),
    ENGLISH("en", "English", "English"),
    SPANISH("es", "Spanish", "Español", hasGenders = true),
    FRENCH("fr", "French", "Français", hasGenders = true),
    GERMAN("de", "German", "Deutsch", hasGenders = true),
    ITALIAN("it", "Italian", "Italiano", hasGenders = true),
    PORTUGUESE("pt", "Portuguese", "Português", hasGenders = true),
    CHINESE_SIMPLIFIED("zh-CN", "Chinese (Simplified)", "简体中文", hasPlurals = false),
    CHINESE_TRADITIONAL("zh-TW", "Chinese (Traditional)", "繁體中文", hasPlurals = false),
    JAPANESE("ja", "Japanese", "日本語", hasPlurals = false),
    KOREAN("ko", "Korean", "한국어", hasPlurals = false),
    ARABIC("ar", "Arabic", "العربية", isRTL = true, hasGenders = true),
    HEBREW("he", "Hebrew", "עברית", isRTL = true, hasGenders = true),
    HINDI("hi", "Hindi", "हिन्दी", hasGenders = true),
    THAI("th", "Thai", "ไทย", hasPlurals = false),
    VIETNAMESE("vi", "Vietnamese", "Tiếng Việt"),
    TURKISH("tr", "Turkish", "Türkçe"),
    POLISH("pl", "Polish", "Polski", hasGenders = true),
    CZECH("cs", "Czech", "Čeština", hasGenders = true),
    HUNGARIAN("hu", "Hungarian", "Magyar"),
    FINNISH("fi", "Finnish", "Suomi"),
    SWEDISH("sv", "Swedish", "Svenska"),
    NORWEGIAN("no", "Norwegian", "Norsk"),
    DANISH("da", "Danish", "Dansk"),
    DUTCH("nl", "Dutch", "Nederlands"),
    GREEK("el", "Greek", "Ελληνικά", hasGenders = true),
    BULGARIAN("bg", "Bulgarian", "Български", hasGenders = true),
    ROMANIAN("ro", "Romanian", "Română", hasGenders = true),
    UKRAINIAN("uk", "Ukrainian", "Українська", hasGenders = true),
    SERBIAN("sr", "Serbian", "Српски", hasGenders = true),
    CROATIAN("hr", "Croatian", "Hrvatski", hasGenders = true),
    SLOVENIAN("sl", "Slovenian", "Slovenščina", hasGenders = true),
    SLOVAK("sk", "Slovak", "Slovenčina", hasGenders = true),
    LITHUANIAN("lt", "Lithuanian", "Lietuvių", hasGenders = true),
    LATVIAN("lv", "Latvian", "Latviešu", hasGenders = true),
    ESTONIAN("et", "Estonian", "Eesti"),
    INDONESIAN("id", "Indonesian", "Bahasa Indonesia"),
    MALAY("ms", "Malay", "Bahasa Melayu"),
    FILIPINO("fil", "Filipino", "Filipino"),
    BENGALI("bn", "Bengali", "বাংলা", hasGenders = true),
    URDU("ur", "Urdu", "اردو", isRTL = true, hasGenders = true),
    PERSIAN("fa", "Persian", "فارسی", isRTL = true, hasGenders = true),
    SWAHILI("sw", "Swahili", "Kiswahili"),
    AFRIKAANS("af", "Afrikaans", "Afrikaans");
    
    companion object {
        fun fromCode(code: String): SupportedLanguage? {
            return values().find { it.code == code }
        }
        
        fun getAllLanguages(): List<SupportedLanguage> = values().toList()
        
        fun getRTLLanguages(): List<SupportedLanguage> = values().filter { it.isRTL }
        
        fun getLanguagesWithGenders(): List<SupportedLanguage> = values().filter { it.hasGenders }
    }
}

/**
 * Контекст локализации
 */
@Serializable
data class LocalizationContext(
    val screen: String = "",
    val feature: String = "",
    val userType: String = "", // child, adult, premium
    val timeOfDay: String = "", // morning, afternoon, evening, night
    val season: String = "", // spring, summer, autumn, winter
    val deviceType: String = "", // phone, tablet, tv
    val connectionType: String = "" // wifi, mobile, offline
)

/**
 * Переводимая строка с контекстом
 */
@Serializable
data class TranslatableString(
    val key: String,
    val defaultValue: String,
    val context: LocalizationContext = LocalizationContext(),
    val pluralForms: Map<String, String> = emptyMap(), // zero, one, two, few, many, other
    val genderForms: Map<String, String> = emptyMap(), // masculine, feminine, neuter
    val parameters: List<String> = emptyList(),
    val description: String = "",
    val maxLength: Int = 0,
    val isMarkdown: Boolean = false,
    val isHtml: Boolean = false
)

/**
 * Менеджер локализации
 */
object LocalizationManager {
    
    private val SETTINGS_KEY = stringPreferencesKey("localization_settings")
    private val CUSTOM_TRANSLATIONS_KEY = stringPreferencesKey("custom_translations")
    private val DOWNLOADED_LANGUAGES_KEY = stringPreferencesKey("downloaded_languages")
    
    private val json = Json { 
        ignoreUnknownKeys = true
        encodeDefaults = true
    }
    
    // Кэш переводов
    private val translationsCache = ConcurrentHashMap<String, Map<String, TranslatableString>>()
    
    // Встроенные переводы (базовые)
    private val builtInTranslations = mapOf(
        "ru" to mapOf(
            "app_name" to TranslatableString("app_name", "Mr.Comic"),
            "library" to TranslatableString("library", "Библиотека"),
            "reader" to TranslatableString("reader", "Читалка"),
            "settings" to TranslatableString("settings", "Настройки"),
            "search" to TranslatableString("search", "Поиск"),
            "favorites" to TranslatableString("favorites", "Избранное"),
            "history" to TranslatableString("history", "История"),
            "downloads" to TranslatableString("downloads", "Загрузки"),
            "profile" to TranslatableString("profile", "Профиль"),
            "themes" to TranslatableString("themes", "Темы"),
            "language" to TranslatableString("language", "Язык"),
            "about" to TranslatableString("about", "О приложении"),
            "help" to TranslatableString("help", "Помощь"),
            "feedback" to TranslatableString("feedback", "Обратная связь"),
            "privacy" to TranslatableString("privacy", "Конфиденциальность"),
            "terms" to TranslatableString("terms", "Условия использования"),
            "version" to TranslatableString("version", "Версия"),
            "update" to TranslatableString("update", "Обновить"),
            "cancel" to TranslatableString("cancel", "Отмена"),
            "ok" to TranslatableString("ok", "ОК"),
            "yes" to TranslatableString("yes", "Да"),
            "no" to TranslatableString("no", "Нет"),
            "save" to TranslatableString("save", "Сохранить"),
            "delete" to TranslatableString("delete", "Удалить"),
            "edit" to TranslatableString("edit", "Редактировать"),
            "add" to TranslatableString("add", "Добавить"),
            "remove" to TranslatableString("remove", "Удалить"),
            "share" to TranslatableString("share", "Поделиться"),
            "copy" to TranslatableString("copy", "Копировать"),
            "paste" to TranslatableString("paste", "Вставить"),
            "cut" to TranslatableString("cut", "Вырезать"),
            "undo" to TranslatableString("undo", "Отменить"),
            "redo" to TranslatableString("redo", "Повторить"),
            "loading" to TranslatableString("loading", "Загрузка..."),
            "error" to TranslatableString("error", "Ошибка"),
            "success" to TranslatableString("success", "Успешно"),
            "warning" to TranslatableString("warning", "Предупреждение"),
            "info" to TranslatableString("info", "Информация"),
            "empty_library" to TranslatableString("empty_library", "Библиотека пуста"),
            "no_results" to TranslatableString("no_results", "Ничего не найдено"),
            "network_error" to TranslatableString("network_error", "Ошибка сети"),
            "permission_required" to TranslatableString("permission_required", "Требуется разрешение"),
            "storage_full" to TranslatableString("storage_full", "Недостаточно места"),
            "file_not_found" to TranslatableString("file_not_found", "Файл не найден"),
            "invalid_format" to TranslatableString("invalid_format", "Неверный формат"),
            "pages_count" to TranslatableString(
                "pages_count", 
                "%d страниц",
                pluralForms = mapOf(
                    "one" to "%d страница",
                    "few" to "%d страницы",
                    "many" to "%d страниц",
                    "other" to "%d страниц"
                )
            ),
            "reading_time" to TranslatableString(
                "reading_time",
                "Время чтения: %s",
                parameters = listOf("time")
            ),
            "good_morning" to TranslatableString(
                "good_morning",
                "Доброе утро!",
                context = LocalizationContext(timeOfDay = "morning")
            ),
            "good_afternoon" to TranslatableString(
                "good_afternoon",
                "Добрый день!",
                context = LocalizationContext(timeOfDay = "afternoon")
            ),
            "good_evening" to TranslatableString(
                "good_evening",
                "Добрый вечер!",
                context = LocalizationContext(timeOfDay = "evening")
            ),
            "good_night" to TranslatableString(
                "good_night",
                "Доброй ночи!",
                context = LocalizationContext(timeOfDay = "night")
            )
        ),
        "en" to mapOf(
            "app_name" to TranslatableString("app_name", "Mr.Comic"),
            "library" to TranslatableString("library", "Library"),
            "reader" to TranslatableString("reader", "Reader"),
            "settings" to TranslatableString("settings", "Settings"),
            "search" to TranslatableString("search", "Search"),
            "favorites" to TranslatableString("favorites", "Favorites"),
            "history" to TranslatableString("history", "History"),
            "downloads" to TranslatableString("downloads", "Downloads"),
            "profile" to TranslatableString("profile", "Profile"),
            "themes" to TranslatableString("themes", "Themes"),
            "language" to TranslatableString("language", "Language"),
            "about" to TranslatableString("about", "About"),
            "help" to TranslatableString("help", "Help"),
            "feedback" to TranslatableString("feedback", "Feedback"),
            "privacy" to TranslatableString("privacy", "Privacy"),
            "terms" to TranslatableString("terms", "Terms of Service"),
            "version" to TranslatableString("version", "Version"),
            "update" to TranslatableString("update", "Update"),
            "cancel" to TranslatableString("cancel", "Cancel"),
            "ok" to TranslatableString("ok", "OK"),
            "yes" to TranslatableString("yes", "Yes"),
            "no" to TranslatableString("no", "No"),
            "save" to TranslatableString("save", "Save"),
            "delete" to TranslatableString("delete", "Delete"),
            "edit" to TranslatableString("edit", "Edit"),
            "add" to TranslatableString("add", "Add"),
            "remove" to TranslatableString("remove", "Remove"),
            "share" to TranslatableString("share", "Share"),
            "copy" to TranslatableString("copy", "Copy"),
            "paste" to TranslatableString("paste", "Paste"),
            "cut" to TranslatableString("cut", "Cut"),
            "undo" to TranslatableString("undo", "Undo"),
            "redo" to TranslatableString("redo", "Redo"),
            "loading" to TranslatableString("loading", "Loading..."),
            "error" to TranslatableString("error", "Error"),
            "success" to TranslatableString("success", "Success"),
            "warning" to TranslatableString("warning", "Warning"),
            "info" to TranslatableString("info", "Information"),
            "empty_library" to TranslatableString("empty_library", "Library is empty"),
            "no_results" to TranslatableString("no_results", "No results found"),
            "network_error" to TranslatableString("network_error", "Network error"),
            "permission_required" to TranslatableString("permission_required", "Permission required"),
            "storage_full" to TranslatableString("storage_full", "Storage full"),
            "file_not_found" to TranslatableString("file_not_found", "File not found"),
            "invalid_format" to TranslatableString("invalid_format", "Invalid format"),
            "pages_count" to TranslatableString(
                "pages_count", 
                "%d pages",
                pluralForms = mapOf(
                    "one" to "%d page",
                    "other" to "%d pages"
                )
            ),
            "reading_time" to TranslatableString(
                "reading_time",
                "Reading time: %s",
                parameters = listOf("time")
            ),
            "good_morning" to TranslatableString(
                "good_morning",
                "Good morning!",
                context = LocalizationContext(timeOfDay = "morning")
            ),
            "good_afternoon" to TranslatableString(
                "good_afternoon",
                "Good afternoon!",
                context = LocalizationContext(timeOfDay = "afternoon")
            ),
            "good_evening" to TranslatableString(
                "good_evening",
                "Good evening!",
                context = LocalizationContext(timeOfDay = "evening")
            ),
            "good_night" to TranslatableString(
                "good_night",
                "Good night!",
                context = LocalizationContext(timeOfDay = "night")
            )
        )
    )
    
    /**
     * Получение настроек локализации
     */
    fun getSettings(context: Context): Flow<LocalizationSettings> {
        return context.localizationDataStore.data.map { preferences ->
            val settingsJson = preferences[SETTINGS_KEY]
            if (settingsJson != null) {
                try {
                    json.decodeFromString<LocalizationSettings>(settingsJson)
                } catch (e: Exception) {
                    LocalizationSettings()
                }
            } else {
                // Автоопределение языка системы
                val systemLocale = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    context.resources.configuration.locales[0]
                } else {
                    @Suppress("DEPRECATION")
                    context.resources.configuration.locale
                }
                
                LocalizationSettings(
                    language = systemLocale.language,
                    country = systemLocale.country,
                    timeZone = TimeZone.getDefault().id
                )
            }
        }
    }
    
    /**
     * Сохранение настроек локализации
     */
    suspend fun saveSettings(context: Context, settings: LocalizationSettings) {
        context.localizationDataStore.edit { preferences ->
            preferences[SETTINGS_KEY] = json.encodeToString(settings)
        }
    }
    
    /**
     * Получение перевода
     */
    fun getString(
        context: Context,
        key: String,
        language: String? = null,
        vararg args: Any,
        pluralCount: Int? = null,
        gender: String? = null,
        localizationContext: LocalizationContext = LocalizationContext()
    ): String {
        val settings = runBlocking { getSettings(context).first() }
        val targetLanguage = language ?: settings.language
        
        // Получаем переводы для языка
        val translations = getTranslationsForLanguage(targetLanguage)
        val translatable = translations[key]
        
        if (translatable != null) {
            var result = translatable.defaultValue
            
            // Применяем формы множественного числа
            if (pluralCount != null && translatable.pluralForms.isNotEmpty()) {
                val pluralRule = getPluralRule(targetLanguage, pluralCount)
                result = translatable.pluralForms[pluralRule] ?: result
            }
            
            // Применяем гендерные формы
            if (gender != null && translatable.genderForms.isNotEmpty()) {
                result = translatable.genderForms[gender] ?: result
            }
            
            // Подставляем параметры
            if (args.isNotEmpty()) {
                result = String.format(result, *args)
            }
            
            return result
        }
        
        // Fallback на английский
        if (targetLanguage != "en") {
            val englishTranslations = getTranslationsForLanguage("en")
            val englishTranslatable = englishTranslations[key]
            if (englishTranslatable != null) {
                var result = englishTranslatable.defaultValue
                if (args.isNotEmpty()) {
                    result = String.format(result, *args)
                }
                return result
            }
        }
        
        // Возвращаем ключ, если перевод не найден
        return key
    }
    
    /**
     * Получение переводов для языка
     */
    private fun getTranslationsForLanguage(language: String): Map<String, TranslatableString> {
        return translationsCache.getOrPut(language) {
            builtInTranslations[language] ?: builtInTranslations["en"] ?: emptyMap()
        }
    }
    
    /**
     * Определение правила множественного числа
     */
    private fun getPluralRule(language: String, count: Int): String {
        return when (language) {
            "ru", "uk", "be", "sr", "hr", "bs" -> {
                when {
                    count % 10 == 1 && count % 100 != 11 -> "one"
                    count % 10 in 2..4 && count % 100 !in 12..14 -> "few"
                    else -> "many"
                }
            }
            "pl" -> {
                when {
                    count == 1 -> "one"
                    count % 10 in 2..4 && count % 100 !in 12..14 -> "few"
                    else -> "many"
                }
            }
            "cs", "sk" -> {
                when (count) {
                    1 -> "one"
                    2, 3, 4 -> "few"
                    else -> "many"
                }
            }
            "ar" -> {
                when {
                    count == 0 -> "zero"
                    count == 1 -> "one"
                    count == 2 -> "two"
                    count % 100 in 3..10 -> "few"
                    count % 100 in 11..99 -> "many"
                    else -> "other"
                }
            }
            "zh", "ja", "ko", "th", "vi" -> "other" // Нет множественных форм
            else -> {
                when (count) {
                    1 -> "one"
                    else -> "other"
                }
            }
        }
    }
    
    /**
     * Форматирование даты
     */
    fun formatDate(
        context: Context,
        date: Date,
        style: Int = DateFormat.MEDIUM
    ): String {
        val settings = runBlocking { getSettings(context).first() }
        val locale = Locale(settings.language, settings.country)
        val formatter = DateFormat.getDateInstance(style, locale)
        return formatter.format(date)
    }
    
    /**
     * Форматирование времени
     */
    fun formatTime(
        context: Context,
        date: Date,
        use24Hour: Boolean? = null
    ): String {
        val settings = runBlocking { getSettings(context).first() }
        val locale = Locale(settings.language, settings.country)
        val use24HourFormat = use24Hour ?: settings.use24HourFormat
        
        val pattern = if (use24HourFormat) "HH:mm" else "h:mm a"
        val formatter = SimpleDateFormat(pattern, locale)
        return formatter.format(date)
    }
    
    /**
     * Форматирование числа
     */
    fun formatNumber(
        context: Context,
        number: Number
    ): String {
        val settings = runBlocking { getSettings(context).first() }
        val locale = Locale(settings.language, settings.country)
        val formatter = NumberFormat.getNumberInstance(locale)
        return formatter.format(number)
    }
    
    /**
     * Форматирование валюты
     */
    fun formatCurrency(
        context: Context,
        amount: Double,
        currencyCode: String? = null
    ): String {
        val settings = runBlocking { getSettings(context).first() }
        val locale = Locale(settings.language, settings.country)
        val formatter = NumberFormat.getCurrencyInstance(locale)
        
        currencyCode?.let {
            formatter.currency = Currency.getInstance(it)
        }
        
        return formatter.format(amount)
    }
    
    /**
     * Получение направления текста
     */
    fun getLayoutDirection(language: String): LayoutDirection {
        val supportedLanguage = SupportedLanguage.fromCode(language)
        return if (supportedLanguage?.isRTL == true) {
            LayoutDirection.Rtl
        } else {
            LayoutDirection.Ltr
        }
    }
    
    /**
     * Загрузка переводов из сети
     */
    suspend fun downloadTranslations(
        context: Context,
        language: String,
        forceUpdate: Boolean = false
    ): Boolean {
        // Здесь будет логика загрузки переводов с сервера
        // Пока возвращаем true для встроенных языков
        return builtInTranslations.containsKey(language)
    }
    
    /**
     * Проверка доступности языка
     */
    fun isLanguageAvailable(language: String): Boolean {
        return SupportedLanguage.fromCode(language) != null
    }
    
    /**
     * Получение процента завершенности перевода
     */
    fun getTranslationCompleteness(language: String): Float {
        val supportedLanguage = SupportedLanguage.fromCode(language)
        return supportedLanguage?.completeness ?: 0f
    }
}

/**
 * Composable для локализации
 */
@Composable
fun LocalizedContent(
    content: @Composable (LocalizationManager) -> Unit
) {
    val context = LocalContext.current
    val configuration = LocalConfiguration.current
    
    // Отслеживаем изменения настроек локализации
    val settings by LocalizationManager.getSettings(context).collectAsState(
        initial = LocalizationSettings()
    )
    
    // Применяем настройки локализации к конфигурации
    LaunchedEffect(settings) {
        val locale = java.util.Locale(settings.language, settings.country)
        java.util.Locale.setDefault(locale)
        
        // Обновляем конфигурацию
        val newConfig = Configuration(configuration)
        newConfig.setLocale(locale)
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            newConfig.setLayoutDirection(locale)
        }
        
        context.resources.updateConfiguration(newConfig, context.resources.displayMetrics)
    }
    
    content(LocalizationManager)
}

/**
 * Хук для получения локализованных строк
 */
@Composable
fun rememberLocalizedString(
    key: String,
    vararg args: Any,
    pluralCount: Int? = null,
    gender: String? = null,
    context: LocalizationContext = LocalizationContext()
): String {
    val localContext = LocalContext.current
    
    return remember(key, args.contentToString(), pluralCount, gender, context) {
        LocalizationManager.getString(
            localContext,
            key,
            args = args,
            pluralCount = pluralCount,
            gender = gender,
            localizationContext = context
        )
    }
}

/**
 * Расширение для Context
 */
fun Context.getString(
    key: String,
    vararg args: Any,
    pluralCount: Int? = null,
    gender: String? = null,
    context: LocalizationContext = LocalizationContext()
): String {
    return LocalizationManager.getString(
        this,
        key,
        args = args,
        pluralCount = pluralCount,
        gender = gender,
        localizationContext = context
    )
}

