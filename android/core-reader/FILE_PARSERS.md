# Документация по парсерам файлов комиксов

## Обзор

Система парсеров предоставляет единый API для работы с различными форматами файлов комиксов. Парсеры извлекают метаданные и информацию о страницах из архивов и файлов.

## Архитектура

### Интерфейс FileParser

Базовый интерфейс для всех парсеров:

```kotlin
interface FileParser {
    suspend fun parse(file: File): ComicFile
    fun getSupportedFormats(): List<String>
    fun isSupported(file: File): Boolean
}
```

### Базовый класс BaseFileParser

Абстрактный класс, содержащий общую логику для всех парсеров:
- Определение формата по расширению и magic bytes
- Декодирование изображений с оптимизацией памяти
- Естественная сортировка файлов
- Вспомогательные методы для работы с изображениями

## Реализованные парсеры

### 1. CbzParser

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/CbzParser.kt`

**Назначение**: Парсинг CBZ/ZIP архивов

**Библиотека**: Zip4j

**Поддерживаемые форматы**: `cbz`, `zip`

**Особенности**:
- Использует Zip4j для работы с ZIP архивами
- Поддерживает вложенные папки
- Автоматическая сортировка страниц в естественном порядке
- Извлечение метаданных о размере файлов

**Пример использования**:
```kotlin
val parser = CbzParser(context)
val comicFile = parser.parse(File("/path/to/comic.cbz"))
println("Pages: ${comicFile.pageCount}")
println("Title: ${comicFile.title}")
```

---

### 2. CbrParser

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/CbrParser.kt`

**Назначение**: Парсинг CBR/RAR архивов

**Библиотека**: Junrar

**Поддерживаемые форматы**: `cbr`, `rar`

**Особенности**:
- Использует Junrar для работы с RAR архивами
- Поддерживает RAR4 и RAR5 форматы
- Обработка вложенных папок
- Естественная сортировка файлов
- Извлечение метаданных о размере

**Пример использования**:
```kotlin
val parser = CbrParser(context)
val comicFile = parser.parse(File("/path/to/comic.cbr"))
println("Pages: ${comicFile.pageCount}")
```

---

### 3. PdfParser

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/PdfParser.kt`

**Назначение**: Парсинг PDF файлов

**Библиотека**: Android PdfRenderer (встроенный API)

**Поддерживаемые форматы**: `pdf`

**Особенности**:
- Использует встроенный Android PdfRenderer
- Быстрое определение количества страниц
- Метод рендеринга страниц в Bitmap
- Минимальное использование памяти

**Пример использования**:
```kotlin
val parser = PdfParser(context)
val comicFile = parser.parse(File("/path/to/comic.pdf"))

// Рендеринг страницы
val bitmap = parser.renderPdfPage(
    file = File("/path/to/comic.pdf"),
    pageIndex = 0,
    width = 1024,
    height = 1024
)
```

---

### 4. FolderParser

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/FolderParser.kt`

**Назначение**: Парсинг папок с изображениями

**Поддерживаемые форматы**: Папки с файлами `.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`, `.webp`

**Особенности**:
- Обработка директорий с изображениями
- Автоматическая сортировка файлов
- Подсчет общего размера
- Поддержка только файлов изображений

**Пример использования**:
```kotlin
val parser = FolderParser(context)
val comicFile = parser.parse(File("/path/to/comic_folder"))
println("Images found: ${comicFile.pageCount}")
```

---

## Вспомогательные классы

### FormatDetector

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/FormatDetector.kt`

**Назначение**: Определение формата файлов

**Методы**:
- `detectByExtension(file: File): ComicFormat` - определение по расширению
- `detectByMagicBytes(file: File): ComicFormat` - определение по magic bytes
- `detectFormat(file: File): ComicFormat` - комбинированный метод
- `isSupported(file: File): Boolean` - проверка поддержки формата

**Magic bytes**:
- ZIP/CBZ: `50 4B 03 04` (PK..)
- RAR/CBR: `52 61 72 21` (Rar!)
- PDF: `25 50 44 46` (%PDF)
- 7-Zip: `37 7A BC AF 27 1C`
- TAR: `75 73 74 61 72` (ustar, offset 257)

**Пример использования**:
```kotlin
val detector = FormatDetector()
val format = detector.detectFormat(File("/path/to/file"))
println("Detected format: $format")

