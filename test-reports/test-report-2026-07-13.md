# Mr.Comic — Отчёт всестороннего тестирования

**Дата:** 2026-07-13
**Ветка:** `feat/explain-engine-online-local`
**Коммит:** HEAD (после `8cebf9a`)
**Среда:** Windows 10, JDK 21, Gradle 9.4.1, Android SDK 35

---

## 1. Сводка результатов

| Этап | Модуль | Тестов | Pass | Fail | Errors | Статус |
|------|--------|-------:|-----:|-----:|-------:|--------|
| 1 | Static Analysis (lint) | — | — | — | 49 errors | ⚠️ |
| 2 | engine-formats | 175 | 175 | 0 | 0 | ✅ |
| 3 | feature-reader | 164 | 164 | 0 | 0 | ✅ |
| 4 | app | 28 | 28 | 0 | 0 | ✅ |
| 5 | core-model | 28 | 28 | 0 | 0 | ✅ |
| 5 | core-data | 6 | 6 | 0 | 0 | ✅ |
| 5 | core-domain | 134 | 134 | 0 | 0 | ✅ |
| 6 | core-ui | 5 | 5 | 0 | 0 | ✅ |
| 6 | engine-epub-readium | 37 | 37 | 0 | 0 | ✅ |
| 6 | engine-rendering | 14 | 14 | 0 | 0 | ✅ |
| **Итого** | | **591** | **591** | **0** | **0** | **✅** |

**Все 591 unit-тестов прошли без единого failure.**

---

## 2. Static Analysis (lint) — 49 errors, 517 warnings

### 2.1. Критические ошибки (P0)

| # | Файл | Ошибка | Тип |
|---|------|--------|-----|
| 1 | `themes.xml:20` | `android:windowLayoutInDisplayCutoutMode` requires API 27, minSdk=26 | NewApi |
| 2 | `MainActivity.kt:467` | `takePersistableUriPermission` — неверный флаг | WrongConstant |
| 3 | `gradle.properties:5` | Windows path separators не экранированы | PropertyEscape |

**Риск:** Ошибка #1 может вызвать crash на API 26 устройствах при использовании cutout mode.
Ошибка #2 — неправильные URI permissions могут привести к потере доступа к файлам.

### 2.2. Локализация (P1) — 46 MissingTranslation

46 строковых ресурсов не переведены на русский язык. Основные категории:
- Иконки приложения (`icon_classic`, `icon_dark`, `icon_bright`, и т.д.)
- Ошибки (`error_open`, `error_format`, `error_permission`, `error_generic`)
- Онбординг (`skip`, `start`, `splash_subtitle`)
- Действия (`action_copy`, `action_share`, `share`, `delete`)

**Риск:** Русскоязычные пользователи увидят английский текст в ключевых местах UI.

### 2.3. Безопасность (P1)

| # | Файл | Описание |
|---|------|----------|
| 1 | `AndroidManifest.xml:387` | **ExportedService без permission** — любой компонент может bind к сервису |

### 2.4. Доступность (P2) — 3 ContentDescription

| # | Файл | Описание |
|---|------|----------|
| 1 | `activity_comic_reader.xml:33` | ImageView без contentDescription |
| 2 | `item_comic_page.xml:2` | ImageView без contentDescription |
| 3 | `list_item_comic.xml:9` | ImageView без contentDescription |

**Риск:** TalkBack не сможет описать изображения слабовидящим пользователям.

### 2.5. Прочие предупреждения

| Категория | Кол-во | Серьёзность |
|-----------|--------|-------------|
| IconLauncherShape | 178 | P3 — косметика |
| UnusedResources | 141 | P3 — мёртвый код |
| IconDuplicates | 45 | P3 — дубликаты |
| IntentFilterUniqueDataAttributes | 40 | P3 — стиль XML |
| NewerVersionAvailable | 25 | P3 — зависимости |
| HardcodedText | 22 | P2 — локализация |
| GradleDependency | 21 | P2 — устаревшие зависимости |
| CustomSplashScreen | 2 | P2 — Android 12+ |
| SmallSp (10sp) | 1 | P2 — доступность |
| ButtonStyle | 2 | P3 — стиль |

---

## 3. Unit-тесты по модулям

### 3.1. engine-formats (175 тестов) ✅

Ключевые тест-классы и покрытие:

