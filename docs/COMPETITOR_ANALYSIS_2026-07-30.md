# Конкурентный анализ: ReadEra Premium vs Moon+ Reader vs Mr.Comic

**Дата**: 2026-07-30
**Версии**: ReadEra Premium 26.04.04, Moon+ Reader Pro 10.5, Mr.Comic 2.2.0

---

## 1. Общая архитектура

| Критерий | ReadEra | Moon+ Reader | Mr.Comic |
|----------|---------|-------------|----------|
| Язык | Java (полная обфускация R8) | Java (314 файлов, без обфускации приложения) | Kotlin + Jetpack Compose |
| Архитектура | Неизвестна (обфусцирована) | Наследование: `BaseEBook` → форматные классы | Clean Architecture: engine-api / engine-formats / feature-reader |
| UI фреймворк | View-based (обфусцирован) | View-based (`MRTextView`, `MyLayout`, кастомный `ViewPager`) | Jetpack Compose + Material 3 |
| DI | Не определён (обфускация) | Нет (singleton/static) | Hilt |
| Хранение | Не определён | SQLite + SharedPreferences | Room + DataStore |
| Сеть | OkHttp3 | OkHttp3, WebDAV, OPDS | Retrofit + OkHttp |

---

## 2. Поддержка форматов

| Формат | ReadEra | Moon+ | Mr.Comic |
|--------|---------|-------|----------|
| EPUB | ✅ | ✅ `Epub.java` (2688 строк) | ✅ `EpubFormatReader` |
| FB2 | ✅ | ✅ `Fb2.java` | ✅ |
| FB3 | ✅ | ❌ | ❌ |
| PDF | ✅ | ✅ `PDFReader.java` | ✅ |
| MOBI | ✅ | ✅ (через `isMobi` флаг) | ❌ |
| AZW/AZW3 | ✅ | ❌ | ❌ |
| DjVu | ✅ (JNI, кастомный рендер) | ❌ | ✅ (StructuredDjvuBackend) |
| DOC/DOCX | ✅ | ❌ | ✅ (TextFormatReader) |
| ODT | ✅ | ❌ | ✅ |
| RTF | ✅ | ❌ | ✅ |
| CHM | ✅ | ✅ (chmlib, 34 файла) | ❌ |
| TXT | ✅ | ✅ | ✅ |
| HTML | ❌ (не в enum) | ✅ | ✅ |
| Markdown | ❌ | ✅ (Flexmark) | ✅ |
| CBR | ✅ | ❌ | ✅ |
| CBZ | ✅ | ❌ | ✅ |
| **Итого** | **16** | **~8** | **~15** |

### Вывод по форматам:
- **ReadEra** — лидер по количеству (16 форматов), включая нишевые FB3, AZW, CHM
- **Mr.Comic** — близко (15 форматов), добавляет HTML/Markdown/DOCX/ODT, но нет MOBI/AZW/CHM/FB3
- **Moon+** — минималист (~8), фокус на EPUB/FB2/PDF/TXT

---

## 3. Система форматов (архитектурное сравнение)

### ReadEra: Единый enum с битовыми флагами
```java
// y9/o.java — Format enum
EPUB(".epub", 4225, 10, 1),   // биты: 10000100001
PDF(".pdf", 520, 30, 3),      // биты: 1000001000
CBR(".cbr", 1, 130, 19),      // биты: 1
DJVU(".djvu", 4, 50, 5, 5),  // биты: 100
```
- Каждый формат имеет битовые флаги возможностей
- `g()` → является ли CBR/CBZ (комикс)
- `h()` → является ли DOC/DOCX/ODT/RTF (документ)
- Флаги управляют UI и рендерингом

**Плюс**: компактно, легко добавлять форматы
**Минус**: жёсткая привязка, сложная логика

### Moon+: Наследование
```java
BaseEBook → Epub, Fb2, PDFReader
// Каждый формат — отдельный класс с override методами
```
- `Chapter` — внутренний класс с HTML/CSS
- `MAX_HTML_SIZE = 1_000_000` — лимит на главу

**Плюс**: понятно, изолированно
**Минус**: дублирование, не масштабируется (новый формат = новый класс наследник)

