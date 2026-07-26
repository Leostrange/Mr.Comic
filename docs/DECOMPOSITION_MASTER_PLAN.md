# Mr.Comic — Единый план декомпозиции и миграции

**Дата:** 2026-07-26  
**Источники:**
- `READER_VIEWMODEL_DECOMPOSITION_MAP.md`
- `READER_SCREEN_DECOMPOSITION_MAP.md`
- `EPUB_FORMAT_READER_DECOMPOSITION_MAP.md`
- `REFACTORING_CONTINUATION_GUIDE.md`
- `ACTIVE_REMAINING_TASKS_2026-07-23.md`

---

## Целевые размеры

| Файл | Сейчас | Цель | Сокращение |
|---|---|---|---|
| `ReaderViewModel.kt` | 3,643 строк | ~800 | −78% |
| `ReaderScreen.kt` | 3,214 строк | ~1,000 | −69% |
| `EpubFormatReader.kt` | 2,384 строк | ~600 | −75% |
| **Итого** | **9,241** | **~2,400** | **−74%** |

---

## Принципы

1. **Один срез = одна ответственность + один тест + одна проверка Gradle.**
2. Не менять поведение при переносе. Не трогать PAGE/WEBTOON координаты.
3. Сначала прочитать тесты, потом место вызова, потом переносить.
4. После каждого среза: `.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest` или `:engine-formats:testDebugUnitTest`.
5. Не переносить сотни строк одной операцией — разбивать на логические PR.

---

## Фаза 1 — Quick Wins: EpubFormatReader (zero risk, ~826 строк)

**Срок:** 1-2 дня  
**Риск:** минимальный — чистые функции, нет Android-зависимостей

### 1A. Chunking algorithms → `EpubHtmlChunker.kt` (расширить) [+500 строк]

Перенести 22 чистые функции + companion constants:
- `estimateChunkCount()`, `splitEstimatedCharCount()`, `extractChunk()`, `extractChunkBlocks()`
- `extractEstimatedChunkBlocks()`, `extractDomChunkBlocks()`, `extractParagraphFallbackChunkBlocks()`
- `splitOversizedEpubBlock()`, `splitTextForEpubBlocks()`, `partitionChunkBlocks()`
- `rebalanceTrailingChunkPair()`, `isEpubSectionStartBlock()`, `visibleTextCharCount()`
- `hasRenderableMedia()`, `canSplitEstimatedBlock()`, `escapeHtmlText()`, `escapeHtmlAttr()`
- `shouldRecurseIntoEpubChunkContainer()`, `hasNestedEpubChunkBoundary()`, `isEpubChunkBoundaryElement()`
- `wrapInChunkAncestors()`
- Constants: `EPUB_CHUNK_BOUNDARY_TAGS`, `EPUB_CHUNK_CONTAINER_TAGS`, `EPUB_ATOMIC_CHUNK_TAGS`, `HTML_TAG_RE`

**Тест:** существующие `EpubHtmlChunkerTest` + прогнать `:engine-formats:testDebugUnitTest`

### 1B. Cache serialization → `EpubCacheSerializer.kt` (новый) [+146 строк]

Перенести 9 функций:
- `currentCacheKey()`, `loadManifestFromCache()`, `storeManifestInCache()`
- `loadParsedFromCache()`, `storeParsedInCache()`
- `serializeManifestBlueprint()`, `deserializeManifestBlueprint()`
- `serializeParsedEpub()`, `deserializeParsedEpub()`
- Constants: `CACHE_GSON`, `EPUB_STRUCTURE_CACHE_VERSION`, `EPUB_MANIFEST_CACHE_VERSION`, `EPUB_STRUCTURE_CACHE_MAX_AGE_MS`

**Тест:** новый `EpubCacheSerializerTest` — чистый Gson round-trip

### 1C. Page index resolution → `EpubPageResolver.kt` (новый) [+180 строк]

Перенести 10 функций:
- `srcToPageIndex()`, `pageContainsEntry()`, `resolveFileNameToPageIndex()`
- `resolveAnchorHrefToPage()`, `pageMatchesEntryCandidates()`, `pageContainsAnyAnchor()`
- `readTextEntryForPageChunk()`, `htmlContainsAnyAnchor()`
- `buildEntryCandidates()`, `findPageIndexByEntryCandidates()`

