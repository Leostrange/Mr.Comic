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

### RDR-02. Восстановить стабильный QA-стенд

- Состояние (2026-08-09): **разблокирован на API 35** (`MrComic_QA_API35`). QA-стенд под API 37 (`MrComic_QA_API37`) — отдельный системный image, продолжит ронять System UI; переход на API 35 как основной — практичный workaround, image `android-37.0/google_apis_ps16k` оставлен на диске, чтобы можно было вернуться.
- Что сделано 2026-08-09:
  - запустил `emulator @MrComic_QA_API35 -no-window -no-audio -no-snapshot -gpu off -no-boot-anim`; системный image `android-35/google_apis/x86_64`; `sys.boot_completed=1`, `bootanim=stopped`;
  - `./gradlew :app:assembleDebug` → BUILD SUCCESSFUL (906 MB APK);
  - `adb install` → Success (Streamed Install);
  - запуск `MainActivity` → Resume без ANR, библиотечный экран показывает «Библиотека ещё пуста» / «Открыть библиотеку»;
  - залил тестовую книгу `sample.epub` (3 главы, собран питоном, 2215 B) на `/sdcard/Download/sample.epub` и выдал `READ_MEDIA_IMAGES`/`READ_EXTERNAL_STORAGE` через `pm grant`, чтобы убрать стартовый permission-диалог;
  - первая попытка `am start -a VIEW` упёрлась в permission controller — обходится через `pm grant`, после неё читательский флоу открывается. Логи приложения и UI dump первой сессии собраны (screenshots + ui-xml в `.qa-rdr-2026-08-09/screenshots/`).
- Остаток (RDR-01 конкретно):
  - доехать до reader screen (через tap «Открыть файл» → SAF picker → выбор `sample.epub`);
  - довести до читательской сцены с загруженной WebView, зафиксировать position;
  - выполнить переключение PAGE → WEBTOON и WEBTOON → PAGE, зафиксировать screenshot до/после, записать `position.kind` и `page` для обоих направлений.
- Критерий готовности: оба перехода сохраняют главу и приблизительную позицию без повторных reload-loop.
- Артефакты в `.qa-rdr-2026-08-09/`: `screenshots/01-home-library-empty.{png,xml}`, `screenshots/02-library-screen.{png,xml}`, `sample.epub` (источник для следующего шага RDR-01).

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
- **Срез выполнен (2026-08-09)**: detector получил `archiveAccessFor: (Uri) -> ArchiveAccess?` через `ArchiveStreamSource` + `RandomAccessArchiveMaterialiser` (`ArchiveAccess.kt`); `ComicFormatDetector.archiveContentForUri(uri)` снiffит заголовок, для ZIP/TAR сканирует через stream adapter, для 7Z/RAR — через временный файл с гарантированным cleanup в finally. `ComicRepository` теперь только собирает `ArchiveAccess(uri)` из `openInputStream(uri)` + `copyContentUriToTemp(uri, ext)`; private `detectArchiveContentFormat(uri)` dispatcher удалён (-25 строк). Тесты: 13 новых в `ComicFormatDetectorArchiveAccessTest` (text vs image, лимит 100 через URI dispatcher, content URI с null stream, 7Z/RAR corrupted + cleanup, корректный extension arg), существующие 18 в `ComicFormatDetectorTest` без изменений. Модуль: 0 фейлов / 46 тестов.

### ARC-10. T-10: Epub chunk extraction

