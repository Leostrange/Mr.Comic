package com.example.mrcomic.reader.performance

import android.content.Context
import android.graphics.*
import android.os.Build
import android.util.LruCache
import androidx.compose.runtime.*
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asImageBitmap
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.io.File
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.Executors
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong
import kotlin.math.*

/**
 * Система оптимизации производительности для ридера комиксов
 * Обеспечивает плавное чтение даже на слабых устройствах
 */
object ReaderPerformanceOptimizer {
    
    /**
     * Конфигурация производительности
     */
    data class PerformanceConfig(
        val maxMemoryUsage: Long = getMaxMemoryUsage(),
        val preloadDistance: Int = 3,
        val cacheSize: Int = 20,
        val imageQuality: Float = 0.9f,
        val enableHardwareAcceleration: Boolean = true,
        val enableLowMemoryMode: Boolean = false,
        val maxTextureSize: Int = 4096,
        val compressionFormat: Bitmap.CompressFormat = Bitmap.CompressFormat.JPEG,
        val enableBackgroundPreloading: Boolean = true,
        val enableSmartCaching: Boolean = true,
        val enableMemoryOptimization: Boolean = true,
        val targetFps: Int = 60,
        val enableGpuAcceleration: Boolean = true
    )
    
    /**
     * Метрики производительности
     */
    data class PerformanceMetrics(
        val memoryUsage: Long = 0L,
        val cacheHitRate: Float = 0f,
        val averageLoadTime: Long = 0L,
        val frameRate: Float = 0f,
        val totalImagesLoaded: Int = 0,
        val totalCacheHits: Int = 0,
        val totalCacheMisses: Int = 0,
        val gcCount: Int = 0,
        val lastGcTime: Long = 0L
    )
    
    /**
     * Состояние оптимизатора
     */
    data class OptimizerState(
        val isOptimizing: Boolean = false,
        val currentMemoryPressure: MemoryPressure = MemoryPressure.LOW,
        val activeOptimizations: Set<OptimizationType> = emptySet(),
        val metrics: PerformanceMetrics = PerformanceMetrics()
    )
    
    enum class MemoryPressure { LOW, MEDIUM, HIGH, CRITICAL }
    enum class OptimizationType { 
        MEMORY_CLEANUP, 
        CACHE_OPTIMIZATION, 
        IMAGE_COMPRESSION, 
        BACKGROUND_LOADING,
        GPU_ACCELERATION,
        TEXTURE_OPTIMIZATION
    }
    
    private val _optimizerState = MutableStateFlow(OptimizerState())
    val optimizerState: StateFlow<OptimizerState> = _optimizerState.asStateFlow()
    
    // Кэш изображений с LRU политикой
    private lateinit var imageCache: LruCache<String, CachedImage>
    
    // Пул потоков для фоновой загрузки
    private val backgroundExecutor = Executors.newFixedThreadPool(2)
    private val optimizationScope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    // Метрики
    private val loadTimeTracker = mutableListOf<Long>()
    private val frameTimeTracker = mutableListOf<Long>()
    private val cacheHits = AtomicInteger(0)
    private val cacheMisses = AtomicInteger(0)
    private val totalLoaded = AtomicInteger(0)
    
    // Мониторинг памяти
    private val memoryMonitor = MemoryMonitor()
    
    /**
     * Кэшированное изображение с метаданными
     */
    data class CachedImage(
        val bitmap: Bitmap,
        val originalSize: Long,
        val compressedSize: Long,
        val loadTime: Long,
        val lastAccessed: Long,
        val accessCount: Int,
        val quality: Float
    )
    
    /**
     * Инициализация оптимизатора
     */
    fun initialize(context: Context, config: PerformanceConfig = PerformanceConfig()) {
        // Инициализируем кэш
        val maxMemory = (Runtime.getRuntime().maxMemory() / 1024).toInt()
        val cacheSize = maxMemory / 8 // Используем 1/8 от доступной памяти
        
        imageCache = object : LruCache<String, CachedImage>(cacheSize) {
            override fun sizeOf(key: String, value: CachedImage): Int {
                return (value.compressedSize / 1024).toInt()
            }
            
            override fun entryRemoved(
                evicted: Boolean,
                key: String,
                oldValue: CachedImage,
                newValue: CachedImage?
            ) {
                if (evicted && !oldValue.bitmap.isRecycled) {
                    oldValue.bitmap.recycle()
                }
            }
        }
        
        // Запускаем мониторинг производительности
        startPerformanceMonitoring(config)
        
        // Запускаем мониторинг памяти
        memoryMonitor.start(context)
    }
    
