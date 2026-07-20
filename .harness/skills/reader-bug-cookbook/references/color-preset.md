# color-preset.md — смена пресета, пустой экран

## Симптом → файл → причина → фикс

### «При смене пресета чтения экран на пару секунд пустой, потом применяется пресет»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderScreen.kt:834-944` (`when (readerPreset) { OLED_BLACK, SEPIA_BOOK, NEWSPAPER, PAPER, EINK }`) |
| Корневая причина | Compose перерисовывает дерево при смене `colorScheme` (lightColorScheme / darkColorScheme). Старая палитра заменяется сначала чистым `Color.Transparent`, и пока новые MaterialTheme tokens не применились к поддереву, между перерисовками виден пустой кадр. |
| Что НЕ является причиной | ColorMatrixColorFilter на WebView. Пресеты идут через `MaterialTheme`, а не через `window.decorView.setLayerType(... colorFilter)` — это упрощает кейс, но создаёт описанный эффект. |
| Минимальный фикс | (1) Использовать `withFrameNanos { applyThemeChange() }` чтобы изменения материалтемы произошли **внутри** одного кадра. (2) Заменить recreate()-путь на тематизацию через `SnapshotStateList` + `key(themeKey)` — перерисовывается только поддерево. (3) В `ReaderContentPolicy.kt:43-60` (`resolveReaderContainerKind`) убедиться, что перечитывание контента (если оно было) не запускается синхронно при смене темы — отложить через `postDelayed(50ms) { reload() }` (не идеально, но достаточно). |
| Если хочется окрашивать WebView тоже | (a) Установить слой WebView с `view.setLayerType(View.LAYER_TYPE_HARDWARE, paint)` **до** смены фильтра. (b) Применить `paint.colorFilter = ColorMatrixColorFilter(targetMatrix)`. (c) Очистить старый фильтр **до** загрузки нового HTML, иначе будет двойной кадр. См. verified-in ниже. |
| Verified-in (как лечат другие) | Square «Welcome to the Color Matrix» — пишут Paint с фильтром **до** invalidate. WebView отдаёт «frame ready» быстрее, если фильтр уже знаком рендереру. |

### «После смены пресета обложка в библиотеке выглядит как старая цветовая схема»

| Поле | Значение |
| --- | --- |
| Где живёт | `LibraryScreen.kt` (рендер обложек) |
| Корневая причина | Обложка закэширована через Coil (или другой image loader) с предыдущей палитрой. Preset-фильтр накладывается только в `ReaderScreen`, не в Library. |
| Минимальный фикс | В LibraryViewModel при сохранении пресета помечать записи как `coverNeedsRecomposition = true`, Library image loader инвалидирует кэш обложек. |

### «Preset `NEWSPAPER` светлый фон, а текст едва читается на тёмном фоне при OLED_BLACK пресете»

| Поле | Значение |
| --- | --- |
| Где живёт | `colorSchemePaletteForPreset(...)` в `ReaderScreen.kt:3019`; `READER_*_DOCUMENT_CSS` для каждого пресета |
| Минимальный фикс | Каждый `*ColorScheme` должен явно задавать `background` и `onBackground`. Убедиться, что для `OLED_BLACK` `background = Color(0xFF000000)`, `onBackground = Color(0xFFE0E0E0)`. Для `SEPIA_BOOK` `background = Color(0xFFFFF7EA)`, `onBackground = Color(0xFF3A2C1A)`. |

## Smoke test

1. Открыть книгу в PAGE-режиме, менять пресеты по очереди (LIGHT → SEPIA → OLED → EINK), проверять, что нет пустого кадра дольше 16 мс.
2. Параллельно через `adb shell dumpsys gfxinfo <pkg>` мерить frame time — должно быть `≤ 16 мс` между переключениями.

## Что НЕ надо делать

- Не ставить `ColorMatrix.setSaturation(0)` глобально на всё Activity через `decorView.setLayerType(LAYER_TYPE_HARDWARE, paint)`. Это работает, но требует `setLayerType(LAYER_TYPE_SOFTWARE)` для вложенных WebView (иначе WebView не получит hardware canvas) и ломает accessibility-фокус.
- Не использовать `Crossfade` (Compose) для подмены темы — он анимирует цвета, но рендерит в промежуточные значения, которые не отражены в WebView CSS.
