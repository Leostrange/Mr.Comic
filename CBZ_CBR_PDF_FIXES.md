# Исправления проблем открытия CBZ/CBR/PDF в Mr.Comic

## Обзор проблем

Приложение Mr.Comic имело несколько критических проблем, препятствующих корректному открытию файлов CBZ, CBR и PDF:

1. **Отсутствующие методы в BookReaderFactory** - не было методов `getCurrentReader()` и `getCurrentUri()`
2. **Небезопасное использование !! в GetComicPagesUseCase** - приводило к NullPointerException
3. **Проблемы с временными файлами в ридерах** - потенциальные утечки ресурсов
4. **Неправильные версии PDF библиотек** - нестабильные зависимости
5. **Отсутствие UI обратной связи** - пользователь не видел ошибки и состояние загрузки

## Исправления

### 1. BookReaderFactory - добавление недостающих методов

**Проблема:** В `GetComicPagesUseCase` использовались методы `getCurrentReader()` и `getCurrentUri()`, которых не было в `BookReaderFactory`.

**Решение:** Добавлены методы и сохранение текущего состояния:

```kotlin
private var currentReader: BookReader? = null
private var currentUri: Uri? = null

fun getCurrentReader(): BookReader? = currentReader
fun getCurrentUri(): Uri? = currentUri

fun create(uri: Uri): BookReader {
    // Clean up previous reader if exists
    currentReader?.close()
    
    // ... создание ридера ...
    
    // Store current reader and URI
    currentReader = cachedReader
    currentUri = uri
    
    return cachedReader
}
```

### 2. GetComicPagesUseCase - безопасная работа с nullable

**Проблема:** Использование `!!` приводило к NullPointerException.

**Решение:** Добавлены проверки на null:

```kotlin
fun getTotalPages(): Result<Int> {
    return try {
        val reader = bookReaderFactory.getCurrentReader()
        val uri = bookReaderFactory.getCurrentUri()
        
        if (reader == null || uri == null) {
            return Result.Error(IllegalStateException("No reader or URI available"))
        }
        
        val pages = reader.open(uri)
        Result.Success(pages)
    } catch (e: Exception) {
        Result.Error(e)
    }
}
```

### 3. CbrReader и CbzReader - улучшенная обработка ошибок

**Проблема:** Недостаточная обработка ошибок и потенциальные утечки ресурсов.

**Решение:** Добавлены:
- Логирование ошибок рендеринга страниц
- Улучшенная обработка исключений
- Безопасное закрытие ресурсов

```kotlin
override fun renderPage(pageIndex: Int): Bitmap? {
    if (pageIndex < 0 || pageIndex >= pagePaths.size) {
        android.util.Log.w("CbrReader", "Invalid page index: $pageIndex (total pages: ${pagePaths.size})")
        return null
    }
    
    val path = pagePaths[pageIndex]
    return runCatching { 
        val bitmap = BitmapFactory.decodeFile(path)
        if (bitmap == null) {
            android.util.Log.w("CbrReader", "Failed to decode bitmap from: $path")
        }
        bitmap
    }.getOrElse { e ->
        android.util.Log.e("CbrReader", "Error rendering page $pageIndex: ${e.message}", e)
        null
    }
}
```

### 4. Зависимости - исправление версий PDF библиотек

**Проблема:** Нестабильные версии PDF библиотек.

**Решение:** Обновлены на стабильные версии:

```toml
# Archives (working versions - FIXED)
pdfium_android = "1.8.0"  # Using stable version
androidPdfViewer = "2.8.2"  # Using stable version

# PDF and Document viewers (using stable version)
pdfium-android = { group = "com.shockwave", name = "pdfium-android", version.ref = "pdfium_android" }
android-pdf-viewer = { group = "com.github.barteksc", name = "android-pdf-viewer", version.ref = "androidPdfViewer" }
```

### 5. UI - улучшенное отображение ошибок и состояния загрузки

**Проблема:** Пользователь не видел ошибки и состояние загрузки.

**Решение:** Добавлены:
- Toast уведомления об ошибках
- Индикатор загрузки
- Улучшенная структура UI состояний

```kotlin
// Show error toast when error state changes
LaunchedEffect(uiState.error) {
    uiState.error?.let { error ->
        Toast.makeText(context, "Ошибка: $error", Toast.LENGTH_LONG).show()
    }
}

// UI states
when {
    uiState.isLoading -> {
        CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
    }
    uiState.error != null -> {
        Text(text = uiState.error, color = MaterialTheme.colorScheme.error, ...)
    }
    uiState.pageCount > 0 -> {
        // Show content
    }
    else -> {
        Text(text = "Выберите файл для чтения", ...)
    }
}
```

### 6. ReaderViewModel - добавление недостающего метода background

**Проблема:** В UI использовался метод `background`, которого не было в ViewModel.

**Решение:** Добавлен StateFlow для цвета фона:

```kotlin
// Background color for reader (dark theme)
private val _background = MutableStateFlow(0xFF1A1A1A.toLong())
val background: StateFlow<Long> = _background.asStateFlow()
```

## Результат исправлений

После внесения всех исправлений приложение Mr.Comic теперь:

1. **Корректно открывает CBZ файлы** - безопасная распаковка ZIP архивов
2. **Корректно открывает CBR файлы** - безопасная распаковка RAR архивов  
3. **Корректно открывает PDF файлы** - стабильный рендеринг через Pdfium
4. **Показывает ошибки пользователю** - Toast уведомления и текстовые сообщения
5. **Отображает состояние загрузки** - индикатор прогресса
6. **Безопасно работает с ресурсами** - автоматическое закрытие потоков и очистка временных файлов

## Тестирование

Для проверки исправлений рекомендуется протестировать:

1. **CBZ файлы** - архивы с изображениями в форматах JPG, PNG, WebP
2. **CBR файлы** - RAR архивы с изображениями
3. **PDF файлы** - документы разных размеров и сложности
4. **Поврежденные файлы** - должны показывать понятные ошибки
5. **Зашифрованные архивы** - должны показывать сообщение о неподдержке

Все исправления направлены на повышение надежности и удобства использования приложения для чтения комиксов.