package com.example.mrcomic.ui.theme

import android.content.Context
import android.graphics.*
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.*
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalContext
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.*
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.*
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import java.util.*
import kotlin.math.*

/**
 * Продвинутая система тем для Mr.Comic
 * Поддерживает динамические темы, градиенты, анимации и полную персонализацию
 */

val Context.advancedThemeDataStore: DataStore<Preferences> by preferencesDataStore(name = "advanced_theme_settings")

/**
 * Расширенная конфигурация темы
 */
@Serializable
data class AdvancedThemeConfig(
    val id: String = UUID.randomUUID().toString(),
    val name: String = "Пользовательская тема",
    val description: String = "",
    val author: String = "Пользователь",
    val version: String = "1.0.0",
    val createdAt: Long = System.currentTimeMillis(),
    val updatedAt: Long = System.currentTimeMillis(),
    
    // Основные цвета
    val primaryColor: String = "#6750A4",
    val secondaryColor: String = "#625B71",
    val tertiaryColor: String = "#7D5260",
    val errorColor: String = "#BA1A1A",
    val backgroundColor: String = "#FFFBFE",
    val surfaceColor: String = "#FFFBFE",
    val onPrimaryColor: String = "#FFFFFF",
    val onSecondaryColor: String = "#FFFFFF",
    val onTertiaryColor: String = "#FFFFFF",
    val onErrorColor: String = "#FFFFFF",
    val onBackgroundColor: String = "#1C1B1F",
    val onSurfaceColor: String = "#1C1B1F",
    
    // Дополнительные цвета
    val primaryContainerColor: String = "#EADDFF",
    val secondaryContainerColor: String = "#E8DEF8",
    val tertiaryContainerColor: String = "#FFD8E4",
    val errorContainerColor: String = "#FFDAD6",
    val surfaceVariantColor: String = "#E7E0EC",
    val outlineColor: String = "#79747E",
    val outlineVariantColor: String = "#CAC4D0",
    val scrimColor: String = "#000000",
    val inverseSurfaceColor: String = "#313033",
    val inverseOnSurfaceColor: String = "#F4EFF4",
    val inversePrimaryColor: String = "#D0BCFF",
    
    // Градиенты
    val enableGradients: Boolean = false,
    val gradientType: GradientType = GradientType.LINEAR,
    val gradientDirection: GradientDirection = GradientDirection.TOP_TO_BOTTOM,
    val gradientColors: List<String> = listOf("#6750A4", "#9C27B0"),
    val gradientStops: List<Float> = listOf(0f, 1f),
    
    // Анимации
    val enableAnimations: Boolean = true,
    val animationDuration: Int = 300,
    val animationEasing: AnimationEasing = AnimationEasing.EASE_IN_OUT,
    val enableColorTransitions: Boolean = true,
    val enableMorphingShapes: Boolean = false,
    
    // Типографика
    val fontFamily: String = "default",
    val fontScale: Float = 1.0f,
    val lineHeight: Float = 1.4f,
    val letterSpacing: Float = 0f,
    val enableCustomFonts: Boolean = false,
    
    // Формы и размеры
    val cornerRadius: Float = 12f,
    val borderWidth: Float = 1f,
    val elevation: Float = 4f,
    val enableRoundedCorners: Boolean = true,
    val enableShadows: Boolean = true,
    
    // Специальные эффекты
    val enableBlur: Boolean = false,
    val blurRadius: Float = 10f,
    val enableGlow: Boolean = false,
    val glowRadius: Float = 5f,
    val glowColor: String = "#6750A4",
    val enableParticles: Boolean = false,
    val particleCount: Int = 50,
    
    // Адаптивность
    val enableDynamicColors: Boolean = true,
    val enableSeasonalThemes: Boolean = false,
    val enableTimeBasedThemes: Boolean = false,
    val enableWeatherBasedThemes: Boolean = false,
    val enableLocationBasedThemes: Boolean = false,
    
    // Доступность
    val highContrast: Boolean = false,
    val contrastLevel: Float = 1.0f,
    val colorBlindFriendly: Boolean = false,
    val reducedMotion: Boolean = false,
    
    // Персонализация
    val enablePersonalization: Boolean = true,
    val learningEnabled: Boolean = true,
    val adaptToUsage: Boolean = true,
    val adaptToTime: Boolean = true,
    val adaptToContent: Boolean = true
)

/**
 * Типы градиентов
 */
enum class GradientType {
    LINEAR, RADIAL, SWEEP, DIAMOND
}

/**
 * Направления градиентов
 */
