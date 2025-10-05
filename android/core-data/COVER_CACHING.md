# Документация по системе кэширования обложек

## Обзор

Система кэширования обложек обеспечивает быстрое отображение обложек комиксов путем извлечения первой страницы и сохранения её в дисковом кэше. Поддерживает создание thumbnails различных размеров и автоматическую очистку устаревших файлов.

## Архитектура

### Компоненты системы

1. **CoverExtractor** - Извлечение обложек из файлов
2. **CoverCacheManager** - Управление дисковым кэшем
3. **CoverService** - Высокоуровневый API для работы с обложками

---

## Компоненты

### 1. CoverExtractor

**Расположение**: `android/core-data/src/main/java/com/example/core/data/cover/CoverExtractor.kt`

**Назначение**: Извлечение первой страницы как обложки из различных форматов

**Поддерживаемые форматы**:
- CBZ/ZIP - через Zip4j
- CBR/RAR - через Junrar
- PDF - через Android PdfRenderer
- Folder - первое изображение из папки

**Оптимизация**:
- Максимальный размер обложки: 512x768
- Формат сжатия: RGB_565
- Автоматический расчет inSampleSize
- Минимальное использование памяти

**Основные методы**:

```kotlin
suspend fun extractCover(file: File): Bitmap?
```

**Пример использования**:
```kotlin
@Inject
lateinit var coverExtractor: CoverExtractor

val file = File("/path/to/comic.cbz")
val cover = coverExtractor.extractCover(file)

if (cover != null) {
    imageView.setImageBitmap(cover)
}
```

---

### 2. CoverCacheManager

**Расположение**: `android/core-data/src/main/java/com/example/core/data/cover/CoverCacheManager.kt`

**Назначение**: Управление дисковым кэшем обложек и thumbnails

**Структура кэша**:
```
cache/
├── covers/           # Полноразмерные обложки
│   ├── abc123.jpg
│   └── def456.jpg
└── thumbnails/       # Thumbnails различных размеров
    ├── abc123_128.jpg
    ├── abc123_256.jpg
    └── abc123_512.jpg
```

**Размеры thumbnails**:
- THUMBNAIL_SMALL_SIZE = 128px
- THUMBNAIL_MEDIUM_SIZE = 256px
- THUMBNAIL_LARGE_SIZE = 512px

**Ограничения кэша**:
- Максимальный размер: 100 МБ
- Максимальный возраст: 30 дней
- Формат: JPEG с качеством 90% (обложки) и 85% (thumbnails)

**Основные методы**:

```kotlin
// Сохранение и загрузка
suspend fun saveCover(comicId: String, bitmap: Bitmap): String?
suspend fun getCover(comicId: String): Bitmap?
fun getCoverPath(comicId: String): String?
fun hasCover(comicId: String): Boolean

// Thumbnails
suspend fun createThumbnail(comicId: String, size: Int): String?
suspend fun getThumbnail(comicId: String, size: Int): Bitmap?

// Очистка
suspend fun clearCache(): Boolean
suspend fun clearOldCovers(maxAgeDays: Long): Int
suspend fun clearIfOverLimit(maxSizeMb: Long): Int

// Информация
fun getCacheSize(): Long
fun getCacheFileCount(): Int
```

**Пример использования**:
```kotlin
@Inject
lateinit var cacheManager: CoverCacheManager

// Сохранение обложки
val coverPath = cacheManager.saveCover("comic-id", bitmap)

// Загрузка обложки
val cover = cacheManager.getCover("comic-id")

// Создание thumbnail
val thumbnailPath = cacheManager.createThumbnail(
    "comic-id",
    CoverCacheManager.THUMBNAIL_MEDIUM_SIZE
)

// Получение thumbnail
val thumbnail = cacheManager.getThumbnail(
    "comic-id",
    CoverCacheManager.THUMBNAIL_SMALL_SIZE
)

// Очистка старых обложек (старше 30 дней)
val deletedCount = cacheManager.clearOldCovers(30)

// Очистка при превышении лимита
val deletedCount = cacheManager.clearIfOverLimit(100)

// Информация о кэше
val size = cacheManager.getCacheSize()
val count = cacheManager.getCacheFileCount()
println("Cache: ${size / 1024 / 1024}MB, $count files")
```

---

### 3. CoverService

**Расположение**: `android/core-data/src/main/java/com/example/core/data/cover/CoverService.kt`

**Назначение**: Высокоуровневый API, объединяющий извлечение и кэширование

**Особенности**:
- Автоматическая проверка кэша перед извлечением
- Обновление путей к обложкам в базе данных
- Предзагрузка обложек для списков
- Управление жизненным циклом обложек

**Основные методы**:

```kotlin
// Получение обложек
suspend fun getCover(comicId: String): Bitmap?
suspend fun getCoverPath(comicId: String): String?
suspend fun getThumbnail(comicId: String, size: Int): Bitmap?

// Управление
suspend fun preloadCovers(comicIds: List<String>)
suspend fun refreshCover(comicId: String): Bitmap?
suspend fun deleteCover(comicId: String)

// Очистка
suspend fun clearCache()
suspend fun clearOldCovers(maxAgeDays: Long): Int

// Информация
fun getCacheInfo(): CacheInfo
```

