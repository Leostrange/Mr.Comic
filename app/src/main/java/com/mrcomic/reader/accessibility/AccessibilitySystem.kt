package com.example.mrcomic.reader.accessibility

import android.content.Context
import android.content.res.Configuration
import android.graphics.*
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import android.speech.tts.TextToSpeech
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.hapticfeedback.HapticFeedbackType
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.platform.*
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.*
import androidx.compose.ui.window.Dialog
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.util.*
import kotlin.math.*

/**
 * Система доступности и адаптивности для ридера комиксов
 * Обеспечивает комфортное чтение для всех пользователей
 */
object AccessibilitySystem {
    
    /**
     * Конфигурация доступности
     */
    data class AccessibilityConfig(
        val enableVoiceOver: Boolean = false,
        val enableHighContrast: Boolean = false,
        val enableLargeText: Boolean = false,
        val enableColorBlindSupport: Boolean = false,
        val enableMotionReduction: Boolean = false,
        val enableHapticFeedback: Boolean = true,
        val enableAudioDescriptions: Boolean = false,
        val enableKeyboardNavigation: Boolean = true,
        val enableGestureNavigation: Boolean = true,
        val fontScale: Float = 1.0f,
        val contrastLevel: Float = 1.0f,
        val colorBlindType: ColorBlindType = ColorBlindType.NONE,
        val readingSpeed: ReadingSpeed = ReadingSpeed.NORMAL,
        val navigationStyle: NavigationStyle = NavigationStyle.STANDARD
    )
    
    /**
     * Типы цветовой слепоты
     */
    enum class ColorBlindType {
        NONE,
        PROTANOPIA,    // Красно-зеленая (отсутствие L-колбочек)
        DEUTERANOPIA,  // Красно-зеленая (отсутствие M-колбочек)
        TRITANOPIA,    // Сине-желтая (отсутствие S-колбочек)
        MONOCHROMACY   // Полная цветовая слепота
    }
    
    /**
     * Скорость чтения
     */
    enum class ReadingSpeed {
        VERY_SLOW, SLOW, NORMAL, FAST, VERY_FAST
    }
    
    /**
     * Стиль навигации
     */
    enum class NavigationStyle {
        STANDARD,      // Обычная навигация
        SIMPLIFIED,    // Упрощенная навигация
        VOICE_GUIDED,  // Голосовое управление
        GESTURE_ONLY,  // Только жесты
        KEYBOARD_ONLY  // Только клавиатура
    }
    
    /**
     * Состояние доступности
     */
    data class AccessibilityState(
        val isVoiceOverActive: Boolean = false,
        val currentFocusElement: String? = null,
        val isDescribing: Boolean = false,
        val currentDescription: String = "",
        val adaptiveSettings: AdaptiveSettings = AdaptiveSettings()
    )
    
    /**
     * Адаптивные настройки
     */
    data class AdaptiveSettings(
        val screenSize: ScreenSize = ScreenSize.NORMAL,
        val orientation: Orientation = Orientation.PORTRAIT,
        val isDarkMode: Boolean = false,
        val systemFontScale: Float = 1.0f,
        val isHighContrastMode: Boolean = false,
        val isReduceMotionEnabled: Boolean = false
    )
    
    enum class ScreenSize { SMALL, NORMAL, LARGE, XLARGE }
    enum class Orientation { PORTRAIT, LANDSCAPE }
    
    private val _accessibilityState = MutableStateFlow(AccessibilityState())
    val accessibilityState: StateFlow<AccessibilityState> = _accessibilityState.asStateFlow()
    
    private var textToSpeech: TextToSpeech? = null
    private var vibrator: Vibrator? = null
    private val accessibilityScope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    
    /**
     * Инициализация системы доступности
     */
    fun initialize(context: Context, config: AccessibilityConfig = AccessibilityConfig()) {
        // Инициализируем TTS
        if (config.enableVoiceOver || config.enableAudioDescriptions) {
            initializeTextToSpeech(context)
        }
        
        // Инициализируем вибрацию
        if (config.enableHapticFeedback) {
            vibrator = context.getSystemService(Context.VIBRATOR_SERVICE) as? Vibrator
        }
        
        // Определяем адаптивные настройки
        updateAdaptiveSettings(context)
        
        // Запускаем мониторинг системных настроек
        startSystemSettingsMonitoring(context)
    }
    