| Тест | Покрываемая область из документа |
|------|--------------------------------|
| `FormatDetectorTest` (6) | FM-01: определение формата по содержимому |
| `ArchiveFormatSupportTest` (12) | FM-02: архивы (ZIP, RAR, 7Z, path traversal) |
| `ArchiveDelegatingFormatReaderTest` (1) | FM-02: делегирование архивов |
| `FormatFactoryArchivePathTest` (3) | FM-02: вложенные пути в архивах |
| `UnifiedReaderCssBuilderTest` (20) | TY-01, TY-02: CSS-настройки, типографика |
| `EpubCorpusSmokeTest` (19) | PG-01–PG-06: пагинация EPUB |
| `EpubChunkingTest` (5) | PG-01: разбиение на страницы |
| `EpubFootnoteParserTest` (3) | FN-01: парсинг сносок EPUB |
| `EpubCssSanitizationTest` (2) | TY-02: санитизация CSS книги |
| `EpubSpineMergeTest` (5) | PG-06: межглавные переходы |
| `EpubCloseDeadlockTest` (1) | P0: deadlock при закрытии |
| `EpubFallbackTest` (1) | FM-01: fallback при повреждении |
| `EpubInlineSanitizerTest` (2) | TY-02: инлайн-санитизация |
| `DjvuCorpusSmokeTest` (3) | PDF/DjVu: базовый smoke |
| `DjvuAnnotationsTest` (3) | PDF/DjVu: аннотации DjVu |
| `DjvuPageDocumentBuilderTest` (3) | PDF/DjVu: построение страниц |
| `DjvuTextLayerTest` (3) | PDF/DjVu: текстовый слой |
| `TextDecodingTest` (5) | FM-03: кодировки TXT |
| `TextDecodeMojibakeTest` (4) | FM-03: восстановление mojibake |
| `TextChapterDetectionTest` (3) | PG-06: определение глав |
| `TextRealFileSmokeTest` (27) | FM-01–FM-04: smoke-тесты реальных файлов |
| `DocumentTextPaginatorTest` (3) | PG-01: пагинация текста |
| `LayoutUnitTextPaginatorTest` (2) | PG-01: layout-based пагинация |

### 3.2. feature-reader (164 теста) ✅

| Тест | Покрываемая область из документа |
|------|--------------------------------|
| `FootnotePatternTest` (8) | FN-01: распознавание паттернов сносок |
| `InjectBodyInsetCssTest` (9) | IN-01, IN-02: верхний/нижний inset |
| `ReaderAnchorNormalizationTest` (8) | PR-01: нормализация якорей позиции |
| `ReaderContentPolicyTest` (15) | PG-05: политика контента при изменении |
| `ReaderHtmlCssJsTest` (35) | TY-01–TY-05: HTML/CSS/JS рендеринг |
| `ReaderInteractionPolicyTest` (18) | NV-01–NV-04: жесты, tap zones, back |
| `ReaderProgressPolicyTest` (20) | PR-01–PR-04: прогресс и позиция |
| `ReaderStyleJsonExchangeTest` (9) | TY-01: обмен стилями |
| `TextPagePaginationControllerTest` (2) | PG-01: контроллер пагинации |
| `TextReaderControllerConcurrencyTest` (2) | P0: конкурентность контроллера |
| `TextReaderNavigationTest` (3) | NV-01: навигация ридера |
| `TextTocSanitizerTest` (3) | FN-01: санитизация оглавления |
| `TextWebtoonDocumentBuilderTest` (7) | CM-05: webtoon-документы |
| `EpubProgressCalculatorTest` (2) | PR-01: калькулятор прогресса EPUB |
| `ReaderTranslationAvailabilityPolicyTest` (3) | Agent E: перевод |
| `ReaderTtsPolicyTest` (3) | Agent H: TTS |

### 3.3. core-model (28 тестов) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `ComicFormatGraphicReaderFormatTest` (4) | CM-01: форматы графических ридеров |
| `ComicFormatReflowableClassificationTest` (3) | FM-01: классификация форматов |
| `ReaderFormatCatalogTest` (5) | FM-01: каталог форматов |
| `ReaderInteractionConfigTest` (3) | NV-01: конфигурация взаимодействия |

### 3.4. core-data (6 тестов) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `ComicsMigrationCoverageTest` (4) | PR-01: миграции БД, сохранность данных |
| `QuoteRepositoryTest` (2) | Agent E: цитаты |

### 3.5. core-domain (134 теста) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `DailyReadingGoalPolicyTest` (29) | Agent G: аналитика чтения |
| `MascotProgressCalculatorTest` (8) | PR-01: прогресс |
| `TranslationRoutingModelsTest` (10) | Agent E: маршрутизация перевода |
| `QuickDictionaryEngineTest` (9) | Agent E: словарь |
| `SafeLlmExplainEngineTest` (4) | Agent E: LLM-объяснения |
| `SaveReadingProgressUseCaseTest` (5) | PR-01–PR-04: сохранение прогресса |
| `ScanFolderUseCaseTest` (4) | FM-04: сканирование папок |
| `ResultTest` (17) | Инфраструктура: Result-монада |

