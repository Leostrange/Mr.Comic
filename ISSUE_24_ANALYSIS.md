# 📋 Анализ Issue #24: Implement comic counter in LibraryScreen

## 🔍 **СТАТУС ISSUE:**
❌ **НЕ РЕАЛИЗОВАН** - Требует полной имплементации

## 📝 **ОПИСАНИЕ ISSUE:**
**Дата создания**: 22 июля 2025  
**Автор**: Leostrange  
**Статус**: Open  

### Требования:
1. ✅ **Задача понятна**: Добавить счетчик комиксов в LibraryScreen
2. ❌ **Счетчик в UI**: Отсутствует отображение "Всего комиксов: N"  
3. ❌ **Динамическое обновление**: Нет логики обновления при изменениях
4. ❌ **Unit-тесты**: Отсутствуют тесты для подсчета

## 🔍 **АНАЛИЗ ТЕКУЩЕГО КОДА:**

### LibraryUiState.kt
```kotlin
data class LibraryUiState(
    val isLoading: Boolean = true,
    val comics: List<ComicBook> = emptyList(), // ✅ Список есть
    // ❌ Отсутствует: val totalComicsCount: Int
    val error: String? = null,
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC,
    val searchQuery: String = "",
    val isSearchActive: Boolean = false,
    val inSelectionMode: Boolean = false,
    val selectedComicIds: Set<String> = emptySet(),
    val pendingDeletionIds: Set<String> = emptySet()
)
```

### LibraryScreen.kt
- ✅ **Данные доступны**: `uiState.comics` содержит список комиксов
- ❌ **UI отсутствует**: Нет отображения счетчика в интерфейсе
- ❌ **Фильтрация**: Не учитывается `pendingDeletionIds` при подсчете

## 🛠️ **ПЛАН РЕАЛИЗАЦИИ:**

### 1. Обновить LibraryUiState
```kotlin
data class LibraryUiState(
    // ... existing properties ...
    val totalComicsCount: Int = 0,
    val visibleComicsCount: Int = 0 // После фильтрации
)
```

### 2. Обновить LibraryViewModel  
```kotlin
// Добавить computed property
val visibleComics = uiState.comics.filter { 
    it.filePath !in uiState.pendingDeletionIds 
}

// Обновлять счетчики при изменении comics
_uiState.update { currentState ->
    currentState.copy(
        totalComicsCount = comics.size,
        visibleComicsCount = visibleComics.size
    )
}
```

### 3. Обновить LibraryScreen UI
```kotlin
// В TopAppBar или BottomBar
Text(
    text = if (uiState.isSearchActive && uiState.searchQuery.isNotEmpty()) {
        "Найдено: ${uiState.visibleComicsCount} из ${uiState.totalComicsCount}"
    } else {
        "Всего комиксов: ${uiState.visibleComicsCount}"
    },
    style = MaterialTheme.typography.bodyMedium
)
```

### 4. Добавить Unit-тесты
```kotlin
class LibraryViewModelTest {
    @Test
    fun `when comics loaded, count should be correct`() { }
    
    @Test
    fun `when comics filtered, visible count should update`() { }
    
    @Test
    fun `when comic deleted, count should decrease`() { }
}
```

## 📊 **ТЕКУЩАЯ АРХИТЕКТУРА (готова для добавления):**

### ✅ Готовые компоненты:
- `LibraryUiState` - можно добавить поля счетчиков
- `LibraryViewModel` - логика обновления state
- `LibraryScreen` - UI для отображения счетчика
- Reactive data flow (StateFlow/Compose)

### ✅ Доступные данные:
- `uiState.comics: List<ComicBook>` - полный список
- `uiState.pendingDeletionIds: Set<String>` - исключения
- `uiState.searchQuery: String` - фильтр поиска

## 🎯 **ACCEPTANCE CRITERIA MAPPING:**

| Критерий | Статус | Реализация |
|----------|--------|------------|
| 1. Корректное число комиксов | ❌ | Добавить `totalComicsCount` в state |
| 2. Обновление без перезагрузки | ❌ | Reactive StateFlow уже есть |
| 3. Unit-тесты для подсчёта | ❌ | Создать тесты для ViewModel |

## 🚀 **ГОТОВНОСТЬ К РЕАЛИЗАЦИИ:**
**95% готовность** - Архитектура позволяет добавить функцию за 2-3 часа

### Что нужно сделать:
1. **Добавить поля** в `LibraryUiState` (5 мин)
2. **Обновить логику** в `LibraryViewModel` (30 мин)  
3. **Добавить UI элемент** в `LibraryScreen` (15 мин)
4. **Написать unit-тесты** (60 мин)
5. **Тестирование и отладка** (30 мин)

## 💡 **ДОПОЛНИТЕЛЬНЫЕ УЛУЧШЕНИЯ (опционально):**
- Анимация изменения счетчика
- Индикатор загрузки для счетчика
- Разные режимы отображения (компактный/полный)
- Локализация текста

---

**Вывод**: Issue готов к реализации, архитектура поддерживает все требования.