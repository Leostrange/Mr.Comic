package com.example.mrcomic.data

import android.content.Context
import kotlinx.coroutines.*
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import java.io.File
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import java.util.concurrent.ThreadPoolExecutor
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import kotlin.system.measureTimeMillis

/**
 * Система оптимизации производительности для импорта и обработки комиксов
 * Обеспечивает максимальную скорость при минимальном потреблении ресурсов
 */
object PerformanceOptimizer {
    
    data class PerformanceMetrics(
        val totalProcessingTime: Long,
        val averageFileProcessingTime: Long,
        val throughputFilesPerSecond: Double,
        val memoryUsageMB: Long,
        val cpuUsagePercent: Double,
        val cacheHitRate: Double,
        val errorRate: Double,
        val queueSize: Int
    )
    
    data class OptimizationSettings(
        val maxConcurrentTasks: Int = Runtime.getRuntime().availableProcessors(),
        val enableMemoryOptimization: Boolean = true,
        val enableCaching: Boolean = true,
        val enablePreloading: Boolean = true,
        val enableCompression: Boolean = true,
        val maxMemoryUsageMB: Long = 512,
        val cacheSize: Int = 100,
        val batchSize: Int = 10,
        val prioritizeSpeed: Boolean = true
    )
    
    data class ProcessingTask(
        val file: File,
        val priority: TaskPriority,
        val callback: (Result<Any>) -> Unit
    )
    
    enum class TaskPriority {
        LOW, NORMAL, HIGH, CRITICAL
    }
    
    private val settings = MutableStateFlow(OptimizationSettings())
    private val metrics = MutableStateFlow(PerformanceMetrics(0, 0, 0.0, 0, 0.0, 0.0, 0.0, 0))
    
    // Пулы потоков для разных типов задач
    private val ioExecutor = Executors.newFixedThreadPool(4) as ThreadPoolExecutor
    private val cpuExecutor = Executors.newFixedThreadPool(
        Runtime.getRuntime().availableProcessors()
    ) as ThreadPoolExecutor
    private val backgroundExecutor = Executors.newFixedThreadPool(2) as ThreadPoolExecutor
    
    // Кэши для оптимизации
    private val metadataCache = ConcurrentHashMap<String, AdvancedMetadataExtractor.ComicMetadata>()
    private val thumbnailCache = ConcurrentHashMap<String, File>()
    private val archiveInfoCache = ConcurrentHashMap<String, ArchiveExtractor.ArchiveInfo>()
    
    // Очереди задач с приоритетами
    private val taskQueues = mapOf(
        TaskPriority.CRITICAL to Channel<ProcessingTask>(Channel.UNLIMITED),
        TaskPriority.HIGH to Channel<ProcessingTask>(Channel.UNLIMITED),
        TaskPriority.NORMAL to Channel<ProcessingTask>(Channel.UNLIMITED),
        TaskPriority.LOW to Channel<ProcessingTask>(Channel.UNLIMITED)
    )
    
    // Метрики производительности
    private val processedFiles = AtomicInteger(0)
    private val totalProcessingTime = AtomicLong(0)
    private val cacheHits = AtomicInteger(0)
    private val cacheRequests = AtomicInteger(0)
    private val errors = AtomicInteger(0)
    
    private var isInitialized = false
    
    /**
     * Инициализация системы оптимизации
     */
    suspend fun initialize(context: Context, customSettings: OptimizationSettings? = null) {
        if (isInitialized) return
        
        customSettings?.let { settings.value = it }
        
        // Запускаем обработчики задач
        startTaskProcessors()
        
        // Запускаем мониторинг производительности
        startPerformanceMonitoring()
        
        // Предварительная загрузка кэшей
        if (settings.value.enablePreloading) {
            preloadCaches(context)
        }
        
        isInitialized = true
    }
    
