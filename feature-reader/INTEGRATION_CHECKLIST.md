# Gesture System Integration Checklist

## Проверка интеграции

### 1. Проверьте ModernReaderScreen.kt

✅ **Box не должен иметь gesture modifiers**:
```kotlin
// ❌ НЕПРАВИЛЬНО
Box(
    modifier = modifier
        .fillMaxSize()
        .pointerInput(Unit) { detectTapGestures(...) }  // Удалить!
)

// ✅ ПРАВИЛЬНО
Box(
    modifier = modifier
        .fillMaxSize()
        .background(MaterialTheme.colorScheme.surface)
)
```

✅ **Используется ZoomableComicPage**:
```kotlin
// ❌ НЕПРАВИЛЬНО
ComicPage(...)

// ✅ ПРАВИЛЬНО
com.example.feature.reader.ui.components.ZoomableComicPage(
    bitmap = pageBitmap,
    tapZoneConfig = TapZoneConfig(...),
    onGestureAction = { action -> ... }
)
```

✅ **Добавлен PageIndicator**:
```kotlin
com.example.feature.reader.ui.components.PageIndicator(
    currentPage = pagerState.currentPage + 1,
    totalPages = totalPages,
    isPinned = isPinned,
    visible = showControls,
    onPinToggle = { isPinned = !isPinned }
)
```

### 2. Проверьте ZoomableComicPage.kt

✅ **readerGestures применен к Image, а не к Box**:
```kotlin
// ❌ НЕПРАВИЛЬНО
Box(
    modifier = Modifier
        .readerGestures(...)  // Не здесь!
) {
    Image(...)
}

// ✅ ПРАВИЛЬНО
Box(...) {
    Image(
        modifier = Modifier
            .fillMaxSize()
            .graphicsLayer(...)
            .readerGestures(...)  // Здесь!
    )
}
```

### 3. Проверьте GestureDetector.kt

✅ **Нет конфликтующих onDoubleTap**:
```kotlin
// ❌ НЕПРАВИЛЬНО
detectTapGestures(
    onTap = { ... },
    onDoubleTap = { ... }  // Конфликт с ручной детекцией!
)

// ✅ ПРАВИЛЬНО
detectTapGestures(
    onTap = { 
        // Ручная детекция двойного тапа
        if (timeDiff < threshold) {
            // Double tap
        } else {
            // Single tap
        }
    },
    onLongPress = { ... }
)
```

### 4. Проверьте ReaderUiState.kt

✅ **Добавлены поля для жестов**:
```kotlin
data class ReaderUiState(
    // ... existing fields
    val gestureSensitivity: Float = 1.0f,
    val tapZoneLeftRatio: Float = 0.25f,
    val tapZoneRightRatio: Float = 0.25f,
    val tapZonesEnabled: Boolean = true,
    val showUIControls: Boolean = true
)
```

## Быстрый тест

### Тест 1: Компиляция
```bash
./gradlew :feature-reader:assembleDebug
```

Должно скомпилироваться без ошибок.

### Тест 2: Запуск приложения
1. Запустите приложение
2. Откройте любой комикс
3. Проверьте, что страницы отображаются

### Тест 3: Одиночный тап
1. Тапните по **центру** экрана
2. UI должен показаться/скрыться
3. Должен появиться индикатор страницы в правом нижнем углу

### Тест 4: Зоны тапов
1. Тапните в **левой четверти** экрана
2. Должна открыться предыдущая страница
3. Тапните в **правой четверти** экрана
4. Должна открыться следующая страница

### Тест 5: Двойной тап
1. Быстро тапните **дважды** по центру
2. Изображение должно масштабироваться
3. Тапните дважды снова - другой масштаб
4. Тапните дважды снова - третий масштаб

### Тест 6: Долгий тап
1. **Удерживайте** палец на центре ~0.5 секунды
2. Должна появиться верхняя панель (или showControls = true)

## Отладка

### Добавьте логи

В `ModernReaderScreen.kt`:
```kotlin
onGestureAction = { action ->
    android.util.Log.d("ReaderGesture", "Action: $action")
    when (action) {
        // ... handle actions
    }
}
```

### Используйте GestureTestScreen

Временно замените `ModernReaderScreen` на `GestureTestScreen`:
```kotlin
// В вашем Navigation
composable("reader") {
    GestureTestScreen()  // Вместо ModernReaderScreen
}
```

### Проверьте значения

Добавьте Text для отладки:
```kotlin
Text(
    text = "Sensitivity: ${uiState.gestureSensitivity}, " +
           "Zones: ${uiState.tapZonesEnabled}, " +
           "Left: ${uiState.tapZoneLeftRatio}, " +
           "Right: ${uiState.tapZoneRightRatio}",
    modifier = Modifier.align(Alignment.TopStart)
)
```

## Частые проблемы

### Жесты не работают вообще
- Проверьте, что `.readerGestures()` применен к Image
- Убедитесь, что screenSize не IntSize.Zero
- Проверьте, что tapZonesEnabled = true

### Работает только свайп страниц
- Это HorizontalPager работает, а не наши жесты
- Проверьте интеграцию ZoomableComicPage
- Убедитесь, что gesture modifiers не удалены автофиксом

### Двойной тап не работает
- Проверьте, что нет конфликта с onDoubleTap
- Увеличьте gestureSensitivity
- Тапайте быстрее (< 300ms между тапами)

### Долгий тап не работает
- Удерживайте дольше (~0.5 секунды)
- Не двигайте палец
- Уменьшите gestureSensitivity

## Следующие шаги

После успешной интеграции:
1. ✅ Протестируйте все жесты
2. ⬜ Реализуйте панели управления (задача 13)
3. ⬜ Добавьте предзагрузку страниц (задача 12)
4. ⬜ Реализуйте панель миниатюр (задача 14)
