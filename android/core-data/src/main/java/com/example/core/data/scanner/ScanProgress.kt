package com.example.core.data.scanner

/**
 * Прогресс сканирования библиотеки
 */
data class ScanProgress(
    val currentFile: String = "",
    val processedFiles: Int = 0,
    val totalFiles: Int = 0,
    val foundComics: Int = 0,
    val status: ScanStatus = ScanStatus.IDLE,
    val error: String? = null
) {
    /**
     * Процент выполнения (0-100)
     */
    val percentage: Int
        get() = if (totalFiles > 0) {
            ((processedFiles.toFloat() / totalFiles.toFloat()) * 100).toInt()
        } else {
            0
        }
    
    /**
     * Проверка, завершено ли сканирование
     */
    val isCompleted: Boolean
        get() = status == ScanStatus.COMPLETED || status == ScanStatus.FAILED
    
    /**
     * Проверка, выполняется ли сканирование
     */
    val isRunning: Boolean
        get() = status == ScanStatus.SCANNING
}

/**
 * Статус сканирования
 */
enum class ScanStatus {
    IDLE,           // Ожидание
    PREPARING,      // Подготовка
    SCANNING,       // Сканирование
    COMPLETED,      // Завершено
    FAILED,         // Ошибка
    CANCELLED       // Отменено
}

/**
 * Результат сканирования
 */
data class ScanResult(
    val foundComics: Int = 0,
    val processedFiles: Int = 0,
    val errors: List<String> = emptyList(),
    val duration: Long = 0 // в миллисекундах
)

/**
 * Настройки сканирования форматов
 */
enum class ScanMode {
    ALWAYS,         // Всегда включать
    CONDITIONAL,    // Только если есть в папке
    NEVER           // Никогда не включать
}

/**
 * Настройки сканирования
 */
data class ScanSettings(
    val cbzMode: ScanMode = ScanMode.ALWAYS,
    val cbrMode: ScanMode = ScanMode.ALWAYS,
    val pdfMode: ScanMode = ScanMode.ALWAYS,
    val folderMode: ScanMode = ScanMode.CONDITIONAL,
    val autoRefresh: Boolean = false,
    val scanSubfolders: Boolean = true
)
