# Mr.Comic — Подробный анализ проекта

**Дата:** 2026-07-26  
**Ветка:** `main`  
**Последний коммит:** `d2ae2b2 refactor(P0-3): extract WebtoonDocumentBuilder fun interface for testability`  
**Анализатор:** Mavis (MiniMax Code)

---

## 1. Общие сведения

| Параметр | Значение |
|---|---|
| **Название** | Mr.Comic |
| **applicationId** | `io.leostrange.mrcomic` |
| **versionName** | `2.1.0` |
| **versionCode** | `2` |
| **compileSdk** | 37 |
| **targetSdk** | 35 |
| **minSdk** | 26 (Android 8.0) |
| **JDK** | 17 |
| **Kotlin** | 2.2.21 |
| **AGP** | 9.2.1 |
| **Compose BOM** | 2025.01.01 |
| **Hilt** | 2.59.2 |
| **Room** | 2.7.1 |
| **Readium** | 3.1.2 |

**Репозиторий:** https://github.com/Leostrange/Mr.Comic  
**Клон:** `C:\Users\xmeta\projects\Mr.Comic_fresh_clone`

---

## 2. Стек технологий

### 2.1 Язык и сборка

- **Kotlin** (2.2.21) — единственный язык исходников
- **Gradle Kotlin DSL** — `settings.gradle.kts` + `build.gradle.kts` per module
- **Version Catalog** — `gradle/libs.versions.toml` (единый источник версий)
- **KSP** (2.2.21-2.0.5) — для Room, Hilt и компиляторов аннотаций

### 2.2 UI

- **Jetpack Compose** (через BOM 2025.01.01)
- **Material 3** (`material3`, `material3-window-size-class`)
- **Material Icons Extended**
- **Navigation Compose** (2.9.8)
- **Accompanist** (0.36.0) — systemuicontroller, permissions
- **Lottie** (6.6.2) — анимации
- **ConstraintLayout Compose** (1.1.0)
- **Palette** (1.0.0) — извлечение цветов из обложек

### 2.3 Архитектура и DI

- **Hilt** (2.59.2) — dependency injection
- **Hilt Navigation Compose** (1.3.0)
- **Lifecycle** (2.10.0) — runtime-ktx, viewmodel-compose, runtime-compose
- **Activity Compose** (1.13.0)

### 2.4 Хранение данных

- **Room** (2.7.1) — runtime, ktx, compiler, migrations
- **DataStore Preferences** (1.2.1) — настройки и пресеты

### 2.5 Сеть и облачные сервисы

- **Retrofit** (3.0.0) + **OkHttp** (5.4.0) + logging-interceptor
- **Gson** (2.14.0)
- **Google Play Services Auth** (21.3.0)
- **Microsoft Identity Client (MSAL)** (5.3.0)
- **Google Drive API** (v3-rev20240521-2.0.0)
- **Google API Client Android** (2.7.0)

### 2.6 Медиа

- **Media3** (1.5.1) — exoplayer, UI, session (аудиокниги)
- **WebView** (WebKit 1.12.1) — текстовый ридер

### 2.7 Парсинг форматов

- **Zip4j** (2.11.5) — ZIP-архивы
- **Junrar** (7.5.5) — RAR
- **7-Zip-JBinding** (Release-16.02-2.03) — 7z
- **Commons Compress** (1.27.1) + **XZ** (1.9) — TAR, альтернативные архивы
- **libdjvu** (3.5.27-4) — DJVU
- **PDFBox Android** (2.0.27.0) — PDF
- **Commonmark** (0.27.0) + extensions — Markdown
- **Jsoup** (1.22.1) — HTML-парсинг
- **Mammoth** (1.8.0) — DOCX → HTML
- **Readium** (3.1.2) — shared, streamer, navigator (EPUB)

### 2.8 ML/OCR/Перевод

- **ML Kit Text Recognition** (16.0.1) — базовый + японский + китайский + корейский
- **ML Kit Translate** (17.0.3)
- **ML Kit Language ID** (17.0.6)

