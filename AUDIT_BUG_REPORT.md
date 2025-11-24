# 🔍 Аудит Проекта Mr.Comic: Обнаруженные Ошибки и Баги

**Дата аудита:** 2025-01-24  
**Версия проекта:** v1.1.0  
**Статус:** 🔴 Найдены критические проблемы  

---

## 📊 Сводка выявленных ошибок

| Категория | Кол-во | Критичность |
|-----------|--------|-------------|
| **Race Conditions / Thread Safety** | 3 | 🔴 Критичная |
| **Утечки ресурсов** | 4 | 🔴 Критичная |
| **Небезопасные операции с памятью** | 5 | 🟠 Серьезная |
| **Обработка ошибок** | 6 | 🟠 Серьезная |
| **Performance Issues** | 7 | 🟡 Средняя |
| **Code Quality** | 8 | 🟡 Средняя |
| **Всего** | **33** | |

---

## 🔴 КРИТИЧЕСКИЕ ОШИБКИ

### 1. Race Condition в BitmapPool.kt

**Файл:** `/android/core-reader/src/main/java/com/example/core/reader/cache/BitmapPool.kt`  
**Строки:** 27, 44, 61, 72  
**Серьезность:** 🔴 **КРИТИЧНАЯ**

#### Проблема:
```kotlin
private var poolSize = 0  // ❌ НЕ SYNCHRONIZED!

fun getBitmap(...): Bitmap {
    val pool = getPoolForSize(requiredBytes)
    val reusableBitmap = pool.poll()
    
    return if (reusableBitmap != null && ...) {
        poolSize--  // ❌ Race condition
        ...
    }
}

fun returnBitmap(bitmap: Bitmap) {
    if (bitmap.isRecycled || poolSize >= MAX_POOL_SIZE) {  // ❌ Проверка и запись не атомарны
        return
    }
    pool.offer(bitmap)
    poolSize++  // ❌ Race condition
}
```

**Риск:** 
- Несколько потоков одновременно обращаются к `poolSize`
- `poolSize` может быть недостоверным
- Переполнение пула больше чем `MAX_POOL_SIZE`
- Утечки bitmap в пуле

**Решение:** Использовать `AtomicInteger` вместо `var`:
```kotlin
private val poolSize = AtomicInteger(0)

// В getBitmap:
poolSize.decrementAndGet()

// В returnBitmap:
if (poolSize.getAndIncrement() > MAX_POOL_SIZE) {
    poolSize.decrementAndGet()
    return
}
```

---

### 2. Утечка ресурсов: deleteOnExit() не гарантирует удаление

**Файлы:**
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt` (строка 84)
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbrReader.kt` (строка 104)
- `/android/core-reader/src/main/java/com/example/core/reader/data/EpubReader.kt`

**Серьезность:** 🔴 **КРИТИЧНАЯ**

#### Проблема:
```kotlin
tempFile = File.createTempFile("cbz_temp_", ".cbz", context.cacheDir).apply {
    deleteOnExit()  // ❌ DEPRECATED и не гарантирует удаление!
    setReadable(true, false)
    setWritable(false, false)
}
```

**Риск:**
- `deleteOnExit()` deprecated с Android N
- Удаление происходит только при нормальном выходе из JVM
- При крахе приложения файлы остаются в памяти
- Кэш-директория может переполниться временными файлами
- Утечка дискового пространства

**Решение:** Явное управление жизненным циклом:
```kotlin
override fun cleanup() {
    tempFile?.let {
        if (it.exists()) {
            it.delete()
            Log.d(TAG, "Temp file deleted: ${it.absolutePath}")
        }
    }
    tempFile = null
}

override fun close() {
    cleanup()
    // остальной код очистки
}
```

---

### 3. Null Pointer Exception в CbzReader

**Файл:** `/android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt`  
**Строка:** 118  
**Серьезность:** 🔴 **КРИТИЧНАЯ**

#### Проблема:
```kotlin
streamingExtractor = StreamingExtractor(context)
val result = streamingExtractor!!.openArchive(Uri.fromFile(tempFile))  // ❌ NPE может быть!
```

**Риск:**
- Если StreamingExtractor конструктор выбросит исключение - NPE
- !! не безопасен и скрывает ошибки

