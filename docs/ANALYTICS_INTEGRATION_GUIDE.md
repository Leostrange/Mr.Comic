# Руководство по интеграции аналитики в UI

## 📊 Обзор

Это руководство описывает, как правильно интегрировать систему аналитики Mr.Comic в UI компоненты для максимального покрытия пользовательских действий.

## 🏗️ Архитектура интеграции

### Основные компоненты

```
app/src/main/java/com/example/mrcomic/ui/
├── analytics/
│   ├── AnalyticsComposables.kt      # Composable с аналитикой
│   └── AnalyticsExtensions.kt       # Extension функции
└── screens/
    ├── LibraryScreenWithAnalytics.kt  # Пример интеграции
    └── ...
```

### Слои интеграции

1. **Автоматический слой** - отслеживание без изменения кода
2. **Декларативный слой** - Composable с встроенной аналитикой
3. **Ручной слой** - прямые вызовы AnalyticsHelper

## 🔧 Базовые компоненты

### 1. TrackScreenView - Автоматическое отслеживание экранов

```kotlin
@Composable
fun MyScreen() {
    val analyticsHelper = hiltViewModel<AnalyticsHelper>()
    
    TrackScreenView(
        screenName = "Library",
        analyticsHelper = analyticsHelper
    )
    
    // Остальной UI
}
```

**Что отслеживается:**
- Переходы на экран (ON_RESUME)
- Время просмотра экрана
- Частота посещений

### 2. AnalyticsButton - Кнопки с аналитикой

```kotlin
AnalyticsButton(
    onClick = { /* действие */ },
    analyticsHelper = analyticsHelper,
    eventName = "add_comic_clicked",
    eventParameters = mapOf(
        "source" to "library_screen",
        "user_comics_count" to comicsCount
    )
) {
    Icon(Icons.Default.Add, contentDescription = null)
    Text("Добавить комикс")
}
```

**Отслеживаемые метрики:**
- Количество кликов
- Контекст нажатия
- Пользовательские параметры

### 3. AnalyticsClickable - Произвольные клики

```kotlin
AnalyticsClickable(
    onClick = { openComic(comic.id) },
    analyticsHelper = analyticsHelper,
    eventName = "comic_item_clicked",
    eventParameters = mapOf(
        "comic_format" to comic.format,
        "comic_page_count" to comic.pageCount,
        "reading_progress" to comic.progress
    )
) {
    ComicCard(comic = comic)
}
```

### 4. ErrorBoundary - Обработка ошибок

```kotlin
ErrorBoundary(
    analyticsHelper = analyticsHelper,
    context = "LibraryScreen"
) {
    // UI который может вызвать ошибку
    ComicsList(comics = comics)
}
```

**Автоматически отслеживает:**
- Тип исключения
- Сообщение об ошибке
- Stack trace
- Контекст возникновения

### 5. PerformanceTracker - Мониторинг производительности

```kotlin
PerformanceTracker(
    operationName = "comic_list_render",
    analyticsHelper = analyticsHelper
) {
    LazyColumn {
        items(comics) { comic ->
            ComicItem(comic = comic)
        }
    }
}
```

## 📱 Интеграция по экранам

### Library Screen

**События для отслеживания:**
- `library_opened` - переход на экран
- `search_performed` - поиск комиксов
- `comic_item_clicked` - клик по комиксу
- `add_comic_clicked` - попытка добавления
- `sort_changed` - изменение сортировки

```kotlin
@Composable
fun LibraryScreen(analyticsHelper: AnalyticsHelper) {
    TrackScreenView("Library", analyticsHelper)
    TrackScreenTime("Library", analyticsHelper)
    
    // Search bar
    LaunchedEffect(searchQuery) {
        if (searchQuery.isNotEmpty()) {
            analyticsHelper.track(
                AnalyticsEvent.PerformanceMetric(
                    metricName = "search_performed",
                    value = searchQuery.length.toDouble(),
                    unit = "characters"
                ),
                scope
            )
        }
    }
    
    // Comics list
    LazyColumn {
        items(comics) { comic ->
            AnalyticsClickable(
                onClick = { openComic(comic) },
                analyticsHelper = analyticsHelper,
                eventName = "comic_opened",
                eventParameters = mapOf(
                    "format" to comic.format,
                    "total_pages" to comic.pageCount
                )
            ) {
                ComicCard(comic)
            }
        }
    }
}
```

### Reader Screen

**События для отслеживания:**
- `reading_started` - начало чтения
- `page_turned` - перелистывание страницы
- `zoom_changed` - изменение масштаба
- `reading_mode_changed` - смена режима чтения
- `reading_finished` - завершение сессии

```kotlin
@Composable
fun ReaderScreen(
    comic: Comic,
    analyticsHelper: AnalyticsHelper
) {
    val scope = rememberCoroutineScope()
    
    // Отслеживание начала чтения
    LaunchedEffect(comic.id) {
        analyticsHelper.track(
            AnalyticsEvent.ReadingStarted(
                comicId = comic.id,
                format = comic.format
            ),
            scope
        )
    }
    
    // Отслеживание перелистывания
    LaunchedEffect(currentPage) {
        if (currentPage > 0) {
            analyticsHelper.track(
                AnalyticsEvent.PageTurned(
                    pageNumber = currentPage,
                    direction = if (currentPage > previousPage) "forward" else "backward"
                ),
                scope
            )
        }
    }
}
```

### Settings Screen

**События для отслеживания:**
- `settings_opened` - переход в настройки
- `theme_changed` - смена темы
- `reading_mode_changed` - смена режима по умолчанию
- `setting_changed` - изменение любой настройки

