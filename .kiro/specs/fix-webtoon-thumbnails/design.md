# Design Document

## Overview

Исправление критических багов в Reader System, связанных с Webtoon режимом и панелью миниатюр. Дизайн основан на анализе бэкапа рабочей версии и текущей сломанной реализации.

## Architecture

### Проблема 1: Webtoon Mode - Возврат на Первую Страницу

**Текущая реализация (сломана):**
```kotlin
// OptimizedWebtoonLazyColumn.kt
LaunchedEffect(listState) {
    snapshotFlow { listState.firstVisibleItemIndex }
        .collect { index ->
            if (index in 0 until uiState.pageCount && index != uiState.currentPageIndex) {
                onVisiblePageChanged(index) // ❌ Вызывает onGoToPage -> сброс скролла
            }
        }
}
```

**Рабочая реализация (из бэкапа):**
```kotlin
// Нет LaunchedEffect с onVisiblePageChanged
// Скролл работает естественно без принудительной синхронизации
```

**Решение:**
- Удалить `LaunchedEffect` с `onVisiblePageChanged`
- Удалить параметр `onVisiblePageChanged` из `OptimizedWebtoonLazyColumn`
- Удалить вызов `onGoToPage` в `ReaderScreen.kt` для Webtoon режима
- Позволить LazyColumn управлять скроллом естественным образом

### Проблема 2: Миниатюры Не Загружаются

**Текущая реализация (сломана):**
```kotlin
// ReaderViewModel.kt - loadPage()
fun loadPage(pageIndex: Int) {
    // ...
    val bitmap = getPage(pageIndex)
    // ❌ Миниатюра НЕ создаётся
}
```

**Решение:**
```kotlin
fun loadPage(pageIndex: Int) {
    // ...
    val bitmap = getPage(pageIndex)
    
    // ✅ Создаём миниатюру при загрузке страницы
    if (bitmap != null) {
        createThumbnail(bitmap, pageIndex)
    }
}

private fun createThumbnail(bitmap: Bitmap, pageIndex: Int) {
    viewModelScope.launch(Dispatchers.Default) {
        val thumbnail = Bitmap.createScaledBitmap(
            bitmap,
            80, // ширина миниатюры
            120, // высота миниатюры
            true // фильтрация
        )
        val thumbnailKey = bitmapCache.createThumbnailKey(
            currentUri ?: "",
            pageIndex
        )
        bitmapCache.putThumbnail(thumbnailKey, thumbnail)
    }
}
```

### Проблема 3: Интеграция с Избранным

**Текущая реализация:**
- Левая панель имеет кнопку избранного
- Но нет интеграции с ComicRepository
- Статус не сохраняется в базе данных

**Решение:**
```kotlin
// ReaderViewModel.kt
fun toggleBookmark() {
    viewModelScope.launch {
        currentComicId?.let { comicId ->
            val currentStatus = _uiState.value.isBookmarked
            
            // Обновляем в базе данных
            comicRepository.updateBookmarkStatus(comicId, !currentStatus)
            
            // Обновляем UI
            _uiState.update { it.copy(isBookmarked = !currentStatus) }
            
            // Аналитика
            analyticsHelper.track(
                AnalyticsEvent.BookmarkToggled(
                    comicId = comicId,
                    isBookmarked = !currentStatus
                )
            )
        }
    }
}
```

## Components and Interfaces

### 1. OptimizedWebtoonLazyColumn

**Изменения:**
- Удалить параметр `onVisiblePageChanged`
- Удалить `LaunchedEffect` с синхронизацией скролла
- Оставить только естественный скролл LazyColumn

```kotlin
@Composable
fun OptimizedWebtoonLazyColumn(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    onLoadPage: (Int) -> Unit = {},
    onShowTopPanel: () -> Unit = {},
    onShowRightPanel: () -> Unit = {},
    onShowThumbnailPanel: () -> Unit = {},
    readerSettings: ReaderSettings = ReaderSettings(),
    modifier: Modifier = Modifier
    // ❌ Удалено: onVisiblePageChanged: (Int) -> Unit = {}
)
```

### 2. ReaderViewModel

**Новые методы:**

```kotlin
// Создание миниатюры
private suspend fun createThumbnail(bitmap: Bitmap, pageIndex: Int)

// Переключение избранного
fun toggleBookmark()

// Загрузка статуса избранного
private suspend fun loadBookmarkStatus(comicId: String): Boolean
```

**Изменения в существующих методах:**

