# Design Document

## Overview

Исправление критических багов в Reader System. Анализ показал, что проблемы связаны с:
1. BrightnessOverlay не применяется к Pages режиму
2. onPageClick в ThumbnailPanel не вызывает loadPage
3. Индикатор страниц не синхронизирован с currentPageIndex
4. Миниатюры создаются, но не для всех страниц

## Architecture

### Проблема 1: Яркость в Pages Mode

**Текущая реализация:**
- BrightnessOverlay отображается в ReaderContent
- Но в Pages режиме используется PagedReaderWithGestures, который может перекрывать оверлей

**Решение:**
- Убедиться, что BrightnessOverlay имеет правильный zIndex
- Проверить, что оверлей применяется ко всему контенту, включая Pages режим
- Использовать Modifier.graphicsLayer для применения затемнения

### Проблема 2: Переключение через Миниатюры

**Текущая реализация:**
```kotlin
ThumbnailPanel(
    onPageClick = { pageIndex ->
        onGoToPage(pageIndex)
    }
)
```

**Проблема:**
- onGoToPage может не вызывать loadPage
- Панель не закрывается после выбора

**Решение:**
```kotlin
ThumbnailPanel(
    onPageClick = { pageIndex ->
        viewModel.loadPage(pageIndex) // Прямой вызов loadPage
        uiController.hideAllPanels() // Закрыть панель
    }
)
```

### Проблема 3: Индикатор Страниц

**Текущая реализация:**
- Индикатор отображает uiState.currentPageIndex
- Но currentPageIndex может не обновляться при переключении

**Решение:**
- Убедиться, что loadPage обновляет currentPageIndex в uiState
- Проверить, что индикатор использует актуальное значение из uiState

### Проблема 4: Загрузка Миниатюр

**Текущая реализация:**
- Миниатюры создаются в createThumbnail при загрузке страницы
- Но не все страницы загружаются автоматически

**Решение:**
- Создавать миниатюры для всех страниц при открытии панели
- Использовать LaunchedEffect в ThumbnailPanel для предзагрузки
- Создавать миниатюры из полноразмерных страниц, если они уже в кэше

## Components and Interfaces

### 1. ReaderScreen

**Изменения:**
- Убедиться, что BrightnessOverlay имеет zIndex выше контента
- Проверить порядок отрисовки компонентов

### 2. ThumbnailPanel

**Изменения:**
```kotlin
ThumbnailPanel(
    visible = showThumbnailPanel,
    currentPage = uiState.currentPageIndex,
    totalPages = uiState.pageCount,
    onPageClick = { pageIndex ->
        onLoadPage(pageIndex) // Вместо onGoToPage
        onDismiss() // Закрыть панель
    },
    onDismiss = { uiController.hideThumbnailPanel() },
    bitmapCache = bitmapCache,
    currentUri = uiState.currentComicUri
)
```

### 3. ReaderViewModel

**Новый метод для предзагрузки миниатюр:**
```kotlin
fun preloadAllThumbnails() {
    viewModelScope.launch(Dispatchers.Default) {
        for (pageIndex in 0 until _uiState.value.pageCount) {
            // Проверяем, есть ли уже миниатюра
            val thumbnailKey = bitmapCache.createThumbnailKey(
                currentComicId ?: "",
                pageIndex
            )
            
            if (bitmapCache.getThumbnail(thumbnailKey) == null) {
                // Проверяем, есть ли полноразмерная страница в кэше
                val bitmap = _uiState.value.bitmaps[pageIndex]
                if (bitmap != null) {
                    createThumbnail(bitmap, pageIndex)
                }
            }
        }
    }
}
```

### 4. PageIndicator

**Проверить синхронизацию:**
```kotlin
// Должен использовать актуальное значение
Text(
    text = "${uiState.currentPageIndex + 1} / ${uiState.pageCount}",
    // ...
)
```

## Data Models

Изменений в моделях данных не требуется. Все необходимые поля уже есть в ReaderUiState.

## Error Handling

### Brightness Overlay
- Если оверлей не применяется, логировать warning
- Продолжать работу без затемнения

### Thumbnail Loading
- Если создание миниатюры не удалось, показать placeholder
- Логировать ошибку для отладки
- Не блокировать UI

### Page Switching
- Если loadPage не удался, показать Toast с ошибкой
- Не закрывать панель миниатюр
- Логировать ошибку

## Testing Strategy

### Manual Tests

1. **Brightness in Pages Mode**
   - Открыть комикс в Pages режиме
   - Изменить яркость через ползунок
   - Проверить, что затемнение применяется

2. **Thumbnail Navigation**
   - Открыть панель миниатюр
   - Кликнуть на миниатюру
   - Проверить, что страница переключилась сразу
   - Проверить, что панель закрылась

3. **Page Indicator**
   - Переключить несколько страниц
   - Проверить, что индикатор обновляется
   - Проверить в обоих режимах (Pages и Webtoon)

4. **Thumbnail Loading**
   - Открыть комикс с 50+ страницами
   - Открыть панель миниатюр
   - Проскроллить панель
   - Проверить, что все миниатюры загружаются

## Implementation Notes

### Brightness Overlay Priority

Порядок отрисовки в ReaderContent:
1. Основной контент (Pages/Webtoon) - zIndex 0
2. Панели (Top, Right, Thumbnail, Left) - zIndex 100+
3. BrightnessOverlay - zIndex 10 (между контентом и панелями)

### Thumbnail Preloading Strategy

1. При открытии панели миниатюр:
   - Загрузить миниатюры для текущей страницы ±10
   - Запустить фоновую загрузку остальных миниатюр

2. При скролле панели:
   - Загружать миниатюры для видимых элементов
   - Использовать LazyRow для оптимизации

3. Создание миниатюр:
   - Если страница уже в кэше - создать миниатюру сразу
   - Если страницы нет - пропустить (будет создана при загрузке)

## Performance Considerations

### Brightness Overlay
- Использовать Modifier.graphicsLayer для аппаратного ускорения
- Избегать recomposition при изменении яркости

### Thumbnail Creation
- Создавать миниатюры в Dispatchers.Default
- Ограничить одновременное создание (max 5 параллельных задач)
- Использовать LRU кэш для миниатюр

### Page Switching
- Использовать AnimatedContent для плавного перехода
- Предзагружать соседние страницы
- Очищать кэш старых страниц