    /**
     * Инициализация Text-to-Speech
     */
    private fun initializeTextToSpeech(context: Context) {
        textToSpeech = TextToSpeech(context) { status ->
            if (status == TextToSpeech.SUCCESS) {
                textToSpeech?.language = Locale.getDefault()
                _accessibilityState.value = _accessibilityState.value.copy(
                    isVoiceOverActive = true
                )
            }
        }
    }
    
    /**
     * Обновление адаптивных настроек
     */
    private fun updateAdaptiveSettings(context: Context) {
        val configuration = context.resources.configuration
        val displayMetrics = context.resources.displayMetrics
        
        val screenSize = when {
            displayMetrics.widthPixels < 600 -> ScreenSize.SMALL
            displayMetrics.widthPixels < 960 -> ScreenSize.NORMAL
            displayMetrics.widthPixels < 1280 -> ScreenSize.LARGE
            else -> ScreenSize.XLARGE
        }
        
        val orientation = if (configuration.orientation == Configuration.ORIENTATION_LANDSCAPE) {
            Orientation.LANDSCAPE
        } else {
            Orientation.PORTRAIT
        }
        
        val isDarkMode = (configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == 
                        Configuration.UI_MODE_NIGHT_YES
        
        val adaptiveSettings = AdaptiveSettings(
            screenSize = screenSize,
            orientation = orientation,
            isDarkMode = isDarkMode,
            systemFontScale = configuration.fontScale
        )
        
        _accessibilityState.value = _accessibilityState.value.copy(
            adaptiveSettings = adaptiveSettings
        )
    }
    
    /**
     * Мониторинг системных настроек
     */
    private fun startSystemSettingsMonitoring(context: Context) {
        accessibilityScope.launch {
            while (true) {
                delay(1000) // Проверяем каждую секунду
                updateAdaptiveSettings(context)
            }
        }
    }
    
    /**
     * Озвучивание текста
     */
    fun speak(text: String, priority: Int = TextToSpeech.QUEUE_ADD) {
        textToSpeech?.speak(text, priority, null, null)
        
        _accessibilityState.value = _accessibilityState.value.copy(
            isDescribing = true,
            currentDescription = text
        )
        
        // Сбрасываем состояние через некоторое время
        accessibilityScope.launch {
            delay(text.length * 50L) // Примерное время озвучивания
            _accessibilityState.value = _accessibilityState.value.copy(
                isDescribing = false,
                currentDescription = ""
            )
        }
    }
    
    /**
     * Остановка озвучивания
     */
    fun stopSpeaking() {
        textToSpeech?.stop()
        _accessibilityState.value = _accessibilityState.value.copy(
            isDescribing = false,
            currentDescription = ""
        )
    }
    
    /**
     * Тактильная обратная связь
     */
    fun provideTactileFeedback(type: HapticFeedbackType = HapticFeedbackType.LongPress) {
        vibrator?.let { vib ->
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val effect = when (type) {
                    HapticFeedbackType.LongPress -> VibrationEffect.createOneShot(50, VibrationEffect.DEFAULT_AMPLITUDE)
                    HapticFeedbackType.TextHandleMove -> VibrationEffect.createOneShot(20, VibrationEffect.DEFAULT_AMPLITUDE)
                    else -> VibrationEffect.createOneShot(30, VibrationEffect.DEFAULT_AMPLITUDE)
                }
                vib.vibrate(effect)
            } else {
                @Suppress("DEPRECATION")
                vib.vibrate(50)
            }
        }
    }
    
