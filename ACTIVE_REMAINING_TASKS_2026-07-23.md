# Активный остаток задач Mr.Comic

Дата обновления: 2026-08-09

Это рабочая точка входа для продолжения. Подробные продуктовые описания остаются в
`TASKLIST_01_READER_EXPERIENCE.md` ... `TASKLIST_05_PLATFORM_FOUNDATION.md`, а
история извлечений — в `EXTRACTION_TASKLIST.md`.

## Правило порядка

1. Сначала не допускать потери позиции, текста и прогресса в Reader.
2. Затем уменьшать крупные файлы малыми тестируемыми срезами.
3. Новый UX выпускать только после targeted unit-тестов и проверки на устройстве.
4. Не очищать несвязанные изменения и не переносить форматный парсинг в UI.

## P0 — Reader: корректность чтения

### RDR-01. Подтвердить и закрыть PAGE -> WEBTOON restoration

- Состояние: кодовая правка есть, unit-тесты зелёные, runtime-подтверждение не получено.
- Уже сделано:
  - canonical engine section count используется при восстановлении режима;
  - scroll к stitched WebView-секции выполняется после commit и защищён load token.
- Остаток:
  - открыть основную главу, не блок примечаний;
  - проверить PAGE -> WEBTOON и WEBTOON -> PAGE;
  - убедиться, что позиция не становится обложкой/оглавлением и не прыгает к примечаниям;
  - приложить screenshot и UI dump к QA-отчёту.
- Критерий готовности: оба перехода сохраняют главу и приблизительную позицию без повторных reload-loop.

### RDR-02. Восстановить стабильный API 37 QA-стенд

- Состояние: блокер. Единственный `MrComic_QA_API37` выдаёт `System UI isn't responding` даже после host GPU и 6 GB RAM.
- Остаток:
  - собрать logcat/ANR-артефакт для конкретного system image;
  - только после согласованного решения выполнить wipe-data или заменить API 37 system image;
  - переустановить debug APK через системный picker и заново добавить тестовые файлы.
- Критерий готовности: холодный boot, старт приложения и 15 минут чтения без ANR System UI.

### RDR-03. Регрессия page mode

- Проверить на EPUB, FB2, HTML, TXT, DOCX и текстовом файле в архиве:
  - одинаковая полезная высота страниц;
  - без пропусков, повторов предложений, обрезки сверху/снизу и пустых страниц вне конца главы;
  - без самовыделения текста после свайпа;
  - корректный RTL и dual spread.
- Критерий готовности: QA-матрица содержит снимки начала, середины и границы главы для PAGE и WEBTOON.

### RDR-04. Регрессия vertical mode и сносок

- Проверить интервалы между главами, верхний inset при скрытом chrome, picker-импорт и длинные сноски.
- Проверить footnote marker, peek, expand, scroll и collapse при скрытом/раскрытом chrome.
- Критерий готовности: сноска не встраивается в основной текст, popup не обрезается и все markers интерактивны.

### RDR-05. Прогресс и completion

- Проверить новые книги, EPUB до первой WebView-пагинации, последнюю страницу и повторное открытие.
- Запретить ложные `100%` на обложке библиотеки.
- Критерий готовности: progress хранится только по авторитетной координате и завершение выставляется только на фактическом конце.

## P1 — текущая декомпозиция крупных файлов

### ARC-09b. Завершить T-9: archive content scanner

- Источник: `android/core-data/.../ComicRepository.kt`.
- Уже вынесено: extension, MIME, magic bytes, ZIP-container, title derivation в `ComicFormatDetector.kt`.
- Остаток: перенести сканирование содержимого ZIP/TAR/7Z/RAR в detector через явные stream/temp-file adapters.
- Тесты: текстовый архив vs архив изображений, лимит первых 100 файлов, content URI, ошибки 7Z/RAR и cleanup temp file.
- Критерий готовности: `ComicRepository` хранит только Android/файловые адаптеры; логика классификации архивов тестируема вне repository.

### ARC-10. T-10: Epub chunk extraction

