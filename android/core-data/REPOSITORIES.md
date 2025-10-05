# Документация по репозиториям

## Обзор

Репозитории предоставляют высокоуровневый API для работы с данными приложения Mr.Comic. Они инкапсулируют логику доступа к данным и предоставляют удобные методы для работы с комиксами, папками, закладками и сессиями чтения.

## Реализованные репозитории

### 1. ComicRepositoryNew

**Расположение**: `android/core-data/src/main/java/com/example/core/data/repository/ComicRepositoryNew.kt`

**Назначение**: Управление комиксами в библиотеке

**Основные методы**:

#### Получение данных
- `getAllComics(): Flow<List<Comic>>` - Получить все комиксы
- `getComicsByFolder(folderId: String): Flow<List<Comic>>` - Получить комиксы по папке
- `searchComics(query: String): Flow<List<Comic>>` - Поиск комиксов по названию
- `getComicById(id: String): Comic?` - Получить комикс по ID
- `getComicByPath(path: String): Comic?` - Получить комикс по пути
- `getComicsByFormat(format: ComicFormat): Flow<List<Comic>>` - Получить комиксы по формату
- `getRecentlyRead(limit: Int): Flow<List<Comic>>` - Получить недавно прочитанные

#### Модификация данных
- `addComic(comic: Comic)` - Добавить комикс
- `addComics(comics: List<Comic>)` - Добавить несколько комиксов
- `updateComic(comic: Comic)` - Обновить комикс
- `deleteComic(comic: Comic)` - Удалить комикс (только из БД)
- `deleteComicById(id: String)` - Удалить комикс по ID
- `deleteAllComics()` - Удалить все комиксы

#### Вспомогательные методы
- `getComicsCount(): Int` - Получить количество комиксов
- `updateReadingProgress(comicId: String, progress: Float)` - Обновить прогресс чтения
- `toggleBookmark(comicId: String)` - Переключить закладку

**Пример использования**:
```kotlin
@Inject
lateinit var comicRepository: ComicRepositoryNew

// Получить все комиксы
comicRepository.getAllComics().collect { comics ->
    // Обработка списка комиксов
}

// Поиск комиксов
comicRepository.searchComics("batman").collect { results ->
    // Обработка результатов поиска
}

// Добавить комикс
val comic = Comic(
    title = "Batman #1",
    path = "/storage/comics/batman.cbz",
    format = ComicFormat.CBZ
)
comicRepository.addComic(comic)

// Обновить прогресс
comicRepository.updateReadingProgress("comic-id", 0.5f)
```

---

### 2. FolderRepository

**Расположение**: `android/core-data/src/main/java/com/example/core/data/repository/FolderRepository.kt`

**Назначение**: Управление иерархической структурой папок

**Основные методы**:

#### Получение данных
- `getAllFolders(): Flow<List<Folder>>` - Получить все папки
- `getFoldersByParent(parentId: String?): Flow<List<Folder>>` - Получить дочерние папки
- `getRootFolders(): Flow<List<Folder>>` - Получить корневые папки
- `getFolderById(id: String): Folder?` - Получить папку по ID
- `getFolderByPath(path: String): Folder?` - Получить папку по пути
- `getFolderHierarchy(folderId: String): List<Folder>` - Получить иерархию папок

#### Модификация данных
- `addFolder(folder: Folder)` - Добавить папку
- `addFolders(folders: List<Folder>)` - Добавить несколько папок
- `updateFolder(folder: Folder)` - Обновить папку
- `deleteFolder(folder: Folder)` - Удалить папку
- `deleteFolderById(id: String)` - Удалить папку по ID
- `updateComicCount(folderId: String, count: Int)` - Обновить количество комиксов

#### Вспомогательные методы
- `createOrUpdateFolder(path: String, name: String, parentId: String?): Folder` - Создать или обновить папку

**Пример использования**:
```kotlin
@Inject
lateinit var folderRepository: FolderRepository

// Получить корневые папки
folderRepository.getRootFolders().collect { folders ->
    // Отображение корневых папок
}

// Получить дочерние папки
folderRepository.getFoldersByParent("parent-id").collect { subfolders ->
    // Отображение подпапок
}

// Создать папку
val folder = Folder(
    name = "Marvel",
    path = "/storage/comics/marvel",
    parentId = null
)
folderRepository.addFolder(folder)

// Получить иерархию
val hierarchy = folderRepository.getFolderHierarchy("folder-id")
// Результат: [Root, Comics, Marvel, Spider-Man]
```

---

### 3. BookmarkRepository

**Расположение**: `android/core-data/src/main/java/com/example/core/data/repository/BookmarkRepository.kt`

**Назначение**: Управление закладками комиксов

**Основные методы**:

