package com.example.mrcomic.utils

import android.content.Context
import android.util.Log
import nl.siegmann.epublib.epub.EpubReader as LibEpubReader
import nl.siegmann.epublib.domain.Book
import nl.siegmann.epublib.domain.Resource
import nl.siegmann.epublib.domain.MediaType
import java.io.InputStream
import java.io.ByteArrayInputStream

/**
 * Расширенный EPUB ридер с поддержкой мультимедиа контента
 * Поддерживает видео, аудио и интерактивные элементы
 */
class EpubReader(private val context: Context) {

    companion object {
        private const val TAG = "EpubReader"
        
        // Поддерживаемые мультимедиа форматы
        private val VIDEO_FORMATS = setOf("mp4", "webm", "ogg", "avi", "mov")
        private val AUDIO_FORMATS = setOf("mp3", "ogg", "wav", "m4a", "aac", "flac")
        private val INTERACTIVE_FORMATS = setOf("js", "css", "svg")
    }

    private var currentBook: Book? = null

    /**
     * Открытие EPUB файла
     */
    fun openEpub(inputStream: InputStream): Book? {
        return try {
            val epubReader = LibEpubReader()
            val book = epubReader.readEpub(inputStream)
            currentBook = book
            
            Log.i(TAG, "Opened EPUB: ${book.title}")
            Log.i(TAG, "Author: ${book.metadata.authors.joinToString(", ") { it.toString() }}")
            Log.i(TAG, "Spine items: ${book.spine.spineReferences.size}")
            
            // Анализируем мультимедиа контент
            analyzeMultimediaContent(book)
            
            book
        } catch (e: Exception) {
            Log.e(TAG, "Error opening EPUB", e)
            null
        }
    }

    /**
     * Анализ мультимедиа контента в EPUB
     */
    private fun analyzeMultimediaContent(book: Book) {
        val multimediaResources = extractMultimediaResources(book)
        
        Log.i(TAG, "Multimedia analysis:")
        Log.i(TAG, "  Video files: ${multimediaResources.videoResources.size}")
        Log.i(TAG, "  Audio files: ${multimediaResources.audioResources.size}")
        Log.i(TAG, "  Interactive files: ${multimediaResources.interactiveResources.size}")
        
        multimediaResources.videoResources.forEach { resource ->
            Log.d(TAG, "  Video: ${resource.href} (${resource.mediaType})")
        }
        
        multimediaResources.audioResources.forEach { resource ->
            Log.d(TAG, "  Audio: ${resource.href} (${resource.mediaType})")
        }
        
        multimediaResources.interactiveResources.forEach { resource ->
            Log.d(TAG, "  Interactive: ${resource.href} (${resource.mediaType})")
        }
    }

    /**
     * Извлечение мультимедиа ресурсов
     */
    fun extractMultimediaResources(book: Book): MultimediaResources {
        val videoResources = mutableListOf<Resource>()
        val audioResources = mutableListOf<Resource>()
        val interactiveResources = mutableListOf<Resource>()
        
        // Проверяем все ресурсы в книге
        book.resources.all.forEach { resource ->
            val extension = getFileExtension(resource.href).lowercase()
            
            when {
                VIDEO_FORMATS.contains(extension) -> {
                    videoResources.add(resource)
                    Log.d(TAG, "Found video resource: ${resource.href}")
                }
                AUDIO_FORMATS.contains(extension) -> {
                    audioResources.add(resource)
                    Log.d(TAG, "Found audio resource: ${resource.href}")
                }
                INTERACTIVE_FORMATS.contains(extension) -> {
                    interactiveResources.add(resource)
                    Log.d(TAG, "Found interactive resource: ${resource.href}")
                }
            }
        }
        
        return MultimediaResources(videoResources, audioResources, interactiveResources)
    }

    /**
     * Получение видео ресурсов
     */
    fun getVideoResources(): List<MultimediaResource> {
        val book = currentBook ?: return emptyList()
        val multimediaResources = extractMultimediaResources(book)
        
        return multimediaResources.videoResources.map { resource ->
            MultimediaResource(
                href = resource.href,
                mediaType = resource.mediaType?.name ?: "unknown",
                size = resource.size,
                data = resource.data,
                title = extractTitleFromResource(resource)
            )
        }
    }

    /**
     * Получение аудио ресурсов
     */
    fun getAudioResources(): List<MultimediaResource> {
        val book = currentBook ?: return emptyList()
        val multimediaResources = extractMultimediaResources(book)
        
        return multimediaResources.audioResources.map { resource ->
            MultimediaResource(
                href = resource.href,
                mediaType = resource.mediaType?.name ?: "unknown",
                size = resource.size,
                data = resource.data,
                title = extractTitleFromResource(resource)
            )
        }
    }