- Источник: `android/engine-formats/.../epub/EpubFormatReader.kt`.
- Цель: `EpubChunkExtractor.kt`.
- Перенести: `estimateChunkCount`, `splitEstimatedCharCount`, `extractChunk`, `extractChunkBlocks` и связанные value-правила.
- Тесты: пустой spine, oversized block, границы chunk, стабильный порядок секций и сохранение footnotes.
- Критерий готовности: extractor не зависит от Android/UI, `EpubFormatReader.kt` уменьшается без смены публичного поведения.

### ARC-11. Продолжить разрез ReaderScreen и ReaderViewModel

- Следующие кандидатуры:
  - WebView lifecycle/reload/scroll restoration в отдельный controller;
  - reader chrome/control center composables по файлам;
  - loading/open/pagination coordination в `ReaderSessionCoordinator`;
  - page/vertical координаты — только через policy.
- Ограничение: один срез — один контракт — отдельный unit-тест до подключения к ViewModel/UI.

## P2 — продуктовые tasklists

### Reader experience

- `R3`: завершить простые presets tap zones и матрицу конфликтов жестов, OCR и selection.
- Повторно проверить `R0-R5` не как документацию, а на настоящих форматах после закрытия RDR-01..04.
- Источник: `TASKLIST_01_READER_EXPERIENCE.md`.

### Translation, AI, TTS, OCR

- `A0`: закрыть расхождения между заявленной и реальной доступностью переводов.
- `A1`: спроектировать AI Services Center с явными provider contracts.
- `A2`: выделить Explain/Summary service layer.
- `A4`: расширять TTS provider layer только после стабильного System TTS.
- `A5`: выполнить live language-pair регрессию OCR и закрыть перевод комиксов.
- Источник: `TASKLIST_03_TRANSLATION_AI_TTS.md`.

### Settings и локализация

- `S0-S5`: аудит карты настроек, capability-based subpages, summary-first previews, About/Legal, локализация и разделение сервисов.
- Приоритет: не возвращать visual-настройки в Library; Reading оставлять хабом с подразделами.
- Источник: `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md`.

### Library и gamification

- `G0`: стабилизировать текущие поверхности Continue/Mr.Comic.
- `G1-G5`: seasonal layer, chain rules, social layer, economy/unlocks, analytics completion.
- Источник: `TASKLIST_02_LIBRARY_GAMIFICATION.md`.

### Platform foundation

- `F0-F5`: repository hygiene, data contracts, analytics schema, service/format-engine boundaries, QA/release discipline.
- Источник: `TASKLIST_05_PLATFORM_FOUNDATION.md`.

## Ближайшая последовательность

1. Собрать безопасный QA-артефакт по API 37 ANR и восстановить рабочий эмулятор.
2. Подтвердить RDR-01 и закрыть PAGE <-> WEBTOON runtime regression.
3. Выполнить ARC-09b с unit-тестами.
4. Выполнить ARC-10 с unit-тестами.
5. Вернуться к page/vertical QA-матрице и обновить этот документ только зелёными фактами.

---

## Выполнено (2026-08-09) — границы модулей (аудит 3.3 / 3.4)

### 3.3 — feature-reader больше не обходит engine-api

- Контракты переехали в `engine-api`: `FormatReader` (с `BaseFormatReader`/`RasterPageReader`/`TextContentReader`), `LegacyFormatSessionAccess`, `FormatDetector`, `RenderDeviceProfile`/`RenderDeviceTier`, `EpubReadablePath`, `ReflowableTextFormatReader`, новые `ReaderFactory` и `SectionPaginator` (+ `TextPaginationSubPage`/`SectionPaginationResult`).
- Реализации остались в `engine-formats`; удалённые типы пере-экспортированы typealias'ами (`base/FormatTypes.kt` и по пакетам) для обратной совместимости.
- В main-коде `feature-reader` не осталось импортов `engine.formats`; зависимость модуля понижена до `testImplementation`. `engine-rendering` и `app` переведены на engine-api; AGENTS.md обновлён.

### 3.4 — инверсия core-domain завершена, тесты зелёные