```kotlin
fun loadPage(pageIndex: Int) {
    // ... существующий код ...
    
    // ✅ Добавить создание миниатюры
    if (bitmap != null) {
        createThumbnail(bitmap, pageIndex)
    }
}
```

### 3. ReaderScreen

**Изменения:**
- Удалить вызов `onGoToPage` в параметре `onVisiblePageChanged` для Webtoon режима
- Подключить `onToggleBookmark` к ViewModel

```kotlin
ReadingMode.WEBTOON -> OptimizedWebtoonLazyColumn(
    uiState = uiState,
    onNextPage = onNextPage,
    onPreviousPage = onPreviousPage,
    onLoadPage = onLoadPage,
    onShowTopPanel = { uiController.showTopPanel() },
    onShowRightPanel = { uiController.showRightPanel() },
    onShowThumbnailPanel = { /* no-op */ },
    readerSettings = readerSettings
    // ❌ Удалено: onVisiblePageChanged = { visibleIndex -> onGoToPage(visibleIndex) }
)
```

### 4. ComicRepository

**Новый метод:**

```kotlin
suspend fun updateBookmarkStatus(comicId: String, isBookmarked: Boolean)
```

## Data Models

### ReaderUiState

**Добавить поле:**
```kotlin
data class ReaderUiState(
    // ... существующие поля ...
    val isBookmarked: Boolean = false // ✅ Новое поле
)
```

### Comic Entity (уже существует в бэкапе)

```kotlin
@Entity(tableName = "comics")
data class Comic(
    @PrimaryKey val id: String,
    val title: String,
    val filePath: String,
    val isBookmarked: Boolean = false, // ✅ Уже есть в бэкапе
    // ... другие поля ...
)
```

## Error Handling

### Webtoon Mode
- Если LazyColumn не может скроллить, логировать ошибку
- Не блокировать UI при ошибках скролла

### Thumbnails
- Если создание миниатюры не удалось, логировать warning
- Продолжать работу без миниатюры
- Показывать placeholder в ThumbnailPanel

### Bookmark
- Если сохранение в БД не удалось, показать Toast с ошибкой
- Откатить изменение в UI
- Логировать ошибку для аналитики

## Testing Strategy

### Unit Tests

1. **WebtoonScrollTest**
   - Проверить, что скролл не сбрасывается
   - Проверить, что onGoToPage не вызывается при скролле

2. **ThumbnailCreationTest**
   - Проверить создание миниатюры из bitmap
   - Проверить сохранение в кэш
   - Проверить размеры миниатюры (80x120)

3. **BookmarkTest**
   - Проверить переключение статуса
   - Проверить сохранение в БД
   - Проверить загрузку статуса при открытии

### Integration Tests

1. **WebtoonModeIntegrationTest**
   - Открыть комикс в Webtoon режиме
   - Проскроллить несколько страниц
   - Проверить, что позиция сохранилась

2. **ThumbnailPanelIntegrationTest**
   - Открыть комикс
   - Загрузить несколько страниц
   - Открыть панель миниатюр
   - Проверить, что миниатюры отображаются

3. **BookmarkIntegrationTest**
   - Добавить комикс в избранное
   - Закрыть ридер
   - Открыть библиотеку
   - Проверить, что комикс в избранном

## Performance Considerations

### Thumbnail Creation
- Создавать миниатюры асинхронно в Dispatchers.Default
- Не блокировать UI thread
- Использовать LRU кэш для миниатюр (уже реализовано)

### Webtoon Scrolling
- LazyColumn уже оптимизирован для больших списков
- Не добавлять дополнительные LaunchedEffect
- Минимизировать recomposition

### Bookmark Operations
- Сохранять в БД асинхронно
- Использовать Room transactions
- Кэшировать статус в памяти

## Migration Notes

### From Current to Fixed Version

1. **Webtoon Mode:**
   - Удалить код синхронизации скролла
   - Пользователи не заметят изменений, кроме исправления бага

2. **Thumbnails:**
   - Миниатюры будут создаваться автоматически
   - Старые комиксы получат миниатюры при следующем открытии

3. **Bookmarks:**
   - Использовать существующую схему БД из бэкапа
   - Поле `isBookmarked` уже есть в Comic entity

## Dependencies

- Room Database (уже настроено)
- Hilt DI (уже настроено)
- Coroutines (уже используется)
- Compose LazyColumn (уже используется)
- BitmapCache (уже реализовано)

## References

- Backup: `android_backup/feature-reader/`
- Current: `android/feature-reader/`
- Database setup: `android_backup/VERIFICATION_REPORT.md`