    /**
     * Загрузка изображения с оптимизацией
     */
    suspend fun loadOptimizedImage(
        file: File,
        targetWidth: Int = 0,
        targetHeight: Int = 0,
        quality: Float = 0.9f
    ): ImageBitmap? = withContext(Dispatchers.IO) {
        
        val startTime = System.currentTimeMillis()
        val cacheKey = generateCacheKey(file, targetWidth, targetHeight, quality)
        
        // Проверяем кэш
        imageCache.get(cacheKey)?.let { cachedImage ->
            cacheHits.incrementAndGet()
            updateCachedImageAccess(cacheKey, cachedImage)
            return@withContext cachedImage.bitmap.asImageBitmap()
        }
        
        cacheMisses.incrementAndGet()
        
        try {
            // Загружаем и оптимизируем изображение
            val optimizedBitmap = loadAndOptimizeBitmap(
                file, targetWidth, targetHeight, quality
            )
            
            optimizedBitmap?.let { bitmap ->
                val loadTime = System.currentTimeMillis() - startTime
                loadTimeTracker.add(loadTime)
                
                // Сохраняем в кэш
                val cachedImage = CachedImage(
                    bitmap = bitmap,
                    originalSize = file.length(),
                    compressedSize = bitmap.byteCount.toLong(),
                    loadTime = loadTime,
                    lastAccessed = System.currentTimeMillis(),
                    accessCount = 1,
                    quality = quality
                )
                
                imageCache.put(cacheKey, cachedImage)
                totalLoaded.incrementAndGet()
                
                updateMetrics()
                
                bitmap.asImageBitmap()
            }
            
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Предварительная загрузка изображений
     */
    fun preloadImages(
        files: List<File>,
        currentIndex: Int,
        preloadDistance: Int = 3,
        targetWidth: Int = 0,
        targetHeight: Int = 0
    ) {
        optimizationScope.launch {
            val startIndex = maxOf(0, currentIndex - preloadDistance)
            val endIndex = minOf(files.size - 1, currentIndex + preloadDistance)
            
            for (i in startIndex..endIndex) {
                if (i != currentIndex) { // Текущее изображение уже загружено
                    launch {
                        loadOptimizedImage(files[i], targetWidth, targetHeight)
                    }
                }
            }
        }
    }
    
    /**
     * Загрузка и оптимизация Bitmap
     */
    private suspend fun loadAndOptimizeBitmap(
        file: File,
        targetWidth: Int,
        targetHeight: Int,
        quality: Float
    ): Bitmap? = withContext(Dispatchers.IO) {
        
        try {
            // Получаем размеры изображения
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeFile(file.absolutePath, options)
            
            val originalWidth = options.outWidth
            val originalHeight = options.outHeight
            
            // Вычисляем оптимальный размер
            val (optimalWidth, optimalHeight) = calculateOptimalSize(
                originalWidth, originalHeight, targetWidth, targetHeight
            )
            
            // Вычисляем коэффициент сжатия
            val sampleSize = calculateSampleSize(
                originalWidth, originalHeight, optimalWidth, optimalHeight
            )
            
            // Загружаем изображение с оптимизацией
            val loadOptions = BitmapFactory.Options().apply {
                inSampleSize = sampleSize
                inPreferredConfig = getOptimalBitmapConfig()
                inDither = false
                inPurgeable = true
                inInputShareable = true
                
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    inPreferQualityOverSpeed = quality > 0.8f
                }
            }
            
            val bitmap = BitmapFactory.decodeFile(file.absolutePath, loadOptions)
            
            bitmap?.let { originalBitmap ->
                // Дополнительное масштабирование если нужно
                if (originalBitmap.width != optimalWidth || originalBitmap.height != optimalHeight) {
                    val scaledBitmap = Bitmap.createScaledBitmap(
                        originalBitmap, optimalWidth, optimalHeight, true
                    )
                    if (scaledBitmap != originalBitmap) {
                        originalBitmap.recycle()
                    }
                    scaledBitmap
                } else {
                    originalBitmap
                }
            }
            
        } catch (e: OutOfMemoryError) {
            // Обрабатываем нехватку памяти
            handleOutOfMemory()
            null
        } catch (e: Exception) {
            null
        }
    }
    
    /**
     * Вычисление оптимального размера изображения
     */
    private fun calculateOptimalSize(
        originalWidth: Int,
        originalHeight: Int,
        targetWidth: Int,
        targetHeight: Int
    ): Pair<Int, Int> {
        
        val currentState = _optimizerState.value
        val maxTextureSize = 4096 // Максимальный размер текстуры для GPU
        
        // Если целевые размеры не заданы, используем размеры экрана
        val finalTargetWidth = if (targetWidth > 0) targetWidth else 1080
        val finalTargetHeight = if (targetHeight > 0) targetHeight else 1920
        
        // Учитываем давление памяти
        val memoryFactor = when (currentState.currentMemoryPressure) {
            MemoryPressure.LOW -> 1.0f
            MemoryPressure.MEDIUM -> 0.8f
            MemoryPressure.HIGH -> 0.6f
            MemoryPressure.CRITICAL -> 0.4f
        }
        
        val adjustedTargetWidth = (finalTargetWidth * memoryFactor).toInt()
        val adjustedTargetHeight = (finalTargetHeight * memoryFactor).toInt()
        
        // Ограничиваем максимальным размером текстуры
        val maxWidth = minOf(maxTextureSize, adjustedTargetWidth)
        val maxHeight = minOf(maxTextureSize, adjustedTargetHeight)
        
        // Вычисляем коэффициент масштабирования
        val scaleX = maxWidth.toFloat() / originalWidth
        val scaleY = maxHeight.toFloat() / originalHeight
        val scale = minOf(scaleX, scaleY, 1.0f) // Не увеличиваем изображение
        
        return Pair(
            (originalWidth * scale).toInt(),
            (originalHeight * scale).toInt()
        )
    }
    
    /**
     * Вычисление коэффициента сжатия
     */
    private fun calculateSampleSize(
        originalWidth: Int,
        originalHeight: Int,
        targetWidth: Int,
        targetHeight: Int
    ): Int {
        var sampleSize = 1
        
        if (originalHeight > targetHeight || originalWidth > targetWidth) {
            val halfHeight = originalHeight / 2
            val halfWidth = originalWidth / 2
            
            while ((halfHeight / sampleSize) >= targetHeight && 
                   (halfWidth / sampleSize) >= targetWidth) {
                sampleSize *= 2
            }
        }
        
        return sampleSize
    }
    
    /**
     * Получение оптимального формата Bitmap
     */
    private fun getOptimalBitmapConfig(): Bitmap.Config {
        val currentState = _optimizerState.value
        
        return when (currentState.currentMemoryPressure) {
            MemoryPressure.LOW -> Bitmap.Config.ARGB_8888
            MemoryPressure.MEDIUM -> Bitmap.Config.RGB_565
            MemoryPressure.HIGH -> Bitmap.Config.RGB_565
            MemoryPressure.CRITICAL -> Bitmap.Config.RGB_565
        }
    }
    
    /**
     * Обработка нехватки памяти
     */
    private fun handleOutOfMemory() {
        optimizationScope.launch {
            // Очищаем кэш
            clearCache()
            
            // Принудительно запускаем сборку мусора
            System.gc()
            
            // Обновляем состояние
            _optimizerState.value = _optimizerState.value.copy(
                currentMemoryPressure = MemoryPressure.CRITICAL,
                activeOptimizations = _optimizerState.value.activeOptimizations + OptimizationType.MEMORY_CLEANUP
            )
            
            delay(100) // Даем время на сборку мусора
            
            _optimizerState.value = _optimizerState.value.copy(
                activeOptimizations = _optimizerState.value.activeOptimizations - OptimizationType.MEMORY_CLEANUP
            )
        }
    }
    
    /**
     * Очистка кэша
     */
    fun clearCache() {
        imageCache.evictAll()
        System.gc()
    }
    
    /**
     * Частичная очистка кэша
     */
    fun trimCache(percentage: Float = 0.5f) {
        val currentSize = imageCache.size()
        val targetSize = (currentSize * (1f - percentage)).toInt()
        
        imageCache.trimToSize(targetSize)
    }
    
    /**
     * Генерация ключа кэша
     */
    private fun generateCacheKey(
        file: File,
        width: Int,
        height: Int,
        quality: Float
    ): String {
        return "${file.absolutePath}_${width}x${height}_${quality}_${file.lastModified()}"
    }
    
    /**
     * Обновление информации о доступе к кэшированному изображению
     */
    private fun updateCachedImageAccess(key: String, cachedImage: CachedImage) {
        val updatedImage = cachedImage.copy(
            lastAccessed = System.currentTimeMillis(),
            accessCount = cachedImage.accessCount + 1
        )
        imageCache.put(key, updatedImage)
    }
    
    /**
     * Запуск мониторинга производительности
     */
    private fun startPerformanceMonitoring(config: PerformanceConfig) {
        optimizationScope.launch {
            while (true) {
                delay(1000) // Обновляем метрики каждую секунду
                updateMetrics()
                optimizePerformance(config)
            }
        }
    }
    
    /**
     * Обновление метрик производительности
     */
    private fun updateMetrics() {
        val runtime = Runtime.getRuntime()
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        
        val totalHits = cacheHits.get()
        val totalMisses = cacheMisses.get()
        val hitRate = if (totalHits + totalMisses > 0) {
            totalHits.toFloat() / (totalHits + totalMisses)
        } else 0f
        
        val avgLoadTime = if (loadTimeTracker.isNotEmpty()) {
            loadTimeTracker.average().toLong()
        } else 0L
        
        val avgFrameTime = if (frameTimeTracker.isNotEmpty()) {
            frameTimeTracker.average()
        } else 0.0
        
        val fps = if (avgFrameTime > 0) (1000.0 / avgFrameTime).toFloat() else 0f
        
        val metrics = PerformanceMetrics(
            memoryUsage = usedMemory,
            cacheHitRate = hitRate,
            averageLoadTime = avgLoadTime,
            frameRate = fps,
            totalImagesLoaded = totalLoaded.get(),
            totalCacheHits = totalHits,
            totalCacheMisses = totalMisses
        )
        
        _optimizerState.value = _optimizerState.value.copy(metrics = metrics)
        
        // Очищаем старые данные
        if (loadTimeTracker.size > 100) {
            loadTimeTracker.removeAt(0)
        }
        if (frameTimeTracker.size > 100) {
            frameTimeTracker.removeAt(0)
        }
    }
    
    /**
     * Оптимизация производительности
     */
    private suspend fun optimizePerformance(config: PerformanceConfig) {
        val currentState = _optimizerState.value
        val metrics = currentState.metrics
        
        // Определяем давление памяти
        val memoryPressure = calculateMemoryPressure(metrics.memoryUsage, config.maxMemoryUsage)
        
        // Обновляем состояние
        _optimizerState.value = currentState.copy(
            currentMemoryPressure = memoryPressure
        )
        
        // Применяем оптимизации в зависимости от состояния
        when (memoryPressure) {
            MemoryPressure.HIGH -> {
                trimCache(0.3f)
                _optimizerState.value = _optimizerState.value.copy(
                    activeOptimizations = currentState.activeOptimizations + OptimizationType.CACHE_OPTIMIZATION
                )
            }
            MemoryPressure.CRITICAL -> {
                clearCache()
                System.gc()
                _optimizerState.value = _optimizerState.value.copy(
                    activeOptimizations = currentState.activeOptimizations + setOf(
                        OptimizationType.MEMORY_CLEANUP,
                        OptimizationType.CACHE_OPTIMIZATION
                    )
                )
            }
            else -> {
                _optimizerState.value = _optimizerState.value.copy(
                    activeOptimizations = emptySet()
                )
            }
        }
        
        // Оптимизация FPS
        if (metrics.frameRate < config.targetFps * 0.8f) {
            optimizeFrameRate(config)
        }
    }
    
    /**
     * Вычисление давления памяти
     */
    private fun calculateMemoryPressure(usedMemory: Long, maxMemory: Long): MemoryPressure {
        val usage = usedMemory.toFloat() / maxMemory
        
        return when {
            usage < 0.6f -> MemoryPressure.LOW
            usage < 0.8f -> MemoryPressure.MEDIUM
            usage < 0.9f -> MemoryPressure.HIGH
            else -> MemoryPressure.CRITICAL
        }
    }
    
    /**
     * Оптимизация частоты кадров
     */
    private suspend fun optimizeFrameRate(config: PerformanceConfig) {
        _optimizerState.value = _optimizerState.value.copy(
            activeOptimizations = _optimizerState.value.activeOptimizations + OptimizationType.GPU_ACCELERATION
        )
        
        // Снижаем качество изображений для повышения FPS
        trimCache(0.2f)
        
        delay(100)
        
        _optimizerState.value = _optimizerState.value.copy(
            activeOptimizations = _optimizerState.value.activeOptimizations - OptimizationType.GPU_ACCELERATION
        )
    }
    
    /**
     * Получение максимального объема памяти
     */
    private fun getMaxMemoryUsage(): Long {
        val runtime = Runtime.getRuntime()
        return (runtime.maxMemory() * 0.8).toLong() // Используем 80% от максимальной памяти
    }
    
    /**
     * Добавление времени кадра для мониторинга FPS
     */
    fun addFrameTime(frameTime: Long) {
        frameTimeTracker.add(frameTime)
    }
    
    /**
     * Получение статистики производительности
     */
    fun getPerformanceStats(): Map<String, Any> {
        val state = _optimizerState.value
        val metrics = state.metrics
        
        return mapOf(
            "memoryUsage" to "${metrics.memoryUsage / 1024 / 1024}MB",
            "memoryPressure" to state.currentMemoryPressure.name,
            "cacheHitRate" to "${(metrics.cacheHitRate * 100).toInt()}%",
            "averageLoadTime" to "${metrics.averageLoadTime}ms",
            "frameRate" to "${metrics.frameRate.toInt()}fps",
            "totalImagesLoaded" to metrics.totalImagesLoaded,
            "cacheSize" to imageCache.size(),
            "activeOptimizations" to state.activeOptimizations.map { it.name }
        )
    }
    
    /**
     * Освобождение ресурсов
     */
    fun cleanup() {
        clearCache()
        optimizationScope.cancel()
        backgroundExecutor.shutdown()
        memoryMonitor.stop()
    }
}

/**
 * Монитор памяти
 */
private class MemoryMonitor {
    private var isRunning = false
    private val monitorScope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    fun start(context: Context) {
        if (isRunning) return
        isRunning = true
        
        monitorScope.launch {
            while (isRunning) {
                delay(5000) // Проверяем каждые 5 секунд
                
                val runtime = Runtime.getRuntime()
                val usedMemory = runtime.totalMemory() - runtime.freeMemory()
                val maxMemory = runtime.maxMemory()
                val usage = usedMemory.toFloat() / maxMemory
                
                // Если использование памяти критическое, принимаем меры
                if (usage > 0.9f) {
                    ReaderPerformanceOptimizer.handleOutOfMemory()
                }
            }
        }
    }
    