- `:core-domain:testDebugUnitTest` снова собирается и проходит: 7 тестовых файлов приведены к контрактам `core-interfaces`/`core-model` (DailyReadingGoalPolicyTest, GamificationMetricsSnapshotTest, MrComicMascotStateTest, ReaderCheckpointTrailPolicyTest, AddComicUseCaseTest, SaveReadingProgressUseCaseTest, ScanFolderUseCaseTest); GetComicPagesUseCaseTest переведён на `FormatProvider`.

### 3.1 — попутный фикс

- `SettingsViewModelSmokeTest` (feature-settings) обновлён под параметр `dictionaryDownloader` конструктора `SettingsViewModel`.

Проверка: `testDebugUnitTest` + `detekt` по всем 16 модулям — зелёные.

## Выполнено (2026-08-09) — 4.1 делегаты в Library/Settings

- Срез 1 (коммит `161a41d`): CRUD/import/folder-deletion вынесены из `LibraryViewModelCrud.kt` в `LibraryCrudController` (репозитории + scope + `MutableStateFlow<LibraryUiState>` + лямбды `rawComics`/`openFolder`). Публичное API ViewModel сохранено; `runCrud` перенесён в контроллер. Добавлены `mockk`+`kotlinx-coroutines-test` в feature-library и `LibraryCrudControllerTest` (8 тестов).
- Срез 2 (коммит `81d9b45`): пресеты тем Library/app/reader и zone/look-пресеты вынесены из `SettingsViewModelPresets.kt` + apply/persist-хелперы из `SettingsViewModelHelpers.kt` в `SettingsPresetsController` (preferences + themePreferencesRepository + scope + uiState + лямбда `persistNullableColor`). ViewModel сохраняет публичное API через делегирующие extension-функции. `SettingsPresetsControllerTest` (8 тестов, Robolectric для org.json).
- Срез 3 (коммит `4b24ea5`): `applyFiltersAndSort` (фильтрация/сортировка/группировка по папкам и сериям/статистика/маскот-прогресс) вынесен из тела `LibraryViewModel` в чистый `LibraryContentPipeline` (derive: состояние + сырые списки → новое `LibraryUiState`). ViewModel хранит только запись состояния и аналитику смены стадии. `LibraryContentPipelineTest` (7 тестов).
- Срез 4 (коммит `e4b02c9`): все 14 `observe*`-наблюдателей DataStore (layout/visual/library/mascot/quest/search/availability) + search и preference-сеттеры вынесены из тела `LibraryViewModel` в `LibraryPreferenceController` (preferences + репозитории + scope + uiState + searchQuery + колбэки re-derivation/raw-data). `LibraryViewModel` — тонкая обвязка (init запускает контроллер, `applyFiltersAndSort` — запись состояния и маскот-аналитика, публичное API делегирует). `LibraryPreferenceControllerTest` (8 тестов).
- Срез 5 (коммит `c6595da`): backup/export/import/cache (779 строк `SettingsViewModelBackup.kt`) вынесены в `SettingsBackupController` (context + preferences + themePreferencesRepository + comic/quoteRepository + scope + statusState + лямбда language). i18n-месседжи `SettingsViewModelMessages.kt` стали топ-левел функциями с параметром `lang`; в ViewModel остались только popup-preference сеттеры и делегаты. `SettingsBackupControllerTest` (6 тестов).
- Срез 6 (коммит `c1f2604`): AGENTS.md — зафиксирован паттерн ViewModel-делегатов (4.1): один срез = контроллер с явными зависимостями + собственный unit-тест.
- Срез 7 (коммит `07dcfbd`): flow-композиция `SettingsUiState` вынесена из `SettingsViewModelFlows.kt` + BaseStates/ReaderFlows/TranslationFlows в `SettingsUiStateFlowBuilder` (preferences + context + statusState + themePreferencesRepository + translation-движки). ViewModel удалила ~40 мёртвых flow-свойств и availability-хелперы; оставила goal-state и comic-count combines поверх `createCombinedSettingsUiState()`. `SettingsUiStateFlowBuilderTest` (3 теста).
- Срез 8 (коммит `4071afe`): `observeAudiobooks`/cover repair/add-from-uri/folder/delete вынесены из `LibraryViewModelAudiobooks.kt` в `LibraryAudiobookController` (repository + context + scope + uiState + repaired-cover set). Extension-API делегирует. `LibraryAudiobookControllerTest` (3 теста).
- Полная регрессия (2026-08-09): `testDebugUnitTest` + корневой `detekt` по всем 16 модулям — BUILD SUCCESSFUL, 0 smells.
- Срез 9 (коммит `cbeeb68`): 133 settings-сеттера из 8 `SettingsViewModel*Setters.kt` переведены с ресивера `SettingsViewModel` на `SettingsSettersController` (preferences + themePreferencesRepository + dailyReadingGoalStore + analyticsTracker + scope + uiState + settingsPreferencesController + лямбды setSlider/updateToggleEnabledAt/persistNullableReaderColor/parseImportedTypography). ViewModel хранит `settersController` (lazy) и 133 однострочных делегата — публичное API Compose не изменилось. `SettingsSettersControllerTest` (9 тестов).
- Срез 10 (коммит `8f696ec`): аудит Library stateless-хелперов — Filtering/Sorting/StatusText уже покрыты собственными тестами; Display (`buildSections`/`buildSeparatedComicDisplayItems`/`libraryContentSection`/`buildFolderItems`/`sortFolderItems`/путевые утилиты/`buildBreadcrumbs`) и Helpers (`vmTr`/`localizedError`/`normalizeFolderId`/`parentFolderPath`/`folderRepresentativeName`/`normalizeLibraryViewMode`) закрыты новым `LibraryStatelessHelpersTest` (20 тестов). Мёртвых статeless-хелперов не найдено.
- Проверка (2026-08-09): `:feature-settings:testDebugUnitTest` + `:feature-library:testDebugUnitTest` + detekt обоих модулей (0 smells) + `:app:assembleDebug` — BUILD SUCCESSFUL.