### 2.9 Изображения

- **Coil Compose** (2.7.0) — загрузка обложек

### 2.10 Статический анализ и тестирование

- **Detekt** (1.23.7)
- **JUnit 4** (4.13.2)
- **MockK** (1.14.11)
- **kotlinx-coroutines-test** (1.10.2)
- **AndroidX JUnit** (1.2.1)
- **Espresso** (3.6.1)

---

## 3. Архитектура модулей

### 3.1 Список модулей (16 штук)

| Модуль | Путь | Назначение |
|---|---|---|
| `:app` | `android/app` | Точка входа, навигация, корень DI |
| `:core-model` | `android/core-model` | Общие модели, enums, форматный каталог |
| `:core-data` | `android/core-data` | Room, DataStore, репозитории, миграции |
| `:core-domain` | `android/core-domain` | Бизнес-логика: аналитика, перевод, словарь |
| `:core-ui` | `android/core-ui` | Тема, дизайн-примитивы, общие Compose-компоненты |
| `:engine-api` | `android/engine-api` | Интерфейсы движков чтения (контрактный слой) |
| `:engine-formats` | `android/engine-formats` | Парсеры форматов, пагинация текста |
| `:engine-epub-readium` | `android/engine-epub-readium` | EPUB через Readium |
| `:engine-rendering` | `android/engine-rendering` | Битмап-кэш, предзагрузка, рендеринг страниц |
| `:engine-llm` | `android/engine-llm` | Интеграции LLM-провайдеров |
| `:engine-registry` | `android/engine-registry` | Регистрация движков чтения |
| `:feature-library` | `android/feature-library` | UI библиотеки, импорт, OPDS |
| `:feature-reader` | `android/feature-reader` | UI ридера, пагинация, управление, TTS |
| `:feature-settings` | `android/feature-settings` | UI настроек |
| `:feature-ocr` | `android/feature-ocr` | OCR-функциональность |
| `:feature-onboarding` | `android/feature-onboarding` | Онбординг |

### 3.2 Граф зависимостей

```
feature-*  ──→  core-domain / core-data / core-ui / engine-api  ──→  core-model
engine-*   ──→  engine-api / core-model  (движки НЕ зависят от feature-*)
app        ──→  связывает всё: навигация, корень DI
```

**Правила:**
1. `feature-*` зависят от `core-*`, `engine-api`, `engine-registry`.
2. `engine-*` зависят только от `engine-api` и `core-model`.
3. `core-*` не зависят от `feature-*` или `engine-*` (кроме `core-data` → `engine-api` для кэш-интерфейсов).
4. `app` связывает всё через Hilt-модули.

---

## 4. Размер проекта

### 4.1 Кодовая база

| Метрика | Значение |
|---|---|
| **Kotlin-файлов** | 608 |
| **Тестовых файлов** | ~170 |
| **Модулей** | 16 |

### 4.2 Крупнейшие директории (файлы .kt)

| Директория | Кол-во |
|---|---|
| `feature-reader/.../reader/ui/` | 55 |
| `feature-reader/.../reader/ui/` (tests) | 38 |
| `core-domain/.../domain/translation/` | 23 |
| `engine-formats/.../formats/djvu/` | 20 |
| `feature-library/.../library/` | 19 |
| `engine-formats/.../formats/text/` | 18 |
| `feature-settings/.../settings/ui/` | 17 |
| `core-model/.../core/model/` | 15 |
| `engine-formats/.../formats/epub/` | 15 (tests) |
| `core-data/.../core/data/db/` | 14 |
| `feature-library/.../library/` (tests) | 14 |

### 4.3 Тесты по модулям

| Модуль | Тестовых файлов |
|---|---|
| `feature-reader` | 54 |
| `engine-formats` | 48 |
| `core-domain` | 20 |
| `feature-library` | 16 |
| `core-model` | 9 |
| `app` | 7 |
| `core-data` | 4 |
| `engine-epub-readium` | 3 |
| `feature-ocr` | 3 |
| `feature-settings` | 3 |
| `engine-rendering` | 2 |
| `core-ui` | 1 |