**Тест:** новый `EpubPageResolverTest` — pure string matching

### Результат фазы 1

`EpubFormatReader.kt`: 2,384 → ~1,558 строк (−35%)

---

## Фаза 2 — ReaderViewModel: Translation/Dictionary (самый большой срез)

**Срок:** 2-3 дня  
**Риск:** средний — много зависимостей, но изолированная подсистема

### 2A. Translation controller → `ReaderTranslationController.kt` (новый) [+750 строк]

Перенести:
- `translateSelectedText()` (361 строка!)
- `translateCurrentChapter()` (68)
- `compareTranslations()` (37)
- `translateSelectedTextWithTransport()` (8)
- `translateSelectedTextAsPhrase()` (9)
- `dismissTranslationComparison()` (3)
- `dismissSelectedTextTranslation()` (3)
- `explainSelectedTextFromResult()` (4)
- `saveQuoteFromSelectedTextResult()` (10)

**Зависимости:** `_uiState`, `languageDetector`, `offlineTranslationEngine`, `onlineTranslationEngine`, `lookupRouter`, `translatorEngine`, `translationComparisonEngine`, `readerPreferences`

**Подход:** передать ViewModel-ссылки через конструктор или `interface ReaderTranslationHost`

### 2B. Dictionary + LLM explain → `ReaderDictionaryHelper.kt` (новый) [+82 строки]

Перенести:
- `explainSelectedText()` (193 строки)
- `buildDictionaryExplanation()` (33)
- `openDictionaryForSelectedText()` (9)
- `resolveTranslationTargetLanguage()` (3)
- `resolveTranslationSettings()` (26)
- `resolveSingleWordDictionaryMatch()` (16)
- `resolveReaderDictionaryEntry()` (19)
- `showSelectedTextDictionaryResult()` (28)
- `countSelectionTokens()` (2)

**Зависимости:** `dictionaryEngine`, `llmExplainEngine`

### Результат фазы 2

`ReaderViewModel.kt`: 3,643 → ~2,811 строк (−23%)

---

## Фаза 3 — ReaderScreen: WebView extraction (самое безопасное)

**Срок:** 1-2 дня  
**Риск:** низкий — `ReaderWebView` не зависит от Compose

### 3A. ReaderWebView class → `ReaderWebView.kt` (новый) [+729 строк]

Перенести:
- Класс `ReaderWebView` (729 строк) — custom WebView subclass
- `ReaderSelectionAction` enum (9 строк)
- 7 menu ID constants
- `JS_SELECTED_TEXT_HANDLER` (или в `ReaderWebViewJavaScript.kt`)

**Тест:** нет behavior change → characterization test + manual QA

### 3B. HtmlPageView composable → `HtmlPageView.kt` (новый) [+678 строк]

Перенести:
- `HtmlPageView()` composable (678 строк)
- `ReaderHtmlPageSource` sealed interface
- `ReaderFormatAssetPathHandler`, `ReaderUserFontAssetPathHandler`
- `readerAssetDocumentBaseUrl()`, `readerHtmlCacheFile()`, `buildReaderHtmlPageSource()`
- `readerHtmlPageSourceReloadKey()`, `rememberReaderHtmlPageSource()`
- WebView extension functions

**Зависимость:** требует 3A (ReaderWebView) как зависимость

### Результат фазы 3

`ReaderScreen.kt`: 3,214 → ~1,807 строк (−44%)

---

## Фаза 4 — ReaderViewModel: Book Opening + Progress

**Срок:** 2-3 дня  
**Риск:** средний — `openComic` меняет mutable state

### 4A. Book opening → `ReaderBookOpener.kt` (новый) [+350 строк]

Перенести:
- `openComic()` (245 строк)
- `loadComicById()`, `loadComic()` (30)
- `openTextFormatReader()` (33)
- `closeActiveBookSession()`, `closeReaderResources()` (16)
- `localizedReaderError()`, `currentReaderUiLanguage()`, `localizedReaderText()` (16)

### 4B. Path resolution → `ReaderContentPathResolver.kt` (новый) [+143 строки]

Перенести:
- `detectFormatForPath()` (25)
- `resolveReadablePath()` (46)
- `cacheContentUriForEpub()` (6)
- `resolveReadablePathFromPersistedPermissions()` (27)
- `isDocumentInsideTree()`, `documentIdToExternalPath()` (19)
- `isLocalFileReadable()`, `hasReadAccess()` (14)
- `saveQuote()` (40) — связана с path resolution

