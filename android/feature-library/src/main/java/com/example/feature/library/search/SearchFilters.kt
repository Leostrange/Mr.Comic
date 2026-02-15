package com.example.feature.library.search

import com.example.core.model.ComicFormat

/**
 * Фильтры для поиска комиксов
 */
data class SearchFilters(
    val formats: Set<ComicFormat> = emptySet(),
    val folderId: String? = null,
    val dateRange: DateRange? = null,
    val readStatus: ReadStatus = ReadStatus.ALL,
    val bookmarkedOnly: Boolean = false
) {
    /**
     * Проверить, активны ли фильтры
     */
    val isActive: Boolean
        get() = formats.isNotEmpty() || 
                folderId != null || 
                dateRange != null || 
                readStatus != ReadStatus.ALL || 
                bookmarkedOnly
    
    /**
     * Очистить все фильтры
     */
    fun clear(): SearchFilters {
        return SearchFilters()
    }
}

/**
 * Диапазон дат
 */
data class DateRange(
    val start: Long,
    val end: Long
) {
    companion object {
        /**
         * Последние 7 дней
         */
        fun lastWeek(): DateRange {
            val now = System.currentTimeMillis()
            val weekAgo = now - (7 * 24 * 60 * 60 * 1000)
            return DateRange(weekAgo, now)
        }
        
        /**
         * Последний месяц
         */
        fun lastMonth(): DateRange {
            val now = System.currentTimeMillis()
            val monthAgo = now - (30L * 24 * 60 * 60 * 1000)
            return DateRange(monthAgo, now)
        }
        
        /**
         * Последний год
         */
        fun lastYear(): DateRange {
            val now = System.currentTimeMillis()
            val yearAgo = now - (365L * 24 * 60 * 60 * 1000)
            return DateRange(yearAgo, now)
        }
    }
}

/**
 * Статус чтения
 */
enum class ReadStatus {
    ALL,        // Все
    UNREAD,     // Непрочитанные
    READING,    // Читаю
    COMPLETED   // Прочитанные
}