**Покрытие:** `feature-reader` и `engine-formats` — наиболее тестируемые модули. `core-ui`, `engine-llm`, `engine-registry`, `feature-onboarding` — без тестов.

---

## 5. Поддержка форматов

### 5.1 Растровые (комиксы/манга)

| Формат | Парсер | Библиотека |
|---|---|---|
| CBZ/ZIP | `zip/` | Zip4j |
| CBR/RAR | `rar/` | Junrar |
| CB7/7Z | `sevenz/` | 7-Zip-JBinding |
| CBT/TAR | `tar/` | Commons Compress |
| PDF | `pdf/` | PDFBox Android |
| DJVU | `djvu/` | libdjvu |

### 5.2 Текстовые (книги)

| Формат | Парсер | Библиотека |
|---|---|---|
| EPUB | `epub/` + `engine-epub-readium` | Readium + собственный EpubFormatReader |
| FB2 | `fb2/` | Jsoup (XML → HTML) |
| TXT | `text/` | Собственный |
| HTML | `text/` | Jsoup |
| DOCX | `text/` | Mammoth (DOCX → HTML) |
| Markdown | `text/` | Commonmark |
| RTF | `text/` | Собственный |

### 5.3 Архивы с текстом

Текстовые форматы внутри архивов обрабатываются через `ArchiveDelegatingFormatReader` — определяет содержимое архива и делегирует на нужный форматный парсер.

### 5.4 Директории формат-парсеров

```
engine-formats/src/main/kotlin/.../formats/
├── archive/    — делегирование из архивов
├── base/       — FormatDetector, FormatFactory, FormatReader, UnifiedReaderCssBuilder
├── di/         — DI-модули
├── djvu/       — DJVU
├── epub/       — EPUB (дополнение к Readium)
├── fb2/        — FictionBook 2
├── folder/     — папки с изображениями
├── pdf/        — PDF
├── rar/        — RAR
├── sevenz/     — 7z
├── tar/        — TAR
├── text/       — TXT, HTML, DOCX, Markdown, RTF + пагинация
└── zip/        — ZIP
```

---

## 6. Архитектура ридера

### 6.1 Четыре пути рендеринга

1. **Raster paged** — CBZ, CBR, PDF, DJVU как bitmap-страницы
2. **Raster vertical** — Webtoon-режим для растрового контента
3. **Reflowable text pages** — EPUB, FB2, TXT, DOCX, HTML → WebView + CSS multi-column / JS-пагинация
4. **Reflowable vertical text** — Webtoon-режим для текста (scroll stitching)

**Критическое правило:** эти пути НЕ должны объединяться для уменьшения дублирования.

### 6.2 Pipeline текстового чтения

```
Файл
  → FormatDetector (определение формата)
  → FormatReader (парсинг → HTML-представление)
  → UnifiedReaderCssBuilder (единый CSS для всех текстовых форматов)
  → TextPaginator (разбивка на страницы, PAGE-режим)
  → ReaderPagedLayoutJs (JS-инъекция для layout в WebView)
  → WebView (отрисовка)
  → ReaderViewModel (state management, progress)
  → ReaderScreen (Compose UI)
```

### 6.3 Ключевые файлы reader-модуля

| Файл | Назначение |
|---|---|
| `ReaderViewModel.kt` | Главный ViewModel (~5000+ строк) |
| `ReaderScreen.kt` | Compose-экран ридера |
| `TextWebtoonSessionController.kt` | Webtoon-режим для текста |
| `ReaderPagedLayoutJs.kt` | JS-инъекции для page layout |
| `EpubProgressCalculator.kt` | Прогресс для EPUB |
| `TextBookSessionBridge.kt` | Bridging между text session и UI |
| `ReaderSessionCoordinator.kt` | Координация open/close/cancel |
| `TextReaderSession.kt` | Сессия текстового чтения |