enum class GradientDirection {
    TOP_TO_BOTTOM, BOTTOM_TO_TOP, LEFT_TO_RIGHT, RIGHT_TO_LEFT,
    TOP_LEFT_TO_BOTTOM_RIGHT, TOP_RIGHT_TO_BOTTOM_LEFT,
    CENTER_TO_EDGES, EDGES_TO_CENTER
}

/**
 * Типы анимаций
 */
enum class AnimationEasing {
    LINEAR, EASE_IN, EASE_OUT, EASE_IN_OUT, BOUNCE, ELASTIC, OVERSHOOT
}

/**
 * Предустановленные темы
 */
object PresetThemes {
    
    val MATERIAL_YOU = AdvancedThemeConfig(
        id = "material_you",
        name = "Material You",
        description = "Динамическая тема Material Design 3",
        author = "Google",
        enableDynamicColors = true,
        enableAnimations = true,
        enableColorTransitions = true
    )
    
    val DARK_PURPLE = AdvancedThemeConfig(
        id = "dark_purple",
        name = "Темный фиолетовый",
        description = "Элегантная темная тема с фиолетовыми акцентами",
        primaryColor = "#BB86FC",
        secondaryColor = "#03DAC6",
        backgroundColor = "#121212",
        surfaceColor = "#1E1E1E",
        onBackgroundColor = "#FFFFFF",
        onSurfaceColor = "#FFFFFF",
        enableGradients = true,
        gradientColors = listOf("#BB86FC", "#6200EE")
    )
    
    val OCEAN_BLUE = AdvancedThemeConfig(
        id = "ocean_blue",
        name = "Океанский синий",
        description = "Освежающая тема в морских тонах",
        primaryColor = "#0277BD",
        secondaryColor = "#00ACC1",
        tertiaryColor = "#26C6DA",
        enableGradients = true,
        gradientType = GradientType.RADIAL,
        gradientColors = listOf("#0277BD", "#00BCD4", "#26C6DA"),
        enableBlur = true,
        blurRadius = 15f
    )
    
    val SUNSET_ORANGE = AdvancedThemeConfig(
        id = "sunset_orange",
        name = "Закатный оранжевый",
        description = "Теплая тема в тонах заката",
        primaryColor = "#FF6F00",
        secondaryColor = "#FF8F00",
        tertiaryColor = "#FFA000",
        enableGradients = true,
        gradientDirection = GradientDirection.TOP_TO_BOTTOM,
        gradientColors = listOf("#FF6F00", "#FF8F00", "#FFA000"),
        enableGlow = true,
        glowColor = "#FF6F00"
    )
    
    val FOREST_GREEN = AdvancedThemeConfig(
        id = "forest_green",
        name = "Лесной зеленый",
        description = "Природная тема в зеленых тонах",
        primaryColor = "#2E7D32",
        secondaryColor = "#388E3C",
        tertiaryColor = "#43A047",
        enableSeasonalThemes = true,
        enableParticles = true,
        particleCount = 30
    )
    
    val CYBERPUNK = AdvancedThemeConfig(
        id = "cyberpunk",
        name = "Киберпанк",
        description = "Футуристическая неоновая тема",
        primaryColor = "#00FFFF",
        secondaryColor = "#FF00FF",
        tertiaryColor = "#FFFF00",
        backgroundColor = "#0A0A0A",
        surfaceColor = "#1A1A1A",
        enableGradients = true,
        gradientType = GradientType.SWEEP,
        gradientColors = listOf("#00FFFF", "#FF00FF", "#FFFF00", "#00FFFF"),
        enableGlow = true,
        glowRadius = 10f,
        enableAnimations = true,
        animationEasing = AnimationEasing.ELASTIC
    )
    
    val MINIMALIST = AdvancedThemeConfig(
        id = "minimalist",
        name = "Минималист",
        description = "Чистая минималистичная тема",
        primaryColor = "#000000",
        secondaryColor = "#424242",
        tertiaryColor = "#757575",
        backgroundColor = "#FFFFFF",
        surfaceColor = "#FAFAFA",
        cornerRadius = 0f,
        enableShadows = false,
        enableAnimations = false,
        reducedMotion = true
    )
    
    val HIGH_CONTRAST = AdvancedThemeConfig(
        id = "high_contrast",
        name = "Высокий контраст",
        description = "Тема с повышенным контрастом для лучшей доступности",
        primaryColor = "#000000",
        secondaryColor = "#FFFFFF",
        backgroundColor = "#FFFFFF",
        surfaceColor = "#FFFFFF",
        onBackgroundColor = "#000000",
        onSurfaceColor = "#000000",
        highContrast = true,
        contrastLevel = 2.0f,
        colorBlindFriendly = true,
        borderWidth = 2f
    )
    