### Mr.Comic: Engine API + FormatReader
```
engine-api → FormatReader interface
engine-formats → EpubFormatReader, PdfFormatReader, DjvuFormatReader, ...
```
- Каждый формат реализует `FormatReader`
- `FormatFactory` — фабрика с маршрутизацией по `ComicFormat`
- Декомпозиция: каждый reader разбит на модули (EpubHtmlChunker, EpubArchiveManager, ...)

**Плюс**: чистая изоляция, легко тестируется, масштабируется
**Минус**: больше кода

---

## 4. Рендеринг

| Аспект | ReadEra | Moon+ | Mr.Comic |
|--------|---------|-------|----------|
| Текст | Обфусцирован | `MRTextView` + `MyLayout` + `SoftHyphenStaticLayout` | WebView (HTML) + `TextContainer` (Compose) |
| Изображения | Неизвестно | `picview` (15 файлов) | `BitmapImage` / `Canvas` / `PagePreloader` |
| Пагинация | Неизвестно | `MAX_HTML_SIZE` + разделение на страницы | `TextPaginator` + `EpubHtmlChunker` |
| WEBTOON | Неизвестно | Не поддерживается | ✅ Вертикальный скролл с IntersectionObserver |
| Zoom | Неизвестно | `GoogleBook3D` (3D-эффект) | Двухуровневый (low-res → high-res) |

### Ключевое отличие Mr.Comic:
- **4 пути рендеринга**: raster paged, raster vertical, reflowable text, reflowable vertical
- **WEBTOON mode** — уникальная фича среди трёх
- **Декомпозиция рендеринга**: `HtmlPageView` (831 строка), `PageView`, `WebtoonView`, `TextContainer`

---

## 5. Библиотеки

| Библиотека | ReadEra | Moon+ | Mr.Comic |
|------------|---------|-------|----------|
| OkHttp3 | ✅ | ✅ | ✅ (через Retrofit) |
| Firebase | ✅ (Analytics, Crashlytics, Auth, Storage) | ❌ | ❌ |
| Jackson JSON | ✅ | ❌ | ❌ |
| Gson | ✅ | ❌ | ❌ |
| Auth0 JWT | ✅ | ❌ | ❌ |
| Google Drive API | ✅ | ❌ | ❌ |
| Flexmark (Markdown) | ❌ | ✅ | ✅ |
| AndroidSVG | ❌ | ✅ (полный SVG рендер) | ❌ |
| jsoup | ❌ | ❌ | ✅ (EPUB OPF парсинг) |
| zip4j | ❌ | ❌ | ✅ |
| Readium | ❌ | ❌ | ✅ (EPUB через Readium) |
| Apache Commons Compress | ✅ | ❌ | ❌ |
| Apache PdfBox | Неизвестно | ❌ | ✅ |

---

## 6. Ключевые фичи

| Фича | ReadEra | Moon+ | Mr.Comic |
|------|---------|-------|----------|
| Закладки | ✅ (обфусцировано) | ✅ `BookmarkItem` | ✅ `ReaderBookmarkController` |
| Выделение текста | ✅ | ✅ | ✅ `ReaderHighlightController` |
| Перевод | ✅ (обфусцировано) | ✅ (через внешние сервисы) | ✅ `ReaderTranslationController` (online/offline/dictionary/LLM) |
| TTS | ✅ | ✅ `BookTtsService` | ✅ `ReaderTextToSpeechController` |
| OCR | Неизвестно | ❌ | ✅ `ReaderOcrController` |
| Footnotes | ✅ | ✅ (CSS-based) | ✅ `ReaderFootnoteController` |
| TOC | ✅ | ✅ `PrefChapters` | ✅ |
| Eye Rest | Неизвестно | ❌ | ✅ `ReaderEyeRestController` |
| Аудиокниги | ❌ | ❌ | ✅ `ReaderAudioSheet` |
| OPDS | ❌ | ✅ (8 файлов) | ❌ |
| Cloud sync | ✅ (Google Drive) | ✅ (WebDAV, 6 файлов) | ❌ |
| 3D page turn | ❌ | ✅ `GoogleBook3D` | ❌ |
| Кастомные стили | ✅ | ✅ (CSS) | ✅ (reader presets + custom colors) |
| Night mode | ✅ | ✅ | ✅ |