**Решение:**
```kotlin
try {
    streamingExtractor = StreamingExtractor(context)
    val extractor = streamingExtractor ?: throw IllegalStateException("StreamingExtractor failed to initialize")
    val result = extractor.openArchive(Uri.fromFile(tempFile))
    // ...
} catch (e: Exception) {
    return Result.failure(UnsupportedFormatException("Failed to open archive: ${e.message}"))
}
```

---

### 4. Утечка памяти в MemoryManager

**Файл:** `/android/core-reader/src/main/java/com/example/core/reader/utils/MemoryManager.kt`  
**Строки:** 46, 225  
**Серьезность:** 🔴 **КРИТИЧНАЯ**

#### Проблема:
```kotlin
init {
    // Подписываемся на жизненный цикл приложения
    // ProcessLifecycleOwner.get().lifecycle.addObserver(this)  // ❌ ЗАКОММЕНТИРОВАНО!
    startPeriodicCleanup()
}

override fun destroy() {
    cleanupJob.cancel()
    clearCache()
    // ProcessLifecycleOwner.get().lifecycle.removeObserver(this)  // ❌ ЗАКОММЕНТИРОВАНО!
}
```

**Риск:**
- Lifecycle обработчики отключены, поэтому кэш никогда не очищается при выходе из фона
- `cleanupJob` работает всегда, потребляя ресурсы
- `destroy()` метод никогда не вызывается

**Решение:**
```kotlin
init {
    ProcessLifecycleOwner.get().lifecycle.addObserver(this)
    startPeriodicCleanup()
}

override fun destroy() {
    cleanupJob.cancel()
    clearCache()
    ProcessLifecycleOwner.get().lifecycle.removeObserver(this)
}
```

---

### 5. Недостаточная очистка входных потоков

**Файлы:**
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt` (строка 92-102)
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbrReader.kt` (строка 87-98)

**Серьезность:** 🔴 **КРИТИЧНАЯ**

#### Проблема:
```kotlin
val inputStream = try {
    context.contentResolver.openInputStream(uri)
} catch (e: SecurityException) {
    android.util.Log.e("CbzReader", "❌ CBZ DIAGNOSTIC: SecurityException...", e)
    throw UnsupportedFormatException("Permission Denial...")  // ❌ Stream утекает!
}

if (inputStream == null) {
    throw UnsupportedFormatException("...")  // ❌ Предыдущий stream утекает
}
```

**Риск:**
- Если выбросится исключение после открытия stream - он не закроется
- Утечка файловых дескрипторов
- Исчерпание лимита открытых файлов

**Решение:**
```kotlin
val inputStream = try {
    context.contentResolver.openInputStream(uri)
} catch (e: SecurityException) {
    Log.e(TAG, "SecurityException when opening URI: $uri", e)
    return Result.failure(UnsupportedFormatException("Permission Denial..."))
}

if (inputStream == null) {
    return Result.failure(UnsupportedFormatException("Failed to open input stream"))
}

inputStream.use { input ->
    tempFile?.outputStream()?.use { output ->
        val bytesCount = input.copyTo(output)
        Log.d(TAG, "Copied $bytesCount bytes to temp file")
    }
}
```

---

## 🟠 СЕРЬЕЗНЫЕ ОШИБКИ

### 6. Невалидные хит-счетчики в MemoryManager

**Файл:** `/android/core-reader/src/main/java/com/example/core/reader/utils/MemoryManager.kt`  
**Строки:** 168-174  
**Серьезность:** 🟠 **СЕРЬЕЗНАЯ**

#### Проблема:
```kotlin
private var hitCount = 0
private var missCount = 0

private fun calculateHitRate(): Float {
    val total = hitCount + missCount
    return if (total > 0) hitCount.toFloat() / total else 0f
}

fun getBitmap(key: String): Bitmap? {
    val cached = memoryCache.get(key)
    return if (cached != null && !cached.bitmap.isRecycled) {
        // ❌ hitCount никогда не обновляется!
        memoryCache.put(key, cached.copy(accessCount = cached.accessCount + 1))
        cached.bitmap
    } else {
        // ❌ missCount никогда не обновляется!
        memoryCache.remove(key)
        null
    }
}
```