### 6.4 Ключевые файлы engine-formats

| Файл | Назначение |
|---|---|
| `FormatDetector.kt` | Определение формата по MIME/magic bytes |
| `FormatFactory.kt` | Создание нужного FormatReader |
| `FormatReader.kt` | Базовый интерфейс |
| `UnifiedReaderCssBuilder.kt` | Единый CSS для всех текстовых форматов |
| `EpubFormatReader.kt` | EPUB-парсер |
| `EpubFootnoteParser.kt` | Парсинг сносок EPUB |
| `TextPaginator.kt` | Пагинация текста на страницы |

---

## 7. CI/CD

### 7.1 Workflow: Build & Test (`.github/workflows/build-apk.yml`)

**Триггеры:** push/PR в `main`, `workflow_dispatch`

| Job | Что делает | Timeout |
|---|---|---|
| `unit-tests` | `testDebugUnitTest` (все модули) | 30 min |
| `lint` | Detekt + Android Lint (`:app:lintDebug`) | 20 min |
| `build` | assembleDebug + assembleRelease (depends on unit-tests + lint) | 30 min |
| `python-scripts` | Smoke-test dictionary builders + FreeDict importer | 10 min |
| `instrumented-tests` | `connectedDebugAndroidTest` на эмуляторе API 34 x86_64 | 30 min |

### 7.2 Workflow: Release (`.github/workflows/release.yml`)

**Триггер:** push тега `v*`

- Debug + Release APK
- Signing через secrets (`KEYSTORE_BASE64`, `KEYSTORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`)
- Auto-changelog из git log
- GitHub Release с APK

### 7.3 Статический анализ

**Detekt** (1.23.7) — конфигурация не найдена в корне (нет `detekt.yml`). Используется дефолтная + baseline. Запускается отдельным job в CI.

---

## 8. Known Bugs и текущее состояние

### 8.1 P0 — критические (из `READER_BUG_ANALYSIS_2026-07-17.md`)

| ID | Описание | Файл | Статус |
|---|---|---|---|
| **P0-1** | TextPaginator не разбивает крупные блоки → пропуск страниц, обрезка текста | `TextPaginator.kt:62-71` | Требует фикса |
| **P0-2** | Смена пресета/темы перезагружает документ → белый экран на секунды | `ReaderScreen.kt:721` | Требует фикса |
| **P0-3** | O(N²)-пересборка HTML в Webtoon → лаги при подгрузке | `TextWebtoonSessionController.kt:54` | Частично исправлен (вынесен WebtoonDocumentBuilder) |

### 8.2 P1 — серьёзные

| ID | Описание | Файл |
|---|---|---|
| **P1-1** | Принудительный разрыв слов `word-wrap:break-word` в обёртке страниц | `TextPaginator.kt:117` |
| **P1-2** | Нет CSS для `.mrcomic-table-scroll` → таблицы в DOCX не отображаются | `UnifiedReaderCssBuilder.kt` |
| **P1-3** | Footnote popup обрезается если привязан ко дну экрана | `ReaderScreen.kt` |
| **P1-4** | Ложный 100% прогресс на обложке (книга не прочитана) | `ReaderViewModel.kt:shouldMarkCompleted` |
| **P1-5** | Вставка цифр вместо букв (Unicode normalization) | Text parser |
| **P1-6** | EpubProgressCalculator — плавающее среднее нестабильно | `EpubProgressCalculator.kt` (исправлен) |
| **P1-7** | Самовыделение текста при пролистывании в PAGE-режиме | WebView selection |

### 8.3 P2 — улучшения

| ID | Описание |
|---|---|
| **P2-1** | Сноски с цифрами не подсвечиваются как кликабельные в некоторых форматах |
| **P2-2** | Текстовые форматы в архиве грузятся медленно + тёмная палитра (наследие графического слоя) |
| **P2-3** | Некоторые сноски не открывают popup при нажатии |
| **P2-4** | Текст обрезается сверху и снизу на страницах с нестандартной высотой |