    fun getAllPresets(): List<AdvancedThemeConfig> = listOf(
        MATERIAL_YOU, DARK_PURPLE, OCEAN_BLUE, SUNSET_ORANGE,
        FOREST_GREEN, CYBERPUNK, MINIMALIST, HIGH_CONTRAST
    )
}

/**
 * Менеджер продвинутых тем
 */
object AdvancedThemeManager {
    
    private val CURRENT_THEME_KEY = stringPreferencesKey("current_theme_config")
    private val CUSTOM_THEMES_KEY = stringPreferencesKey("custom_themes")
    private val THEME_HISTORY_KEY = stringPreferencesKey("theme_history")
    private val PERSONALIZATION_DATA_KEY = stringPreferencesKey("personalization_data")
    
    private val json = Json { 
        ignoreUnknownKeys = true
        encodeDefaults = true
    }
    
    /**
     * Получение текущей темы
     */
    fun getCurrentTheme(context: Context): Flow<AdvancedThemeConfig> {
        return context.advancedThemeDataStore.data.map { preferences ->
            val themeJson = preferences[CURRENT_THEME_KEY]
            if (themeJson != null) {
                try {
                    json.decodeFromString<AdvancedThemeConfig>(themeJson)
                } catch (e: Exception) {
                    PresetThemes.MATERIAL_YOU
                }
            } else {
                PresetThemes.MATERIAL_YOU
            }
        }
    }
    