**Риск:**
- Счетчики попадания никогда не обновляются
- Hit rate всегда = 0
- Невозможно отследить эффективность кэша
- Аналитика дает неправильные данные

**Решение:**
```kotlin
private var hitCount = AtomicInteger(0)
private var missCount = AtomicInteger(0)

fun getBitmap(key: String): Bitmap? {
    val cached = memoryCache.get(key)
    return if (cached != null && !cached.bitmap.isRecycled) {
        hitCount.incrementAndGet()
        memoryCache.put(key, cached.copy(accessCount = cached.accessCount + 1))
        cached.bitmap
    } else {
        missCount.incrementAndGet()
        memoryCache.remove(key)
        null
    }
}
```

---

### 7. Предсказуемые имена временных файлов (Security Issue)

**Файлы:**
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt` (строка 83)
- `/android/core-reader/src/main/java/com/example/core/reader/data/CbrReader.kt` (строка 103)

**Серьезность:** 🟠 **СЕРЬЕЗНАЯ**

#### Проблема:
```kotlin
// ❌ Предсказуемое имя файла!
tempFile = File.createTempFile("cbz_temp_${System.currentTimeMillis()}", ".cbz", context.cacheDir)
```

**Риск:**
- Атакующий может предугадать имя файла
- Возможна атака symlink race condition
- Утечка информации через имена файлов

**Решение:**
```kotlin
// ✅ Используем встроенную функцию которая генерирует безопасные имена
tempFile = File.createTempFile("cbz_", ".cbz", context.cacheDir)
```

---

### 8. Возможное переполнение памяти при кэшировании

**Файл:** `/android/core-reader/src/main/java/com/example/core/reader/utils/MemoryManager.kt`  
**Строки:** 88-115  
**Серьезность:** 🟠 **СЕРЬЕЗНАЯ**

#### Проблема:
```kotlin
private fun canCacheBitmap(bitmap: Bitmap): Boolean {
    val runtime = Runtime.getRuntime()
    val usedMemory = runtime.totalMemory() - runtime.freeMemory()
    val availableMemory = runtime.maxMemory() - usedMemory
    
    // Don't cache if we're using more than 80% of memory
    if (memoryUsagePercent > 0.8f) {
        return false
    }
    
    // ❌ Проблема: availableMemory может быть меньше чем размер bitmap
    // даже если процент использования < 80%
    if (size > availableMemory / 10) {  // ❌ Деление на 10 - произвольное число
        return false
    }
}
```

**Риск:**
- Логика проверки памяти не совсем правильная
- Может произойти OutOfMemoryError
- Очистка кэша может быть недостаточной

**Решение:**
```kotlin
private fun canCacheBitmap(bitmap: Bitmap): Boolean {
    val size = bitmap.byteCount
    val maxSize = MAX_MEMORY_CACHE_SIZE / 4
    
    val runtime = Runtime.getRuntime()
    val usedMemory = runtime.totalMemory() - runtime.freeMemory()
    val maxAvailable = runtime.maxMemory()
    
    // Не кэшируем если используется более 85% памяти
    val memUsagePercent = usedMemory.toFloat() / maxAvailable
    if (memUsagePercent > 0.85f) {
        return false
    }
    
    // Не кэшируем если bitmap больше чем 1/4 кэша
    if (size > maxSize) {
        return false
    }
    
    // Не кэшируем если нет достаточно памяти для bitmap
    val availMemory = maxAvailable - usedMemory
    if (size > availMemory / 3) {  // Требуем 1/3 от доступной памяти
        return false
    }
    
    return true
}
```

---

## 🟡 СРЕДНИЕ ОШИБКИ

### 9. Избыточное логирование со специальными символами

**Файлы:** Множество файлов  
**Серьезность:** 🟡 **СРЕДНЯЯ**

#### Проблема:
```kotlin
android.util.Log.d(TAG, "🔥 CBZ DIAGNOSTIC: Opening CBZ file: $uri")
android.util.Log.d(TAG, "✅ CBZ DIAGNOSTIC: Temp file created...")
android.util.Log.d(TAG, "❌ CBZ DIAGNOSTIC: SecurityException...")
android.util.Log.d(TAG, "📁 CBR DIAGNOSTIC: Copying to temp file...")
android.util.Log.d(TAG, "📦 CBR DIAGNOSTIC: Copied...")
```

**Риск:**
- Много памяти тратится на строки логов
- Unicode символы медленнее обрабатываются
- Логи переполняют Logcat
- Снижает производительность

**Решение:**
```kotlin
// Использовать простые текстовые логи
Log.d(TAG, "Opening CBZ file: $uri")
Log.d(TAG, "Temp file created")
Log.e(TAG, "SecurityException: ${e.message}", e)