    /**
     * Оптимизированный импорт файла с приоритетом
     */
    suspend fun optimizedImport(
        file: File,
        context: Context,
        priority: TaskPriority = TaskPriority.NORMAL,
        onProgress: ((Float) -> Unit)? = null
    ): Result<AdvancedMetadataExtractor.ComicMetadata> = withContext(Dispatchers.IO) {
        
        val startTime = System.currentTimeMillis()
        
        try {
            // Проверяем кэш
            val fileHash = calculateQuickHash(file)
            metadataCache[fileHash]?.let { cachedMetadata ->
                cacheHits.incrementAndGet()
                return@withContext Result.success(cachedMetadata)
            }
            
            cacheRequests.incrementAndGet()
            
            // Валидация файла
            val validationErrors = FormatHandler.validateFile(file)
            if (validationErrors.isNotEmpty()) {
                errors.incrementAndGet()
                return@withContext Result.failure(Exception("Ошибки валидации: ${validationErrors.joinToString()}"))
            }
            
            onProgress?.invoke(0.1f)
            
            // Определяем оптимальную стратегию обработки
            val strategy = determineProcessingStrategy(file)
            
            onProgress?.invoke(0.2f)
            
            // Извлекаем метаданные с оптимизацией
            val metadata = when (strategy) {
                ProcessingStrategy.FAST -> extractMetadataFast(file, context, onProgress)
                ProcessingStrategy.BALANCED -> extractMetadataBalanced(file, context, onProgress)
                ProcessingStrategy.THOROUGH -> extractMetadataThorough(file, context, onProgress)
            }
            
            onProgress?.invoke(0.9f)
            
            // Кэшируем результат
            if (settings.value.enableCaching) {
                metadataCache[fileHash] = metadata
                
                // Управление размером кэша
                if (metadataCache.size > settings.value.cacheSize) {
                    cleanupCache()
                }
            }
            
            onProgress?.invoke(1.0f)
            
            // Обновляем метрики
            val processingTime = System.currentTimeMillis() - startTime
            totalProcessingTime.addAndGet(processingTime)
            processedFiles.incrementAndGet()
            
            Result.success(metadata)
            
        } catch (e: Exception) {
            errors.incrementAndGet()
            Result.failure(e)
        }
    }
    
    /**
     * Пакетный импорт файлов с оптимизацией
     */
    suspend fun batchImport(
        files: List<File>,
        context: Context,
        onProgress: ((Int, Int) -> Unit)? = null
    ): List<Result<AdvancedMetadataExtractor.ComicMetadata>> = withContext(Dispatchers.IO) {
        
        val results = mutableListOf<Result<AdvancedMetadataExtractor.ComicMetadata>>()
        val batchSize = settings.value.batchSize
        
        // Сортируем файлы по размеру для оптимизации
        val sortedFiles = files.sortedBy { it.length() }
        
        // Обрабатываем файлы пакетами
        sortedFiles.chunked(batchSize).forEachIndexed { batchIndex, batch ->
            
            // Параллельная обработка в рамках пакета
            val batchResults = batch.mapIndexed { fileIndex, file ->
                async {
                    val globalIndex = batchIndex * batchSize + fileIndex
                    onProgress?.invoke(globalIndex, files.size)
                    
                    optimizedImport(file, context, TaskPriority.NORMAL) { fileProgress ->
                        // Обновляем общий прогресс
                        val totalProgress = (globalIndex + fileProgress) / files.size
                        onProgress?.invoke((totalProgress * files.size).toInt(), files.size)
                    }
                }
            }.awaitAll()
            
            results.addAll(batchResults)
            
            // Принудительная сборка мусора между пакетами
            if (settings.value.enableMemoryOptimization) {
                System.gc()
                delay(100) // Даем время на сборку мусора
            }
        }
        
        results
    }
    
    /**
     * Предварительная загрузка и кэширование
     */
    suspend fun preloadFile(
        file: File,
        context: Context,
        priority: TaskPriority = TaskPriority.LOW
    ) = withContext(Dispatchers.IO) {
        
        if (!settings.value.enablePreloading) return@withContext
        
        try {
            // Предварительно загружаем информацию об архиве
            val archiveInfo = ArchiveExtractor.getArchiveInfo(file)
            val fileHash = calculateQuickHash(file)
            archiveInfoCache[fileHash] = archiveInfo
            
            // Предварительно генерируем миниатюру
            if (archiveInfo.totalEntries > 0) {
                generateThumbnailAsync(file, context, priority)
            }
            
        } catch (e: Exception) {
            // Игнорируем ошибки предварительной загрузки
        }
    }
    
    /**
     * Оптимизация памяти
     */
    suspend fun optimizeMemory() = withContext(Dispatchers.IO) {
        
        if (!settings.value.enableMemoryOptimization) return@withContext
        
        // Очищаем кэши если превышен лимит памяти
        val currentMemoryUsage = getCurrentMemoryUsage()
        if (currentMemoryUsage > settings.value.maxMemoryUsageMB) {
            
            // Очищаем кэши по приоритету
            cleanupCache()
            
            // Принудительная сборка мусора
            System.gc()
            
            // Если память все еще превышена, очищаем все кэши
            val newMemoryUsage = getCurrentMemoryUsage()
            if (newMemoryUsage > settings.value.maxMemoryUsageMB) {
                clearAllCaches()
                System.gc()
            }
        }
    }
    
