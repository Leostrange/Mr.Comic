# Mr.Comic Dictionary Modules

Словари распространяются отдельно от приложения. Они не обязательны для чтения и не входят в APK Mr.Comic.

## Установка

1. Откройте **Настройки → Перевод и словари**.
2. Выберите язык и нажмите **Скачать**; либо нажмите **Импорт** и укажите ранее сохранённый `.dbpack` или архив модулей.
3. Для переноса на другое устройство используйте **Экспорт** или **Экспортировать все**.

Ручная загрузка: [Dictionary Modules v1.0.0](https://github.com/Leostrange/Mr.Comic/releases/tag/dictionary-modules-v1.0.0).

## Доступные модули

| Язык | Код | Файл | Размер |
|---|---:|---|---:|
| English | `en` | `dictionary_en.dbpack` | 18.8 MB |
| Français | `fr` | `dictionary_fr.dbpack` | 310.6 MB |
| Italiano | `it` | `dictionary_it.dbpack` | 36.4 MB |
| 日本語 | `ja` | `dictionary_ja.dbpack` | 59.7 MB |
| 한국어 | `ko` | `dictionary_ko.dbpack` | 15.2 MB |
| Polski | `pl` | `dictionary_pl.dbpack` | 42.0 MB |
| Português | `pt` | `dictionary_pt.dbpack` | 39.1 MB |
| Русский | `ru` | `dictionary_ru.dbpack` | 141.8 MB |
| Türkçe | `tr` | `dictionary_tr.dbpack` | 34.8 MB |
| 中文 | `zh` | `dictionary_zh.dbpack` | 19.2 MB |

Размеры приблизительные. Перед публикацией файлов формируется `SHA256SUMS.txt`; сверяйте хеш при ручной загрузке.

## Версионирование

- приложение: `v2.4.0`, `v2.5.0` и далее;
- словари: `dictionary-modules-v1.0.0` и далее.

Обновление приложения не требует повторной загрузки словарей. Обновление набора словарей также не требует установки нового APK, если формат модуля остаётся совместимым.

## Источники и лицензии

Модули могут включать данные WordNet, JMdict, CC-CEDICT, Kaikki/Wiktionary и FreeDict. Конкретные права определяются источником данных; среди применимых лицензий встречаются CC BY-SA, CC BY и другие открытые лицензии.

Подробная атрибуция: [THIRD_PARTY_DICTIONARIES.md](active/THIRD_PARTY_DICTIONARIES.md) и [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md).

## Для сопровождающих

- не прикладывайте `.dbpack` к релизу приложения;
- публикуйте их только в отдельном выпуске `dictionary-modules-*`;
- прикладывайте `SHA256SUMS.txt`;
- сохраняйте имена `dictionary_<language>.dbpack`, потому что загрузчик использует этот контракт.