---

## 7. Что Mr.Comic делает ЛУЧШЕ

### 7.1 Архитектура
- **Clean Architecture** с чёткими границами модулей
- **Контроллерная декомпозиция**: 16 контроллеров в VM, каждый со своей ответственностью
- **Engine API**: форматные reader'ы полностью изолированы от UI
- **Тестируемость**: unit-тесты для каждого контроллера и engine

### 7.2 Технологии
- **Jetpack Compose** — современный декларативный UI
- **Material 3** — актуальный дизайн
- **Hilt** — proper DI
- **Room + DataStore** — современное хранение
- **Coroutines + Flow** — реактивная модель

### 7.3 Уникальные фичи
- **WEBTOON mode** — вертикальный скролл для манхва/манги
- **LLM объяснения** — AI-powered подсказки
- **OCR** — распознавание текста со страниц
- **Аудиокниги** — встроенный плеер
- **Eye Rest** — напоминания об отдыхе глаз
- **Кастомные reader presets** — стилизация чтения

### 7.4 Качество кода
- Декомпозиция: ReaderViewModel 3644→799 строк (−78%)
- 80 файлов в reader UI, каждый <1000 строк
- Чистые импорты (190 мёртвых удалено)
- Нет мёртвых модулей

---

## 8. Что Mr.Comic может ПОЗАИМСТВОВАТЬ

### 8.1 От ReadEra:
1. **Единый Format enum с битовыми флагами** — компактнее чем текущий `ComicFormat` enum
2. **Firebase Crashlytics** — мониторинг крашей в продакшене
3. **Cloud sync** (Google Drive/Dropbox) — синхронизация прогресса между устройствами
4. **MOBI/AZW3 поддержка** — расширение охвата
5. **CHM поддержка** — нишевый но востребованный формат
6. **FB3 поддержка** — русскоязычный рынок

### 8.2 От Moon+ Reader:
1. **OPDS каталоги** — доступ к онлайн-библиотекам (Calibre, Project Gutenberg)
2. **SVG рендеринг** — для EPUB с SVG-иллюстрациями (сейчас через WebView)
3. **3D page turn** — визуальный эффект перелистывания
4. **WebDAV sync** — альтернатива cloud sync
5. **CSS engine** (`CSS.java`) — более полная поддержка CSS в EPUB
6. **Markdown через Flexmark** — уже есть в Mr.Comic, но Moon+ использует его глубже

### 8.3 Архитектурные идеи:
1. **ReadEra's bit flags** — можно добавить в `ComicFormat` для управления UI без when-блоков
2. **Moon+ Chapter model** — внутренний класс с CSS/metadata, похож на Mr.Comic's `CachedHtmlPage`
3. **ReadEra's JNI для DjVu** — Mr.Comic использует StructuredDjvuBackend, что аналогично

---

## 9. Roadmap рекомендации на основе анализа

### Приоритет 1 (P0 — расширение охвата):
- [ ] MOBI/AZW3 поддержка (ReadEra показывает что это востребовано)
- [ ] OPDS каталоги (Moon+ — сильная фича для book lovers)

### Приоритет 2 (P1 — улучшение UX):
- [ ] Cloud sync (Google Drive / WebDAV)
- [ ] Firebase Crashlytics (мониторинг стабильности)
- [ ] Улучшенный CSS engine для EPUB

### Приоритет 3 (P2 — уникальные фичи):
- [ ] CHM поддержка
- [ ] FB3 поддержка
- [ ] 3D page turn эффект
- [ ] SVG рендеринг без WebView

---

## 10. Размер и сложность

| Метрика | ReadEra | Moon+ | Mr.Comic |
|---------|---------|-------|----------|
| APK размер | ~24 MB | ~39 MB | TBD |
| Java/Kotlin файлы | ~3600+ (обфусцированы) | 314 (Java) | ~1000+ (Kotlin) |
| Сторонние библиотеки | ~15+ | ~10+ | ~20+ |
| Форматов | 16 | ~8 | ~15 |
| Обфускация | Полная (R8) | Частичная | Нет (debug) |

---

*Анализ выполнен путём jadx-декомпиляции APK и ревью декомпилированного Java-кода.*