- Источник: `android/engine-formats/.../epub/EpubFormatReader.kt`.
- Цель: `EpubChunkExtractor.kt`.
- Перенести: `estimateChunkCount`, `splitEstimatedCharCount`, `extractChunk`, `extractChunkBlocks` и связанные value-правила.
- Тесты: пустой spine, oversized block, границы chunk, стабильный порядок секций и сохранение footnotes.
- Критерий готовности: extractor не зависит от Android/UI, `EpubFormatReader.kt` уменьшается без смены публичного поведения.
- **Срез выполнен (коммиты `89f9e20` + `3eee597`, 2026-07-26 → 2026-08-06)**: целевая единица исходно называлась `EpubHtmlChunker.kt`; переименована в `EpubChunkExtractor.kt` (`arc-10-rename 2026-08-09`, тесты — `EpubChunkExtractorTest.kt`). Перенесены все 21 функция + 5 констант: `estimateChunkCount`, `splitEstimatedCharCount`, `extractChunk`, `extractChunkBlocks`, `extractEstimatedChunkBlocks`, `extractDomChunkBlocks`, `shouldRecurseIntoEpubChunkContainer`, `hasNestedEpubChunkBoundary`, `isEpubChunkBoundaryElement`, `wrapInChunkAncestors`, `extractParagraphFallbackChunkBlocks`, `splitOversizedEpubBlock`, `splitTextForEpubBlocks`, `partitionChunkBlocks`, `rebalanceTrailingChunkPair`, `isEpubSectionStartBlock`, `resolveEpubHtmlChunkCount`, `shouldKeepWholeEpubHtmlBody`, `visibleTextCharCount`, `hasRenderableMedia`, `canSplitEstimatedBlock`, `CHUNK_CHARS_PER_PAGE`, `CHUNK_HTML_TAG_RE`, `CHUNK_BOUNDARY_TAGS`, `CHUNK_CONTAINER_TAGS`, `CHUNK_ATOMIC_TAGS`. `EpubFormatReader.kt` похудел с 2267 до 1779 строк (−488, −22%); потребители (`EpubTocResolver`, `EpubContentAnalyzer`, страница-chunking в `getHtmlPage`) просто используют функции из того же пакета. Тесты — `EpubChunkExtractorTest.kt` (13 кейсов): `splitEstimatedCharCount`, `estimateChunkCount`, `extractChunk` (empty body / whole-paragraph / word-boundary split), `extractChunkBlocks` (порядок секций / footnotes), плюс `resolveEpubHtmlChunkCount` границы групп и `shouldKeepWholeEpubHtmlBody`. `EpubChunkExtractor.kt` использует только jsoup + Kotlin stdlib, без Android/UI — критерий соблюдён. `FormatDiagnosticsTest` обновил источник: до рефакторинга `extractChunk` дёргался reflection’ом с `EpubFormatReader`; после переезда в top-level функции — прямой `import io.leostrange.mrcomic.engine.formats.epub.extractChunk`.

### ARC-11. Продолжить разрез ReaderScreen и ReaderViewModel

- Следующие кандидатуры:
  - WebView lifecycle/reload/scroll restoration в отдельный controller;
  - reader chrome/control center composables по файлам;
  - loading/open/pagination coordination в `ReaderSessionCoordinator`;
  - page/vertical координаты — только через policy.