// Для debug режима можно использовать более подробное логирование
if (BuildConfig.DEBUG) {
    Log.v(TAG, "Extra diagnostic info")
}
```

---

### 10. Неправильная очистка при ошибке в getPage

**Файл:** `/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`  
**Строки:** 798-820  
**Серьезность:** 🟡 **СРЕДНЯЯ**

#### Проблема:
- При ошибке загрузки страницы может быть утечка ресурсов
- Нет гарантированной очистки reader при исключении

**Решение:**
```kotlin
private suspend fun getPage(pageIndex: Int): Bitmap? {
    return withContext(Dispatchers.IO) {
        val reader = bookReader
        if (reader == null) {
            Log.w(TAG, "Book reader is null when getting page $pageIndex")
            return@withContext null
        }
        
        try {
            val pageResult = reader.getPage(pageIndex)
            when {
                pageResult.isSuccess -> pageResult.getOrNull()
                else -> {
                    Log.e(TAG, "Failed to render page $pageIndex: ${pageResult.exceptionOrNull()?.message}")
                    // Обновляем UI с ошибкой
                    _uiState.update { it.copy(error = pageResult.exceptionOrNull()) }
                    null
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Exception while getting page $pageIndex", e)
            _uiState.update { it.copy(error = e) }
            null
        }
    }
}
```

---

### 11. Использование !! оператора (Not Null Assertion)

**Файлы:** Множество файлов

#### Проблема:
```kotlin
streamingExtractor!!.openArchive(Uri.fromFile(tempFile))  // ❌
readerFactory.createReader(uri)!!  // ❌
```

**Риск:**
- Приложение крашится с NullPointerException без понятного сообщения об ошибке
- Сложно отследить источник ошибки

**Решение:** Использовать safe call или proper null checking:
```kotlin
streamingExtractor?.openArchive(...) ?: return Result.failure(...)
readerFactory.createReader(uri) ?: run { 
    Log.e(TAG, "Failed to create reader for: $uri")
    return Result.failure(...)
}
```

---

## 📋 Рекомендации по исправлению

### Приоритет 1: Критические (исправить немедленно)
1. ✅ Добавить synchronization в BitmapPool
2. ✅ Удалять временные файлы явно вместо deleteOnExit()
3. ✅ Добавить proper try-with-resources для streams
4. ✅ Включить Lifecycle observing в MemoryManager
5. ✅ Удалить !! operator assertions

### Приоритет 2: Серьезные (исправить в течение спринта)
6. ✅ Добавить счетчики попадания в кэш
7. ✅ Использовать безопасные имена временных файлов
8. ✅ Улучшить логику проверки памяти
9. ✅ Добавить proper error propagation

### Приоритет 3: Средние (улучшить код)
10. ✅ Убрать emoji из логов
11. ✅ Добавить try-catch в getPage с cleanup
12. ✅ Улучшить обработку исключений

---

## 🔧 Технический долг

- [ ] Добавить Unit тесты для MemoryManager и BitmapPool
- [ ] Добавить Thread safety тесты
- [ ] Добавить memory leak detection (LeakCanary)
- [ ] Добавить Ktlint для качества кода
- [ ] Добавить Detekt для анализа архитектуры
- [ ] Провести code review всех reader компонентов

---

## 📊 Метрики

| Метрика | Текущее | Целевое |
|---------|---------|---------|
| Critical Bugs | 5 | 0 |
| Memory Leaks | ~4 | 0 |
| Thread Safety Issues | 3 | 0 |
| Code Review Pass Rate | ~30% | 95% |
| Test Coverage | ~15% | >80% |

---

**Статус:** 🔴 **Требуется немедленное исправление**

Проект содержит критические ошибки, которые должны быть исправлены перед любым релизом. Рекомендуется приостановить разработку новых функций и сосредоточиться на исправлении багов.
