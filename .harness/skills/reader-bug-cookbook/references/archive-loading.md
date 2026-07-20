# archive-loading.md — ZIP-упакованные форматы, тёмная палитра, медленная загрузка

## Симптом → файл → причина → фикс

### «Архивы с текстовыми книгами грузятся очень долго»

| Поле | Значение |
| --- | --- |
| Где живёт | `engine-formats/.../formats/zip/ZipFormatReader.kt`; `ReaderViewModel.kt:555-562` (уже ускоряли через `withContext(Dispatchers.Main.immediate)` для `readerContentIsText`) |
| Корневая причина | (1) Чтение ZIP-entry идёт через обычный `ZipInputStream` без буферизации на SSD/флешке. (2) Jsoup-парсинг HTML может идти на Main thread, потому что `Dispatchers.Main.immediate` упомянут, но фактическое `formatFactory.createReader(...)` всё равно блокирующее. (3) Для больших EPUB файлов распаковка ресурсов занимает до 5 секунд. |
| Минимальный фикс | (1) В `ZipFormatReader` обернуть распаковку в `withContext(Dispatchers.IO)`: <br>`suspend fun open(): ReflowableDocument = withContext(Dispatchers.IO) { ... }`. <br>(2) Использовать `ZipFile` напрямую с `use { entries }` (не `ZipInputStream`) — быстрее в 2-3 раза. (3) Кэшировать распарсенный документ по хешу архива — `ReflowableDocumentMemoryCache.kt`. |
| Дополнительно | Добавить `adb logcat -s ReflowDoc` фильтр, потому что у тебя уже есть `Log.d("ReflowDoc", ...)` в `ReflowableDocument.kt:225, 227` — это позволит наблюдать за прогрессом paginate. |

### «Архивы имеют тёмную палитру как у графического слоя (комиксы/манга/вебтун)»

| Поле | Значение |
| --- | --- |
| Где живёт | `ZipFormatReader.kt` + `ReaderContentPolicy.kt` |
| Корневая причина | После фикса `1.а чёрного экрана в PAGE → ✅ FIXED` (см. `bugs_status_20260523.md`) чёрный экран больше не появляется, но визуальная палитра (фон, link color) унаследована от `RENDER_PALETTE_COLOR_FILTER`, который ставится на уровне View tree, не на уровне формата. |
| Минимальный фикс | (1) В `ZipFormatReader` после создания документа принудительно выставить `ReaderContentPolicy.ReaderContentScope(background = BackgroundPalette.WHITE, foreground = ForegroundPalette.READER_TEXT)`. (2) Убедиться, что `HtmlPageView` (`feature-reader/.../ui/components/HtmlPageView*`) не использует chrome-color токены для body background. (3) Если наследование идёт через стиль chrome-панелей — проверить `READER_TOOLBAR_MIN_OPACITY` для текстовых форматов (см. `bugs_status #1.в`). |

### «Архив формата `.cbz` с текстовой книгой случайно открывается в WEBTOON-растровом режиме»

| Поле | Значение |
| --- | --- |
| Где живёт | `ZipFormatReader.rendersHtmlContent()`; роутинг в `ReaderScreen.kt:2588-2596` |
| Корневая причина | `.cbz` исторически — «comic book ZIP», но если внутри лежит HTML, текущая логика может ошибочно роутить в raster-движок. |
| Минимальный фикс | В `resolveArchiveContentKind`: пробежаться по содержимому ZIP, если хоть один файл — `.html` / `.xhtml` / `.htm` — формат → `SINGLE_BOOK`, иначе `IMAGE_COLLECTION`. Уже сделано частично в `ZipFormatReader.kt:139` (`rendersHtmlContent() == archiveContentKind == SINGLE_BOOK`), но проверить на edge cases (HTML внутри PDF-mime типа). |

## Smoke test

1. `samples/format-real-corpus/S_Skott_Protiv_zerna.epub` (zip 1.5 МБ): холодный старт должен быть ≤ 1.5 секунды; прогретый ≤ 300 мс.
2. `samples/Spartak_Biografia.pdf` (не текст, не должно misroute).
3. Открыть ZIP-архив с одним `index.html` и десятком `image/`, должен определиться как text.

## Что НЕ надо делать

- Не использовать `BufferedInputStream` поверх `ZipInputStream` без явного `bufferSize`. Дефолт в 8 КБ медленный на больших архивах.
- Не пытаться рендерить HTML из архива через `WebView.loadUrl("file://…")` — лучше инжектить через `loadDataWithBaseURL`. Иначе base URL теряется.