**Пример использования**:
```kotlin
@Inject
lateinit var coverService: CoverService

// Получение обложки (из кэша или извлечение)
val cover = coverService.getCover("comic-id")

// Получение thumbnail
val thumbnail = coverService.getThumbnail(
    "comic-id",
    CoverCacheManager.THUMBNAIL_MEDIUM_SIZE
)

// Предзагрузка обложек для списка
val comicIds = listOf("id1", "id2", "id3")
coverService.preloadCovers(comicIds)

// Обновление обложки
val newCover = coverService.refreshCover("comic-id")

// Информация о кэше
val cacheInfo = coverService.getCacheInfo()
println("Cache: ${cacheInfo.sizeMb}MB, ${cacheInfo.fileCount} files")

// Очистка старых обложек
val deletedCount = coverService.clearOldCovers(30)
```

---

## Использование в ViewModel

```kotlin
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val coverService: CoverService,
    private val comicRepository: ComicRepositoryNew
) : ViewModel() {
    
    private val _covers = MutableStateFlow<Map<String, Bitmap>>(emptyMap())
    val covers: StateFlow<Map<String, Bitmap>> = _covers.asStateFlow()
    
    fun loadCovers(comicIds: List<String>) {
        viewModelScope.launch {
            val coverMap = mutableMapOf<String, Bitmap>()
            
            for (comicId in comicIds) {
                val cover = coverService.getThumbnail(
                    comicId,
                    CoverCacheManager.THUMBNAIL_MEDIUM_SIZE
                )
                
                if (cover != null) {
                    coverMap[comicId] = cover
                }
            }
            
            _covers.value = coverMap
        }
    }
    
    fun preloadCovers(comicIds: List<String>) {
        viewModelScope.launch {
            coverService.preloadCovers(comicIds)
        }
    }
    
    fun refreshCover(comicId: String) {
        viewModelScope.launch {
            val newCover = coverService.refreshCover(comicId)
            if (newCover != null) {
                _covers.value = _covers.value + (comicId to newCover)
            }
        }
    }
}
```

---

## Использование с Coil

Система кэширования интегрируется с Coil для оптимального отображения:

```kotlin
@Composable
fun ComicCover(
    comicId: String,
    modifier: Modifier = Modifier
) {
    val coverService = LocalCoverService.current
    
    AsyncImage(
        model = ImageRequest.Builder(LocalContext.current)
            .data(comicId)
            .memoryCacheKey(comicId)
            .diskCacheKey(comicId)
            .build(),
        contentDescription = "Comic cover",
        modifier = modifier,
        contentScale = ContentScale.Crop
    )
}
```

---

## Оптимизация производительности

### Извлечение обложек

1. **Минимальное декодирование**: Используется inSampleSize для уменьшения размера
2. **RGB_565**: Формат с меньшим использованием памяти
3. **Потоковая обработка**: Файлы не загружаются полностью в память
4. **Асинхронность**: Все операции выполняются в корутинах

### Кэширование

1. **Дисковый кэш**: Быстрый доступ без повторного извлечения
2. **Thumbnails**: Предварительно созданные миниатюры для списков
3. **MD5 хэширование**: Быстрый поиск файлов по ID
4. **JPEG сжатие**: Оптимальный баланс качества и размера

### Управление памятью

1. **Автоочистка**: Удаление старых файлов
2. **Лимит размера**: Контроль максимального размера кэша
3. **Lazy loading**: Загрузка только при необходимости
4. **Bitmap recycling**: Освобождение ресурсов после использования

---

## Автоматическая очистка

Система автоматически очищает кэш в следующих случаях:

1. **По возрасту**: Файлы старше 30 дней удаляются
2. **По размеру**: При превышении 100 МБ удаляются самые старые файлы
3. **Вручную**: Пользователь может очистить кэш в настройках

**Настройка автоочистки**:
```kotlin
// В Application или ViewModel
viewModelScope.launch {
    // Очистка при запуске приложения
    coverService.clearOldCovers(30)
    
    // Проверка размера кэша
    val cacheInfo = coverService.getCacheInfo()
    if (cacheInfo.sizeMb > 100) {
        coverCacheManager.clearIfOverLimit(100)
    }
}
```

---

## Обработка ошибок

Все методы обрабатывают ошибки и возвращают null при неудаче:

```kotlin
val cover = coverService.getCover("comic-id")
if (cover == null) {
    // Обложка не найдена или ошибка извлечения
    // Показываем placeholder
    imageView.setImageResource(R.drawable.placeholder_cover)
}
```

---

## Требования, удовлетворенные системой

✅ **Требование 2.4**: Извлечение и кэширование обложек  
✅ Генерация thumbnails с оптимальным размером  
✅ Очистка устаревших обложек  
✅ Дисковый кэш с управлением размером  

---

## Интеграция с системой индексации

Обложки автоматически извлекаются при сканировании библиотеки:

```kotlin
// В LibraryScanWorker
for (file in comicFiles) {
    val comic = metadataExtractor.extractMetadata(file)
    if (comic != null) {
        // Извлекаем обложку
        val cover = coverExtractor.extractCover(file)
        if (cover != null) {
            val coverPath = coverCacheManager.saveCover(comic.id, cover)
            val updatedComic = comic.copy(coverPath = coverPath)
            comicRepository.addComic(updatedComic)
        }
    }
}
```

---

## Следующие шаги

Система кэширования обложек готова для использования в:
1. Экране библиотеки (Task 6)
2. Поиске и фильтрации (Task 7)
3. Ридере комиксов (Task 9)

---

## Примечания

- Все операции асинхронные через корутины
- Кэш хранится в `context.cacheDir` (автоматически очищается системой при нехватке места)
- Используется MD5 хэширование для имен файлов
- Поддерживаются все основные форматы комиксов
- Thumbnails создаются по требованию и кэшируются