### 4C. Progress tracking → `ReaderProgressTracker.kt` (новый) [+334 строки]

Перенести:
- `flushPendingProgressSave()` (98 строк)
- `maybeEmitChapterMilestone()` (57)
- `emitProgressRecap()` (36)
- `saveProgress()` (34)
- `syncReaderPosition()` (31)
- `calculateAccuratePage()` (15)
- `accumulatedTotalPagesForEpub()` (6)

### Результат фазы 4

`ReaderViewModel.kt`: 2,811 → ~1,984 строк (−45% от исходного)

---

## Фаза 5 — ReaderViewModel: Preference + Page Loading

**Срок:** 1-2 дня  
**Риск:** низкий-средний

### 5A. Preference restoration → `ReaderPreferenceRestorer.kt` (новый) [+240 строк]

Перенести:
- `restoreReaderPreferences()` (229 строк) — чтение 50+ DataStore keys
- `readReaderPreferencesSnapshot()` (11)

**Тест:** HIGH testability — чистый DataStore → state mapping

### 5B. Page loading → `ReaderPageLoader.kt` (новый) [+290 строк]

Перенести:
- `loadPage()` (91 строка)
- `preloadWebtoonWindow()` (39)
- `ensureTextWebtoonDocumentLoaded()` (34)
- `scheduleHighQualityWarmup()` (27)
- `setHighQualityFocusPages()` (16)
- `prewarmHtmlPagesAround()` (16)
- `refreshAdjacentHtmlPages()` (16)
- Вспомогательные функции (51)

### Результат фазы 5

`ReaderViewModel.kt`: ~1,984 → ~1,454 строк (−60% от исходного)

---

## Фаза 6 — EpubFormatReader: OPF/TOC + Content Analysis

**Срок:** 1-2 дня  
**Риск:** средний

### 6A. OPF/TOC parsing → `EpubManifestParser.kt` (расширить) [+170 строк]

Перенести:
- `parseOpf()` / `parseOpfFallback()` (Jsoup XML parser, ~40 строк)
- `parseToc()` / `parseNcx()` / `parseNavXhtml()` (~90 строк)
- `hasExpectedFb2FrontMatter()` / `shouldRepairFrontMatter()` / `detectPublisherEpub()` (~45)

### 6B. Content analysis → `EpubContentAnalyzer.kt` (новый) [+145 строк]

Перенести:
- `fallbackContentPages()`, `isProtectedFrontMatterEntry()`, `shouldIncludeFallbackHtml()`
- `readTextEntry()`, `isHeadingOnlySpinePage()`, `isTitleOnlySpinePage()`
- `isNotesTitlePage()`, `isFootnotePage()`
- Constants: `NAV_FILE_RE`, `FRONT_MATTER_ENTRY_RE`

### 6C. Synthetic footnote pages → `EpubFootnoteResolver.kt` (расширить) [+110 строк]

Перенести:
- `buildFootnoteMap()`, `buildSyntheticNotePages()`, `buildSyntheticHtml()`, `escapeHtml()`

### Результат фазы 6

`EpubFormatReader.kt`: ~1,558 → ~1,133 строк

---

## Фаза 7 — ReaderScreen: Chrome + Effects

**Срок:** 1 день  
**Риск:** низкий

### 7A. Chrome inset geometry → `ReaderChromeInsetGeometry.kt` (новый) [+230 строк]

Перенести вычисления inset из ReaderScreen: `textContentTopInsetPx`, `textContentBottomInsetPx`, chrome reserves, `ReaderViewportGeometry.fromMeasured()`

### 7B. Window effects → `ReaderWindowEffects.kt` (новый) [+76 строк]

Перенести 3 `DisposableEffect` блока: brightness, keep-screen-on, immersive mode

### Результат фазы 7

`ReaderScreen.kt`: ~1,807 → ~1,501 строк

---

## Фаза 8 — ReaderViewModel: оставшиеся мелочи

**Срок:** 1 день  
**Риск:** низкий

