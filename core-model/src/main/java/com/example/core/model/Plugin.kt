package com.example.core.model

import java.util.Date

/**
 * Манифест плагина
 */
data class PluginManifest(
    val id: String,
    val name: String,
    val version: String,
    val description: String,
    val author: String,
    val type: PluginType,
    val capabilities: List<PluginCapability>,
    val dependencies: List<String> = emptyList(),
    val minSdkVersion: Int = 21,
    val targetSdkVersion: Int = 34,
    val permissions: List<String> = emptyList(),
    val iconPath: String? = null,
    val homepage: String? = null,
    val license: String? = null
)

/**
 * Типы плагинов
 */
enum class PluginType {
    OCR,            // OCR движки
    TRANSLATE,      // Переводчики
    FORMAT,         // Обработчики форматов
    RENDER,         // Рендеринг и эффекты
    ANALYTICS,      // Аналитика
    THEME,          // Темы
    OTHER           // Другие
}

/**
 * Возможности плагина
 */
enum class PluginCapability {
    OFFLINE_OCR,        // Офлайн OCR
    ONLINE_OCR,         // Онлайн OCR
    OFFLINE_TRANSLATE,   // Офлайн перевод
    ONLINE_TRANSLATE,    // Онлайн перевод
    IMAGE_PROCESSING,    // Обработка изображений
    TEXT_RECOGNITION,    // Распознавание текста
    BUBBLE_DETECTION,    // Детекция облачков
    FORMAT_SUPPORT,      // Поддержка форматов
    CUSTOM_UI,           // Пользовательский UI
    NETWORK_ACCESS       // Доступ к сети
}

/**
 * Состояние плагина
 */
enum class PluginState {
    INSTALLED,      // Установлен
    ENABLED,        // Включен
    DISABLED,       // Отключен
    UPDATING,       // Обновляется
    ERROR,          // Ошибка
    UNINSTALLED     // Удален
}

/**
 * Информация о плагине в системе
 */
data class PluginInfo(
    val manifest: PluginManifest,
    val state: PluginState,
    val installDate: Date,
    val lastUsed: Date? = null,
    val errorMessage: String? = null,
    val isSystemPlugin: Boolean = false
)