    /**
     * Применение цветовых фильтров для цветовой слепоты
     */
    fun applyColorBlindFilter(bitmap: Bitmap, type: ColorBlindType): Bitmap {
        if (type == ColorBlindType.NONE) return bitmap
        
        val width = bitmap.width
        val height = bitmap.height
        val pixels = IntArray(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)
        
        for (i in pixels.indices) {
            pixels[i] = transformColorForColorBlindness(pixels[i], type)
        }
        
        val filteredBitmap = Bitmap.createBitmap(width, height, bitmap.config)
        filteredBitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        
        return filteredBitmap
    }
    
    /**
     * Трансформация цвета для цветовой слепоты
     */
    private fun transformColorForColorBlindness(color: Int, type: ColorBlindType): Int {
        val r = Color.red(color) / 255f
        val g = Color.green(color) / 255f
        val b = Color.blue(color) / 255f
        val a = Color.alpha(color)
        
        val (newR, newG, newB) = when (type) {
            ColorBlindType.PROTANOPIA -> {
                // Матрица для протанопии
                Triple(
                    0.567f * r + 0.433f * g + 0f * b,
                    0.558f * r + 0.442f * g + 0f * b,
                    0f * r + 0.242f * g + 0.758f * b
                )
            }
            ColorBlindType.DEUTERANOPIA -> {
                // Матрица для дейтеранопии
                Triple(
                    0.625f * r + 0.375f * g + 0f * b,
                    0.7f * r + 0.3f * g + 0f * b,
                    0f * r + 0.3f * g + 0.7f * b
                )
            }
            ColorBlindType.TRITANOPIA -> {
                // Матрица для тританопии
                Triple(
                    0.95f * r + 0.05f * g + 0f * b,
                    0f * r + 0.433f * g + 0.567f * b,
                    0f * r + 0.475f * g + 0.525f * b
                )
            }
            ColorBlindType.MONOCHROMACY -> {
                // Преобразование в оттенки серого
                val gray = 0.299f * r + 0.587f * g + 0.114f * b
                Triple(gray, gray, gray)
            }
            else -> Triple(r, g, b)
        }
        
        return Color.argb(
            a,
            (newR.coerceIn(0f, 1f) * 255).toInt(),
            (newG.coerceIn(0f, 1f) * 255).toInt(),
            (newB.coerceIn(0f, 1f) * 255).toInt()
        )
    }
    
    /**
     * Применение высокого контраста
     */
    fun applyHighContrast(bitmap: Bitmap, level: Float = 1.5f): Bitmap {
        val colorMatrix = ColorMatrix().apply {
            val contrast = level
            val brightness = (1f - contrast) / 2f * 255f
            
            set(floatArrayOf(
                contrast, 0f, 0f, 0f, brightness,
                0f, contrast, 0f, 0f, brightness,
                0f, 0f, contrast, 0f, brightness,
                0f, 0f, 0f, 1f, 0f
            ))
        }
        
        val paint = Paint().apply {
            colorFilter = ColorMatrixColorFilter(colorMatrix)
        }
        
        val result = Bitmap.createBitmap(bitmap.width, bitmap.height, bitmap.config)
        val canvas = Canvas(result)
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        
        return result
    }
    
    /**
     * Получение адаптивного размера шрифта
     */
    fun getAdaptiveFontSize(baseFontSize: Dp, config: AccessibilityConfig): Dp {
        val state = _accessibilityState.value
        val systemScale = state.adaptiveSettings.systemFontScale
        val userScale = config.fontScale
        val largeTextMultiplier = if (config.enableLargeText) 1.3f else 1f
        
        return baseFontSize * systemScale * userScale * largeTextMultiplier
    }
    
    /**
     * Получение адаптивного отступа
     */
    fun getAdaptivePadding(basePadding: Dp, config: AccessibilityConfig): Dp {
        val state = _accessibilityState.value
        val screenSizeMultiplier = when (state.adaptiveSettings.screenSize) {
            ScreenSize.SMALL -> 0.8f
            ScreenSize.NORMAL -> 1f
            ScreenSize.LARGE -> 1.2f
            ScreenSize.XLARGE -> 1.4f
        }
        
        val largeTextMultiplier = if (config.enableLargeText) 1.2f else 1f
        
        return basePadding * screenSizeMultiplier * largeTextMultiplier
    }
    