```kotlin
@Composable
fun SettingsScreen(analyticsHelper: AnalyticsHelper) {
    TrackScreenView("Settings", analyticsHelper)
    
    // Theme selector
    AnalyticsClickable(
        onClick = { showThemeSelector() },
        analyticsHelper = analyticsHelper,
        eventName = "theme_selector_opened"
    ) {
        SettingsItem(
            title = "Тема",
            subtitle = currentTheme.name
        )
    }
    
    // Отслеживание изменений
    LaunchedEffect(selectedTheme) {
        analyticsHelper.track(
            AnalyticsEvent.ThemeChanged(selectedTheme.name),
            scope
        )
    }
}
```

## 🎯 Лучшие практики

### ✅ Что делать

1. **Используйте осмысленные имена событий**
   ```kotlin
   // ✅ Хорошо
   "comic_reading_started"
   
   // ❌ Плохо
   "event_1", "click", "action"
   ```

2. **Добавляйте контекст через параметры**
   ```kotlin
   eventParameters = mapOf(
       "screen" to "library",
       "comics_count" to totalComics,
       "user_type" to userType,
       "timestamp" to System.currentTimeMillis()
   )
   ```

3. **Отслеживайте пользовательские пути**
   ```kotlin
   // Последовательность: библиотека → комикс → страница 5
   "library_opened" → "comic_opened" → "page_turned"
   ```

4. **Группируйте похожие события**
   ```kotlin
   // Все действия с комиксами
   "comic_opened", "comic_added", "comic_deleted", "comic_shared"
   ```

### ❌ Что избегать

1. **Не отслеживайте личные данные**
   ```kotlin
   // ❌ Плохо
   eventParameters = mapOf(
       "user_email" to userEmail,
       "file_path" to fullPath
   )
   
   // ✅ Хорошо
   eventParameters = mapOf(
       "user_id_hash" to userIdHash,
       "file_extension" to extension
   )
   ```

2. **Не спамьте событиями**
   ```kotlin
   // ❌ Плохо - отслеживать каждое движение мыши
   onMouseMove = { trackEvent("mouse_moved") }
   
   // ✅ Хорошо - отслеживать значимые действия
   onPageChange = { trackEvent("page_changed") }
   ```

3. **Не блокируйте UI аналитикой**
   ```kotlin
   // ✅ Всегда используйте coroutines
   scope.launch {
       analyticsHelper.trackEvent(event)
   }
   ```

## 🔍 Расширенные сценарии

### Отслеживание пользовательских путей

```kotlin
class UserJourneyTracker @Inject constructor(
    private val analyticsHelper: AnalyticsHelper
) {
    private val journeySteps = mutableListOf<String>()
    
    fun trackStep(step: String, scope: CoroutineScope) {
        journeySteps.add(step)
        
        val event = object : AnalyticsEvent("user_journey_step", mapOf(
            "step" to step,
            "step_number" to journeySteps.size,
            "previous_steps" to journeySteps.takeLast(3).joinToString(" → ")
        )) {}
        
        analyticsHelper.track(event, scope)
    }
}
```

### A/B тестирование

```kotlin
@Composable
fun ExperimentalFeature(
    analyticsHelper: AnalyticsHelper,
    variant: String = "control"
) {
    LaunchedEffect(variant) {
        analyticsHelper.track(
            object : AnalyticsEvent("ab_test_exposure", mapOf(
                "experiment" to "new_reader_ui",
                "variant" to variant
            )) {},
            scope
        )
    }
    
    when (variant) {
        "control" -> OriginalReaderUI()
        "variant_a" -> NewReaderUI()
        "variant_b" -> AlternativeReaderUI()
    }
}
```

### Cohort анализ

```kotlin
@Composable
fun TrackUserCohort(
    analyticsHelper: AnalyticsHelper,
    userInstallDate: Long
) {
    val daysSinceInstall = (System.currentTimeMillis() - userInstallDate) / (24 * 60 * 60 * 1000)
    
    val cohort = when {
        daysSinceInstall <= 1 -> "day_1"
        daysSinceInstall <= 7 -> "week_1"
        daysSinceInstall <= 30 -> "month_1"
        else -> "veteran"
    }
    
    LaunchedEffect(Unit) {
        analyticsHelper.setUserProperties(mapOf(
            "user_cohort" to cohort,
            "days_since_install" to daysSinceInstall
        ))
    }
}
```

## 📊 Отчетность и мониторинг

### Ключевые метрики для отслеживания

1. **Engagement метрики:**
   - DAU (Daily Active Users)
   - Session duration
   - Pages per session
   - Retention rate

2. **Feature usage:**
   - Search usage rate
   - Comics added per user
   - Reading completion rate
   - Settings changes frequency

3. **Performance метрики:**
   - App launch time
   - Screen render time
   - Search response time
   - Error rate

### Дашборды (пример структуры)

```
Analytics Dashboard:
├── User Engagement
│   ├── Active Users (DAU/MAU)
│   ├── Session Duration
│   └── Screen Views
├── Feature Usage
│   ├── Library Actions
│   ├── Reader Usage
│   └── Settings Changes
└── Technical Metrics
    ├── Performance
    ├── Error Rates
    └── Crash Reports
```

## 🚀 Следующие шаги

1. **Интеграция Firebase Analytics** (production)
2. **Настройка Mixpanel** (детальная аналитика)
3. **Добавление Crashlytics** (мониторинг ошибок)
4. **Реализация A/B тестов** (оптимизация UX)

---

## 📚 Примеры использования

См. файл `LibraryScreenWithAnalytics.kt` для полного примера интеграции аналитики в реальный экран приложения.