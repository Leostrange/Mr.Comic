# Обновлённое ТЗ: офлайн-словарный движок для читалки комиксов/манги

## Цель
Сделать офлайн-систему для чтения комиксов и манги на языках, для которых часто нет русского перевода.
Пользователь нажимает на слово или фрагмент текста и получает:
- лемму
- часть речи
- краткое значение
- варианты перевода на русский
- fallback через английский gloss, если прямого RU-перевода нет

## Языки
Базовые:
- ru, en, ja, ko, zh

Обязательные:
- fr, it, pl, tr, pt-BR

Вторая очередь:
- id, th, vi, ms

Стратегические:
- hi, bn, ur, fa, ar

## Источники
- en -> WordNet
- ja -> JMdict
- zh -> CC-CEDICT
- остальные -> Kaikki / Wiktextract

## Архитектура
Источник -> Parser -> EntryPayload -> SQLite/Room

## Таблицы
- entries
- forms
- senses
- translations
- readings
- examples

## Android
- Room
- createFromAsset()
- createFromFile()
- popup карточка перевода