    /**
     * Получение текущих метрик производительности
     */
    fun getPerformanceMetrics(): StateFlow<PerformanceMetrics> = metrics
    
    /**
     * Обновление настроек оптимизации
     */
    fun updateSettings(newSettings: OptimizationSettings) {
        settings.value = newSettings
    }
    
    // Приватные методы
    
    private enum class ProcessingStrategy {
        FAST,       // Быстрая обработка, минимум метаданных
        BALANCED,   // Сбалансированная обработка
        THOROUGH    // Полная обработка, максимум метаданных
    }
    
    private fun determineProcessingStrategy(file: File): ProcessingStrategy {
        return when {
            settings.value.prioritizeSpeed -> ProcessingStrategy.FAST
            file.length() > 100 * 1024 * 1024 -> ProcessingStrategy.FAST // Файлы > 100MB
            file.length() < 10 * 1024 * 1024 -> ProcessingStrategy.THOROUGH // Файлы < 10MB
            else -> ProcessingStrategy.BALANCED
        }
    }
    
    private suspend fun extractMetadataFast(
        file: File,
        context: Context,
        onProgress: ((Float) -> Unit)?
    ): AdvancedMetadataExtractor.ComicMetadata = withContext(Dispatchers.IO) {
        
        onProgress?.invoke(0.3f)
        
        // Быстрое извлечение только основных метаданных
        val metadata = AdvancedMetadataExtractor.extractFullMetadata(
            file, context, includeImageAnalysis = false
        )
        
        onProgress?.invoke(0.8f)
        
        metadata
    }
    
    private suspend fun extractMetadataBalanced(
        file: File,
        context: Context,
        onProgress: ((Float) -> Unit)?
    ): AdvancedMetadataExtractor.ComicMetadata = withContext(Dispatchers.IO) {
        
        onProgress?.invoke(0.3f)
        
        // Сбалансированное извлечение метаданных
        val metadata = AdvancedMetadataExtractor.extractFullMetadata(
            file, context, includeImageAnalysis = true
        )
        
        onProgress?.invoke(0.8f)
        
        metadata
    }
    
    private suspend fun extractMetadataThorough(
        file: File,
        context: Context,
        onProgress: ((Float) -> Unit)?
    ): AdvancedMetadataExtractor.ComicMetadata = withContext(Dispatchers.IO) {
        
        onProgress?.invoke(0.3f)
        
        // Полное извлечение всех возможных метаданных
        val metadata = AdvancedMetadataExtractor.extractFullMetadata(
            file, context, includeImageAnalysis = true
        )
        
        onProgress?.invoke(0.6f)
        
        // Дополнительный анализ с помощью IntelligentCatalogizer
        try {
            val catalogResult = IntelligentCatalogizer.analyzeComic(
                File(""), // Заглушка для обложки
                emptyList(),
                mapOf("title" to metadata.title),
                metadata.title
            )
            
            // Объединяем результаты
            val enhancedMetadata = metadata.copy(
                genres = metadata.genres + catalogResult.genre,
                tags = metadata.tags + catalogResult.tags,
                language = metadata.language ?: catalogResult.language,
                customFields = metadata.customFields + mapOf(
                    "aiAnalysis" to catalogResult
                )
            )
            
            onProgress?.invoke(0.8f)
            
            enhancedMetadata
            
        } catch (e: Exception) {
            onProgress?.invoke(0.8f)
            metadata
        }
    }
    
    private fun calculateQuickHash(file: File): String {
        return try {
            // Быстрый хеш на основе размера файла, имени и времени модификации
            val hashInput = "${file.name}_${file.length()}_${file.lastModified()}"
            hashInput.hashCode().toString()
        } catch (e: Exception) {
            file.absolutePath.hashCode().toString()
        }
    }
    
    private fun startTaskProcessors() {
        // Запускаем обработчики для каждого приоритета
        TaskPriority.values().forEach { priority ->
            CoroutineScope(Dispatchers.IO).launch {
                val queue = taskQueues[priority]!!
                
                while (true) {
                    try {
                        val task = queue.receive()
                        processTask(task)
                    } catch (e: Exception) {
                        // Логируем ошибку и продолжаем
                    }
                }
            }
        }
    }
    
    private suspend fun processTask(task: ProcessingTask) = withContext(Dispatchers.IO) {
        try {
            // Здесь будет логика обработки задачи
            // В зависимости от типа задачи
            task.callback(Result.success("Processed"))
        } catch (e: Exception) {
            task.callback(Result.failure(e))
        }
    }
    