---

## 9. Активные задачи и планы

### 9.1 Корневые защищённые файлы

| Файл | Тип | Содержание |
|---|---|---|
| `ACTIVE_REMAINING_TASKS_2026-07-23.md` | Task list | P0/P1/P2 задачи, QA-сценарии |
| `READER_MASTER_BACKLOG.md` | Backlog | Главный backlog текстового ридера, NOW/P0/P1/P2 |
| `READER_BUG_ANALYSIS_2026-07-17.md` | Bug analysis | Карта багов с файлами и строками |
| `REFACTORING_CONTINUATION_GUIDE.md` | Guide | Порядок декомпозиции крупных файлов |
| `TASKLIST_00_MASTER_STRUCTURE.md` | Task list | Архитектурные задачи |
| `TASKLIST_01_READER_EXPERIENCE.md` | Task list | Reader UX |
| `TASKLIST_02_LIBRARY_GAMIFICATION.md` | Task list | Геймификация библиотеки |
| `TASKLIST_03_TRANSLATION_AI_TTS.md` | Task list | Перевод, AI, TTS |
| `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md` | Task list | Настройки, IA, локализация |
| `TASKLIST_05_PLATFORM_FOUNDATION.md` | Task list | Платформа, границы модулей |
| `EXTRACTION_TASKLIST.md` | Task list | Задачи на извлечение/декомпозицию |
| `PROJECT_CONTEXT_HANDOFF.md` | Handoff | Контекст проекта (5800+ строк, обновлён 2026-03-25) |
| `CODE_REVIEW_REPORT.md` | Report | Результаты code review |
| `READER_SETTINGS_SNAPSHOT_2026-03-25.md` | Snapshot | Снимок настроек ридера |
| `session-ses_13c0.md` | Session | Контекст сессии |

### 9.2 Docs/active

| Документ | Содержание |
|---|---|
| `AUDIT_2026-07-07.md` | Аудит проекта на 2026-07-07 |
| `AUDIT_2026-07-07_REMAINING.md` | Остатки аудита |
| `EPUB_DJVU_MIGRATION_TASKLIST.md` | Миграция EPUB/DJVU |
| `TRANSLATION_TASKLIST.md` | Задачи перевода |
| `TRANSLATION_MODULE_TZ.md` | Timezone-модуль перевода |
| `THIRD_PARTY_DICTIONARIES.md` | Сторонние словари |
| `SETTINGS_CAPABILITY_MAP.md` | Карта возможностей настроек |
| `READIUM_EPUB_DJVU_MIGRATION_PLAN.md` | План миграции на Readium |
| `READER_IMPORT_OPEN_PLAN.md` | План импорта/открытия |
| `QA_REGRESSION_CHECKLIST.md` | QA-чеклист |
| `LOCALIZATION_AUDIT.md` | Аудит локализации |
| `LIBRARY_BACKGROUND_PROMPT_PACK.md` | Промпты для генерации фона библиотеки |
| `LIBRARY_BACKGROUND_GENERATION_TZ.md` | TZ генерации фона |
| `FORMAT_SUPPORT_AUDIT_2026-03-27.md` | Аудит поддержки форматов |
| `DJVU_RENDERER_RESEARCH.md` | Исследование DJVU-рендера |

### 9.3 Planning

| Директория | Содержание |
|---|---|
| `.planning/2026-07-17-reader-stability/` | task_plan.md, progress.md, findings.md |

### 9.4 Последние коммиты (10 шт)