### 8A. Footnote handling → `ReaderAnchorHandler.kt` [+123 строки]
### 8B. Reading mode → `ReaderModeController.kt` [+118 строк]
### 8C. TOC loading → `ReaderTocController.kt` [+117 строк]
### 8D. Bookmarks + Highlights → `ReaderBookmarkManager.kt` [+104 строки]

### Результат фазы 8

`ReaderViewModel.kt`: ~1,454 → ~992 строк → далее сокращается до ~800 при удалении дублирующихся delegate-обёрток

---

## Фаза 9 — EpubFormatReader: остатки + buildPagesFromOpf

**Срок:** 1-2 дня  
**Риск:** высокий (P5 — `buildPagesFromOpf` зависит от P0+P4)

### 9A. HTML rendering → `EpubHtmlRenderer.kt` [+195 строк]
### 9B. ZIP lifecycle → `EpubArchiveAccess.kt` (расширить) [+105 строк]
### 9C. HTML inlining → `EpubHtmlNormalizer.kt` (расширить) [+75 строк]
### 9D. buildPagesFromOpf decomposition → 3 подфункции [+200 строк]

### Результат фазы 9

`EpubFormatReader.kt`: ~1,133 → ~600 строк (thin coordinator)

---

## Сводка по фазам

| Фаза | Объект | Что | Строк вынесено | Срок | Риск |
|---|---|---|---|---|---|
| **1** | EpubFormatReader | Chunking + Cache + PageResolver | ~826 | 1-2 д | Низкий |
| **2** | ReaderViewModel | Translation/Dictionary | ~832 | 2-3 д | Средний |
| **3** | ReaderScreen | WebView + HtmlPageView | ~1,407 | 1-2 д | Низкий |
| **4** | ReaderViewModel | Book opening + Progress | ~827 | 2-3 д | Средний |
| **5** | ReaderViewModel | Preferences + Page loading | ~530 | 1-2 д | Низкий |
| **6** | EpubFormatReader | OPF/TOC + Content + Footnotes | ~425 | 1-2 д | Средний |
| **7** | ReaderScreen | Chrome + Effects | ~306 | 1 д | Низкий |
| **8** | ReaderViewModel | Footnote + Mode + TOC + Bookmarks | ~462 | 1 д | Низкий |
| **9** | EpubFormatReader | HTML render + ZIP + buildPagesFromOpf | ~575 | 1-2 д | Высокий |

**Общий срок:** ~12-18 дней  
**Общее сокращение:** ~6,190 строк вынесены → 3 файла сокращаются с 9,241 до ~2,400 строк

---

## Связи между фазами (зависимости)

```
Phase 1 (Epub Quick Wins)         — независима, делать первой
Phase 2 (VM Translation)          — независима
Phase 3 (Screen WebView)          — независима
Phase 4 (VM Book+Progress)        — независима
Phase 5 (VM Prefs+PageLoader)     — после Phase 4 (shared state)
Phase 6 (Epub OPF/TOC)            — после Phase 1 (shared EpubHtmlChunker)
Phase 7 (Screen Chrome)           — после Phase 3 (ReaderWebView extraction)
Phase 8 (VM Small stuff)          — после Phase 5
Phase 9 (Epub Remainder)          — после Phase 6
```

### Параллельные треки

```
Трек A (Epub):  Phase 1 → Phase 6 → Phase 9
Трек B (VM):    Phase 2 → Phase 4 → Phase 5 → Phase 8
Трек C (Screen): Phase 3 → Phase 7
```

Три трека можно вести параллельно разными агентами, если нужно ускориться.

---

## Критерии качества для каждого среза

1. ✅ Основной файл уменьшился, а не получил дополнительный wrapper
2. ✅ Новая ответственность имеет понятное имя и отдельный тест
3. ✅ Публичный контракт не меняет координаты PAGE/WEBTOON
4. ✅ Нет нового полного `loadUrl` ради косметического изменения
5. ✅ Gradle и XML отчёт зелёные
6. ✅ Для видимого поведения есть артефакт с устройства

---

## Не делать

- Не переносить сотни строк одной операцией
- Не объединять PAGE и WEBTOON в общий mutable state
- Не использовать число страниц как универсальный locator позиции
- Не принимать `runCatching` с молчаливым fallback за обработку ошибки
- Не объявлять баг закрытым по unit-тесту, если он виден на экране
- Не менять protected task-файлы
- Не обновлять зависимости