    private fun startPerformanceMonitoring() {
        CoroutineScope(Dispatchers.IO).launch {
            while (true) {
                delay(5000) // Обновляем метрики каждые 5 секунд
                
                val currentMetrics = PerformanceMetrics(
                    totalProcessingTime = totalProcessingTime.get(),
                    averageFileProcessingTime = if (processedFiles.get() > 0) {
                        totalProcessingTime.get() / processedFiles.get()
                    } else 0,
                    throughputFilesPerSecond = calculateThroughput(),
                    memoryUsageMB = getCurrentMemoryUsage(),
                    cpuUsagePercent = getCurrentCpuUsage(),
                    cacheHitRate = if (cacheRequests.get() > 0) {
                        cacheHits.get().toDouble() / cacheRequests.get() * 100
                    } else 0.0,
                    errorRate = if (processedFiles.get() > 0) {
                        errors.get().toDouble() / processedFiles.get() * 100
                    } else 0.0,
                    queueSize = taskQueues.values.sumOf { it.tryReceive().isSuccess.let { if (it) 1 else 0 } }
                )
                
                metrics.value = currentMetrics
            }
        }
    }
    
    private suspend fun preloadCaches(context: Context) = withContext(Dispatchers.IO) {
        // Предварительная загрузка часто используемых данных
        try {
            // Инициализация ML моделей
            IntelligentCatalogizer.initialize(context)
            
            // Предварительная загрузка форматов
            FormatHandler.getSupportedFormats()
            
        } catch (e: Exception) {
            // Игнорируем ошибки предварительной загрузки
        }
    }
    
    private suspend fun generateThumbnailAsync(
        file: File,
        context: Context,
        priority: TaskPriority
    ) = withContext(Dispatchers.IO) {
        
        try {
            val fileHash = calculateQuickHash(file)
            
            // Проверяем кэш миниатюр
            if (thumbnailCache.containsKey(fileHash)) return@withContext
            
            // Генерируем миниатюру в фоновом режиме
            async(Dispatchers.IO) {
                try {
                    val format = FormatHandler.detectFormat(file)
                    val extractionResult = FormatHandler.extractContent(
                        file, File(context.cacheDir, "thumbnails"), context
                    )
                    
                    extractionResult.thumbnails.firstOrNull()?.let { thumbnail ->
                        thumbnailCache[fileHash] = thumbnail
                    }
                    
                } catch (e: Exception) {
                    // Игнорируем ошибки генерации миниатюр
                }
            }
            
        } catch (e: Exception) {
            // Игнорируем ошибки
        }
    }
    
    private fun cleanupCache() {
        // Удаляем 25% самых старых записей из кэша
        val cacheSize = metadataCache.size
        val toRemove = cacheSize / 4
        
        val keysToRemove = metadataCache.keys.take(toRemove)
        keysToRemove.forEach { metadataCache.remove(it) }
        
        // Аналогично для других кэшей
        val thumbnailKeysToRemove = thumbnailCache.keys.take(thumbnailCache.size / 4)
        thumbnailKeysToRemove.forEach { thumbnailCache.remove(it) }
        
        val archiveKeysToRemove = archiveInfoCache.keys.take(archiveInfoCache.size / 4)
        archiveKeysToRemove.forEach { archiveInfoCache.remove(it) }
    }
    
    private fun clearAllCaches() {
        metadataCache.clear()
        thumbnailCache.clear()
        archiveInfoCache.clear()
    }
    
    private fun getCurrentMemoryUsage(): Long {
        val runtime = Runtime.getRuntime()
        return (runtime.totalMemory() - runtime.freeMemory()) / (1024 * 1024)
    }
    
    private fun getCurrentCpuUsage(): Double {
        // Упрощенная оценка загрузки CPU
        return (ioExecutor.activeCount + cpuExecutor.activeCount).toDouble() / 
               (ioExecutor.corePoolSize + cpuExecutor.corePoolSize) * 100
    }
    
    private fun calculateThroughput(): Double {
        val timeWindow = 60000 // 1 минута в миллисекундах
        val currentTime = System.currentTimeMillis()
        
        // Упрощенный расчет пропускной способности
        return if (totalProcessingTime.get() > 0) {
            processedFiles.get().toDouble() / (totalProcessingTime.get() / 1000.0)
        } else 0.0
    }
    
    /**
     * Очистка ресурсов при завершении работы
     */
    fun shutdown() {
        ioExecutor.shutdown()
        cpuExecutor.shutdown()
        backgroundExecutor.shutdown()
        clearAllCaches()
        isInitialized = false
    }
}