```
d2ae2b2 refactor(P0-3): extract WebtoonDocumentBuilder fun interface for testability
ca0fbd1 refactor(ARC-09b): extract detectArchiveContentFormat to ComicFormatDetector
df19421 feat(ARC-002c): expand ReaderNavigationPolicy tests — RTL, webtoon, edge cases
861851f fix(P1-6): EpubProgressCalculator — use stable estimate instead of floating average
3a97ba1 fix: P0+P1 bugs — paginator blocks, word-wrap, race condition, null safety
48dfd21 Fix repository project structure
7da7e1d feat(4.4): KMP shared module — commonMain interfaces + androidMain adapters
6ddfe02 docs(4.4): KMP migration plan — prerequisites done, plan documented
0597631 docs(4.3): add KDoc to public engine API interfaces
1cb904a refactor(4.2): move Room entities from core-model to core-data
```

**Тренд:** активная декомпозиция ReaderViewModel, исправление P0/P1 багов текстового ридера, рефакторинг архитектуры.

---

## 10. Git-состояние (working tree)

### 10.1 Изменённые файлы (M) — 14 файлов

| Модуль | Файл | Тип изменения |
|---|---|---|
| `core-data` | `build.gradle.kts` | Зависимости |
| `core-data` | `DictionaryRepository.kt` | Логика |
| `engine-formats` | `ArchiveDelegatingFormatReader.kt` | Делегирование |
| `engine-formats` | `FormatFactory.kt` | Детекция |
| `engine-formats` | `UnifiedReaderCssBuilder.kt` | CSS |
| `engine-formats` | `EpubFootnoteParser.kt` | Сноски EPUB |
| `engine-formats` | `EpubFormatReader.kt` | EPUB-парсер |
| `engine-formats` | `ArchiveDelegatingFormatReaderTest.kt` | Тест |
| `engine-formats` | `UnifiedReaderCssBuilderTest.kt` | Тест |
| `engine-formats` | `EpubCorpusSmokeTest.kt` | Smoke-тест |
| `engine-rendering` | `TieredBitmapCache.kt` | Кэш |
| `feature-reader` | `build.gradle.kts` | Зависимости |
| `feature-reader` | `EpubProgressCalculator.kt` | Прогресс |
| `feature-reader` | `ReaderPagedLayoutJs.kt` | JS-инъекции |

### 10.2 Новые файлы (??) — 5 файлов

| Модуль | Файл | Назначение |
|---|---|---|
| `AGENTS.md` | Корневой | Инструкции для агентов |
| `core-data` | `EpubManifestCacheAdapter.kt` | Кэш EPUB-манифеста |
| `core-data` | `EpubStructureCacheAdapter.kt` | Кэш структуры EPUB |
| `engine-api` | `EpubCacheStore.kt` | Интерфейс кэша EPUB |
| `feature-reader` | `src/androidTest/` | Instrumented-тесты |
| `scripts/harness/` | Проверки | check.ps1, verify-protected-files.ps1 |

**Незакоммиченные изменения** затрагивают 4 модуля: `core-data`, `engine-formats`, `engine-rendering`, `feature-reader`. Это активная работа над EPUB-кэшем, CSS-построителем, пагинацией и прогрессом.

---

## 11. Объём кода по слоям

### 11.1 Сводка по назначению

| Слой | Модули | Назначение | Тест-покрытие |
|---|---|---|---|
| **Presentation** | `feature-reader`, `feature-library`, `feature-settings`, `feature-ocr`, `feature-onboarding` | Compose UI | 54+16+3+3+0 = 76 файлов |
| **Domain** | `core-domain` | Use cases, аналитика, перевод | 20 файлов |
| **Data** | `core-data` | Room, DataStore, репозитории | 4 файла |
| **Engine** | `engine-api`, `engine-formats`, `engine-epub-readium`, `engine-rendering`, `engine-llm`, `engine-registry` | Форматы, рендеринг | 48+3+2+0+0+0 = 53 файла |
| **Model** | `core-model` | Модели, enums | 9 файлов |
| **UI Kit** | `core-ui` | Дизайн-система | 1 файл |

### 11.2 Hotspot-файлы (крупнейшие)

