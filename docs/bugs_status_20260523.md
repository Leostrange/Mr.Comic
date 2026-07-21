# Mr.Comic — повторный анализ ошибок на ветке `codex/full-project-snapshot-20260514`

Дата: 23.05.2026
HEAD: `5b05dbb` — Save reader format and design updates
Базовый отчёт: `@c:/Users/xmeta/projects/Mr.Comic_fresh_clone/.qa_run/bugs_and_fixes.md` (12.05.2026 — линки на старые строки)

Легенда статуса:
- ✅ **FIXED** — фикс уже в коде
- 🟡 **PARTIAL** — частично исправлено, остаётся регрессия
- ❌ **OPEN** — не тронуто
- ❓ **VERIFY** — нужна проверка на эмуляторе

---

## 1. Архивы с текстовыми книгами

### 1.а Чёрный экран в PAGE — ✅ FIXED
- В `@android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderContentPolicy.kt:43-60` появилась функция `resolveReaderContainerKind` с enum `ReaderContainerKind.{TEXT_PAGE, TEXT_WEBTOON, RASTER_WEBTOON, RASTER_PAGE}`.
- `@…/ReaderViewModel.kt:555-562` устанавливает `readerContentIsText` СРАЗУ после `formatFactory.createReader` через `withContext(Dispatchers.Main.immediate)` — до загрузки страниц.
- `@…/ReaderScreen.kt:2493-2613` маршрутизирует по `containerKind`. При `TEXT_PAGE && htmlContent == null` рисуется `CircularProgressIndicator` (`@…/ReaderScreen.kt:2581-2586`) — нет ухода в bitmap-путь.
- `@android/engine-formats/src/main/kotlin/com/example/engine/formats/zip/ZipFormatReader.kt:139` добавлен `override fun rendersHtmlContent(): Boolean = archiveContentKind == ArchiveContentKind.SINGLE_BOOK`.

### 1.б Тап и padding в WEBTOON-text — ❓ VERIFY (рефакторинг)
- WEBTOON-text вынесен в `@android/feature-reader/src/main/java/com/example/feature/reader/ui/components/TextWebtoonView.kt` — отдельный компонент, отдельный `TextWebtoonDocument` flow.
- Старый «overlay тапа с `waitForUpOrCancellation`» поверх HtmlPageView **больше не нужен** — `TextWebtoonView` управляет `onCenterTap` через свой WebView-JS bridge (см. JS-секцию ниже в файле).
- Нужно проверить на устройстве: ловится ли тап после микро-скролла; есть ли строка-зазор сверху/снизу.

### 1.в Тёмные полупрозрачные панели в WEBTOON-text — ❓ VERIFY
- `READER_TOOLBAR_MIN_OPACITY` всё ещё общий (см. `readerEffectiveToolbarOpacity` в коде). Архитектурно для TEXT_WEBTOON tooltips/chrome теперь рисуются поверх отдельного компонента; могут смотреться иначе.
- Без эмулятора не подтвердить.

### 1.г Сломанные интервалы — 🟡 PARTIAL
- ✅ Диапазоны слайдеров приведены в порядок:
  - `letter-spacing`: 0.0..0.2 em (`@…/ReaderControlCenterSheet.kt:1196`)
  - `word-spacing`: 0.0..0.6 em (`@…/ReaderControlCenterSheet.kt:1206`)
  - `paragraph-spacing`: 0.1..1.2 em (`@…/ReaderControlCenterSheet.kt:1216`)
- ❌ В `pageLockJs` всё ещё принудительный coerce, переопределяющий пользователя:
  - `fontSize.coerceAtLeast(20)` (`@…/ReaderScreen.kt:1046`) — пользователь ставит 12sp, видит 20px.
  - `lineHeight.coerceAtLeast(1.45f)` (`@…/ReaderScreen.kt:1047`) — slider начинается с 1.0, но pageLockJs форсит 1.45.

**Минимальный фикс:** Убрать `coerceAtLeast` либо принимать дефолтные значения только когда это сигнал «у пользователя не задано». На уровне Kotlin отдавать в JS сырые значения.

### 1.д pageCount/lineHeight fallback/viewportBottomSafety — ❓ VERIFY
- `viewportBottomSafety` в новой версии **не найден** в `ReaderScreen.kt` — старая JS-пагинация переписана. Похоже, перенесена в `HtmlPageView`/`TextWebtoonView` JS.
- Нужно проверить вживую: реален ли pageCount, режется ли последняя строка.

---

## 2. Библиотека: аудиокниги — 🟡 PARTIAL