    fun stop() {
        isRunning = false
        monitorScope.cancel()
    }
}

/**
 * Composable для мониторинга производительности
 */
@Composable
fun PerformanceMonitor(
    modifier: Modifier = androidx.compose.ui.Modifier
) {
    val optimizerState by ReaderPerformanceOptimizer.optimizerState.collectAsState()
    val metrics = optimizerState.metrics
    
    if (optimizerState.activeOptimizations.isNotEmpty()) {
        androidx.compose.material3.Card(
            modifier = modifier,
            colors = androidx.compose.material3.CardDefaults.cardColors(
                containerColor = androidx.compose.material3.MaterialTheme.colorScheme.surfaceVariant
            )
        ) {
            androidx.compose.foundation.layout.Column(
                modifier = androidx.compose.ui.Modifier.padding(8.dp)
            ) {
                androidx.compose.material3.Text(
                    text = "Оптимизация производительности",
                    style = androidx.compose.material3.MaterialTheme.typography.labelSmall
                )
                
                androidx.compose.material3.Text(
                    text = "FPS: ${metrics.frameRate.toInt()} | Память: ${optimizerState.currentMemoryPressure.name}",
                    style = androidx.compose.material3.MaterialTheme.typography.bodySmall
                )
                
                if (optimizerState.activeOptimizations.contains(ReaderPerformanceOptimizer.OptimizationType.MEMORY_CLEANUP)) {
                    androidx.compose.material3.LinearProgressIndicator(
                        modifier = androidx.compose.ui.Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}