| Файл | ~Строк | Проблема |
|---|---|---|
| `ReaderViewModel.kt` | 5000+ | God-object, требует декомпозиции |
| `ReaderScreen.kt` | 3000+ | Смешивает WebView bridge, chrome, footnote popup |
| `PROJECT_CONTEXT_HANDOFF.md` | 5800+ | Слишком большой для handoff |
| `ReflowableDocument.kt` | 892 | Kotlin-side пагинация вместо CSS |

---

## 12. Сравнение с аналогами

| Проект | Язык | Что взять для Mr.Comic |
|---|---|---|
| **Foliate / foliate-js** | JS | CSS multi-column пагинация, footnote popups |
| **Readest** | Next.js | Split-view, reflow с cached layout |
| **epub.js** | JS | CFI → page index mapping |
| **Koodo-Reader** (27k ⭐) | Electron | EPUB/PDF/MOBI/FB2/DOCX, `.table-scroll` CSS |
| **FBReader / ZLibrary** | Java | Ручная пагинация через char metrics |
| **Anx Reader** | Flutter | Column-count, sideMargin, topMargin — для Compose-стилей |

---

## 13. Риски и технический долг

### 13.1 Критические

1. **ReaderViewModel** — God-object 5000+ строк. Декомпозиция начата (policies, coordinators), но основной файл ещё слишком велик.
2. **Kotlin-side пагинация** — `TextPaginator` оценивает высоту через `charsPerPage`, а не замеряет реальный WebView → пропуски и обрезки. Foliate/epub.js решают это через CSS multi-column.
3. **O(N²) пересборка HTML** в Webtoon — начат рефакторинг (WebtoonDocumentBuilder), но не завершён.
4. **Отсутствие detekt.yml** в корне — используется дефолтная конфигурация.

### 13.2 Серьёзные

5. **Незакоммиченные изменения** — 14 файлов модифицированы + 5 новых. Требуют коммита или stash перед переключением веток.
6. **PROJECT_CONTEXT_HANDOFF.md** — 5800+ строк. Слишком большой, содержит устаревшую информацию (март 2026). Требует обрезки.
7. **`shared/` модуль** — KMP-заготовка была удалена из репозитория при очистке (в `settings.gradle.kts` осталось 16 модулей); CHANGELOG по-прежнему упоминает её как исторический факт версии 2.2.0.
8. **`engine-llm`** — модуль существует, но LLM-функции заглушены/не завершены.

### 13.3 Умеренные

9. **11 модулей без тестов** — `core-ui`, `engine-llm`, `engine-registry`, `feature-onboarding` и др.
10. **Нет UI-тестов** в CI — instrumented tests есть, но Compose UI-тесты отсутствуют.
11. **Readium 3.1.2** — может потребоваться обновление при появлении багов upstream.

---

## 14. Структура harness

### 14.1 Текущая

```
AGENTS.md                              — корневые инструкции (полностью заполнены)
.agents/
├── README.md                          — индекс
├── architecture.md                    — карта модулей
├── commands.md                        — build/test команды
├── protected-files.md                 — список защищённых файлов
├── report-template.md                 — шаблон отчёта
├── workflows/
│   ├── reader-bug.md
│   ├── format-support.md
│   ├── ui-change.md
│   ├── refactoring.md
│   └── harness-maintenance.md
└── skills/                            — 25+ навыков
    ├── android-architecture-clean/
    ├── android-compose-foundations/
    ├── android-coroutines-flow/
    ├── android-di-hilt/
    ├── android-gradle-build-logic/
    ├── android-kotlin-core/
    ├── android-networking-retrofit-okhttp/
    ├── android-reverse-engineering/
    ├── android-testing-unit/
    ├── supergoal/
    ├── planning-with-files/
    ├── test-driven-development/
    ├── ponytail/ (4 mode)
    └── ...

.harness/skills/
└── reader-bug-cookbook/               — cookbook для багов ридера
    ├── SKILL.md
    └── references/ (9 файлов)

scripts/harness/
├── check.ps1                          — единый скрипт проверки
├── verify-protected-files.ps1         — проверка защищённых файлов
└── README.md

.harness-backup/2026-07-26_12-00-00/   — резервная копия (100+ файлов)
```

