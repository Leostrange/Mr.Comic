# Технические рекомендации по исправлению багов

## 🚨 Немедленные исправления (Critical Fixes)

### 1. Fix Build Compilation Issues

**Проблема:** Несовместимость версий Kotlin и Compose

**Решение:** Обновить `gradle/libs.versions.toml`
```toml
[versions]
# Обновить до совместимых версий
kotlinAndroid = "1.9.25"
kotlinCompilerExtension = "1.5.15"
composeBom = "2024.06.00"
```

**Проверить зависимости:**
```bash
./gradlew dependencies --configuration compileClasspath
./gradlew clean build --stacktrace
```

---

### 2. Fix Security Vulnerabilities

#### 2.1 Proper URI Permission Handling
**Файл:** `android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt`

**Текущий код (небезопасный):**
```kotlin
try {
    context.contentResolver.takePersistableUriPermission(uri, FLAG_GRANT_READ_URI_PERMISSION)
} catch (e: SecurityException) {
    android.util.Log.w(TAG, "Could not take persistable permission: ${e.message}")
    // Продолжение выполнения без разрешения!
}
```

**Исправленный код:**
```kotlin
private fun ensureUriPermission(context: Context, uri: Uri): Boolean {
    return try {
        // Check if we already have permission
        val hasPermission = context.contentResolver.persistedUriPermissions
            .any { it.uri == uri && it.isReadPermission }
            
        if (!hasPermission) {
            context.contentResolver.takePersistableUriPermission(
                uri, 
                Intent.FLAG_GRANT_READ_URI_PERMISSION
            )
        }
        true
    } catch (e: SecurityException) {
        android.util.Log.e(TAG, "Failed to get URI permission for $uri", e)
        // Request user to re-select file
        false
    }
}

// В методе open():
if (uri.scheme == "content" && !ensureUriPermission(context, uri)) {
    return@withContext Result.failure(
        SecurityException("Permission denied. Please re-select the file.")
    )
}
```

#### 2.2 Secure Temporary File Creation
**Файл:** `android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt`

**Текущий код (небезопасный):**
```kotlin
tempFile = File.createTempFile("cbz_temp_${System.currentTimeMillis()}", ".cbz", context.cacheDir)
```

**Исправленный код:**
```kotlin
tempFile = File.createTempFile("cbz_temp_", ".cbz", context.cacheDir).apply {
    deleteOnExit()
    // Set proper permissions
    setReadable(true, false)
    setWritable(false, false)
}
```

---

### 3. Fix Memory Management Issues

#### 3.1 Proper Bitmap Memory Management
**Файл:** `android/core-reader/src/main/java/com/example/core/reader/utils/MemoryManager.kt`

**Добавить проверку доступной памяти:**
```kotlin
private fun canCacheBitmap(bitmap: Bitmap): Boolean {
    val size = bitmap.byteCount
    val maxSize = MAX_MEMORY_CACHE_SIZE / 4
    
    // Check available memory
    val runtime = Runtime.getRuntime()
    val usedMemory = runtime.totalMemory() - runtime.freeMemory()
    val availableMemory = runtime.maxMemory() - usedMemory
    
    // Only cache if we have enough available memory
    return size <= maxSize && size <= availableMemory / 10 // Use max 10% of available memory
}
```

#### 3.2 Proper Resource Cleanup
**Файл:** `android/core-reader/src/main/java/com/example/core/reader/pdf/OptimizedPdfiumReader.kt`

**Добавить proper cleanup:**
```kotlin
override fun close() {
    try {
        pdfDocument?.let { doc ->
            pdfiumCore?.closeDocument(doc)
        }
        parcelFileDescriptor?.close()
        pdfiumCore = null
        pdfDocument = null
        parcelFileDescriptor = null
    } catch (e: Exception) {
        android.util.Log.e(TAG, "Error closing PDF resources", e)
    }
}

// Использовать с try-with-resources:
suspend fun <T> usePdfReader(block: suspend (OptimizedPdfiumReader) -> T): Result<T> {
    val reader = OptimizedPdfiumReader()
    return try {
        block(reader).let { Result.success(it) }
    } catch (e: Exception) {
        Result.failure(e)
    } finally {
        reader.close()
    }
}
```

