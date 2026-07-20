# css-hygiene.md — табличный CSS, font coercion, selection

## Симптом → файл → причина → фикс

### «При пролистывании страниц в режиме страницы текст сам выделяется»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderScreen.kt:1462-1463, 1707` (`webView.isLongClickable = ...`); `ReaderScreen.kt:1081-1082` (CSS `::selection`) |
| Корневая причина | Когда `pagedModeScrollLock = true`, WebView остаётся `isLongClickable = false`, **но** selection toolbar может появиться при `drag`. И наоборот — если `isLongClickable = false` слепо, ломаются фичи «долгий тап = перевод слова». |
| Минимальный фикс | (1) При `pagedMode` убрать selection-выделение из JS: <br>`window.getSelection()?.removeAllRanges();`<br>при `scroll` (debounce 100 мс). <br>(2) На уровне WebView: `setOnLongClickListener { true }` (consume) при `pagedMode == true`. <br>(3) На уровне CSS добавить в injected header: <br>`body, body * { -webkit-user-select: none; user-select: none; -webkit-touch-callout: none; }`<br>`p, span, a { -webkit-user-select: text; user-select: text; }` — это позволяет выделять только текст, не элементы. |
| Verified-in | `komga-reader/webui/src/components/Reader.svelte` — `setUserSelect(false)` + removal of selection after scroll. |

### «`coerceAtLeast(20)` ломает размер шрифта, который пользователь поставил в 12sp»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderScreen.kt:1046-1047` |
| Корневая причина | `pageLockJs` форсирует минимальные значения. |
| Минимальный фикс | Удалить `coerceAtLeast` либо передавать `null` из Kotlin, если пользователь явно не задал значение (а default берёт из темы). |

### «`!important` на `font-size`/`line-height` ломает publisher CSS (Calibre)»

| Поле | Значение |
| --- | --- |
| Где живёт | `buildReaderTypographyJs` в `ReaderScreen.kt:1076-1086` |
| Корневая причина | Безусловный `!important font-size` перебивает стили из EPUB, особенно в Calibre-сборках, где `font-size` выставляется через `:root`. |
| Минимальный фикс | Заменить безусловный `!important` на условный — применить только если пользователь не задал свой стиль. Тригерить через dataset-атрибут на `<html>` (`data-mrcomic-override-font-size`) и снимать его, если пользователь явно отключил переопределение. |

### «У таблицы DOCX нет border / padding / overflow — она невидима»

| Поле | Значение |
| --- | --- |
| Где живёт | `engine-formats/.../text/DocxRenderSupport.kt:82-86` — добавляет класс `.mrcomic-table-scroll` |
| Корневая причина | Сам CSS не подключён. |
| Минимальный фикс | См. `references/docx.md` — добавить CSS-блок `.mrcomic-table-scroll {display:block;overflow-x:auto;width:100%;margin:0.6em 0;} .mrcomic-table-scroll > table{border-collapse:collapse;display:table;width:100%;font-size:0.95em;} ...` в `READER_DOCUMENT_CSS`. |

### «В WEBTOON-тексте снизу и сверху белая полоса»

| Поле | Значение |
| --- | --- |
| Где живёт | `feature-reader/.../ui/components/TextWebtoonView.kt` + injected CSS |
| Минимальный фикс | В JS (или CSS) убедиться, что `body { margin: 0; padding: calc(var(--topGutter) + env(safe-area-inset-top)) calc(var(--sideMargin) + env(safe-area-inset-left)) calc(var(--bottomGutter) + env(safe-area-inset-bottom)) calc(var(--sideMargin) + env(safe-area-inset-right)); }`. |

## Что НЕ надо делать

- Не использовать `* { user-select: none }` — сломает выделение footnote-цитат. Исключения для конкретных элементов задавайте явно.
- Не снимать `!important` с footnote-CSS без теста — Calibre и некоторые FB2 собирают стили «через силу».
- Не использовать `box-sizing: content-box` для WebView body — это наследие HTML4, ломает padding-bottom.

## Smoke test

1. `samples/format-real-corpus/sample.docx` — открыть, проверить, что таблица видна, у неё border.
2. EPUB с Calibre-переменными (`--user-base-font-size` и т.п.) — убедиться, что стили не перебиваются жёстко.
3. Тап по тексту в PAGE-режиме — selection handle не должен появляться; selection handles должен работать только при долгом нажатии в footnote-режиме.