#### Получение данных
- `getAllBookmarks(): Flow<List<Bookmark>>` - Получить все закладки
- `getBookmarksByComic(comicId: String): Flow<List<Bookmark>>` - Получить закладки комикса
- `getBookmarkById(id: String): Bookmark?` - Получить закладку по ID
- `getBookmarkByComicAndPage(comicId: String, pageIndex: Int): Bookmark?` - Получить закладку по странице
- `getBookmarksCount(comicId: String): Int` - Получить количество закладок

#### Модификация данных
- `addBookmark(bookmark: Bookmark)` - Добавить закладку
- `addBookmark(comicId: String, pageIndex: Int, note: String?): Bookmark` - Добавить закладку с параметрами
- `addBookmarks(bookmarks: List<Bookmark>)` - Добавить несколько закладок
- `updateBookmark(bookmark: Bookmark)` - Обновить закладку
- `deleteBookmark(bookmark: Bookmark)` - Удалить закладку
- `deleteBookmarkById(id: String)` - Удалить закладку по ID
- `deleteBookmarksByComic(comicId: String)` - Удалить все закладки комикса

#### Вспомогательные методы
- `hasBookmarkOnPage(comicId: String, pageIndex: Int): Boolean` - Проверить наличие закладки
- `toggleBookmark(comicId: String, pageIndex: Int, note: String?): Boolean` - Переключить закладку

**Пример использования**:
```kotlin
@Inject
lateinit var bookmarkRepository: BookmarkRepository

// Получить закладки комикса
bookmarkRepository.getBookmarksByComic("comic-id").collect { bookmarks ->
    // Отображение закладок
}

// Добавить закладку
val bookmark = bookmarkRepository.addBookmark(
    comicId = "comic-id",
    pageIndex = 42,
    note = "Важная сцена"
)

// Переключить закладку
val isAdded = bookmarkRepository.toggleBookmark(
    comicId = "comic-id",
    pageIndex = 42,
    note = "Заметка"
)
// isAdded = true если закладка добавлена, false если удалена

// Проверить наличие закладки
val hasBookmark = bookmarkRepository.hasBookmarkOnPage("comic-id", 42)
```

---

### 4. ReadingSessionRepository

**Расположение**: `android/core-data/src/main/java/com/example/core/data/repository/ReadingSessionRepository.kt`

**Назначение**: Управление сессиями чтения и прогрессом

**Основные методы**:

#### Получение данных
- `getAllSessions(): Flow<List<ReadingSession>>` - Получить все сессии
- `getSessionByComicId(comicId: String): ReadingSession?` - Получить сессию комикса
- `observeSessionByComicId(comicId: String): Flow<ReadingSession?>` - Наблюдать за сессией
- `getRecentSessions(limit: Int): Flow<List<ReadingSession>>` - Получить недавние сессии
- `getReadingPercentage(comicId: String): Float` - Получить процент прочитанного

#### Модификация данных
- `saveSession(session: ReadingSession)` - Сохранить сессию
- `createOrUpdateSession(comicId: String, currentPage: Int, totalPages: Int, readingSettings: String?): ReadingSession` - Создать или обновить сессию
- `updateSession(session: ReadingSession)` - Обновить сессию
- `deleteSession(session: ReadingSession)` - Удалить сессию
- `deleteSessionByComicId(comicId: String)` - Удалить сессию по ID комикса
- `updateProgress(comicId: String, currentPage: Int)` - Обновить прогресс

#### Вспомогательные методы
- `getOrCreateSession(comicId: String, totalPages: Int): ReadingSession` - Получить или создать сессию
- `saveProgressAndSettings(comicId: String, currentPage: Int, totalPages: Int, readingSettings: String?)` - Сохранить прогресс и настройки
- `deleteOldSessions(daysOld: Int)` - Удалить старые сессии

**Пример использования**:
```kotlin
@Inject
lateinit var readingSessionRepository: ReadingSessionRepository

// Получить или создать сессию
val session = readingSessionRepository.getOrCreateSession(
    comicId = "comic-id",
    totalPages = 100
)

// Обновить прогресс
readingSessionRepository.updateProgress(
    comicId = "comic-id",
    currentPage = 42
)

// Сохранить прогресс и настройки
readingSessionRepository.saveProgressAndSettings(
    comicId = "comic-id",
    currentPage = 42,
    totalPages = 100,
    readingSettings = """{"orientation":"LANDSCAPE","mode":"PAGED"}"""
)

// Получить процент прочитанного
val percentage = readingSessionRepository.getReadingPercentage("comic-id")
// Результат: 42.0

// Наблюдать за сессией
readingSessionRepository.observeSessionByComicId("comic-id").collect { session ->
    // Реактивное обновление UI при изменении сессии
}

// Удалить старые сессии (старше 90 дней)
readingSessionRepository.deleteOldSessions(daysOld = 90)
```

---

## Маппинг данных

**Расположение**: `android/core-data/src/main/java/com/example/core/data/mapper/DataMappers.kt`

Файл содержит extension функции для преобразования между различными представлениями данных.

### Основные функции маппинга

