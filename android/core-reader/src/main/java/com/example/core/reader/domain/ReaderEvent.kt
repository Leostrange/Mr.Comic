package com.example.core.reader.domain

import android.net.Uri

/**
 * События, которые могут произойти во время чтения комиксов
 */
sealed class ReaderEvent {
    /**
     * Страница не загрузилась
     */
    data class PageLoadFailed(
        val pageIndex: Int,
        val error: Throwable,
        val canRetry: Boolean = true
    ) : ReaderEvent()
    
    /**
     * Обнаружен формат RAR5, требуется конвертация
     */
    data class ConversionNeeded(
        val originalUri: Uri,
        val reason: String
    ) : ReaderEvent()
    
    /**
     * Конвертация в процессе
     */
    data class ConversionInProgress(
        val progress: Float
    ) : ReaderEvent()
    
    /**
     * Конвертация завершена успешно
     */
    data class ConversionCompleted(
        val convertedUri: Uri
    ) : ReaderEvent()
    
    /**
     * Конвертация не удалась
     */
    data class ConversionFailed(
        val error: Throwable
    ) : ReaderEvent()
    
    /**
     * Обнаружен поврежденный архив
     */
    data class CorruptedArchive(
        val pageIndex: Int?,
        val error: String
    ) : ReaderEvent()
    
    /**
     * Страница пропущена из-за ошибки
     */
    data class PageSkipped(
        val pageIndex: Int,
        val reason: String
    ) : ReaderEvent()
}
