# Документация Mr.Comic

## Основные документы

- [README проекта](../README.md) — обзор, сборка, форматы, скриншоты
- [Release Notes](../RELEASE_NOTES.md) — история релизов
- [Рекомендации по коду](RECOMMENDATIONS.md) — детальный code review с 21 рекомендацией
- [Сторонние лицензии](../THIRD_PARTY_NOTICES.md) — зависимости и ассеты

## Архитектура

Проект состоит из 16 Gradle-модулей, организованных по слоям:

```
core-model → core-data → core-domain → core-ui
                ↓
engine-api → engine-formats / engine-epub-readium / engine-llm
                ↓
engine-registry → engine-rendering
                ↓
feature-library / feature-reader / feature-settings / feature-ocr / feature-onboarding
                ↓
              app
```

## Словари

Скрипты сборки словарей находятся в `Translate/`:

- `build_dictionary.py` — базовый словарь → SQLite
- `build_dictionary_full.py` — полный словарь со streaming-парсером
- `build_dictionary_room.py` — Room-совместимый формат
- `build_dictionary_shipped_assets.py` — словари для поставки в APK

Импорт FreeDict: `scripts/import_freedict.py`

## Тестовые файлы

`samples/` содержит тестовые файлы для проверки поддержки форматов:

- `format-real-corpus/` — реальные файлы (EPUB, DOCX, ODT, RTF, HTML, TXT, Markdown)
- `format-test-books/` — тестовые книги
- `test-archives/` — архивы с книгами внутри (ZIP, TAR, 7Z)
- `translation_texts/` — тексты для проверки перевода (UDHR на 10 языках)
