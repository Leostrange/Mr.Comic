package com.example.core.data.reader

import android.net.Uri
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Детектор режима чтения на основе метаданных комикса
 */
@Singleton
class ReadingModeDetector @Inject constructor() {
    
    companion object {
        private const val TAG = "ReadingModeDetector"
        
        // Ключевые слова для определения манги
        private val MANGA_KEYWORDS = setOf(
            "manga", "манга", "mangaka", "mangas", "mangas", "mangaka",
            "japanese", "японский", "japan", "япония", "jap", "jp",
            "shounen", "shoujo", "seinen", "josei", "kodomomuke",
            "one piece", "naruto", "dragon ball", "bleach", "attack on titan",
            "death note", "fullmetal alchemist", "demon slayer", "jujutsu kaisen"
        )
        
        // Ключевые слова для определения вебтунов
        private val WEBTOON_KEYWORDS = setOf(
            "webtoon", "вебтун", "webtoons", "вебтуны", "web comic", "веб комикс",
            "manhwa", "манхва", "korean", "корейский", "korea", "корея", "kr",
            "tower of god", "god of high school", "noblesse", "solo leveling",
            "omniscient reader", "the beginning after the end", "unordinary"
        )
        
        // Ключевые слова для определения комиксов
        private val COMIC_KEYWORDS = setOf(
            "comic", "комикс", "comics", "комиксы", "graphic novel", "графический роман",
            "american", "американский", "usa", "сша", "us", "сша",
            "marvel", "dc", "batman", "superman", "spider-man", "x-men",
            "avengers", "justice league", "wonder woman", "iron man", "captain america"
        )
    }
    
    /**
     * Определить режим чтения на основе URI файла
     */
    fun detectReadingMode(uri: Uri): String {
        val fileName = getFileNameFromUri(uri)
        return detectReadingModeFromFileName(fileName)
    }
    
    /**
     * Определить режим чтения на основе имени файла
     */
    fun detectReadingModeFromFileName(fileName: String): String {
        val lowerFileName = fileName.lowercase()
        
        // Проверяем ключевые слова для вебтунов
        if (WEBTOON_KEYWORDS.any { keyword -> lowerFileName.contains(keyword) }) {
            return "webtoon"
        }
        
        // Проверяем ключевые слова для манги
        if (MANGA_KEYWORDS.any { keyword -> lowerFileName.contains(keyword) }) {
            return "manga"
        }
        
        // Проверяем ключевые слова для комиксов
        if (COMIC_KEYWORDS.any { keyword -> lowerFileName.contains(keyword) }) {
            return "comic"
        }
        
        // Проверяем расширение файла
        val extension = getFileExtension(fileName)
        when (extension) {
            "pdf" -> {
                // PDF файлы чаще всего являются комиксами или мангой
                // Дополнительная проверка по имени файла
                if (lowerFileName.contains("manga") || lowerFileName.contains("манга")) {
                    return "manga"
                }
                return "comic"
            }
            "cbz", "cbr" -> {
                // Архивы комиксов - по умолчанию комикс
                return "comic"
            }
        }
        
        // По умолчанию возвращаем комикс
        return "comic"
    }
    
    /**
     * Определить направление чтения на основе режима
     */
    fun getReadingDirection(readingMode: String): String {
        return when (readingMode.lowercase()) {
            "manga" -> "rtl" // Right-to-Left для манги
            "webtoon" -> "vertical" // Вертикальное для вебтунов
            "comic" -> "ltr" // Left-to-Right для комиксов
            else -> "ltr"
        }
    }
    
    /**
     * Получить имя файла из URI
     */
    private fun getFileNameFromUri(uri: Uri): String {
        return try {
            val path = uri.path ?: ""
            path.substringAfterLast("/")
        } catch (e: Exception) {
            ""
        }
    }
    
    /**
     * Получить расширение файла
     */
    private fun getFileExtension(fileName: String): String {
        return fileName.substringAfterLast(".", "").lowercase()
    }
    
    /**
     * Проверить, является ли файл мангой
     */
    fun isManga(fileName: String): Boolean {
        return detectReadingModeFromFileName(fileName) == "manga"
    }
    
    /**
     * Проверить, является ли файл вебтуном
     */
    fun isWebtoon(fileName: String): Boolean {
        return detectReadingModeFromFileName(fileName) == "webtoon"
    }
    
    /**
     * Проверить, является ли файл комиксом
     */
    fun isComic(fileName: String): Boolean {
        return detectReadingModeFromFileName(fileName) == "comic"
    }
}