---

## ⚠️ Серьезные исправления (Serious Fixes)

### 4. Improve Error Handling

#### 4.1 Centralized Error Handling
**Создать:** `android/core-ui/src/main/java/com/example/core/ui/error/ErrorHandler.kt`
```kotlin
sealed class AppError : Exception() {
    object NetworkError : AppError()
    object FileNotFoundError : AppError()
    data class CorruptedFile(val message: String) : AppError()
    data class PermissionDenied(val uri: String) : AppError()
    data class OutOfMemory(val required: Long, available: Long) : AppError()
}

@Singleton
class ErrorHandler @Inject constructor(
    private val context: Context
) {
    fun handleError(error: AppError): String {
        return when (error) {
            is AppError.NetworkError -> 
                context.getString(R.string.error_network)
            is AppError.FileNotFoundError -> 
                context.getString(R.string.error_file_not_found)
            is AppError.CorruptedFile -> 
                context.getString(R.string.error_corrupted_file, error.message)
            is AppError.PermissionDenied -> 
                context.getString(R.string.error_permission_denied, error.uri)
            is AppError.OutOfMemory -> 
                context.getString(R.string.error_out_of_memory, error.required, error.available)
        }
    }
}
```

#### 4.2 Update ReaderViewModel Error Handling
**Файл:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
```kotlin
private fun handleRenderError(pageIndex: Int, error: Throwable) {
    val appError = when (error) {
        is OutOfMemoryError -> AppError.OutOfMemory(
            required = estimateMemoryRequirement(),
            available = Runtime.getRuntime().freeMemory()
        )
        is SecurityException -> AppError.PermissionDenied(currentComicUri ?: "")
        else -> AppError.CorruptedFile(error.message ?: "Unknown error")
    }
    
    _uiState.update { 
        it.copy(
            error = errorHandler.handleError(appError),
            isLoading = false
        )
    }
    
    // Track error for analytics
    analyticsHelper.trackError(appError)
}
```

---

### 5. Performance Optimizations

#### 5.1 Optimize Webtoon Preloading
**Файл:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`

**Текущий код (неэффективный):**
```kotlin
for (i in 0 until _uiState.value.pageCount) {
    if (!_uiState.value.bitmaps.containsKey(i)) {
        kotlinx.coroutines.delay(30)
        val pageBitmap = getPage(i)
    }
}
```

**Оптимизированный код:**
```kotlin
private val preloadScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

fun preloadWebtoonPages() {
    preloadScope.launch {
        val currentPage = _uiState.value.currentPageIndex
        val preloadRange = (currentPage..min(currentPage + 5, _uiState.value.pageCount - 1))
        
        preloadRange.chunked(2).forEach { chunk ->
            chunk.forEach { pageIndex ->
                if (!_uiState.value.bitmaps.containsKey(pageIndex)) {
                    async {
                        getPage(pageIndex)?.let { bitmap ->
                            _uiState.update { 
                                it.copy(bitmaps = it.bitmaps + (pageIndex to bitmap))
                            }
                        }
                    }
                }
            }
            delay(50) // Small delay between chunks
        }
    }
}
```

#### 5.2 Implement Smart Memory Caching
**Файл:** `android/core-reader/src/main/java/com/example/core/reader/utils/SmartMemoryCache.kt`
```kotlin
class SmartMemoryCache<T> {
    private val cache = LruCache<String, T>(calculateCacheSize())
    private val accessOrder = LinkedHashMap<String, Long>()
    
    private fun calculateCacheSize(): Int {
        val runtime = Runtime.getRuntime()
        val maxMemory = runtime.maxMemory()
        val usableMemory = (maxMemory / 8) // Use 1/8 of available memory
        return (usableMemory / 1024).toInt()
    }
    
