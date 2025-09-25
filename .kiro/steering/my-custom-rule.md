---
inclusion: manual
---
PROJECT RULES — Mr.Comic + Cursor
📐 Архитектура и контекст
✅ Что важно для Cursor:
Использовать ключевые entry-файлы проекта: LibraryScanner.kt, ReaderEngine.kt, OCRManager.kt, PluginSystem.kt

Зафиксировать в .cursor/config.json папки с кодом:

json
Копировать
Редактировать
{
  "pinned": [
    "core",
    "modules/reader",
    "modules/ocr",
    "modules/plugins",
    "modules/ui"
  ]
}
В описании модулей в .md/Javadoc добавить:

cpp
Копировать
Редактировать
// @CursorHint: Follows Clean Architecture — domain/usecase/presentation separation
🧩 Каскадная генерация
Для многослойных решений:

Генерируй классы от domain слоя

Затем интерфейсы/внедрения в data

Только после этого — viewmodel или ui

🔬 Генерация тестов
Поддерживается генерация через шаблон:

bash
Копировать
Редактировать
Generate UnitTest for OCRPostProcessor in test/ocr/
Use Mockk, assertk, and runBlockingTest
Все auto-generated тесты — обязательная ручная правка перед коммитом

🔐 Безопасность и приватность
AI-запросы не должны включать:

API ключи

Секретные конфиги (.env, keystore, .json)

Все запросы Cursor-у ограничены публичными файлами проекта

⚙️ CI/CD и совместимость
Генерации не должны нарушать:

GitHub Actions pipeline (build, test, lint)

Согласованность с Figma Roadmap / UI tokens

Стандарты roadmap 99.9% (OCR accuracy, plugin API versioning и др.)

🧪 Проверка соответствия
В каждый Merge Request, где участвовал Cursor:

Указание в описании: #via-cursor

Комментарии вида:

kotlin
Копировать
Редактировать
// generated with Cursor (prompt: "Add support for multi-page CBZ archives")
📦 Рекомендуемый .cursor/config.json (пример)
json
Копировать
Редактировать
{
  "pinned": [
    "modules/reader",
    "modules/library",
    "modules/ocr",
    "modules/plugins",
    "modules/export",
    "modules/annotation"
  ],
  "excluded": [
    "build",
    ".gradle",
    "tests/manual"
  ],
  "rules": {
    "max_tokens": 4096,
    "contextual_generation": true,
    "require_review_before_commit": true
  }
}