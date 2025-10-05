# Включение Debug-режима для жестов

## Проблема
Логи не показывают работу жестов. Нужно включить debug-режим.

## Шаг 1: Откройте файл ZoomableComicPage.kt

**Путь**: `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/ZoomableComicPage.kt`

## Шаг 2: Найдите строку с .readerGestures()

Около строки 160 найдите:

```kotlin
Image(
    bitmap = bitmap.asImageBitmap(),
    contentDescription = "Comic page",
    contentScale = ContentScale.Fit,
    modifier = Modifier
        .fillMaxSize()
        .graphicsLayer(
            scaleX = currentScale,
            scaleY = currentScale,
            translationX = currentOffsetX,
            translationY = currentOffsetY
        )
        .readerGestures(              // <-- ЭТА СТРОКА
            screenSize = screenSize,
            tapZoneConfig = tapZoneConfig,
            gestureSensitivity = gestureSensitivity,
            isZoomed = currentScale > 1.01f,
            blockSwipeWhenZoomed = blockSwipeWhenZoomed,
            onGestureAction = handleGestureAction
        )
)
```

## Шаг 3: Замените .readerGestures() на .readerGesturesDebug()

```kotlin
        .readerGesturesDebug(         // <-- ИЗМЕНИТЕ НА Debug
            screenSize = screenSize,
            tapZoneConfig = tapZoneConfig,
            gestureSensitivity = gestureSensitivity,
            isZoomed = currentScale > 1.01f,
            blockSwipeWhenZoomed = blockSwipeWhenZoomed,
            onGestureAction = handleGestureAction
        )
```

## Шаг 4: Пересоберите APK

```bash
./gradlew :android:app:assembleDebug
```

## Шаг 5: Установите новый APK

```bash
adb install -r android/app/build/outputs/apk/debug/app-debug.apk
```

## Шаг 6: Запустите приложение с логами

```bash
adb logcat -c  # Очистить старые логи
adb logcat | grep ReaderGestures  # Показывать только логи жестов
```

## Шаг 7: Откройте комикс и тапните

1. Откройте любой комикс в приложении
2. Тапните по экрану
3. Смотрите на логи в консоли

## Ожидаемые логи

При запуске ридера:
```
D/ReaderGestures: Initializing gestures - screenSize: IntSize(1080, 1920), sensitivity: 1.0
D/ReaderGestures: Creating GestureHandler
D/ReaderGestures: Double tap threshold: 300ms, distance: 50.0px
D/ReaderGestures: Setting up tap gesture detection
D/ReaderGestures: Setting up transform gesture detection
```

При тапе:
```
D/ReaderGestures: TAP detected at: Offset(540.0, 960.0)
D/ReaderGestures: Time diff: 5000ms, distance: 0.0px
D/ReaderGestures: SINGLE TAP detected
D/ReaderGestures: Action: ToggleUI
```

При двойном тапе:
```
D/ReaderGestures: TAP detected at: Offset(540.0, 960.0)
D/ReaderGestures: Time diff: 150ms, distance: 5.0px
D/ReaderGestures: DOUBLE TAP detected!
D/ReaderGestures: Action: CycleZoom(position=Offset(540.0, 960.0))
```

## Если логов нет

### Вариант 1: Проверьте, что изменения применились

Откройте `ZoomableComicPage.kt` и убедитесь, что там написано `.readerGesturesDebug()`, а не `.readerGestures()`.

### Вариант 2: Проверьте, что APK пересобрался

```bash
# Проверьте время модификации APK
ls -l android/app/build/outputs/apk/debug/app-debug.apk
```

Время должно быть свежим (после ваших изменений).

### Вариант 3: Проверьте, что вы открыли ридер

Логи появляются только когда вы:
1. Открываете комикс
2. Видите страницу комикса
3. Тапаете по странице

Если вы просто на главном экране - логов не будет!

### Вариант 4: Проверьте фильтр logcat

Попробуйте без фильтра:
```bash
adb logcat
```

И поищите вручную строки с "ReaderGestures".

## Альтернатива: Используйте Android Studio

1. Откройте проект в Android Studio
2. Запустите приложение (Run → Debug 'app')
3. Откройте Logcat внизу
4. В фильтре введите: `ReaderGestures`
5. Откройте комикс и тапните
6. Логи появятся в Logcat

## Если ничего не помогло

Создайте файл с логами:
```bash
adb logcat > full_logcat.txt
```

Откройте комикс, потапайте, подождите 10 секунд, нажмите Ctrl+C.

Отправьте мне файл `full_logcat.txt`.
