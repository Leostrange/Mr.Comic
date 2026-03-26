# Translation Module Spec

Актуальное ТЗ на модуль перевода текста и комиксов для `Mr.Comic`.

Документ зафиксирован на основе пользовательских требований от `2026-03-14` и служит опорой для поэтапной реализации.

## 1. Цель

Нужно реализовать единый модуль перевода для двух сценариев:

1. Перевод текста в книгах:
   - словарь для слов
   - перевод фраз и предложений
   - офлайн / онлайн / авто-маршрутизация
   - опциональное объяснение через LLM

2. Перевод текста в комиксах / манге / вебтунах:
   - OCR по странице
   - перевод блоков текста
   - overlay поверх оригинальной страницы
   - перевод отдельного баббла по тапу
   - в будущем: замещение текста внутри баббла

## 2. Что уже есть в проекте

Текущий `stage 0`:

- `feature-ocr` уже существует
- есть `OcrRepository`
- используется ML Kit Text Recognition
- используется ML Kit on-device Translation
- есть экран `OcrScreen`
- есть навигация из ридера на OCR screen
- есть сохранение перевода как заметки к странице
- в настройках уже существуют:
  - `translationMode`
  - `ocrLanguage`

Текущее ограничение:

- OCR работает по всей странице целиком, без сегментов/блоков
- результат OCR — одна строка текста, а не список блоков
- нет словарного режима
- нет router-а для `dictionary / offline_mt / online_mt / llm`
- нет overlay перевода поверх страницы
- нет кеша OCR-блоков и переводов
- нет target language / translation mode auto/offline/online
- нет batch page translation
- нет explain layer

## 3. MVP scope

В MVP должны войти:

- перевод выделенного текста в книгах
- словарь для отдельных слов
- офлайн + онлайн перевод фраз
- OCR одной страницы комикса
- выделение текстовых блоков
- overlay перевода поверх страницы
- тап по блоку с карточкой перевода
- кеш OCR/переводов
- настройки языков и режима перевода

В MVP не входят:

- inpainting / удаление оригинального текста
- художественная перерисовка текста внутри бабблов
- идеальная поддержка SFX
- полноценный локальный LLM как обязательная часть

## 4. Архитектурные модули

Нужны отдельные слои:

1. `LanguageDetector`
2. `LookupRouter`
3. `DictionaryEngine`
4. `OfflineTranslationEngine`
5. `OnlineTranslationEngine`
6. `LlmExplainEngine`
7. `ComicTextDetector`
8. `ComicOcrEngine`
9. `ComicTranslationEngine`
10. `OverlayRenderer`
11. `TranslationCache`

## 5. Поэтапная реализация

### Этап 1 — Text Translation MVP

- выделение текста в книгах
- карточка словаря для одного слова
- перевод фразы / предложения
- offline / online / auto routing
- базовый bottom sheet

### Этап 2 — OCR Translate for Comics

- OCR по странице
- сегментация на текстовые блоки
- хранение `OcrBlock`
- перевод блоков
- overlay renderer
- карточка перевода по тапу
- кеш OCR и переводов на страницу

### Этап 3 — Advanced Comic Translation

- классификация speech / narration / sfx / unknown
- фильтры в настройках
- улучшенный layout overlay
- bubble-first rendering
- groundwork под post-MVP text replacement

### Этап 4 — Explain Layer

- explain для книги
- explain для OCR-блока
- cleanup шумного OCR
- contextual explanation

## 6. Первая практическая цель в коде

Следующий безопасный рабочий пакет:

1. сделать `Translation domain` слой и модели:
   - `TranslationRequest`
   - `TranslationResult`
   - `DictionaryEntry`
   - `OcrBlock`
   - `OverlayBlock`
2. расширить настройки перевода:
   - source language
   - target language
   - mode: `offline / online / auto`
   - enable explain
   - overlay opacity / font size / style
3. оставить текущий `feature-ocr` как baseline implementation
4. поверх него начать нормальную маршрутизацию и кэш

## 7. Текущий технологический выбор

Безопасно использовать прямо сейчас:

- ML Kit Text Recognition
- ML Kit on-device Translation
- локальный кэш в DataStore / Room

Нельзя пока считать готовым выбором:

- платные/лицензионно спорные движки
- тяжёлые LLM как обязательную зависимость
- сложный comic inpainting

## 8. Открытые вопросы

До полноценной реализации нужно решить:

1. какие language pairs обязательны в MVP
2. нужен ли онлайн provider в первой версии, или сначала офлайн-only baseline
3. нужен ли словарь как встроенная база, или сначала только translation MVP
4. нужен ли вертикальный manga text в MVP
5. включать ли SFX в MVP
6. нужен ли batch translate нескольких страниц подряд

## 9. Статус

На текущий момент:

- ТЗ принято
- текущая реализация оценивается как `translation stage 0`
- полноценный translation MVP ещё не начат