    /**
     * Получение интерактивных ресурсов
     */
    fun getInteractiveResources(): List<MultimediaResource> {
        val book = currentBook ?: return emptyList()
        val multimediaResources = extractMultimediaResources(book)
        
        return multimediaResources.interactiveResources.map { resource ->
            MultimediaResource(
                href = resource.href,
                mediaType = resource.mediaType?.name ?: "unknown",
                size = resource.size,
                data = resource.data,
                title = extractTitleFromResource(resource)
            )
        }
    }

    /**
     * Проверка наличия мультимедиа контента
     */
    fun hasMultimediaContent(): Boolean {
        val book = currentBook ?: return false
        val multimediaResources = extractMultimediaResources(book)
        
        return multimediaResources.videoResources.isNotEmpty() ||
               multimediaResources.audioResources.isNotEmpty() ||
               multimediaResources.interactiveResources.isNotEmpty()
    }

    /**
     * Получение статистики мультимедиа
     */
    fun getMultimediaStatistics(): MultimediaStatistics {
        val book = currentBook ?: return MultimediaStatistics()
        val multimediaResources = extractMultimediaResources(book)
        
        val totalVideoSize = multimediaResources.videoResources.sumOf { it.size }
        val totalAudioSize = multimediaResources.audioResources.sumOf { it.size }
        val totalInteractiveSize = multimediaResources.interactiveResources.sumOf { it.size }
        
        return MultimediaStatistics(
            videoCount = multimediaResources.videoResources.size,
            audioCount = multimediaResources.audioResources.size,
            interactiveCount = multimediaResources.interactiveResources.size,
            totalVideoSizeMB = totalVideoSize / (1024 * 1024),
            totalAudioSizeMB = totalAudioSize / (1024 * 1024),
            totalInteractiveSizeMB = totalInteractiveSize / (1024 * 1024)
        )
    }

    /**
     * Извлечение заголовка из ресурса
     */
    private fun extractTitleFromResource(resource: Resource): String {
        val fileName = resource.href.substringAfterLast("/")
        return fileName.substringBeforeLast(".")
    }

    /**
     * Получение расширения файла
     */
    private fun getFileExtension(href: String): String {
        return href.substringAfterLast(".", "")
    }

    /**
     * Получение текущей книги
     */
    fun getCurrentBook(): Book? = currentBook

    /**
     * Закрытие книги и освобождение ресурсов
     */
    fun close() {
        currentBook = null
        Log.i(TAG, "EPUB reader closed")
    }

    /**
     * Контейнер для мультимедиа ресурсов
     */
    data class MultimediaResources(
        val videoResources: List<Resource>,
        val audioResources: List<Resource>,
        val interactiveResources: List<Resource>
    )

    /**
     * Мультимедиа ресурс
     */
    data class MultimediaResource(
        val href: String,
        val mediaType: String,
        val size: Long,
        val data: ByteArray,
        val title: String
    ) {
        val sizeKB: Long get() = size / 1024
        val sizeMB: Float get() = size / (1024f * 1024f)
        
        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (javaClass != other?.javaClass) return false
            
            other as MultimediaResource
            
            if (href != other.href) return false
            if (mediaType != other.mediaType) return false
            if (size != other.size) return false
            if (!data.contentEquals(other.data)) return false
            if (title != other.title) return false
            
            return true
        }
        
        override fun hashCode(): Int {
            var result = href.hashCode()
            result = 31 * result + mediaType.hashCode()
            result = 31 * result + size.hashCode()
            result = 31 * result + data.contentHashCode()
            result = 31 * result + title.hashCode()
            return result
        }
    }

    /**
     * Статистика мультимедиа контента
     */
    data class MultimediaStatistics(
        val videoCount: Int = 0,
        val audioCount: Int = 0,
        val interactiveCount: Int = 0,
        val totalVideoSizeMB: Long = 0,
        val totalAudioSizeMB: Long = 0,
        val totalInteractiveSizeMB: Long = 0
    ) {
        val totalMultimediaCount: Int get() = videoCount + audioCount + interactiveCount
        val totalMultimediaSizeMB: Long get() = totalVideoSizeMB + totalAudioSizeMB + totalInteractiveSizeMB
        val hasMultimedia: Boolean get() = totalMultimediaCount > 0
        
        override fun toString(): String {
            return "MultimediaStats(video=$videoCount (${totalVideoSizeMB}MB), audio=$audioCount (${totalAudioSizeMB}MB), interactive=$interactiveCount (${totalInteractiveSizeMB}MB))"
        }
    }
}


