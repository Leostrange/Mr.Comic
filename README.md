# Mr.Comic

`Mr.Comic` — Android-приложение для чтения комиксов, манги, вебтунов, книг и аудиокниг с единым ридером, библиотекой, TTS-озвучиванием, OCR/переводом и расширяемой системой оформления.

## Что Уже Есть

- единая библиотека для графических и текстовых форматов
- ридер на Jetpack Compose с настройками типографики, темами и пресетами чтения
- TTS-озвучивание текста, аудиоплеер и аудиокниги
- OCR и переводческие сценарии
- `WebViewAssetLoader` для HTML/EPUB-ридера
- кэши структуры `EPUB`, lazy-open путь и regression-покрытие реальными корпусами
- пользовательские шрифты, импорт/экспорт стилей чтения и сохранённые пресеты
- поддержка фоновых библиотечных пресетов и рабочая документация под генерацию background-артов

## Поддерживаемые Форматы

### Графика и документы

- `CBZ`, `CBR`, `ZIP`, `RAR`
- `PDF`
- `DJVU`
- папки с изображениями

### Текстовые форматы

- `EPUB`
- `FB2`
- `TXT`
- `HTML`
- `Markdown`
- `RTF`
- `MOBI`, `AZW3`
- `DOCX`
- `ODT`

## Ключевые Возможности

### Reader

- темы чтения: `Paper`, `Sepia Book`, `Newspaper`, `Night Ink`, `OLED Black`, `E-Ink`
- управление шрифтом, размером, интервалами, выравниванием и анимацией страниц
- сохранённые стили чтения, JSON import/export, пользовательские шрифты
- popup-сноски, TOC, перевод, OCR и режим озвучивания текста
- `margin crop` для `PDF/DJVU`

### Library

- несколько режимов отображения
- аудиокниги и полноэкранный плеер
- библиотечные визуальные пресеты и фоновые стили

### Audio

- системный `TTS`
- page flip sound presets: `Paper`, `Crisp`, `Soft`
- медиа-сессии и миниплеер Android для аудио-сценариев

## Технологический Стек

- Kotlin
- Jetpack Compose + Material 3
- Hilt
- Room + DataStore
- Media3 / ExoPlayer
- Coil
- Retrofit / OkHttp
- `WebViewAssetLoader`

## Структура Проекта

```text
android/
  app/                  Точка входа, навигация, сборка APK
  core-model/           Доменные модели
  core-data/            Room, DataStore, репозитории, миграции
  core-domain/          Общая доменная логика
  core-ui/              Темы, chrome, общие UI-компоненты
  engine-formats/       Движки форматов и regression-тесты
  engine-rendering/     Общий рендеринг страниц
  feature-library/      Библиотека и аудиоплеер
  feature-reader/       Экран чтения, TTS, типографика, звуки
  feature-settings/     Настройки приложения
  feature-ocr/          OCR и связанные сценарии
  feature-onboarding/   Первичная настройка и стартовые сценарии
docs/
  active/               Активные рабочие ТЗ, пакеты промптов, карты задач
samples/
  format-real-corpus/   Реальные файлы для smoke/regression-проверок форматов
```

## Сборка

### Требования

- Android Studio / Android SDK
- Java 17
- Windows-путь сборки в этом репозитории: `.\gradlew.bat`

### Debug APK

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

Готовый APK:

```text
android/app/build/outputs/apk/debug/Mr.Comic-debug.apk
```

### Полезные команды

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest
```

## Документация

- [Docs Map](docs/README.md)
- [Project Context Handoff](PROJECT_CONTEXT_HANDOFF.md)
- [Reader Settings Snapshot](READER_SETTINGS_SNAPSHOT_2026-03-25.md)
- [Tasklist 00: Master Structure](TASKLIST_00_MASTER_STRUCTURE.md)
- [Tasklist 01: Reader Experience](TASKLIST_01_READER_EXPERIENCE.md)
- [Tasklist 02: Library Gamification](TASKLIST_02_LIBRARY_GAMIFICATION.md)
- [Tasklist 03: Translation AI TTS](TASKLIST_03_TRANSLATION_AI_TTS.md)
- [Tasklist 04: Settings IA Localization](TASKLIST_04_SETTINGS_IA_LOCALIZATION.md)
- [Tasklist 05: Platform Foundation](TASKLIST_05_PLATFORM_FOUNDATION.md)
- [Library Background Generation TZ](docs/active/LIBRARY_BACKGROUND_GENERATION_TZ.md)
- [Library Background Prompt Pack](docs/active/LIBRARY_BACKGROUND_PROMPT_PACK.md)

## Текущее Состояние

Проект активно развивается. Сейчас особенно сильно прокачаны:

- текстовый ридер и типографика
- `EPUB/HTML/DOCX/MOBI/FB2/TXT` путь
- `DJVU` backend и regression-покрытие
- библиотека, аудио и TTS UX

## Примечания Для Разработки

- часть regression-тестов опирается на корпус файлов из `samples/format-real-corpus`
- локальные исследовательские материалы вроде `Epub bug/`, временных фото и sandbox-папок не являются частью production-кода
- при работе в Windows в этом репозитории используем `.\gradlew.bat`, а не `./gradlew`