#### Преобразование файлов
- `File.toComic(folderId: String?, coverPath: String?): Comic` - Преобразовать файл в Comic
- `File.isSupportedComicFormat(): Boolean` - Проверить поддерживаемый формат
- `String.toComicFormat(): ComicFormat` - Получить формат из пути
- `String.isSupportedComicFormat(): Boolean` - Проверить формат по пути

#### Работа с путями
- `String.getFileExtension(): String` - Получить расширение файла
- `String.getFileNameWithoutExtension(): String` - Получить имя без расширения
- `String.toFolder(name: String?, parentId: String?): Folder` - Создать папку из пути

#### Преобразование моделей
- `Comic.toReadingSession(currentPage: Int, readingSettings: String?): ReadingSession` - Создать сессию из комикса
- `Comic.toBookmark(pageIndex: Int, note: String?): Bookmark` - Создать закладку из комикса
- `Comic.withSession(session: ReadingSession): Comic` - Обновить комикс с данными сессии

#### Вспомогательные функции
- `ReadingSession.getProgressPercentage(): Float` - Получить процент прогресса
- `ReadingSession.isCompleted(): Boolean` - Проверить завершенность
- `ReadingSession.isStarted(): Boolean` - Проверить начало чтения
- `ReadingSession.formatProgress(): String` - Форматировать прогресс (например, "42/100")
- `Comic.getProgressPercentage(): Float` - Получить процент из комикса
- `Comic.isRead(): Boolean` - Проверить, прочитан ли комикс
- `Comic.isStarted(): Boolean` - Проверить, начато ли чтение
- `Long.formatFileSize(): String` - Форматировать размер файла
- `Long.formatDate(): String` - Форматировать дату
- `Long.formatRelativeDate(): String` - Форматировать относительную дату

**Примеры использования**:
```kotlin
// Преобразование файла в Comic
val file = File("/storage/comics/batman.cbz")
val comic = file.toComic(
    folderId = "folder-id",
    coverPath = "/cache/covers/batman.jpg"
)

// Проверка формата
if (file.isSupportedComicFormat()) {
    // Обработка файла
}

// Создание сессии из комикса
val session = comic.toReadingSession(
    currentPage = 0,
    readingSettings = null
)

// Форматирование прогресса
val progressText = session.formatProgress() // "1/100"

// Форматирование размера
val sizeText = comic.fileSize.formatFileSize() // "15.5 MB"

// Форматирование даты
val dateText = comic.addedDate.formatRelativeDate() // "2 дн. назад"

// Проверка статуса чтения
if (comic.isStarted() && !comic.isRead()) {
    // Комикс начат, но не дочитан
}
```

---

## Dependency Injection

Все репозитории предоставляются через Hilt в модуле `DatabaseModule`.

**Использование в ViewModel**:
```kotlin
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepositoryNew,
    private val folderRepository: FolderRepository,
    private val bookmarkRepository: BookmarkRepository,
    private val readingSessionRepository: ReadingSessionRepository
) : ViewModel() {
    
    val comics = comicRepository.getAllComics()
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5000),
            initialValue = emptyList()
        )
    
    fun searchComics(query: String) {
        comicRepository.searchComics(query).collect { results ->
            // Обработка результатов
        }
    }
}
```

---

## Требования, удовлетворенные репозиториями

✅ **Требование 1.1**: Управление библиотекой комиксов  
✅ **Требование 1.2**: Добавление/удаление комиксов  
✅ **Требование 1.3**: Поиск и фильтрация  
✅ **Требование 12.1**: Автосохранение прогресса  
✅ **Требование 12.2**: Восстановление состояния  

---

## Архитектурные решения

### 1. Использование Flow для реактивности
Все методы получения данных возвращают `Flow`, что позволяет UI автоматически обновляться при изменении данных в базе.

### 2. Разделение ответственности
Каждый репозиторий отвечает за свою область данных:
- ComicRepository - комиксы
- FolderRepository - папки
- BookmarkRepository - закладки
- ReadingSessionRepository - сессии чтения

### 3. Маппинг данных
Extension функции в `DataMappers.kt` обеспечивают удобное преобразование между различными представлениями данных.

### 4. Singleton репозитории
Все репозитории являются Singleton, что гарантирует единственный источник истины для данных.

### 5. Suspend функции
Все операции модификации данных являются suspend функциями, что обеспечивает безопасную работу с базой данных в корутинах.

---

## Следующие шаги

Репозитории готовы для использования в следующих задачах:
1. Создание парсеров файлов (Task 3)
2. Реализация системы индексации (Task 4)
3. Создание системы кэширования обложек (Task 5)
4. Реализация экрана библиотеки (Task 6)

---

## Примечания

- Все репозитории используют новые DAO из `ComicDatabase`
- Старый `ComicRepository` сохранен для обратной совместимости
- Новые репозитории имеют суффикс "New" или уникальные имена
- Маппинг данных вынесен в отдельный файл для переиспользования
- Все методы документированы KDoc комментариями