- Ограничение: один срез — один контракт — отдельный unit-тест до подключения к ViewModel/UI.
- **Срез 1 выполнен (`b1aab03` + `6d3ce40`, 2026-08-09)**: `ReaderWebViewLoadController` — 79 строк, без Android/Compose. Контракт: `shouldRebuildSource`, `markLoadRequested`, `markLoadCommitted`, `shouldRestoreScroll`, `clear`. 11 unit-тестов, JUnit без Robolectric.
- **Срез 2 выполнен (коммит `arc-11-slice-2 2026-08-09`)**: `HtmlPageView` теперь резолвит `ReaderWebViewLoadController` через `remember { ... }` и передаёт его в `rememberReaderHtmlPageSource(controller, ...)`. `LaunchedEffect(reloadKey)` гейтится через `controller.shouldRebuildSource(reloadKey)`; после построения новой `ReaderHtmlPageSource` вызывается `controller.markLoadRequested(source.loadToken, reloadKey)`. Покрыто только decision + markLoadRequested путь — wiring `markLoadCommitted` оставлен под отдельный срез (нужно протащить токен из `ReaderWebView` через `HtmlPageView` в лямбде `onPageCommitVisible`). Существующих тестов на `ReaderWebViewLoadController` (11) достаточно для подтверждения контракта; модульных UI-тестов для `HtmlPageView` (Robolectric + Compose UI) пока нет — это ограничение сохраняется.
- **Срез 3 выполнен (коммит `arc-11-slice-3 2026-08-09`)**: `feature-reader/.../ui/ReaderSessionCoordinator.kt` (99 строк) — четыре фазы `ReaderSessionPhase.{Idle, Opening, Ready, Closing}` + явные переходы `beginOpen` / `markReadyAfterBeginOpen` / `beginClose` / `markClosed` + `reset()` для аварийных состояний. Не владеет тяжёлой работой — только ledger. 15 unit-тестов (`ReaderSessionCoordinatorTest`): legal transitions, illegal transitions отвергаются с IllegalArgumentException (с сообщением, указывающим текущую фазу), `reset` восстанавливает Idle, `phase.first()` согласован с `phase.value` после полного round-trip. Имя `ReaderSessionCoordinator` уже занято в `domain.session` (2 теста, аналитика сессии) — намеренное разделение: domain — метрики, ui — ledger жизненного цикла. UI-интеграция (заворачивание `ReaderBookSessionManager.openTextFormatReader` + `TextReaderOrchestrator.cancelAllJobsAndJoin` в фазы) отложена под отдельный срез.
- **Срез A выполнен (`arc-11-wire-markload 2026-08-09`)**: протащен `markLoadCommitted` из `ReaderWebView.markLoadCommitted()` в `ReaderWebViewLoadController`. В `ReaderWebView.kt` добавлен `internal var onLoadCommitted: ((String?) -> Unit)?`; пустой колбэк вызывается из `markLoadCommitted()` с `activeLoadToken`. В `HtmlPageView` при создании `ReaderWebView` устанавливается лямбда `{ token -> token?.takeIf { it.isNotBlank() }?.let(loadController::markLoadCommitted) }`. Контракт контроллера исполняется целиком (11 юнит-тестов среза 1 покрывают все 3 метода: `shouldRebuildSource`, `markLoadRequested`, `markLoadCommitted`). Дополнительных тестов на UI-бридж не писалось — ограничение такое же, как и в срезе 2.
- **Срез B выполнен (`arc-11-wire-coord 2026-08-09`)**: `ui.ReaderSessionCoordinator` интегрирован в `ReaderBookOpeningController` (переиспользуется как `sessionLifecycleCoordinator`, импорт с alias чтобы не коллизировать с domain `ReaderSessionCoordinator`). Фазы: `beginOpen()` перед `openComic`, `markReadyAfterBeginOpen()` после успешной подготовки, `beginClose()` перед `тяжёлой очисткой` в `ReaderViewModel.onCleared()`, `markClosed()` в `appScope.launch { ... }`, а в `catch` (включая CancellationException и Exception) вызывается `reset()`. Три теста `ReaderBookOpeningControllerTest` (`lifecycle_remainsReady_after_internal_return_paths`, `reset_*`) используют новый `buildController()` хелпер (без auto-open). Существующие 14 тестов и 11 тестов контроллера остались зелёными.
- **Срез C — WebView regression suite (`arc-11-chrome-slice 2026-08-09`)**: новый `ReaderChromeSurfacePlan.kt` (pure-Kotlin data class) — раньше chrome surface/overlay/style-расчёт (~30 строк inline в `ReaderScreen.kt`) жилось без unit-теста. Контракт: 5 полей (`effectiveToolbarOpacity`, `effectiveToolbarBlur`, `forceOpaqueChromeSurface`, `chromeSurface`, `overlaySurface`, `overlayStyle`) + Compose-обёртка `rememberReaderChromeSurfacePlan`. 7 unit-тестов в `ReaderChromeSurfacePlanTest`: EINK-переопределение (forceOpaque, blur=0), не-EINK clamp в `READER_TOOLBAR_MIN_OPACITY`, усреднение top/bottom opacity, разница emphasis chrome vs overlay, light vs dark overlayStyle. `ReaderScreen.kt` похудел на 31 строку inline chrome-вычислений; читаемость функции `ReaderScreen()` выросла.
  Параллельно — `ReaderWebViewRegressionTest.kt` (plain JUnit, без Robolectric, 6 тестов): сценарии из реальных регрессий — переключение mode сразу после initial load не должно мёртвить scroll-restore предыдущего токена; stale `onPageFinished` для закрытого экрана не воскрешает старый токен; повторный markLoadRequested с тем же токеном — no-op; цепочка `load-a → load-b → load-c` с финальным stale commit `load-a` — самый старый остаётся мёртвым; пустые/blank токены не должны «активировать» контроллер; цепочка clear/clear/clear сохраняет чистое начальное состояние. Это **не** повторяет [ReaderWebViewLoadControllerTest] — там покрытие happy-path контракта, здесь — то, что отрабатывается при реальной повторной композиции chrome surface. 


### ARC-11. Backlog — последующие срезы вне текущей ветки

Контрактное правило остаётся: **один срез — один контракт — отдельный unit-тест до подключения к ViewModel/UI**. Все кандидаты сгруппированы по риску / пользе.

#### S1. ReaderChromeSurfacePlan (controller → ReaderScreen refactor)
- **Статус**: выполнен 2026-08-09 (slice 0/baseline этот коммит-тур). Файл `ReaderChromeSurfacePlan.kt` — pure-Kotlin data class; 7 unit-тестов; `ReaderScreen.kt` (-31 строк inline chrome-вычислений).
- **Критерий готовности**: PASS — проверили, детект 0 smells.