    /**
     * Описание изображения для screen reader
     */
    fun generateImageDescription(
        pageNumber: Int,
        totalPages: Int,
        hasText: Boolean = false,
        characters: List<String> = emptyList(),
        scene: String = ""
    ): String {
        val description = buildString {
            append("Страница $pageNumber из $totalPages. ")
            
            if (scene.isNotEmpty()) {
                append("Сцена: $scene. ")
            }
            
            if (characters.isNotEmpty()) {
                append("Персонажи: ${characters.joinToString(", ")}. ")
            }
            
            if (hasText) {
                append("Содержит текст для чтения. ")
            }
            
            append("Проведите влево для следующей страницы, вправо для предыдущей.")
        }
        
        return description
    }
    
    /**
     * Освобождение ресурсов
     */
    fun cleanup() {
        textToSpeech?.shutdown()
        accessibilityScope.cancel()
    }
}

/**
 * Модификатор для доступности
 */
fun Modifier.accessibilityEnhanced(
    description: String,
    role: Role? = null,
    onClick: (() -> Unit)? = null,
    config: AccessibilitySystem.AccessibilityConfig = AccessibilitySystem.AccessibilityConfig()
): Modifier = this.semantics {
    contentDescription = description
    role?.let { this.role = it }
    
    onClick?.let { clickAction ->
        this.onClick {
            if (config.enableHapticFeedback) {
                AccessibilitySystem.provideTactileFeedback()
            }
            if (config.enableVoiceOver) {
                AccessibilitySystem.speak("Нажато: $description")
            }
            clickAction()
            true
        }
    }
}

/**
 * Компонент настроек доступности
 */
@Composable
fun AccessibilitySettingsPanel(
    config: AccessibilitySystem.AccessibilityConfig,
    onConfigChange: (AccessibilitySystem.AccessibilityConfig) -> Unit,
    modifier: Modifier = Modifier
) {
    val accessibilityState by AccessibilitySystem.accessibilityState.collectAsState()
    
    Card(
        modifier = modifier,
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                text = "Настройки доступности",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold
            )
            
            // Голосовое сопровождение
            AccessibilityToggle(
                title = "Голосовое сопровождение",
                description = "Озвучивание описаний страниц",
                checked = config.enableVoiceOver,
                onCheckedChange = { 
                    onConfigChange(config.copy(enableVoiceOver = it))
                },
                icon = Icons.Default.RecordVoiceOver
            )
            
            // Высокий контраст
            AccessibilityToggle(
                title = "Высокий контраст",
                description = "Увеличение контрастности изображений",
                checked = config.enableHighContrast,
                onCheckedChange = { 
                    onConfigChange(config.copy(enableHighContrast = it))
                },
                icon = Icons.Default.Contrast
            )
            
            // Крупный текст
            AccessibilityToggle(
                title = "Крупный текст",
                description = "Увеличение размера текста",
                checked = config.enableLargeText,
                onCheckedChange = { 
                    onConfigChange(config.copy(enableLargeText = it))
                },
                icon = Icons.Default.FormatSize
            )
            
            // Поддержка цветовой слепоты
            AccessibilityDropdown(
                title = "Поддержка цветовой слепоты",
                options = AccessibilitySystem.ColorBlindType.values().map { 
                    it.name to when(it) {
                        AccessibilitySystem.ColorBlindType.NONE -> "Отключено"
                        AccessibilitySystem.ColorBlindType.PROTANOPIA -> "Протанопия"
                        AccessibilitySystem.ColorBlindType.DEUTERANOPIA -> "Дейтеранопия"
                        AccessibilitySystem.ColorBlindType.TRITANOPIA -> "Тританопия"
                        AccessibilitySystem.ColorBlindType.MONOCHROMACY -> "Монохромазия"
                    }
                },
                selectedOption = config.colorBlindType.name,
                onOptionSelected = { optionName ->
                    val type = AccessibilitySystem.ColorBlindType.valueOf(optionName)
                    onConfigChange(config.copy(colorBlindType = type))
                }
            )
            
            // Тактильная обратная связь
            AccessibilityToggle(
                title = "Тактильная обратная связь",
                description = "Вибрация при взаимодействии",
                checked = config.enableHapticFeedback,
                onCheckedChange = { 
                    onConfigChange(config.copy(enableHapticFeedback = it))
                },
                icon = Icons.Default.Vibration
            )
            
            // Масштаб шрифта
            AccessibilitySlider(
                title = "Масштаб шрифта",
                value = config.fontScale,
                valueRange = 0.5f..2.0f,
                onValueChange = { 
                    onConfigChange(config.copy(fontScale = it))
                },
                valueText = "${(config.fontScale * 100).toInt()}%"
            )
            
            // Уровень контраста
            if (config.enableHighContrast) {
                AccessibilitySlider(
                    title = "Уровень контраста",
                    value = config.contrastLevel,
                    valueRange = 1.0f..3.0f,
                    onValueChange = { 
                        onConfigChange(config.copy(contrastLevel = it))
                    },
                    valueText = "${(config.contrastLevel * 100).toInt()}%"
                )
            }
            
            // Информация о состоянии
            if (accessibilityState.isVoiceOverActive) {
                Card(
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.primaryContainer
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            imageVector = Icons.Default.VolumeUp,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.onPrimaryContainer
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "Голосовое сопровождение активно",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onPrimaryContainer
                        )
                    }
                }
            }
        }
    }
}