### 3.6. core-ui (5 тестов) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `ThemeColorIsolationTest` (5) | VS-01–VS-03: изоляция цветов темы |

### 3.7. engine-epub-readium (37 тестов) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `ReadiumEpubEnginePolicyTest` (20) | PG-01–PG-06: политики EPUB-движка |
| `ReadiumNavigatorBridgeTest` (16) | NV-01: бридж навигатора Readium |
| `LegacyFallbackEpubBookSessionTest` (1) | FM-01: legacy fallback |

### 3.8. engine-rendering (14 тестов) ✅

| Тест | Покрываемая область |
|------|---------------------|
| `BitmapPoolTest` (10) | PF-02: пул bitmap, управление памятью |
| `StartupOptimizerTest` (4) | PF-01: оптимизация холодного старта |

---

## 4. Покрытие по агентам из документа

| Агент | Область | Покрыт тестами | Комментарий |
|-------|---------|----------------|-------------|
| **A** — Текстовый рендеринг | EPUB, FB2, MOBI, DOCX, TXT, HTML | ✅ Частично | CssBuilder, TextDecoding, Mojibake, HtmlSupport, MarkdownSupport |
| **B** — Пагинация | Страницы, переходы, позиция | ✅ Частично | Paginator, ProgressPolicy, AnchorNormalization, Chunking |
| **C** — Комиксы, PDF, DjVu | Страницы, RTL, webtoon, zoom | ✅ Частично | DjvuSmoke, DjvuAnnotations, WebtoonDocBuilder |
| **D** — UI, inset'ы | Status bar, navigation bar, cutout | ✅ Частично | InjectBodyInsetCss (9 тестов) |
| **E** — Сноски, ссылки | Footnotes, popup, выделение | ✅ Частично | FootnotePattern, TranslationRouting |
| **F** — Форматы, импорт | MIME, архивы, кодировки | ✅ Хорошо | FormatDetector, ArchiveSupport, TextDecoding (27 smoke-тестов) |
| **G** — Производительность | FPS, память, startup | ✅ Частично | BitmapPool, StartupOptimizer |
| **H** — Доступность | TalkBack, контраст | ⚠️ Слабо | Только ThemeColorIsolation (5 тестов) |

---

## 5. Рекомендации по приоритету

### P0 — Исправить немедленно

1. **`themes.xml:20`** — `windowLayoutInDisplayCutoutMode` на API 26 → вынести в `values-v27`
2. **`MainActivity.kt:467`** — WrongConstant в `takePersistableUriPermission` → проверить флаги
3. **ExportedService** — добавить `android:permission` или `exported="false"`

### P1 — Исправить до релиза

4. **46 MissingTranslation** — добавить русские переводы
5. **3 ContentDescription** — добавить описания для TalkBack
6. **22 HardcodedText** — вынести в strings.xml
7. **21 GradleDependency** — обновить зависимости
8. **2 CustomSplashScreen** — мигрировать на Android 12 SplashScreen API

### P2 — Улучшить

9. **SmallSp (10sp)** — увеличить до ≥11sp
10. **141 UnusedResources** — удалить неиспользуемые ресурсы
11. **PropertyEscape** — испранировать `gradle.properties`

---

## 6. Что НЕ покрыто автоматическими тестами

Следующие области из документа требуют **ручного тестирования** или **instrumentation-тестов**:

- Визуальная проверка (golden screenshots, белая вспышка) — VS-01, VS-02
- Жесты на реальном устройстве (pinch zoom, tap zones) — CM-04, NV-01
- TalkBack и accessibility на устройстве — Agent H
- Process death и восстановление — PR-02
- Конкурентное открытие книг — PF-03
- Macrobenchmark — PF-01
- Memory stress test (50 книг) — PF-02
- Реальные файлы повреждённых EPUB/PDF — FM-02
- Landscape, foldable, планшет — матрица устройств

---

## 7. Файлы отчёта

Все артефакты сохранены в `test-reports/`:

```
test-reports/
├── test-report-2026-07-13.md     ← этот файл
├── lint-results.txt               ← полный lint-отчёт
├── app-tests/                     ← JUnit XML app
├── core-model-tests/              ← JUnit XML core-model
├── core-data-tests/               ← JUnit XML core-data
├── core-domain-tests/             ← JUnit XML core-domain
├── core-ui-tests/                 ← JUnit XML core-ui
├── engine-formats-tests/          ← JUnit XML engine-formats
├── engine-epub-readium-tests/     ← JUnit XML engine-epub-readium
├── engine-rendering-tests/        ← JUnit XML engine-rendering
└── feature-reader-tests/          ← JUnit XML feature-reader
```
