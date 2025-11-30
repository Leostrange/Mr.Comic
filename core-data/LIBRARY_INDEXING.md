## Документация по системе индексации библиотеки

## Обзор

Система индексации обеспечивает автоматическое сканирование директорий, поиск файлов комиксов и извлечение метаданных. Использует WorkManager для фонового выполнения с поддержкой восстановления после перезапуска.

## Архитектура

### Компоненты системы

1. **FileIndexer** - Обход директорий и поиск файлов
2. **MetadataExtractor** - Извлечение метаданных из файлов
3. **LibraryScanWorker** - Фоновое сканирование через WorkManager
4. **LibraryScanManager** - Управление задачами сканирования
5. **ScanSettingsRepository** - Управление настройками сканирования

---

## Компоненты

### 1. ScanProgress

**Расположение**: `android/core-data/src/main/java/com/example/core/data/scanner/ScanProgress.kt`

**Назначение**: Отслеживание прогресса сканирования

**Модели**:

```kotlin
data class ScanProgress(
    val currentFile: String,
    val processedFiles: Int,
    val totalFiles: Int,
    val foundComics: Int,
    val status: ScanStatus,
    val error: String?
)

enum class ScanStatus {
    IDLE, PREPARING, SCANNING, COMPLETED, FAILED, CANCELLED
}

enum class ScanMode {
    ALWAYS,      // Всегда включать
    CONDITIONAL, // Только если есть в папке
    NEVER        // Никогда не включать
}

data class ScanSettings(
    val cbzMode: ScanMode,
    val cbrMode: ScanMode,
    val pdfMode: ScanMode,
    val folderMode: ScanMode,
    val autoRefresh: Boolean,
    val scanSubfolders: Boolean
)
```

---

### 2. FileIndexer

**Расположение**: `android/core-data/src/main/java/com/example/core/data/scanner/FileIndexer.kt`

**Назначение**: Обход директорий и поиск файлов комиксов

**Основные методы**:

- `scanDirectory(directory: File, settings: ScanSettings): Flow<ScanProgress>` - Сканирование с прогрессом
- `findComicFiles(directory: File, settings: ScanSettings): List<File>` - Поиск файлов комиксов
- `countFiles(directory: File, recursive: Boolean): Int` - Подсчет файлов

**Особенности**:
- Рекурсивный обход директорий
- Фильтрация по настройкам форматов
- Отслеживание прогресса в реальном времени
- Обработка ошибок доступа

**Пример использования**:
```kotlin
@Inject
lateinit var fileIndexer: FileIndexer

viewModelScope.launch {
    val directory = File("/storage/emulated/0/Comics")
    val settings = ScanSettings(
        cbzMode = ScanMode.ALWAYS,
        cbrMode = ScanMode.ALWAYS,
        pdfMode = ScanMode.CONDITIONAL,
        folderMode = ScanMode.NEVER,
        scanSubfolders = true
    )
    
    fileIndexer.scanDirectory(directory, settings).collect { progress ->
        when (progress.status) {
            ScanStatus.SCANNING -> {
                println("Progress: ${progress.percentage}%")
                println("Found: ${progress.foundComics} comics")
            }
            ScanStatus.COMPLETED -> {
                println("Scan completed!")
            }
            ScanStatus.FAILED -> {
                println("Error: ${progress.error}")
            }
            else -> {}
        }
    }
}
```

---

### 3. MetadataExtractor

**Расположение**: `android/core-data/src/main/java/com/example/core/data/scanner/MetadataExtractor.kt`

**Назначение**: Извлечение метаданных из файлов комиксов

**Основные методы**:

- `extractMetadata(file: File, folderId: String?): Comic?` - Извлечь метаданные
- `extractMetadataFromFiles(files: List<File>, folderId: String?): List<Comic>` - Пакетное извлечение
- `quickCheck(file: File): QuickMetadata?` - Быстрая проверка без полного парсинга

