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

