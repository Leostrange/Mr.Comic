# Changelog

## 2.2.0

### Исправления багов

- **P0: Белая вспышка при смене стиля** — убран `setBackgroundColor` из update-блока `HtmlPageView`; теперь фон меняется только через JS `textSettingsJs`, без мерцания нативного WebView между обновлениями CSS.
- **P0: O(N²) пересборка вебтун-документа** — `TextWebtoonSessionController` перешёл на инкрементальное построение: первая порция — полная сборка, последующие — `appendPages()` без пересборки всего DOM. 200-страничная книга: ~17 rebuilds всех страниц → 1 build + 16 appends.
- **P0: Переполнение страниц в TextPaginator** — порог сплита снижен с `charsPerPage × 1.5` до `charsPerPage`. Блоки между 1× и 1.5× размера страницы раньше перетекали в следующую без разбиения.
- **P0: Crash на рекликлованном битмапе в `CroppedBitmapImage`** — `TieredBitmapCache` рекликлует битмапы при LRU-eviction, но Compose Canvas всё ещё держит ссылку на `ImageBitmap`. Добавлена проверка `bitmap.isRecycled` в draw-блоке перед `drawImage`.
- **P0: DjVu чёрный экран** — добавлены диагностические логи в `DjvuFormatReader` и `StructuredDjvuBackend` для диагностики причин чёрного экрана (probe failure, native renderer unavailable, unsupported compression). Дополнительно: `PagePreloader.getPageFlow()` теперь проверяет `bitmap.isRecycled` — `TieredBitmapCache.entryRemoved()` рекликлует вытесненные битмапы, но `_loadedPages` может всё ещё держать ссылку на рекликлованный объект. Для DjVu (большие растровые страницы) это особенно критично: LRU вытесняет их чаще.
- **P1: WEBTOON jank при первом открытии EPUB** — `TextWebtoonSessionController` перешёл на двухфазную публикацию: preview после первого батча, затем финальная публикация после загрузки ВСЕХ страниц. Устранены промежуточные WebView reload'ы.
- **P1: Нестабильная оценка прогресса EPUB** — `EpubProgressCalculator` перешёл на стабильную оценку вместо скользящего среднего.
- **P0/P1: Регрессии пагинатора, word-wrap, race condition, null safety** — комплексный набор исправлений в блоке рендеринга текста.
- **Критично: thread-safety, stream consumption, path traversal, crash on missing engine** — исправления безопасности и стабильности в форматных ридерах.
- **Дублирование `ReaderStylePreset`** — удалены дубликаты из ui-пакета, оставлен единственный источник в `domain.preset`.
- **`SettingsViewModel`** — обновлён для использования `BackupRepository.RepairLibraryAccessResult`.

### Производительность

- **Recycling битмапов при LRU-eviction** — `TieredBitmapCache.entryRemoved()` отправляет вытесненные `Bitmap` в `recycle()`, снижая пиковое потребление памяти.
- **Dictionary IO dispatcher** — словарные запросы перенесены на `Dispatchers.IO`.
- **CFI-based progress tracking** — прогресс чтения EPUB привязан к CFI-маркерам вместо номеров страниц.

### Архитектура и рефакторинг

#### ReaderViewModel: декомпозиция (3,643 → 1,352 строк, −63%)

Извлечено 17 контроллеров с единой ответственностью:

| Контроллер | Ответственность |
|---|---|
| `ReaderSettingsController` | 59 методов управления настройками чтения |
| `ReaderTranslationController` | перевод выделенного текста, объяснение через LLM, словарь |
| `ReaderNavigationController` | навигация по страницам, синхронизация позиции, RTL/webtoon |
| `ReaderReadingModeController` | управление режимами чтения (paged/vertical/landscape) |
| `ReaderPageLoader` | загрузка страниц, предзагрузка вебтуна, кэш HTML |
| `ReaderProgressController` | сохранение прогресса, вехи глав, recap |
| `ReaderPreferenceRestorer` | восстановление настроек из DataStore |
| `ReaderBookPreparer` | подготовка книги к открытию (парсинг формата) |
| `ReaderFootnoteController` | обработка сносок: определение, popup, inline, expand/collapse |
| `ReaderBookmarkController` | управление закладками |
| `ReaderHighlightController` | CRUD выделений текста |
| `ReaderEyeRestController` | таймер отдыха для глаз |
| `ReaderSaveQuoteController` | сохранение цитат |
| `ReaderOcrController` | OCR захват страницы |
| `ReaderContentPathResolver` | разрешение контентных путей (8 функций) |

