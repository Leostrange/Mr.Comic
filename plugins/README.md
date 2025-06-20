# Расширение универсальной архитектуры плагинов

В рамках реализации фазы 8 (Система плагинов) были добавлены следующие компоненты:

## Новые типы плагинов

Создано перечисление `PluginType`, которое определяет все поддерживаемые типы плагинов:
- GENERIC - базовый тип плагина без специализации
- OCR - плагины для оптического распознавания текста
- TRANSLATOR - плагины для перевода текста
- UI_EXTENSION - плагины для расширения пользовательского интерфейса
- FILE_FORMAT - плагины для поддержки новых форматов файлов
- THEME - плагины для тем и визуальных эффектов

## Базовые классы и интерфейсы

1. `BasePlugin` - абстрактный базовый класс для всех плагинов, реализующий интерфейс `MrComicPlugin`
2. `OcrPlugin` - интерфейс для OCR плагинов
3. `BaseOcrPlugin` - базовый класс для OCR плагинов
4. `TranslatorPlugin` - интерфейс для плагинов перевода
5. `BaseTranslatorPlugin` - базовый класс для плагинов перевода
6. `UiExtensionPlugin` - интерфейс для плагинов расширения UI
7. `FileFormatPlugin` - интерфейс для плагинов поддержки форматов файлов
8. `ThemePlugin` - интерфейс для плагинов тем и визуальных эффектов

## Преимущества новой архитектуры

1. **Типизация плагинов** - каждый плагин теперь имеет четкий тип и специализированный интерфейс
2. **Упрощение разработки** - базовые классы предоставляют общую функциональность
3. **Стандартизация API** - каждый тип плагина имеет стандартный набор методов
4. **Расширяемость** - архитектура позволяет легко добавлять новые типы плагинов

## Следующие шаги

1. Реализация конкретных плагинов на основе новых интерфейсов
2. Обновление PluginRegistry для поддержки типизированных плагинов
3. Создание документации и примеров для разработчиков плагинов
