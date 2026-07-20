# Тасклист: Система перевода Mr.Comic

**Создан:** 2026-06-23
**Приоритет:** ML Kit → кеш → popup → онлайн-провайдеры → NLLB → OCR комиксов → LLM polish

---

## MVP: Книги (приоритет 1)

| # | Задача | Статус | Файл |
|---|--------|--------|------|
| 1 | TextExtractor для EPUB/FB2/TXT/PDF | ✅ EXISTS | `TextFormatReader.kt`, `EpubFormatReader.kt` |
| 2 | LanguageDetector | ✅ EXISTS | `core-domain/.../LanguageDetector.kt` |
| 3 | ML Kit Translation | ✅ EXISTS | `feature-ocr/.../MlKitOfflineTranslationEngine.kt` |
| 4 | Единый интерфейс TranslatorEngine | ✅ DONE | `core-domain/.../TranslatorEngine.kt` |
| 5 | Кеш переводов (hash) | ✅ DONE | `core-data/.../TranslationCacheDao.kt` |
| 6 | Popup-перевод по выделенному тексту | ✅ EXISTS | `ReaderViewModel.translateSelectedText()` |
| 7 | Перевод абзаца/страницы/главы | ✅ DONE | `ReaderViewModel.translateCurrentChapter()` |
| 8 | Очередь переводов | ✅ DONE | `TranslationQueue.kt` |

## Второй этап: NLLB (приоритет 2)

| # | Задача | Статус |
|---|--------|--------|
| 9 | Собрать NLLB-200 distilled 600M INT8 | ⏳ FUTURE |
| 10 | Тест CTranslate2 / ONNX Runtime | ⏳ FUTURE |
| 11 | NllbTranslatorEngine | ⏳ FUTURE |
| 12 | Выбор движка: Auto/ML Kit/NLLB/LLM | ✅ DONE | `TranslationEngineSelector.kt` |
| 13 | Загрузка языкового пакета/модели | ✅ DONE | `LlmModelManager.kt` |
| 14 | Лимит чанка 300-800 символов | ✅ DONE | `TranslationQueue.chunkText()` |
| 15 | Прогресс перевода главы | ✅ DONE | `ChapterTranslationProgressBar` UI |

## Третий этап: LLM polish (приоритет 3)

| # | Задача | Статус |
|---|--------|--------|
| 16 | Подключить llama.cpp | ✅ DONE | `engine-llm/llama/LlamaCppEngine.kt` |
| 17 | Модель Qwen2.5-1.5B Q4 | 🟡 READY | Model info in `LlmModelInfo`, download via `LlmModelManager` |
| 18 | Режим "улучшить литературность" | ✅ DONE | `engine-llm/polish/LlmPolishEngine.kt` |
| 19 | Не использовать LLM для bubble | ✅ DONE | `TranslationEngineSelector` routes appropriately |

## Комиксы (приоритет 4)

| # | Задача | Статус |
|---|--------|--------|
| 20 | OCR для страниц | ✅ EXISTS |
| 21 | Поиск speech bubbles | ✅ DONE | `SpeechBubbleDetector.kt` |
| 22 | Группировка OCR по bubble | ✅ DONE | Clustering algorithm |
| 23 | Перевод каждого блока | ✅ DONE | `ComicTranslationPipeline.kt` |
| 24 | Размер шрифта под bubble | ✅ DONE | `ComicOverlayRenderer.kt` auto-size |
| 25 | Рисование перевода поверх | ✅ DONE | `ComicOverlayRenderer.renderOverlays()` |
| 26 | Показать оригинал по тапу | ✅ DONE | `toggleOriginal()` in pipeline |

## Архитектура

| # | Задача | Статус |
|---|--------|--------|
| 27 | Модули | ✅ DONE |
| 28 | Хранение в Room DB | ✅ DONE |
| 29 | Настройки качества/скорости | ✅ DONE |
| 30 | Скачивание моделей | ✅ DONE |

## Онлайн-провайдеры (приоритет 2)

| # | Задача | Статус |
|---|--------|--------|
| 31 | Интерфейс OnlineTranslatorEngine | ✅ DONE |
| 32 | Провайдеры: DeepL/Google/Yandex | ✅ DONE |
| 33 | Настройки API-ключей | ✅ DONE |
| 34 | Режим выбора offline/online | ✅ EXISTS |
| 35 | Fallback-цепочка | ✅ DONE |
| 36 | Лимиты (символы, дневной, Wi-Fi) | ✅ DONE |
| 37 | Приватность | 🟡 PARTIAL |
| 38 | Кеш онлайн-переводов | ✅ DONE |
| 39 | Retry/backoff | 🔨 TODO |
| 40 | Сравнение переводов | ⏳ FUTURE |
| 41 | Комиксы: offline + optional online | ⏳ FUTURE |

---

## Что уже есть

- `TranslatorEngine` (базовый): `OfflineTranslationEngine` + `OnlineTranslationEngine`
- `LanguageDetector`: ML Kit Language Identification
- `LookupRouter`: маршрутизация dictionary/MT/LLM
- `DictionaryEngine`: Room + FreeDict TSV
- `MlKitOfflineTranslationEngine`: ML Kit on-device translation
- `OpenRouterOnlineTranslationEngine`: OpenRouter API
- `SafeLlmExplainEngine`: heuristic explain
- Selection actions: Translate/Dictionary/Explain/Save Quote/Highlight
- Translation cache: нет (TODO)
