# Оптимизация словарной базы

## Основное
- хранить отдельные DB по языкам
- senses: 3-5
- translations: 3-5
- examples: 0-2
- индекс forms(lang, normalized_form)
- LRU cache на уровне Repository

## Ранжирование
- 100 -> специализированный словарь
- 70 -> Kaikki с direct RU translation
- 50 -> Kaikki с EN gloss
- 20 -> fallback