/**
 * Переключатель доступности
 */
@Composable
private fun AccessibilityToggle(
    title: String,
    description: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable { onCheckedChange(!checked) }
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(24.dp),
            tint = MaterialTheme.colorScheme.primary
        )
        
        Spacer(modifier = Modifier.width(16.dp))
        
        Column(
            modifier = Modifier.weight(1f)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium
            )
            Text(
                text = description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange
        )
    }
}

/**
 * Выпадающий список доступности
 */
@Composable
private fun AccessibilityDropdown(
    title: String,
    options: List<Pair<String, String>>,
    selectedOption: String,
    onOptionSelected: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    var expanded by remember { mutableStateOf(false) }
    
    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Text(
            text = title,
            style = MaterialTheme.typography.bodyLarge,
            fontWeight = FontWeight.Medium
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        ExposedDropdownMenuBox(
            expanded = expanded,
            onExpandedChange = { expanded = !expanded }
        ) {
            OutlinedTextField(
                value = options.find { it.first == selectedOption }?.second ?: "",
                onValueChange = {},
                readOnly = true,
                trailingIcon = {
                    ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded)
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor()
            )
            
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {
                options.forEach { (key, value) ->
                    DropdownMenuItem(
                        text = { Text(value) },
                        onClick = {
                            onOptionSelected(key)
                            expanded = false
                        }
                    )
                }
            }
        }
    }
}

/**
 * Слайдер доступности
 */
@Composable
private fun AccessibilitySlider(
    title: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    valueText: String,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium
            )
            
            Text(
                text = valueText,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.primary
            )
        }
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Slider(
            value = value,
            onValueChange = onValueChange,
            valueRange = valueRange,
            modifier = Modifier.fillMaxWidth()
        )
    }
}

/**
 * Адаптивный контейнер
 */
@Composable
fun AdaptiveContainer(
    config: AccessibilitySystem.AccessibilityConfig,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit
) {
    val accessibilityState by AccessibilitySystem.accessibilityState.collectAsState()
    val adaptiveSettings = accessibilityState.adaptiveSettings
    
    val containerModifier = modifier
        .then(
            if (config.enableLargeText) {
                Modifier.padding(AccessibilitySystem.getAdaptivePadding(8.dp, config))
            } else {
                Modifier.padding(8.dp)
            }
        )
    
    Box(
        modifier = containerModifier
    ) {
        content()
    }
}

