# PDF Libraries Integration and Fallback Mechanisms

## Обзор

Проект Mr.Comic теперь поддерживает несколько PDF библиотек с автоматическим fallback механизмом для обеспечения надежности открытия PDF файлов.

## Поддерживаемые библиотеки

### 1. Pdfium-Android (Основная)
- **Группа**: `com.github.barteksc`
- **Артефакт**: `pdfium-android`
- **Версия**: `1.9.0`
- **Источник**: Maven Central
- **Преимущества**: 
  - Высокая производительность
  - Нативная реализация
  - Поддержка всех современных PDF функций
  - Оптимизирован для Android

### 2. PDFBox-Android (Fallback)
- **Группа**: `com.tom-roush`
- **Артефакт**: `pdfbox-android`
- **Версия**: `2.0.27.0`
- **Источник**: Maven Central
- **Преимущества**:
  - Высокая совместимость
  - Поддержка сложных PDF документов
  - Резервный вариант при проблемах с Pdfium

## Архитектура

### Интерфейс PdfReader
```kotlin
interface PdfReader {
    suspend fun openDocument(context: Context, uri: Uri): Result<Unit>
    fun getPageCount(): Int?
    suspend fun renderPage(pageIndex: Int, maxWidth: Int = 2048, maxHeight: Int = 2048): Result<Bitmap>
    fun close()
    fun supportsUri(uri: Uri): Boolean
}
```

### Фабрика PdfReaderFactory
```kotlin
class PdfReaderFactory {
    suspend fun openPdfWithFallback(context: Context, uri: Uri): Result<PdfReader>
}
```

## Fallback механизм

1. **Попытка открытия**: Фабрика пытается открыть PDF с помощью каждого доступного ридера
2. **Порядок приоритета**: 
   - PdfiumReader (основной)
   - PdfBoxReader (fallback)
3. **Автоматический выбор**: Первый успешно открывший PDF ридер используется
4. **Обработка ошибок**: Если все ридеры не смогли открыть файл, возвращается ошибка

## Использование

### Базовое использование
```kotlin
val pdfReaderFactory = PdfReaderFactory()

// Автоматический выбор лучшего ридера
val result = pdfReaderFactory.openPdfWithFallback(context, uri)
if (result.isSuccess) {
    val reader = result.getOrThrow()
    val pageCount = reader.getPageCount()
    val bitmap = reader.renderPage(0)
    reader.close()
}
```

### Тестирование ридеров
```kotlin
val test = PdfReaderTest(context)

// Тест всех ридеров
val allResults = test.testAllReaders(uri)
println("Успешные ридеры: ${allResults.successfulReaders.size}")

// Тест фабрики
val factoryResult = test.testFactoryWithFallback(uri)
println("Использованный ридер: ${factoryResult.usedReader}")
```

## Конфигурация зависимостей

### gradle/libs.versions.toml
```toml
[versions]
pdfium_android = "1.9.0"
pdfboxAndroid = "2.0.27.0"

[libraries]
pdfium-android = { group = "com.github.barteksc", name = "pdfium-android", version.ref = "pdfium_android" }
pdfbox-android = { group = "com.tom-roush", name = "pdfbox-android", version.ref = "pdfboxAndroid" }
```

### Модули
```kotlin
// android/core-reader/build.gradle.kts
dependencies {
    implementation(libs.pdfium.android)
    implementation(libs.pdfbox.android)
}
```

## Обработка ошибок

### Типичные ошибки и решения

1. **"Cannot open file descriptor for URI"**
   - Проверьте права доступа к файлу
   - Убедитесь, что URI валиден

2. **"Cannot create PDF document"**
   - Файл может быть поврежден
   - Попробуйте другой ридер (fallback сработает автоматически)

3. **"PDF file contains no pages"**
   - Файл может быть пустым или поврежденным
   - Проверьте содержимое файла

4. **"Failed to render page"**
   - Проблемы с памятью (слишком большие страницы)
   - Попробуйте уменьшить maxWidth/maxHeight

## Производительность

### Оптимизации
- **Масштабирование**: Автоматическое ограничение размера изображений до 2048px
- **Асинхронность**: Все операции выполняются в IO диспетчере
- **Ресурсы**: Автоматическое освобождение ресурсов

### Рекомендации
- Используйте Pdfium для большинства случаев
- PDFBox как резервный вариант
- Мониторьте использование памяти при работе с большими PDF

## Тестирование

### Запуск тестов
```bash
# Тест зависимостей
./gradlew android:app:dependencies --configuration debugRuntimeClasspath | grep pdf

# Тест сборки
./gradlew android:app:assembleDebug
```

### Проверка работы
```kotlin
// В коде приложения
val test = PdfReaderTest(context)
val results = test.testAllReaders(pdfUri)
println("Результаты тестирования: $results")
```

## Будущие улучшения

1. **Дополнительные библиотеки**: Добавление других PDF библиотек
2. **Кэширование**: Кэширование рендеренных страниц
3. **Предзагрузка**: Предзагрузка следующих страниц
4. **Сжатие**: Оптимизация размера изображений
5. **Многопоточность**: Параллельная обработка страниц

## Troubleshooting

### Проблемы сборки
```bash
# Очистка кэша
./gradlew clean

# Проверка зависимостей
./gradlew android:app:dependencies --configuration debugRuntimeClasspath
```

### Проблемы выполнения
- Проверьте логи для деталей ошибок
- Убедитесь, что все зависимости подключены
- Проверьте права доступа к файлам

## Заключение

Интеграция нескольких PDF библиотек с fallback механизмом обеспечивает надежное открытие PDF файлов в приложении Mr.Comic. Система автоматически выбирает лучший доступный ридер и обеспечивает совместимость с различными форматами PDF документов.