### 14.2 Что уже есть vs. что требуется по инструкции

| Компонент | Статус | Примечание |
|---|---|---|
| AGENTS.md | ✅ Готов | Полностью заполнен по шаблону |
| .agents/README.md | ✅ Готов | |
| .agents/architecture.md | ✅ Готов | |
| .agents/commands.md | ✅ Готов | + verification matrix |
| .agents/protected-files.md | ✅ Готов | |
| .agents/report-template.md | ✅ Готов | |
| .agents/workflows/*.md | ✅ Готовы | 5 workflow |
| scripts/harness/check.ps1 | ✅ Готов | |
| scripts/harness/verify-protected-files.ps1 | ✅ Готов | |
| .harness/skills/reader-bug-cookbook/ | ✅ Готов | Из предыдущей сессии |
| Local AGENTS (per-module) | ⚠️ Не созданы | `feature-reader/AGENTS.md` и др. не существуют |
| detekt.yml | ⚠️ Отсутствует | Дефолтная конфигурация |
| .gitignore для .harness-backup/ | ❓ Не проверено | |

---

## 15. Рекомендации

### 15.1 Immediate (неделя)

1. **Закоммитить незакоммиченные изменения** — 14 modified + 5 new файлов. Разбить на логические коммиты: EPUB cache, CSS builder fixes, progress calculator, scripts.
2. **Закрыть P0-1** — перейти на CSS multi-column пагинацию для текстовых форматов или хотя бы добавить рекурсивное разбиение крупных блоков в TextPaginator.
3. **Закрыть P0-2** — применять цвета через `evaluateJavascript` CSS-патч, а не через полную перезагрузку документа.

### 15.2 Short-term (2-4 недели)

4. **Декомпозировать ReaderViewModel** — продолжить вынос в `ReaderSessionCoordinator`, `ReaderStylePresetReducer`, отдельные use-case-классы.
5. **Добавить CSS для таблиц** — `.mrcomic-table-scroll` в UnifiedReaderCssBuilder.
6. **Добавить local AGENTS.md** для `feature-reader` и `engine-formats` — наиболее критичные модули с наибольшим числом правил.
7. **Обновить PROJECT_CONTEXT_HANDOFF.md** — сократить до актуальных 500 строк, архивировать старые разделы.

### 15.3 Medium-term (1-2 месяца)

8. **Замер реальных размеров в WebView** — для корректной пагинации вместо `charsPerPage`-эвристики.
9. **Покрыть тестами** `engine-rendering`, `feature-onboarding`, `core-ui`.
10. **Добавить Compose UI-тесты** в CI pipeline.
11. **Завершить WebtoonDocumentBuilder** — инкрементальная доставка HTML без O(N²) пересборки.

---

## 16. Итоговая оценка

| Критерий | Оценка | Комментарий |
|---|---|---|
| **Архитектура** | 🟢 Хорошо | Чёткие границы модулей, правильная layering |
| **Код** | 🟡 Средне | ReaderViewModel перегружен, TextPaginator эвристичен |
| **Тесты** | 🟡 Средне | 170 тестовых файлов, но покрытие неравномерное |
| **CI/CD** | 🟢 Хорошо | Юнит + линт + инструментированные + релиз |
| **Документация** | 🟢 Хорошо | Много документов, но часть устарела |
| **Harness** | 🟢 Хорошо | Полная система инструкций + workflow + скрипты |
| **Известные баги** | 🔴 Критично | 3 P0-бага в текстовом ридере |
| **Тех. долг** | 🟡 Средне | Незакоммиченные изменения, крупные файлы |

**Главный вывод:** проект архитектурно зрелый, с хорошей CI и проработанной harness-системой. Основная точка боли — текстовый ридер (PAGE-режим): 3 P0-бага и несколько P1, которые блокируют релиз. Декомпозиция ReaderViewModel начата и движется в правильном направлении.