- `openComic()` декомпозирован на 7 фазовых методов + `OpeningConfig` data class.
- 44 pass-through settings-делегата удалены из VM; UI обращается к `viewModel.settingsController` напрямую.
- 20+ тонких делегатов-обёрток инлайнены в вызывающие composables.
- `ReaderSettingsActions` interface — контракт из 59 методов с `override`-аннотациями в контроллере.

#### ReaderScreen: декомпозиция (3,214 → 1,344 строк, −58%)

- `ReaderWebView` — WebView-рендеринг текстовых страниц (766 строк).
- `HtmlPageView` — composable для HTML-страниц с пагинацией (809 строк).
- `ReaderBottomSheets` — все conditional bottom sheets, диалоги и оверлеи (329 строк).
- Consolidation: объединены дублирующиеся вычисления overlay, tapZoneMode, estimatedOverlayContentPx.

#### EpubFormatReader: декомпозиция (2,384 → 603 строк, −75%)

Извлечено 20 модулей:

| Модуль | Ответственность |
|---|---|
| `EpubCacheSerializer` | сериализация/десериализация кэша структуры EPUB |
| `EpubPageResolver` | разрешение страниц spine |
| `EpubHtmlChunker` | разбиение HTML на управляемые чанки (21 функция + 5 констант) |
| `EpubContentAnalyzer` | анализ контента, LRU-кэш текстовых записей |
| `EpubTocResolver` | парсинг и разрешение оглавления |
| `EpubHtmlRenderer` | рендеринг HTML-страниц, управление htmlCache |
| `EpubArchiveManager` | жизненный цикл ZIP-архива |
| `SpineBuilder` | 4-фазный pipeline построения spine |
| `EpubManifestParser` | парсинг OPF (Jsoup XML + regex fallback) |
| `SpineBuildContext` | data class для декомпозиции `buildPagesFromOpf` |

- Удалён мёртвый код: `inlineImages()`, неиспользуемые regex-константы (`IMG_SRC_RE`, `XLINK_HREF_RE`, `CSS_LINK_RE`).
- 8 тонких private wrapper-функций заинлайнены.
- CSS custom properties (`--mrcomic-*`) в reader CSS для runtime override.

#### Архитектурные улучшения

- **`EpubCacheStore` interface** — декаплинг engine-formats от core-data Room DAO через adapter pattern.
- **`ComicRepository` decomposition** — ISP для `FormatReader`: `BaseFormatReader` / `RasterPageReader` / `TextContentReader`.
- **`ComicRepository` → specific interfaces** — все call-sites мигрированы на конкретные интерфейсы.
- **Room entities** перемещены из `core-model` в `core-data`.
- **KDoc** добавлен к публичным API engine-интерфейсов.
- **KMP shared module** — `commonMain` интерфейсы + `androidMain` адаптеры (подготовка к мультиплатформе).
- **`DocumentSession` bridge** — абстракция сессии документа для `ReaderViewModel`.

### Тестирование

- **3 регрессионных теста для P0-фиксов:**
  - `paginateSplitsBlocksBetweenOneAndOnePointFivePageSize` — TextPaginator threshold fix.
  - `appendPagesInsertsBeforeCloseBody` — incremental webtoon append.
  - `appendPagesPreservesExistingContent` — content preservation during append.
- **`ReaderNavigationPolicy` тесты расширены** — RTL, webtoon, edge cases.
- **`MainDispatcherRule`** — правило для тестирования корутин на `TestDispatcher`.
- **Instrumented tests + auto-release workflow** — CI пайплайн для автоматического тестирования.
- **`ReaderContentPathResolver` androidTest harness.**

### Инструменты и инфраструктура

- **Detekt** — статический анализ кода + интеграция с CI.
- **GitHub Actions** — workflow для сборки APK, кэширование Gradle, build release APK.
- **Namespace migration** — `com.example` → `io.leostrange.mrcomic`.
- **Repository cleanup** — удалено 378+ файлов (медиа, AI-конфиги, скриншоты, внутренние документы), mimo.exe (>100MB).

### Документация

- Проектный анализ: `docs/PROJECT_ANALYSIS_2026-07-26.md` (16 секций, 32KB).
- Карты декомпозиции: `ReaderViewModel`, `ReaderScreen`, `EpubFormatReader`.
- Master decomposition plan: 9 phases, 3 parallel tracks.
- Code review recommendations (21 пунктов).
- KMP migration plan.