**Извлекаемые метаданные**:
- Название (из имени файла)
- Формат файла
- Количество страниц
- Размер файла
- Серия (из имени файла)
- Номер тома (Vol 1, v2)
- Номер выпуска (#1, 005)
- Год (2020, (2016))

**Примеры распознавания**:
- "Batman #1" → series: "Batman", issue: 1
- "Spider-Man Vol 1 #5" → series: "Spider-Man", volume: 1, issue: 5
- "The Walking Dead 001 (2020)" → series: "The Walking Dead", issue: 1, year: 2020

**Пример использования**:
```kotlin
@Inject
lateinit var metadataExtractor: MetadataExtractor

val file = File("/path/to/Batman #1.cbz")
val comic = metadataExtractor.extractMetadata(file)

println("Title: ${comic?.title}")
println("Series: ${comic?.series}")
println("Issue: ${comic?.issue}")
println("Pages: ${comic?.pageCount}")
```

---

### 4. LibraryScanWorker

**Расположение**: `android/core-data/src/main/java/com/example/core/data/scanner/LibraryScanWorker.kt`

**Назначение**: Фоновое сканирование через WorkManager

**Особенности**:
- Использует Hilt для DI
- Поддерживает восстановление после перезапуска
- Отправляет прогресс через WorkManager
- Автоматически добавляет найденные комиксы в базу
- Проверяет дубликаты по пути

**Входные параметры**:
- `KEY_DIRECTORY_PATH` - путь к директории
- `KEY_SCAN_SUBFOLDERS` - сканировать подпапки
- `KEY_CBZ_MODE`, `KEY_CBR_MODE`, `KEY_PDF_MODE`, `KEY_FOLDER_MODE` - режимы сканирования

**Выходные данные**:
- `KEY_FOUND_COMICS` - количество найденных комиксов
- `KEY_PROCESSED_FILES` - количество обработанных файлов
- `KEY_ERROR_MESSAGE` - сообщение об ошибке (если есть)

**Прогресс**:
- `KEY_PROGRESS_CURRENT` - текущий файл
- `KEY_PROGRESS_TOTAL` - всего файлов
- `KEY_PROGRESS_PERCENTAGE` - процент выполнения

---

### 5. LibraryScanManager

**Расположение**: `android/core-data/src/main/java/com/example/core/data/scanner/LibraryScanManager.kt`

**Назначение**: Управление задачами сканирования

**Основные методы**:

- `startScan(directory: File, settings: ScanSettings): UUID` - Запустить сканирование
- `startPeriodicScan(directory: File, settings: ScanSettings, intervalHours: Long)` - Периодическое сканирование
- `cancelScan()` - Отменить текущее сканирование
- `cancelPeriodicScan()` - Отменить периодическое сканирование
- `observeScanProgress(workId: UUID): Flow<ScanProgress>` - Наблюдать за прогрессом
- `isScanRunning(): Boolean` - Проверить, выполняется ли сканирование

**Пример использования**:
```kotlin
@Inject
lateinit var scanManager: LibraryScanManager

// Запуск сканирования
val directory = File("/storage/emulated/0/Comics")
val settings = ScanSettings()
val workId = scanManager.startScan(directory, settings)

// Наблюдение за прогрессом
scanManager.observeScanProgress(workId).collect { progress ->
    when (progress.status) {
        ScanStatus.SCANNING -> {
            _scanProgress.value = progress
        }
        ScanStatus.COMPLETED -> {
            _message.value = "Found ${progress.foundComics} comics"
        }
        ScanStatus.FAILED -> {
            _error.value = progress.error
        }
        else -> {}
    }
}

// Периодическое сканирование (каждые 24 часа)
scanManager.startPeriodicScan(
    directory = directory,
    settings = settings,
    intervalHours = 24
)

// Отмена сканирования
scanManager.cancelScan()
```

---

### 6. ScanSettingsRepository

**Расположение**: `android/core-data/src/main/java/com/example/core/data/repository/ScanSettingsRepository.kt`

**Назначение**: Управление настройками сканирования

**Основные методы**:

- `getScanSettings(): Flow<ScanSettings>` - Получить настройки
- `saveScanSettings(settings: ScanSettings)` - Сохранить настройки
- `setCbzMode(mode: ScanMode)` - Установить режим для CBZ
- `setCbrMode(mode: ScanMode)` - Установить режим для CBR
- `setPdfMode(mode: ScanMode)` - Установить режим для PDF
- `setFolderMode(mode: ScanMode)` - Установить режим для папок
- `setAutoRefresh(enabled: Boolean)` - Включить автообновление
- `saveLastScanTime(timestamp: Long)` - Сохранить время последнего сканирования

**Пример использования**:
```kotlin
@Inject
lateinit var scanSettingsRepository: ScanSettingsRepository

// Получение настроек
scanSettingsRepository.getScanSettings().collect { settings ->
    println("CBZ mode: ${settings.cbzMode}")
    println("Auto refresh: ${settings.autoRefresh}")
}

// Изменение настроек
scanSettingsRepository.setCbzMode(ScanMode.ALWAYS)
scanSettingsRepository.setPdfMode(ScanMode.CONDITIONAL)
scanSettingsRepository.setAutoRefresh(true)

// Сохранение всех настроек
val newSettings = ScanSettings(
    cbzMode = ScanMode.ALWAYS,
    cbrMode = ScanMode.ALWAYS,
    pdfMode = ScanMode.CONDITIONAL,
    folderMode = ScanMode.NEVER,
    autoRefresh = true
)
scanSettingsRepository.saveScanSettings(newSettings)
```

---

## Режимы сканирования

### ScanMode.ALWAYS
Формат всегда включается в сканирование. Используется для основных форматов (CBZ, CBR).

### ScanMode.CONDITIONAL
Формат включается только если найден хотя бы один файл этого формата в директории. Используется для PDF и папок.

### ScanMode.NEVER
Формат никогда не включается в сканирование. Используется для отключения определенных форматов.

---

## Восстановление после перезапуска

WorkManager автоматически восстанавливает задачи сканирования после перезапуска устройства:

1. Задача сохраняется в базе данных WorkManager
2. При перезапуске WorkManager восстанавливает задачу
3. Сканирование продолжается с начала (WorkManager не поддерживает частичное восстановление)
4. Прогресс можно отслеживать через `observeScanProgress()`

---

## Оптимизация производительности

### Батарея
- Сканирование запускается только при достаточном заряде батареи
- Можно настроить требование зарядки для периодического сканирования

### Память
- Метаданные извлекаются без загрузки всего файла в память
- Используется потоковая обработка файлов
- Bitmap страниц не загружаются при сканировании

### Производительность
- Асинхронная обработка через корутины
- Пакетное добавление комиксов в базу данных
- Проверка дубликатов по пути файла

---

## Обработка ошибок

Система обрабатывает следующие ошибки:

1. **Доступ запрещен** - Пропускает недоступные директории
2. **Файл не найден** - Логирует и продолжает сканирование
3. **Поврежденный файл** - Пропускает файл и продолжает
4. **Нехватка памяти** - Освобождает ресурсы и продолжает
5. **Отмена пользователем** - Корректно завершает работу

---

## Требования, удовлетворенные системой

✅ **Требование 2.2**: Настройки включения форматов (Всегда/Условно/Никогда)  
✅ **Требование 2.3**: Фоновое сканирование через WorkManager  
✅ **Требование 2.5**: Восстановление индексации после перезапуска  
✅ **Требование 2.6**: Отслеживание прогресса сканирования  

---

## Использование в ViewModel

```kotlin
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val scanManager: LibraryScanManager,
    private val scanSettingsRepository: ScanSettingsRepository,
    private val comicRepository: ComicRepositoryNew
) : ViewModel() {
    
    private val _scanProgress = MutableStateFlow<ScanProgress?>(null)
    val scanProgress: StateFlow<ScanProgress?> = _scanProgress.asStateFlow()
    
    fun startScan(directory: File) {
        viewModelScope.launch {
            // Получаем настройки
            val settings = scanSettingsRepository.getScanSettings().first()
            
            // Запускаем сканирование
            val workId = scanManager.startScan(directory, settings)
            
            // Наблюдаем за прогрессом
            scanManager.observeScanProgress(workId).collect { progress ->
                _scanProgress.value = progress
                
                if (progress.status == ScanStatus.COMPLETED) {
                    // Сохраняем время последнего сканирования
                    scanSettingsRepository.saveLastScanTime(System.currentTimeMillis())
                }
            }
        }
    }
    
    fun cancelScan() {
        scanManager.cancelScan()
    }
}
```

---

## Следующие шаги

Система индексации готова для использования в:
1. Системе кэширования обложек (Task 5)
2. Экране библиотеки (Task 6)
3. Поиске и фильтрации (Task 7)

---

## Примечания

- Все операции выполняются асинхронно
- WorkManager гарантирует выполнение задач
- Настройки сохраняются в DataStore
- Прогресс доступен в реальном времени через Flow
- Поддерживается отмена сканирования