- ✅ В основной grid (`@…/LibraryScreen.kt:966-984`) аудиокниги обёрнуты в `LibraryGridCell` — как комиксы.
- ❌ В горизонтальных полках (`@…/LibraryScreen.kt:5288`, `@…/LibraryScreen.kt:5463`) всё ещё `Box(Modifier.width(tileSizeDp.dp))` — другая политика ширины.
- ❌ `AudiobookGridItem` (`@…/LibraryScreen.kt:6536-6553`) не принимает внешний `modifier: Modifier = Modifier`. У `ComicGridItem` (`@…/feature-library/.../components/ComicGridItem.kt:53`) — принимает.
- ❌ `coverRatio` вычисляется в `AudiobookGridItem` inline (`@…/LibraryScreen.kt:6560-6568`), общий хелпер `libraryGridCoverRatio` (`@…/components/ComicGridItem.kt:39-49`) не используется.
- ❌ Иконка `Headphones` в list-режиме всё ещё абсолютная (`.coerceIn(20f, 40f).dp` в `@…/LibraryScreen.kt:6638-6639`).

**Минимальный фикс:**
1. Добавить `modifier: Modifier = Modifier` в `AudiobookGridItem`, применить к `MrComicCardSurface`.
2. Заменить inline `coverRatio` на вызов общего `libraryGridCoverRatio`.
3. В горизонтальных полках обернуть аудиокниги в тот же `LibraryGridCell`.

---

## 3. CBR/CBZ/PDF/DJVU вертикаль спиннер — ✅ FIXED

- `@android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt:46` — `decodeSemaphore = Semaphore(permits = 2)`, используется через `withPermit { reader.getPage(...) }` (`@…/PagePreloader.kt:181`). Ограничение конкурентных декодов на месте.
- `@android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt:128-129` — debounce 120 ms перед `preloadWebtoonWindow`. Storm of coroutines от быстрого флинга устранён.
- Комментарий в `@…/WebtoonView.kt:104-107` явно фиксирует политику «не вызываем loadPage на смене currentPage».

---

## 4. RTF/MOBI/DOCX/EPUB WEBTOON-блок — ✅ FIXED (новой архитектурой)

- `@android/feature-reader/src/main/java/com/example/feature/reader/ui/components/TextWebtoonView.kt` — отдельный компонент.
- `viewModel.loadTextWebtoonDocument()` (`@…/TextWebtoonView.kt:59`) грузит один склейный `TextWebtoonDocument` с непрерывной HTML-лентой, рендерит в WebView с настоящей вертикальной прокруткой.
- На уровне маршрутизации в `ReaderScreen.kt:2588-2596` все текстовые форматы в WEBTOON попадают сюда.

---

## 5. DOCX

### 5.а WEBTOON блокирует — ✅ FIXED (через #4)

### 5.б Крокозябры — ✅ FIXED
- `@android/engine-formats/src/main/kotlin/com/example/engine/formats/text/DocxArchiveSupport.kt:348-354` — `resolveEmbeddedFontBytes`:
  - Если шрифт уже валиден по сигнатуре (`hasValidEmbeddedFontSignature`) → возвращается as-is, без XOR.
  - Если `fontKey.isBlank()` → возвращается `null` (шрифт игнорируется), нет ломания CMAP.
  - После `deobfuscateEmbeddedFont` снова проверка сигнатуры — иначе `null`.

---

## 6. HTML TOC из якорей — ❌ OPEN

- `@android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt:1455-1460` — `buildTableOfContents` строится **только** из `documentData.chapterAnchors` (h1-h6).
- `anchorPageIndex` (`@…/TextFormatReader.kt:1433-1453`) индексирует все якоря, но в TOC не попадает.

**Минимальный фикс:** Когда `documentData.chapterAnchors.isEmpty()` — построить TOC по `anchorPageIndex` (или по реально используемым `<a href="#X">`).

---

## 7. Markdown — ❌ OPEN

- `@android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt:48` — `MARKDOWN_RENDERER.escapeHtml(true)` всё ещё включён. Inline HTML (`<br>`, `<details>`, `<sub>`, `<kbd>`) экранируется как текст.
- `extractYamlFrontMatter` (`@…/TextFormatReader.kt:1473-1517`): цикл for-in lines корректен, но если закрывающий `---` не встретится, `contentStart` останется `-1` и весь файл может уйти в metadata. Проверки на отсутствие закрытия нет.

**Минимальный фикс:**
1. `escapeHtml(false)` + Jsoup `Safelist.relaxed()` (он уже импортирован — `HTML_READER_SAFE_LIST`).
2. В `extractYamlFrontMatter` при не-найденном втором `---` вернуть весь raw как content без потерь.
3. В `splitOversizedReaderHtmlBlock` сохранять оригинальный тег-обёртку (`<pre>` остаётся `<pre>`) — нужно перепроверить актуальный код.

---

## 8. Общие текст-форматы

### 8.а 1-line padding под status bar — ❓ VERIFY
Чтение `pageLockJs` показывает: `initialBodyTopPaddingPx` приходит снаружи (`@…/ReaderScreen.kt:1043`). В новой архитектуре отступы могут быть переданы корректно через `pageTextInnerTopGutterCssPx` — нужна проверка вживую.

