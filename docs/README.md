# Документация Mr.Comic

## Основные документы

- [README проекта](../README.md) — обзор, сборка, форматы, скриншоты
- [Актуальный план разработки](DEVELOPMENT_PLAN_2026-08-12.md) — приоритеты, контракты Reader и критерии готовности
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

Скрипты сборки словарей (`build_dictionary*.py`, `import_freedict.py`) и каталог `Translate/`
были удалены из репозитория при гигиенической чистке. Актуальные словари (WordNet, JMdict,
CC-CEDICT, Kaikki) поставляются в APK как `.dbpack`-ассеты; подробности — в `docs/active/THIRD_PARTY_DICTIONARIES.md`.

> Примечание: CI-джоба `python-scripts`, которая вызывала `cd Translate` и
> `scripts/import_freedict.py`, была удалена из `.github/workflows/build-apk.yml`
> вместе с самими скриптами.

## Тестовые файлы

Эталонные файлы форматов лежат в `reference/formats/` (локально, каталог gitignored):

- реальные книги (EPUB, FB2, CBZ, CBR, MOBI, DJVU, RTF, DOCX, ODT, TXT, HTML, Markdown)
- `_qa_text_tmp/` — сгенерированные текстовые файлы для QA

Тесты форматов в CI используют синтетические фикстуры внутри `engine-formats/src/test/`.
