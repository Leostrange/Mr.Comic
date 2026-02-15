# Debug Gestures - Инструкция по отладке

## Проблема
Жесты не работают в приложении. Нужно понять почему.

## Шаг 1: Включите debug-логирование

### В ZoomableComicPage.kt

Замените `.readerGestures()` на `.readerGesturesDebug()`:

```kotlin
// Найдите эту строку (около строки 150):
.readerGestures(
    screenSize = screenSize,
    tapZoneConfig = tapZoneConfig,
    gestureSensitivity = gestureSensitivity,
    isZoomed = currentScale > 1.01f,
    blockSwipeWhenZoomed = blockSwipeWhenZoomed,
    onGestureAction = handleGestureAction
)

// Замените на:
.readerGesturesDebug(  // <-- Добавьте Debug
    screenSize = screenSize,
    tapZoneConfig = tapZoneConfig,
    gestureSensitivity = gestureSensitivity,
    isZoomed = currentScale > 1.01f,
    blockSwipeWhenZoomed = blockSwipeWhenZoomed,
    onGestureAction = handleGestureAction
)
```

### Добавьте import

В начало файла `ZoomableComicPage.kt`:
```kotlin
import com.example.feature.reader.ui.gestures.readerGesturesDebug
```

## Шаг 2: Запустите приложение

1. Откройте Logcat в Android Studio
2. Фильтр: `ReaderGestures`
3. Запустите приложение
4. Откройте комикс

## Шаг 3: Проверьте логи

### При запуске должны появиться:
```
D/ReaderGestures: Initializing gestures - screenSize: IntSize(1080, 1920), sensitivity: 1.0
D/ReaderGestures: Creating GestureHandler
D/ReaderGestures: Double tap threshold: 300ms, distance: 50.0px
D/ReaderGestures: Setting up tap gesture detection
D/ReaderGestures: Setting up transform gesture detection
```

### При тапе должны появиться:
```
D/ReaderGestures: TAP detected at: Offset(540.0, 960.0)
D/ReaderGestures: Time diff: 5000ms, distance: 0.0px
D/ReaderGestures: SINGLE TAP detected
D/ReaderGestures: Action: ToggleUI
```

### При двойном тапе:
```
D/ReaderGestures: TAP detected at: Offset(540.0, 960.0)
D/ReaderGestures: Time diff: 150ms, distance: 5.0px
D/ReaderGestures: DOUBLE TAP detected!
D/ReaderGestures: Action: CycleZoom(position=Offset(540.0, 960.0))
```

## Шаг 4: Диагностика

### Если НЕТ логов вообще:
❌ **Проблема**: Модификатор `.readerGesturesDebug()` не применяется
- Проверьте, что вы заменили `.readerGestures()` на `.readerGesturesDebug()`
- Проверьте, что добавили import
- Пересоберите проект: Build → Rebuild Project

### Если есть "Initializing" но НЕТ "TAP detected":
❌ **Проблема**: Жесты блокируются другим компонентом
- HorizontalPager перехватывает события
- Другой modifier блокирует события
- **Решение**: Нужно изменить порядок modifiers

### Если есть "TAP detected" но НЕТ "Action":
❌ **Проблема**: GestureHandler не работает
- Проверьте screenSize (не должен быть IntSize.Zero)
- Проверьте tapZoneConfig

### Если есть "Action" но ничего не происходит:
❌ **Проблема**: onGestureAction не обрабатывает действия
- Проверьте код в ModernReaderScreen.kt
- Добавьте логи в when (action) блок

## Шаг 5: Решения

### Решение 1: Изменить порядок modifiers

Если жесты блокируются, попробуйте применить `.readerGesturesDebug()` ПЕРЕД `.graphicsLayer()`:

```kotlin
Image(
    bitmap = bitmap.asImageBitmap(),
    contentDescription = "Comic page",
    contentScale = ContentScale.Fit,
    modifier = Modifier
        .fillMaxSize()
        .readerGesturesDebug(...)  // СНАЧАЛА жесты
        .graphicsLayer(...)         // ПОТОМ графика
)
```

### Решение 2: Применить к Box вместо Image

Если не помогло, попробуйте применить к Box:

```kotlin
Box(
    modifier = modifier
        .fillMaxSize()
        .background(MaterialTheme.colorScheme.surface)
        .onSizeChanged { size -> screenSize = size }
        .readerGesturesDebug(...),  // Здесь
    contentAlignment = Alignment.Center
) {
    when {
        bitmap != null -> {
            Image(
                modifier = Modifier
                    .fillMaxSize()
                    .graphicsLayer(...)
                    // БЕЗ .readerGesturesDebug() здесь
            )
        }
    }
}
```

### Решение 3: Отключить HorizontalPager gestures

В ModernReaderScreen.kt, добавьте `userScrollEnabled = false`:

```kotlin
HorizontalPager(
    state = pagerState,
    modifier = Modifier.fillMaxSize(),
    userScrollEnabled = false,  // <-- Добавьте это
    pageSpacing = 8.dp,
    contentPadding = PaddingValues(horizontal = 16.dp),
) { page ->
    // ...
}
```

Затем реализуйте навигацию через жесты в ZoomableComicPage.

## Шаг 6: Отправьте логи

Если ничего не помогло, скопируйте логи из Logcat и отправьте мне:
1. Логи при запуске (Initializing...)
2. Логи при тапе
3. Логи при двойном тапе
4. Логи при долгом тапе

## Быстрый тест без приложения

Используйте `GestureTestScreen()` для изолированного тестирования:

```kotlin
// В вашем MainActivity или Navigation
setContent {
    MrComicTheme {
        GestureTestScreen()  // Вместо ModernReaderScreen
    }
}
```

Этот экран показывает визуальные зоны и текст с последним жестом.