### 8.б Обрезается строка снизу — ❓ VERIFY (см. 1.д)

### 8.в Нет нижнего gutter без auto-hide — ❓ VERIFY

### 8.г Вертикаль блокирует — ✅ FIXED (см. #4)

---

## 9. Звук листания — 🟡 PARTIAL

- ✅ `OnLoadCompleteListener` + `loadedIds` — `@android/feature-reader/src/main/java/com/example/feature/reader/ui/PageSoundPlayer.kt:51-55, 71`. Первое нажатие после готовности звука — точно играет.
- ❌ `ReaderViewModel.kt:1017`: `progressSource == READING` всё ещё единственный путь. В `TextWebtoonView`/`WebtoonView` все скроллы → `JUMP` → звука нет.
- ❌ Нет очереди при `soundId !in loadedIds` — клик до загрузки молча теряется.
- ❌ Нет watchdog на повторную инициализацию SoundPool после поворота (см. A1 ниже).

**Минимальный фикс:**
1. Ввести флаг `userInitiated: Boolean` (или новый `ReaderNavigationProgressSource.USER_JUMP`); играть звук и для пользовательских JUMP в webtoon-режиме.
2. В `PageSoundPlayer.play`, если sample не загружен — поставить отложенное воспроизведение в `pendingPlay: AtomicReference<Pair<Int, Float>?>`, проиграть в `OnLoadCompleteListener`.

---

# Дополнительные находки (A)

## A1. SoundPool live-reset после поворота — ❌ OPEN
`@…/PageSoundPlayer.kt:41-43` — `if (soundPool != null) return`. После system-reset SoundPool остаётся «мёртвым».

## A2. Тяжёлый `getPageCount` для FB2/EPUB — ✅ FIXED (через async init)
`@…/ReaderViewModel.kt:555-562` — теперь `readerContentIsText` ставится сразу, а `getPageCount()` вызывается асинхронно в IO. Старая «затяжная пустая страница» убрана.

## A3. preload-job отмена при per-item — ✅ FIXED
Debounce в `WebtoonView.kt:128-129` + комментарий-политика в `@…/WebtoonView.kt:104-107`.

## A4. `addComicFromUri` глотает ошибки — ❓ VERIFY
Не проверял на новой ветке — нужен повторный осмотр `LibraryViewModel.addComicFromUri`.

## A5. Cover URI без валидации — ❓ VERIFY
Аналогично — не проверял.

---

# Сводная таблица

| Bug | Статус |
|---|---|
| 1.а Архив text PAGE спиннер | ✅ FIXED |
| 1.б WEBTOON-text tap/padding | ❓ VERIFY |
| 1.в WEBTOON-text полупрозрачные панели | ❓ VERIFY |
| 1.г Спейсинги/coerce | 🟡 PARTIAL (coerce остался) |
| 1.д pageCount/обрезка | ❓ VERIFY |
| 2.а Аудиокниги-плитки | 🟡 PARTIAL |
| 3 CBR/CBZ/PDF/DJVU webtoon | ✅ FIXED |
| 4 RTF/MOBI/DOCX/EPUB webtoon | ✅ FIXED |
| 5.а DOCX webtoon | ✅ FIXED |
| 5.б DOCX крокозябры | ✅ FIXED |
| 6.а HTML TOC | ❌ OPEN |
| 7.а Markdown | ❌ OPEN |
| 8.а 1-line padding | ❓ VERIFY |
| 8.б Строка обрезается | ❓ VERIFY |
| 8.в Нижний gutter | ❓ VERIFY |
| 8.г Вертикаль блокирует | ✅ FIXED |
| 9.а Звук листания | 🟡 PARTIAL |
| A1 SoundPool live-reset | ❌ OPEN |
| A2 Тяжёлый getPageCount | ✅ FIXED |
| A3 Preload cancel storm | ✅ FIXED |
| A4 addComicFromUri ошибки | ❓ VERIFY |
| A5 Cover URI validation | ❓ VERIFY |

# Приоритет оставшихся работ

**P0:**
- 7.а Markdown (`escapeHtml(false)` + YAML safety) — простая правка, большой эффект.
- 1.г: убрать `coerceAtLeast(20)` / `coerceAtLeast(1.45f)` в `pageLockJs`.

**P1:**
- 6.а HTML TOC fallback на `anchorPageIndex`.
- 9.а Sound on user-JUMP + queue для unloaded sample.
- 2.а Аудиокниги: `modifier` параметр + общий `libraryGridCoverRatio` + `LibraryGridCell` в полках.

**P2:**
- A1 SoundPool watchdog.
- ❓ VERIFY-пункты (нужен эмулятор и UI-тест).