// Проверка поддержки
if (detector.isSupported(file)) {
    // Файл поддерживается
}
```

---

### FileParserFactory

**Расположение**: `android/core-reader/src/main/java/com/example/core/reader/parser/FileParserFactory.kt`

**Назначение**: Фабрика для создания парсеров

**Методы**:
- `getParser(file: File): FileParser?` - получить парсер для файла
- `getParserForFormat(format: ComicFormat): FileParser?` - получить парсер для формата
- `getAllParsers(): List<FileParser>` - получить все парсеры
- `getSupportedFormats(): List<String>` - получить поддерживаемые форматы
- `isSupported(file: File): Boolean` - проверить поддержку файла
- `parse(file: File): ComicFile` - парсинг с автоматическим выбором парсера

**Пример использования**:
```kotlin
@Inject
lateinit var parserFactory: FileParserFactory

// Автоматический выбор парсера и парсинг
val comicFile = parserFactory.parse(File("/path/to/comic.cbz"))

// Получение списка поддерживаемых форматов
val formats = parserFactory.getSupportedFormats()
println("Supported: ${formats.joinToString()}")

// Проверка поддержки файла
if (parserFactory.isSupported(file)) {
    val parser = parserFactory.getParser(file)
    val comic = parser?.parse(file)
}
```

---

## Модели данных

### ComicFile

Результат парсинга файла комикса:

```kotlin
data class ComicFile(
    val file: File,              // Исходный файл
    val format: ComicFormat,     // Формат файла
    val pageCount: Int,          // Количество страниц
    val title: String,           // Название
    val fileSize: Long,          // Размер файла в байтах
    val pages: List<PageInfo>    // Информация о страницах
)
```

### PageInfo

Информация о странице:

```kotlin
data class PageInfo(
    val index: Int,              // Индекс страницы (0-based)
    val name: String,            // Имя файла страницы
    val size: Long,              // Размер в байтах
    val bitmap: Bitmap? = null   // Bitmap (опционально)
)
```

### ParsingException

Исключение при парсинге:

```kotlin
class ParsingException(
    message: String,
    cause: Throwable? = null
) : Exception(message, cause)
```

---

## Dependency Injection

Все парсеры и вспомогательные классы предоставляются через Hilt.

**Пример использования в ViewModel**:
```kotlin
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val parserFactory: FileParserFactory,
    private val formatDetector: FormatDetector
) : ViewModel() {
    
    fun scanFile(file: File) {
        viewModelScope.launch {
            try {
                // Проверяем поддержку
                if (!formatDetector.isSupported(file)) {
                    _error.value = "Unsupported format"
                    return@launch
                }
                
                // Парсим файл
                val comicFile = parserFactory.parse(file)
                
                // Обрабатываем результат
                _comics.value = comicFile
            } catch (e: ParsingException) {
                _error.value = e.message
            }
        }
    }
}
```

---

## Оптимизация и производительность

### Память

1. **Lazy loading**: Bitmap страниц не загружаются при парсинге, только метаданные
2. **Sample size**: Изображения декодируются с оптимальным sample size
3. **RGB_565**: Используется формат RGB_565 для экономии памяти (вместо ARGB_8888)
4. **Cleanup**: Все ресурсы освобождаются после использования

### Производительность

1. **Coroutines**: Все операции выполняются асинхронно
2. **Dispatchers.IO**: Используется IO dispatcher для файловых операций
3. **Streaming**: CBZ/CBR используют потоковое извлечение (не распаковывают весь архив)
4. **Caching**: Результаты парсинга можно кэшировать

---

## Обработка ошибок

Все парсеры выбрасывают `ParsingException` при ошибках:

```kotlin
try {
    val comicFile = parser.parse(file)
} catch (e: ParsingException) {
    when {
        e.message?.contains("not found") == true -> {
            // Файл не найден
        }
        e.message?.contains("Unsupported") == true -> {
            // Неподдерживаемый формат
        }
        e.message?.contains("No image files") == true -> {
            // Нет изображений в архиве
        }
        else -> {
            // Другая ошибка
        }
    }
}
```

---

## Требования, удовлетворенные парсерами

✅ **Требование 2.1**: Поддержка форматов CBZ, CBR, PDF, папок с изображениями  
✅ **Требование 3.1**: Парсинг файлов комиксов  
✅ Определение формата по расширению и magic bytes  
✅ Извлечение метаданных (количество страниц, размер)  
✅ Естественная сортировка страниц  

---

## Следующие шаги

Парсеры готовы для использования в:
1. Системе индексации библиотеки (Task 4)
2. Системе кэширования обложек (Task 5)
3. Ридере комиксов (Task 9)

---

## Примечания

- Все парсеры thread-safe и могут использоваться из корутин
- Парсеры не загружают изображения в память при парсинге
- Для рендеринга страниц используйте существующие ридеры (CbzReader, CbrReader, PdfReader)
- FormatDetector использует как расширение, так и magic bytes для надежного определения формата
- FileParserFactory автоматически выбирает подходящий парсер