#### S2. ReaderBottomSheetHost
- **Цель**: вынести 28+ параметров `ReaderBottomSheets(...)` (строки 861–887 в `ReaderScreen.kt`) в `ReaderScreenBottomSheetsHost.kt`, как обёртку; в `ReaderScreen.kt` остаётся `ReaderBottomSheets(host = rememberReaderBottomSheetHost(...))`.
- **Критерий готовности**: компилируется; `feature-reader:testDebugUnitTest` зелёный; `ReaderScreen.kt` уменьшается на ~30 строк; новых публичных типов в публичном API не появляется.
- **Тест**: один focused test — что host создаёт корректный set flags по умолчанию и не теряет callbacks при recompose.

#### S3. ReaderChromeInsetsPolicy + ReaderChromeMeasuredInsets
- **Цель**: разделить chrome-инсеты на 2 слоя — стабильные (preset-based) и measured (per-composition).
- **Файл**: `ReaderChromeInsets.kt`. Compose-обёртка и pure-Kotlin policy.
- **Тест**: `ReaderChromeInsetsPolicyTest` — focus on `measuredReservePx` clamping, preset override.

#### S4. ReaderHardwareKeyHostPolicy
- **Текущее**: `ReaderHardwareKeyHost.kt` смешивает Android `KeyEvent` парсинг и политику действий.
- **Цель**: вынести `keyEventToReaderAction(event): Optional<ReaderAction>` в pure-Kotlin `ReaderKeyActionPolicy.kt`; host становится тонкой обёрткой над ним.
- **Тест**: 6-8 кейсов — mapping `KEYCODE_VOLUME_*`, `KEYCODE_PAGE_*`, `KEYCODE_DPAD_*`.

#### S5. ReaderProgressPolicyHtmlDocument
- **Цель**: перевод HTML/JS-связанной логики прогресса из inline в `ReaderHtmlProgressPolicy.kt`.
- **Тест**: focus on anchor offsets и sectionId-scoped cursorки.

#### S6. ReaderFontStyleActions → ReaderFontCatalog
- **Файл**: `ReaderFontCatalog.kt` (есть частично в `ReaderScreen.kt`); вынести `rememberReaderFontStyleActions` + lookup.
- **Тест**: focus on font resolution + fallback.

#### S7. ReaderColorScheme (вынести из inline)
- **Файл**: `ReaderColorSchemeResolver.kt`. Pure-Kotlin: какой `MaterialColorScheme` использовать для какого preset/isTextReader.
- **Тест**: 5 кейсов покрытие (PAPER/SEPIA_BOOK/NEWSPAPER/NIGHT_INK/OLED_BLACK для text+image).

#### S8. ReaderPageCachePolicy
- **Текущее**: `ReaderPageCacheController.kt` (~60 строк) — контроллер + policy в одном файле. Разделить на controller + policy без изменения API.

#### S9. ReaderPreloadPolicy
- **Файл**: `ReaderPreloadPolicy.kt`. Дистанции для прелоада, кеширование demands, отмена при низком приоритете.

#### S10. ReaderScreen rewrite — разбить 901 строку на композиции
- **Цель**: получить `ReaderScreen.kt` ≤ 400 строк. Подсчёт сейчас (2026-08-09):
  - **ReaderScreen.kt**: 870 строк
  - **ReaderChromeOverlays.kt**: 291
  - **ReaderBottomSheets.kt**: 329
  - **ReaderControlCenterSheet.kt**: 298
  - **ReaderControlCenterStrings.kt**: 418
  - **ReaderChromeComponents.kt**: 462
- **Главный приоритет — `ReaderControlCenterStrings.kt`** (418 строк локализованных строк — это ad-hoc ContentResolver; либо вынести в strings.xml, либо разделить на отдельные services-tab).
- **Критерий готовности**: `ReaderScreen.kt` ≤ 400 строк; ноль новых public API.

#### S11. ReaderWebView instrumentation androidTest
- **Цель**: поднять `androidTest/.../WebViewLifecycleTest.kt`, который запускает WebView на эмуляторе и проверяет sequence `markLoadRequested → onPageFinished → markLoadCommitted → shouldRestoreScroll=true`.
- **Зависимость**: требует восстановленного эмулятора (RDR-02 ✅), готового `sample.epub` (✅ `.qa-rdr-2026-08-09/sample.epub`).
- **Критерий готовности**: 1-2 androidTest-кейса зелёные через `./gradlew :feature-reader:connectedDebugAndroidTest`.