    fun put(key: String, value: T, size: Long) {
        if (shouldEvictForSize(size)) {
            evictLeastRecentlyUsed()
        }
        cache.put(key, value)
        accessOrder[key] = System.currentTimeMillis()
    }
    
    private fun shouldEvictForSize(newItemSize: Long): Boolean {
        val currentSize = cache.size()
        val maxSize = cache.maxSize()
        return currentSize >= maxSize * 0.9 // Evict at 90% capacity
    }
}
```

---

### 6. Architecture Improvements

#### 6.1 Extract Reader Use Cases
**Создать:** `android/core-domain/src/main/java/com/example/core/domain/usecase/reader/`

```kotlin
// LoadPageUseCase.kt
@Singleton
class LoadPageUseCase @Inject constructor(
    private val readerFactory: BookReaderFactory,
    private val memoryManager: MemoryManager
) {
    suspend operator fun invoke(
        comicUri: String,
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int
    ): Result<Bitmap> {
        return withContext(Dispatchers.IO) {
            try {
                val reader = readerFactory.createReader(Uri.parse(comicUri))
                val result = reader.renderPage(pageIndex, maxWidth, maxHeight)
                
                result.fold(
                    onSuccess = { bitmap ->
                        if (memoryManager.canCacheBitmap(bitmap)) {
                            memoryManager.putBitmap("${comicUri}_${pageIndex}", bitmap)
                        }
                        Result.success(bitmap)
                    },
                    onFailure = { Result.failure(it) }
                )
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
}

// SaveReadingProgressUseCase.kt
@Singleton
class SaveReadingProgressUseCase @Inject constructor(
    private val progressRepository: ProgressRepository
) {
    suspend operator fun invoke(comicId: String, pageIndex: Int): Result<Unit> {
        return try {
            progressRepository.saveProgress(comicId, pageIndex)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
```

#### 6.2 Simplify ReaderViewModel
**Обновить:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
```kotlin
@HiltViewModel
class ReaderViewModel @Inject constructor(
    private val loadPageUseCase: LoadPageUseCase,
    private val saveProgressUseCase: SaveReadingProgressUseCase,
    private val cycleZoomUseCase: CycleZoomUseCase,
    private val errorHandler: ErrorHandler
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(ReaderUiState())
    val uiState = _uiState.asStateFlow()
    
    fun loadPage(pageIndex: Int) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            
            loadPageUseCase(
                comicUri = uiState.value.currentComicUri ?: return@launch,
                pageIndex = pageIndex,
                maxWidth = uiState.value.maxWidth,
                maxHeight = uiState.value.maxHeight
            )
            .fold(
                onSuccess = { bitmap ->
                    _uiState.update { 
                        it.copy(
                            isLoading = false,
                            currentPageIndex = pageIndex,
                            currentPageBitmap = bitmap,
                            error = null
                        )
                    }
                    saveProgressUseCase(uiState.value.currentComicId ?: "", pageIndex)
                },
                onFailure = { error ->
                    _uiState.update { 
                        it.copy(
                            isLoading = false,
                            error = errorHandler.handleError(error)
                        )
                    }
                }
            )
        }
    }
    
    fun cycleZoom() {
        viewModelScope.launch {
            cycleZoomUseCase(uiState.value.currentZoomMode)
                .fold(
                    onSuccess = { newMode -> 
                        _uiState.update { it.copy(currentZoomMode = newMode) }
                    },
                    onFailure = { error ->
                        _uiState.update { it.copy(error = errorHandler.handleError(error)) }
                    }
                )
        }
    }
}
```

---

## 🔧 Средние исправления (Medium Fixes)

### 7. Code Quality Improvements

#### 7.1 Extract Reusable Components
**Создать:** `android/core-ui/src/main/java/com/example/core/ui/components/SettingsChip.kt`
```kotlin
@Composable
fun SettingsChip(
    selected: Boolean,
    onClick: () -> Unit,
    label: String,
    icon: ImageVector? = null,
    modifier: Modifier = Modifier
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        label = { 
            Row(verticalAlignment = Alignment.CenterVertically) {
                icon?.let {
                    Icon(
                        imageVector = it,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                }
                Text(label, style = MaterialTheme.typography.bodySmall)
            }
        },
        modifier = modifier.height(32.dp)
    )
}
```

#### 7.2 Simplify TopSettingsPanel
**Обновить:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/TopSettingsPanel.kt`
```kotlin
// Orientation chips
Row(
    modifier = Modifier.fillMaxWidth(),
    horizontalArrangement = Arrangement.spacedBy(8.dp)
) {
    SettingsChip(
        selected = currentOrientation == "auto",
        onClick = { onOrientationChange("auto") },
        label = "Auto"
    )
    SettingsChip(
        selected = currentOrientation == "portrait",
        onClick = { onOrientationChange("portrait") },
        label = "Portrait"
    )
    SettingsChip(
        selected = currentOrientation == "landscape",
        onClick = { onOrientationChange("landscape") },
        label = "Landscape"
    )
}

// Scale mode chips
Row(
    modifier = Modifier.fillMaxWidth(),
    horizontalArrangement = Arrangement.spacedBy(4.dp)
) {
    SettingsChip(
        selected = currentScaleMode == "width",
        onClick = { onScaleModeChange("width") },
        label = "Width",
        icon = Icons.Default.AspectRatio
    )
    SettingsChip(
        selected = currentScaleMode == "height",
        onClick = { onScaleModeChange("height") },
        label = "Height",
        icon = Icons.Default.Height
    )
    SettingsChip(
        selected = currentScaleMode == "fit",
        onClick = { onScaleModeChange("fit") },
        label = "Fit",
        icon = Icons.Default.FitScreen
    )
    SettingsChip(
        selected = currentScaleMode == "fill",
        onClick = { onScaleModeChange("fill") },
        label = "Fill",
        icon = Icons.Default.CropFree
    )
}
```

---

### 8. Input Validation Improvements

#### 8.1 Add Comprehensive Validation
**Создать:** `android/core-ui/src/main/java/com/example/core/ui/validation/InputValidator.kt`
```kotlin
object InputValidator {
    
    fun validateImageSize(width: Int, height: Int): ValidationResult {
        return when {
            width <= 0 || height <= 0 -> 
                ValidationResult.Invalid("Image dimensions must be positive")
            width > 8192 || height > 8192 -> 
                ValidationResult.Invalid("Image dimensions too large (max 8192x8192)")
            width * height > 67_108_864 -> // 64MP limit
                ValidationResult.Invalid("Image resolution too high")
            else -> ValidationResult.Valid
        }
    }
    
    fun validateScaleFactor(scale: Float): ValidationResult {
        return when {
            scale <= 0 -> ValidationResult.Invalid("Scale must be positive")
            scale > 10f -> ValidationResult.Invalid("Scale too large (max 10x)")
            else -> ValidationResult.Valid
        }
    }
    
    fun validatePageIndex(pageIndex: Int, pageCount: Int): ValidationResult {
        return when {
            pageIndex < 0 -> ValidationResult.Invalid("Page index cannot be negative")
            pageIndex >= pageCount -> 
                ValidationResult.Invalid("Page index $pageIndex out of range (0-${pageCount - 1})")
            else -> ValidationResult.Valid
        }
    }
}

sealed class ValidationResult {
    object Valid : ValidationResult()
    data class Invalid(val message: String) : ValidationResult()
}
```

#### 8.2 Update ZoomController with Validation
**Обновить:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/gestures/ZoomController.kt`
```kotlin
fun calculateFitWidthScale(): Float {
    val validation = InputValidator.validateImageSize(imageSize.width, imageSize.height)
    if (validation is ValidationResult.Invalid) {
        android.util.Log.e(TAG, "Invalid image size: ${validation.message}")
        return 1f
    }
    
    if (screenSize.width <= 0) {
        android.util.Log.e(TAG, "Invalid screen width: ${screenSize.width}")
        return 1f
    }
    
    return screenSize.width.toFloat() / imageSize.width.toFloat()
}

suspend fun applyPinchZoom(zoomFactor: Float, focusPoint: Offset) {
    val validation = InputValidator.validateScaleFactor(zoomFactor)
    if (validation is ValidationResult.Invalid) {
        android.util.Log.w(TAG, "Invalid zoom factor: ${validation.message}")
        return
    }
    
    // Continue with zoom logic...
}
```

---

## 🚀 Долгосрочные улучшения (Long-term Improvements)

### 9. Dependency Updates

**Обновить `gradle/libs.versions.toml`:**
```toml
[versions]
# Security updates
kotlinxCoroutines = "1.9.0" # Было 1.8.0
okhttp = "4.12.0" # Security patches
room = "2.7.2" # Было 2.6.1

# Feature updates
composeBom = "2024.10.00" # Было 2024.06.00
lifecycle = "2.9.1" # Было 2.7.2
navigation = "2.8.0" # Было 2.7.7

# Performance updates
coil = "2.7.0" # Было 2.6.0
hilt = "2.52" # Было 2.51.1
```

### 10. Testing Improvements

**Добавить интеграционные тесты:**
```kotlin
// android/app/src/androidTest/java/com/example/mrcomic/integration/ReaderIntegrationTest.kt
@RunWith(AndroidJUnit4::class)
class ReaderIntegrationTest {
    
    @get:Rule
    val composeTestRule = createComposeRule()
    
    @Test
    fun testComicLoadingFlow() {
        // Test complete flow from file selection to reading
        val testUri = createTestComicFile()
        
        composeTestRule.setContent {
            ReaderScreen(initialUri = testUri)
        }
        
        // Verify loading state
        composeTestRule.onNodeWithText("Loading...").assertIsDisplayed()
        
        // Wait for content to load
        composeTestRule.waitUntil(5000) {
            composeTestRule.onAllNodesWithTag("ComicPage").fetchSemanticsNodes().isNotEmpty()
        }
        
        // Verify page is displayed
        composeTestRule.onNodeWithTag("ComicPage").assertIsDisplayed()
        
        // Test zoom functionality
        composeTestRule.onNodeWithTag("ComicPage").performTouchInput {
            pinchZoom(1.5f)
        }
        
        // Test navigation
        composeTestRule.onNodeWithContentDescription("Next page").performClick()
        
        // Verify progress saved
        verify { progressRepository.saveProgress(any(), any()) }
    }
}
```

---

## 📊 Monitoring and Analytics

### 11. Add Crash Reporting
**Обновить:** `android/app/src/main/java/com/example/mrcomic/MrComicApplication.kt`
```kotlin
class MrComicApplication : Application() {
    
    override fun onCreate() {
        super.onCreate()
        
        // Initialize Firebase Crashlytics
        FirebaseCrashlytics.getInstance().apply {
            setCrashlyticsCollectionEnabled(!BuildConfig.DEBUG)
        }
        
        // Set up global exception handler
        Thread.setDefaultUncaughtExceptionHandler { thread, exception ->
            FirebaseCrashlytics.getInstance().recordException(exception)
            defaultUncaughtExceptionHandler?.uncaughtException(thread, exception)
        }
    }
}
```

### 12. Performance Monitoring
**Создать:** `android/core-analytics/src/main/java/com/example/core/analytics/PerformanceTracker.kt`
```kotlin
@Singleton
class PerformanceTracker @Inject constructor() {
    
    fun trackPageLoadTime(comicId: String, pageIndex: Int, loadTimeMs: Long) {
        Firebase.performance.newTrace("page_load")
            .putMetric("load_time_ms", loadTimeMs.toLong())
            .putAttribute("comic_id", comicId)
            .putAttribute("page_index", pageIndex.toString())
            .stop()
    }
    
    fun trackMemoryUsage(operation: String, memoryUsed: Long) {
        Firebase.performance.newTrace("memory_usage")
            .putMetric("memory_used_bytes", memoryUsed)
            .putAttribute("operation", operation)
            .stop()
    }
}
```

---

Эти технические рекомендации обеспечат комплексное исправление выявленных проблем и улучшат качество, безопасность и производительность приложения Mr.Comic.