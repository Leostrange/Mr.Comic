# Mr.Comic — Project Guide for Claude

## Обзор проекта

Android-приложение для чтения комиксов. Написано с нуля, вдохновлено
Mihon, TachiyomiSY, Seeneva, Kotatsu, OpenComicReader.

**Версия:** 2.0.0
**Package:** `com.example.mrcomic`
**minSdk:** 26 (Android 8.0) | **targetSdk:** 35 (Android 15)
**Kotlin:** 2.0.21 | **AGP:** 8.7.3 | **Gradle:** 8.9

---

## Структура модулей

```
Mr.Comic/
├── android/
│   ├── app/                    # :app — точка входа
│   ├── core-model/             # :core-model — Room-сущности, enum'ы
│   ├── core-data/              # :core-data — репозиторий, DataStore
│   ├── core-domain/            # :core-domain — use cases, Result<T>
│   ├── core-ui/                # :core-ui — тема, общие Composable
│   ├── engine-formats/         # :engine-formats — читалки CBZ/CBR/PDF/папка
│   ├── engine-rendering/       # :engine-rendering — кэш bitmap, preloader
│   ├── feature-library/        # :feature-library — библиотека комиксов
│   ├── feature-reader/         # :feature-reader — ридер
│   ├── feature-settings/       # :feature-settings — настройки
│   ├── feature-ocr/            # :feature-ocr — OCR/перевод (ML Kit, заготовка)
│   └── feature-onboarding/     # :feature-onboarding — онбординг
├── media/                      # иконки (7 вариантов × 7 плотностей), видео
├── gradle/libs.versions.toml   # Version Catalog
├── settings.gradle.kts
├── build.gradle.kts
└── CLAUDE.md
```

---

## Ключевые архитектурные решения

### DI — Hilt
- Все `@Singleton`-классы с `@Inject constructor` регистрируются **автоматически**.
- Явный `@Provides` нужен только для классов без `@Inject constructor` (третьи библиотеки).
- Не дублируй `@Provides` и `@Inject constructor` для одного типа — Hilt выдаст ошибку.

### Репозиторий (core-data)
`ComicRepository` — in-memory `StateFlow<List<Comic>>` (без Room для скорости старта).
Методы: `getAllComics()`, `searchComics()`, `addComic(uri)`, `addComicsFromDirectory(treeUri)`,
`updateProgress(comicId, page, total)`, `deleteComic(comicId)`.

### SAF (Storage Access Framework)
- Одиночные файлы: `ACTION_OPEN_DOCUMENT` → `takePersistableUriPermission()`
- Папки: `ACTION_OPEN_DOCUMENT_TREE`
- `treeUri` и `documentId` сохраняются в `Comic` для реконструкции URI после рестарта.

### Форматы
Определение формата: **magic bytes** → расширение файла.
`FormatFactory.createReader(path, format)` возвращает `FormatReader?`.
Интерфейс: `getPageCount(): Int`, `getPage(index): Bitmap?`, `close()`.

### Видео-сплэш
`ModernSplashActivity` (LAUNCHER) → `VideoSplashActivity` (ExoPlayer) → `MainActivity`.
Видео: `res/raw/splash_video.mp4` (портрет), `res/raw/splash_video_horizontal.mp4` (ландшафт).

### Иконки приложения
7 вариантов через `activity-alias` в AndroidManifest. Управление: `AppIconManager`.
Текущая иконка сохраняется в DataStore (`app_icon_settings`).

---

## Команды разработки

```bash
# Сборка debug APK
cd android && ./gradlew assembleDebug

# Запуск тестов
./gradlew test

# Проверка Lint
./gradlew lintDebug

# Установка на устройство
./gradlew installDebug
```

---

## Зависимости (ключевые)

| Библиотека          | Версия    | Назначение                      |
|---------------------|-----------|---------------------------------|
| Compose BOM         | 2025.01   | UI                              |
| Hilt                | 2.52      | DI                              |
| Room                | 2.7.0     | (структура готова, пока StateFlow) |
| DataStore           | 1.1.2     | Настройки, прогресс чтения      |
| Media3/ExoPlayer    | 1.5.1     | Видео-сплэш                     |
| Coil                | 2.7.0     | Загрузка обложек                |
| zip4j               | 2.11.5    | CBZ/ZIP                         |
| junrar              | 7.5.5     | CBR/RAR                         |
| pdfbox-android      | 2.0.27    | PDF                             |
| ML Kit text         | 16.0.0    | OCR (заготовка)                 |
| ML Kit translate    | 17.0.3    | Перевод (заготовка)             |

---

## Известные TODO

- [x] Room — полностью интегрирован (ComicRepository использует ComicDao)
- [x] Поддержка 7z (SevenZFormatReader через Apache Commons Compress)
- [x] EPUB viewer (EpubFormatReader — OPF spine + WebView рендер HTML)
- [x] FB2 reader (Fb2FormatReader — charset detection, HTML entities, data: URI)
- [x] ComicInfo.xml метаданных в CBZ
- [x] EPUB/FB2 cover extraction
- [x] ML Kit OCR — реальная интеграция (OcrRepository + OcrViewModel + OcrScreen)
- [x] Сортировка/фильтрация в библиотеке (статус, формат, все поля сортировки)
- [x] Поддержка папок/коллекций в библиотеке (группировка по серии и папке)
- [x] Offline поиск по метаданным (author, genre, tags, publisher, series, title)
- [ ] Google Drive / OneDrive backup
- [ ] Интеграция Crashlytics

---

## Правила для Claude

1. **Перед изменением файла** — обязательно прочитай его через Read.
2. **Hilt**: не добавляй `@Provides` для классов с `@Inject constructor`.
3. **Context в Hilt**: используй `@ApplicationContext` qualifier, а не голый `Context`.
4. **SAF**: при работе с URI всегда обрабатывай `SecurityException` (permission может быть отозван).
5. **Bitmap**: после использования вызывай `bitmap.recycle()` или возвращай в `BitmapPool`.
6. **Coroutines**: IO-операции (файлы, БД) — `Dispatchers.IO`, UI — `Dispatchers.Main`.
7. **Не используй** `DocumentFile.findFile()` в циклах — O(N²). Используй `listFiles()` + фильтрацию.