#### S12. ARC-11 chrome double-split — top vs bottom
- **Цель**: `ReaderChromeOverlays.kt` (291 строк) уже разделяет `ReaderTopChromeBar` / `ReaderBottomChromePanel`, но они используют один общий composable шаблон (статус, опacities, flags). Вынести этот «общий шаблон» в `ReaderChromeBarShell.kt`.
- **Тест**: 1 focused test, проверяющий, что chrome bar shell правильно применяет все 4 переданные комбинации (top+bottom chrome, top+bottom overlay).

### Summary метрики после всех срезов
- **ReaderScreen.kt**: 870 → ≤400 строк (-54%); читаемость улучшена, контракты выделены.
- **feature-reader unit tests**: 448 (2026-08-09) → +8 chrome slice +6 webview regression +6 hardware key +5 page cache +5 preload = **478**.
- **Detekt smells**: держать в нуле. Каждый срез обязан прогнать `:feature-reader:detekt` + (subset изменил) запустить `:app:compileDebugKotlin`.

### Приоритизация (по правилу «опасно + полезно»)

```
Приоритет | Срез                | Оценка опасности | Оценка пользы
---------|---------------------|------------------|---------------
P1       | S2 (BottomSheetHost) | low              | medium
P1       | S4 (KeyActionPolicy) | low              | high
P2       | S3 (ChromeInsets)   | low              | medium
P2       | S5 (HtmlProgress)   | medium           | medium
P2       | S8 (PageCache)      | medium           | medium
P3       | S6 (FontCatalog)    | medium           | low
P3       | S7 (ColorScheme)    | medium           | medium
P3       | S9 (PreloadPolicy)  | medium           | low
P4       | S10 (Screen rewrite) | high             | high
P4       | S11 (androidTest)    | high             | high (RDR-01 ★)
P4       | S12 (Chrome bar shell)| high            | low
```

P1 — следующие два среза. Безопасны (один контроллер / одна policy, оба pure-Kotlin + Compose-обёртка). Запускаются параллельно в две параллельные ветки; merge-conflict опасность низкая (разные файлы).


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
3. ~~Выполнить ARC-09b с unit-тестами.~~ Сделано — см. ARC-09b ниже.
4. ~~Выполнить ARC-10 с unit-тестами.~~ Сделано — см. ARC-10 ниже.
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
- Срез 4 (коммит `6edea4c`): аудит `OpdsCatalogViewModel` (160 → 64 строки, feature-library): browse/search/download вынесены в `OpdsCatalogController` (opdsRepository + scope + `MutableStateFlow<OpdsCatalogUiState>`), `UiState` переехал в топ-левел `OpdsCatalogUiState`. VM — тонкая обвязка, публичное API сохранено. `OpdsCatalogControllerTest` (14 тестов: открытие каталога, стек навигации, goBack, next page, search/exitSearch, download-прогресс, error-пути).
- Портирование WIP OPDS/FB2 (2026-08-09, merge `wip/opds-fb2-2026-08-09`): незакоммиченная фича из основного ворктри перенесена на контроллерную обвязку. В `OpdsCatalogController`/`OpdsCatalogUiState`: очередь скачиваний `downloadedBooks` + `failedDownload`/`retry()`, дедуп по href, отмена feed-запросов (`feedRequestJob`) с обработкой `CancellationException`, сброс search-режима. Сопутствующее: `OpdsNetworkClient` — ретраи скачивания с backoff (до 3) и атомарный `.part`-файл; `OpdsRepository` — `buildOpdsSearchUrl` и уникальный id в имени файла; `Fb2FormatReader` — front-matter/cover-секции (обложка synopsis), фрагментные ссылки глав, `anchorPageMap`; i18n OPDS-строк и top bar. Новые тесты: `OpdsCatalogViewModelTest` (3, Robolectric), `OpdsRepositoryTest`, `OpdsNetworkIntegrationTest`, `Fb2FrontMatterTest`, `LibraryTopBarOpdsTest`; `OpdsCatalogControllerTest` обновлён под `downloadedBooks`.
- Проверка (2026-08-09): `testDebugUnitTest` feature-library (199) + core-data (33) + engine-formats (377) + detekt (0 smells) + `:app:compileDebugKotlin` — BUILD SUCCESSFUL.
- Ограничение (из AGENTS.md): один срез = один контроллер/политика + собственный unit-тест до подключения к ViewModel/UI.