## Выполнено (2026-08-09) — 4.2 разрезы ReaderViewModel и остальные ViewModel

Паттерн 4.1 (контроллер с явными зависимостями + собственный unit-тест, AGENTS.md) переносится на feature-reader: `ReaderViewModel.kt` (819 строк) уже использует контроллеры (chrome/translation/footnote/bookmark/highlight/eyeRest/ocr/navigation/readingMode/progress/warmup/saveQuote/pageLoader/sessionManager), но в теле остались два монолита:

- Срез 1 (коммит `24bb36e`): book-opening pipeline вынесен в `ReaderBookOpeningController` (loadComicFromSource → openComic → resetForBookOpen → prepareBook → configureOpening → applyOpeningState → startReaderSession → loadInitialPages → applyDeferredPageCount → schedulePostOpenTasks + warmupAroundPage). Явные зависимости: scope, openGuard, `_uiState`, preparer, sessionManager, navigation/readingMode/progress/warmup/deferredTasks/eyeRest/readersessionCoordinator/analytics/bookmark + лямбды formatReader/setFormatReader/localizedError/loadToc/clearHtmlPageCache/prewarm/schedulePageTranslationNote. `ReaderViewModel` похудел с 819 до ~290 строк.
- Срез 2 (коммит `24bb36e`): page-html cache/warmup вынесен в `ReaderPageCacheController` — `loadToc`/`tocDisplayPage`/`clearHtmlPageCache`/`refreshAdjacentHtmlPages`/`getOrLoadHtmlPage`/`prewarmHtmlPagesAround` + `tocLoadJob`. В feature-reader добавлен mockk; `ReaderBookOpeningControllerTest` (4) + `ReaderPageCacheControllerTest` (6).
- Срез 3 (коммит `0ffa6f9`): аудит `AudiobookPlayerViewModel` (357 строк) — вывод: VM — когезивная MediaController-обвязка, извлекаемо чистое правило-логика. Порог персиста прогресса (5s / смена главы), границы глав, клэмпы start/seek/speed, отсчёт sleep-timer вынесены в статeless `AudiobookPlayerPolicy` (паттерн `*Policy.kt` репозитория). `AudiobookPlayerPolicyTest` (14).
- Срез 4 (коммит `6edea4c`): аудит `OpdsCatalogViewModel` (160 → 64 строки, feature-library): browse/search/download вынесены в `OpdsCatalogController` (opdsRepository + scope + `MutableStateFlow<OpdsCatalogUiState>`), `UiState` переехал в топ-левел `OpdsCatalogUiState`. VM — тонкая обвязка, публичное API сохранено. `OpdsCatalogControllerTest` (14 тестов: открытие каталога, стек навигации, goBack, next page, search/exitSearch, download-прогресс, error-пути).- Проверка (2026-08-09): `:feature-library:testDebugUnitTest` (194 теста) + `:feature-library:detekt` (0 smells) — BUILD SUCCESSFUL.
- Ограничение (из AGENTS.md): один срез = один контроллер/политика + собственный unit-тест до подключения к ViewModel/UI.