    /**
     * Сохранение текущей темы
     */
    suspend fun saveCurrentTheme(context: Context, theme: AdvancedThemeConfig) {
        context.advancedThemeDataStore.edit { preferences ->
            preferences[CURRENT_THEME_KEY] = json.encodeToString(theme)
            
            // Добавляем в историю
            val historyJson = preferences[THEME_HISTORY_KEY] ?: "[]"
            val history = try {
                json.decodeFromString<List<String>>(historyJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<String>()
            }
            
            history.add(0, theme.id)
            if (history.size > 10) {
                history.removeAt(history.size - 1)
            }
            
            preferences[THEME_HISTORY_KEY] = json.encodeToString(history)
        }
    }
    
    /**
     * Получение пользовательских тем
     */
    fun getCustomThemes(context: Context): Flow<List<AdvancedThemeConfig>> {
        return context.advancedThemeDataStore.data.map { preferences ->
            val themesJson = preferences[CUSTOM_THEMES_KEY] ?: "[]"
            try {
                json.decodeFromString<List<AdvancedThemeConfig>>(themesJson)
            } catch (e: Exception) {
                emptyList()
            }
        }
    }
    
    /**
     * Сохранение пользовательской темы
     */
    suspend fun saveCustomTheme(context: Context, theme: AdvancedThemeConfig) {
        context.advancedThemeDataStore.edit { preferences ->
            val themesJson = preferences[CUSTOM_THEMES_KEY] ?: "[]"
            val themes = try {
                json.decodeFromString<List<AdvancedThemeConfig>>(themesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<AdvancedThemeConfig>()
            }
            
            // Обновляем существующую или добавляем новую
            val existingIndex = themes.indexOfFirst { it.id == theme.id }
            if (existingIndex >= 0) {
                themes[existingIndex] = theme.copy(updatedAt = System.currentTimeMillis())
            } else {
                themes.add(theme)
            }
            
            preferences[CUSTOM_THEMES_KEY] = json.encodeToString(themes)
        }
    }
    
    /**
     * Удаление пользовательской темы
     */
    suspend fun deleteCustomTheme(context: Context, themeId: String) {
        context.advancedThemeDataStore.edit { preferences ->
            val themesJson = preferences[CUSTOM_THEMES_KEY] ?: "[]"
            val themes = try {
                json.decodeFromString<List<AdvancedThemeConfig>>(themesJson).toMutableList()
            } catch (e: Exception) {
                mutableListOf<AdvancedThemeConfig>()
            }
            
            themes.removeAll { it.id == themeId }
            preferences[CUSTOM_THEMES_KEY] = json.encodeToString(themes)
        }
    }
    
    /**
     * Создание темы из изображения
     */
    @RequiresApi(Build.VERSION_CODES.O)
    suspend fun createThemeFromImage(
        context: Context,
        bitmap: Bitmap,
        themeName: String = "Тема из изображения"
    ): AdvancedThemeConfig {
        
        val dominantColors = extractDominantColors(bitmap)
        val palette = generateColorPalette(dominantColors)
        
        return AdvancedThemeConfig(
            name = themeName,
            description = "Автоматически созданная тема на основе изображения",
            primaryColor = palette.primary,
            secondaryColor = palette.secondary,
            tertiaryColor = palette.tertiary,
            backgroundColor = palette.background,
            surfaceColor = palette.surface,
            onPrimaryColor = palette.onPrimary,
            onSecondaryColor = palette.onSecondary,
            onBackgroundColor = palette.onBackground,
            onSurfaceColor = palette.onSurface,
            enableGradients = true,
            gradientColors = dominantColors.map { "#${Integer.toHexString(it).substring(2)}" }
        )
    }
    
    /**
     * Извлечение доминирующих цветов из изображения
     */
    private fun extractDominantColors(bitmap: Bitmap, colorCount: Int = 5): List<Int> {
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        
        // Простой алгоритм k-means для извлечения доминирующих цветов
        val colorMap = mutableMapOf<Int, Int>()
        
        for (pixel in pixels) {
            val color = pixel and 0xFFFFFF // Убираем альфа-канал
            colorMap[color] = (colorMap[color] ?: 0) + 1
        }
        
        return colorMap.entries
            .sortedByDescending { it.value }
            .take(colorCount)
            .map { it.key or 0xFF000000.toInt() } // Добавляем альфа-канал
    }
    
    /**
     * Генерация цветовой палитры
     */
    private fun generateColorPalette(dominantColors: List<Int>): ColorPalette {
        if (dominantColors.isEmpty()) {
            return ColorPalette()
        }
        
        val primary = dominantColors[0]
        val secondary = if (dominantColors.size > 1) dominantColors[1] else adjustBrightness(primary, 0.8f)
        val tertiary = if (dominantColors.size > 2) dominantColors[2] else adjustBrightness(primary, 0.6f)
        
        val isLight = isLightColor(primary)
        val background = if (isLight) Color.WHITE.toArgb() else Color.BLACK.toArgb()
        val surface = if (isLight) 0xFFFAFAFA.toInt() else 0xFF1E1E1E.toInt()
        
        return ColorPalette(
            primary = "#${Integer.toHexString(primary).substring(2)}",
            secondary = "#${Integer.toHexString(secondary).substring(2)}",
            tertiary = "#${Integer.toHexString(tertiary).substring(2)}",
            background = "#${Integer.toHexString(background).substring(2)}",
            surface = "#${Integer.toHexString(surface).substring(2)}",
            onPrimary = if (isLightColor(primary)) "#000000" else "#FFFFFF",
            onSecondary = if (isLightColor(secondary)) "#000000" else "#FFFFFF",
            onBackground = if (isLight) "#000000" else "#FFFFFF",
            onSurface = if (isLight) "#000000" else "#FFFFFF"
        )
    }
    
    /**
     * Проверка, является ли цвет светлым
     */
    private fun isLightColor(color: Int): Boolean {
        val red = Color.red(color)
        val green = Color.green(color)
        val blue = Color.blue(color)
        val luminance = (0.299 * red + 0.587 * green + 0.114 * blue) / 255
        return luminance > 0.5
    }
    
    /**
     * Регулировка яркости цвета
     */
    private fun adjustBrightness(color: Int, factor: Float): Int {
        val red = (Color.red(color) * factor).toInt().coerceIn(0, 255)
        val green = (Color.green(color) * factor).toInt().coerceIn(0, 255)
        val blue = (Color.blue(color) * factor).toInt().coerceIn(0, 255)
        return Color.argb(255, red, green, blue)
    }
    
    /**
     * Адаптивная тема на основе времени
     */
    fun getTimeBasedTheme(baseTheme: AdvancedThemeConfig): AdvancedThemeConfig {
        val hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY)
        
        return when (hour) {
            in 6..11 -> baseTheme.copy(
                name = "${baseTheme.name} (Утро)",
                primaryColor = adjustColorTemperature(baseTheme.primaryColor, 0.1f),
                enableGradients = true,
                gradientColors = listOf("#FFE082", "#FFCC02")
            )
            in 12..17 -> baseTheme.copy(
                name = "${baseTheme.name} (День)",
                primaryColor = baseTheme.primaryColor,
                enableGradients = true,
                gradientColors = listOf("#81C784", "#4CAF50")
            )
            in 18..21 -> baseTheme.copy(
                name = "${baseTheme.name} (Вечер)",
                primaryColor = adjustColorTemperature(baseTheme.primaryColor, -0.1f),
                enableGradients = true,
                gradientColors = listOf("#FF8A65", "#FF5722")
            )
            else -> baseTheme.copy(
                name = "${baseTheme.name} (Ночь)",
                primaryColor = adjustColorTemperature(baseTheme.primaryColor, -0.2f),
                backgroundColor = "#0A0A0A",
                surfaceColor = "#1A1A1A",
                enableGradients = true,
                gradientColors = listOf("#3F51B5", "#1A237E")
            )
        }
    }
    
    /**
     * Регулировка цветовой температуры
     */
    private fun adjustColorTemperature(colorHex: String, adjustment: Float): String {
        val color = android.graphics.Color.parseColor(colorHex)
        val hsv = FloatArray(3)
        android.graphics.Color.colorToHSV(color, hsv)
        
        // Регулируем оттенок для изменения температуры
        hsv[0] = (hsv[0] + adjustment * 60).coerceIn(0f, 360f)
        
        val adjustedColor = android.graphics.Color.HSVToColor(hsv)
        return "#${Integer.toHexString(adjustedColor).substring(2)}"
    }
}

/**
 * Цветовая палитра
 */
data class ColorPalette(
    val primary: String = "#6750A4",
    val secondary: String = "#625B71",
    val tertiary: String = "#7D5260",
    val background: String = "#FFFBFE",
    val surface: String = "#FFFBFE",
    val onPrimary: String = "#FFFFFF",
    val onSecondary: String = "#FFFFFF",
    val onBackground: String = "#1C1B1F",
    val onSurface: String = "#1C1B1F"
)

/**
 * Конвертация AdvancedThemeConfig в ColorScheme
 */
fun AdvancedThemeConfig.toColorScheme(isDarkTheme: Boolean = false): ColorScheme {
    return if (isDarkTheme) {
        darkColorScheme(
            primary = Color(android.graphics.Color.parseColor(primaryColor)),
            secondary = Color(android.graphics.Color.parseColor(secondaryColor)),
            tertiary = Color(android.graphics.Color.parseColor(tertiaryColor)),
            background = Color(android.graphics.Color.parseColor(backgroundColor)),
            surface = Color(android.graphics.Color.parseColor(surfaceColor)),
            onPrimary = Color(android.graphics.Color.parseColor(onPrimaryColor)),
            onSecondary = Color(android.graphics.Color.parseColor(onSecondaryColor)),
            onBackground = Color(android.graphics.Color.parseColor(onBackgroundColor)),
            onSurface = Color(android.graphics.Color.parseColor(onSurfaceColor))
        )
    } else {
        lightColorScheme(
            primary = Color(android.graphics.Color.parseColor(primaryColor)),
            secondary = Color(android.graphics.Color.parseColor(secondaryColor)),
            tertiary = Color(android.graphics.Color.parseColor(tertiaryColor)),
            background = Color(android.graphics.Color.parseColor(backgroundColor)),
            surface = Color(android.graphics.Color.parseColor(surfaceColor)),
            onPrimary = Color(android.graphics.Color.parseColor(onPrimaryColor)),
            onSecondary = Color(android.graphics.Color.parseColor(onSecondaryColor)),
            onBackground = Color(android.graphics.Color.parseColor(onBackgroundColor)),
            onSurface = Color(android.graphics.Color.parseColor(onSurfaceColor))
        )
    }
}

/**
 * Composable для применения продвинутой темы
 */
@Composable
fun AdvancedTheme(
    themeConfig: AdvancedThemeConfig = PresetThemes.MATERIAL_YOU,
    isDarkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    
    // Применяем адаптивные изменения
    val adaptiveTheme = remember(themeConfig) {
        when {
            themeConfig.enableTimeBasedThemes -> 
                AdvancedThemeManager.getTimeBasedTheme(themeConfig)
            else -> themeConfig
        }
    }
    
    val colorScheme = adaptiveTheme.toColorScheme(isDarkTheme)
    
    // Анимированные переходы цветов
    val animatedColorScheme = if (adaptiveTheme.enableColorTransitions) {
        colorScheme.copy(
            primary = animateColorAsState(
                targetValue = colorScheme.primary,
                animationSpec = tween(adaptiveTheme.animationDuration),
                label = "primary_color"
            ).value,
            secondary = animateColorAsState(
                targetValue = colorScheme.secondary,
                animationSpec = tween(adaptiveTheme.animationDuration),
                label = "secondary_color"
            ).value,
            background = animateColorAsState(
                targetValue = colorScheme.background,
                animationSpec = tween(adaptiveTheme.animationDuration),
                label = "background_color"
            ).value
        )
    } else {
        colorScheme
    }
    
    MaterialTheme(
        colorScheme = animatedColorScheme,
        typography = Typography(), // Можно расширить для кастомной типографики
        content = content
    )
}