## Выполнено (2026-08-09) — ARC-11 срезы S3, S5, S8, S6, S12, S10

### S3 — ChromeInsetsPlan

- `ChromeInsetsPlan.kt` — pure-Kotlin data class (10 полей) + `companion.compute(...)` с measured/auto-hide/final reserve + CSS-инсетами.
- `@Composable rememberChromeInsetsPlan` — Compose-обёртка с `remember` по 8 ключам.
- `ReaderScreen.kt` похудел с 881 → 833 строк (-48): ~100 строк inline chrome-вычислений заменены на `val plan = rememberChromeInsetsPlan(...)`.
- `ChromeInsetsPlanTest.kt` — 7 unit-тестов (visible/hidden chrome, capped reserve, CSS inset + sentence gutter, auto-hide floor).

### S5 — HtmlProgressAnchor

- `HtmlProgressAnchor.kt` — `ReaderPositionAnchor` data class + `extractTextAnchor` + `resolveAnchorPosition` + `ReaderSectionCursor` + `readerSectionCursor`.
- `HtmlProgressAnchorTest.kt` — 18 unit-тестов (extract from id/text, no match, blank, truncation, resolve id/text/priority, stability after reflow, cursor ordering/equality/clamping, anchor validation).
- `ReaderPositionAnchorTest.kt` удалён (тесты subsumed).

### S8 — ReaderPagePreloadPolicy

- `ReaderPagePreloadPolicy.kt` — pure-Kotlin `pagesToPreload(centerPage, visiblePages, totalPages, preloadDistance)` с клэмпом 1..8.
- Инлайн-логика в `TextReaderOrchestrator.prewarmHtmlPagesAround` заменена на вызов политики.
- `ReaderPagePreloadPolicyTest.kt` — 10 unit-тестов (empty, single/dual page, left/right boundary, small book, distance clamp, empty visible fallback, distinct pages).

### S6 — ReaderFontResolutionPolicy

- `ReaderFontResolutionPolicy.kt` — `resolveFamily(selected, builtIn, custom)` → fallback Georgia + `isBuiltIn`/`isCustom`.
- `ReaderFontResolutionPolicyTest.kt` — 10 unit-тестов (exact match, null/blank/unknown fallback, case sensitivity, empty sets).

### S12 — ReaderChromeBars

- `ReaderChromeBars.kt` — обёртка над `ReaderTopChromeBar` + `ReaderBottomChromePanel` (29 параметров).
- `ReaderScreen.kt` — два вызова (~50 строк) заменены на один `ReaderChromeBars(...)`.

### S10 — ReaderContentArea

- `ReaderContentArea.kt` — reader content area: four `when` branches (TEXT_WEBTOON, TEXT_PAGE, RASTER_WEBTOON, RASTER_PAGE) со всеми параметрами.
- `ReaderScreen.kt`: 833 → 635 строк (-198). Цель ≤400 ещё не достигнута.

**Проверка**: `:feature-reader:testDebugUnitTest` + `:feature-reader:detekt` + `:app:compileDebugKotlin` — BUILD SUCCESSFUL, 0 smells.


