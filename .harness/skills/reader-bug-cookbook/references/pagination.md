# pagination.md — PAGE-mode page splitting, last-page cutoff

> Все ссылки на номера строк соответствуют `5b05dbb` (HEAD на 23.05.2026).
> Перепроверяй через `git blame` при работе на других коммитах.

## Симптом → файл → причина → фикс

### «Страницы пропускаются, высота текста с отступами разная»

| Поле | Значение |
| --- | --- |
| Где живёт | `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/ReflowableDocument.kt` |
| Ключевая строка | L26 `private const val PAGE_LAYOUT_UNITS = 8000` |
| Корневая причина | Пейдж-движок делает предварительный расчёт на Kotlin-стороне через эвристику ширины символа (`READER_TEXT_CHARS_PER_LINE = 38`, L28), не замеряя фактическую ширину шрифта в WebView. Реальный рендер в браузере с другими метриками → страницы «прыгают», последняя обрезается. |
| Минимальный фикс | Передать в `paginateInternal` измеренный `WebView.scrollY`/`document.body.scrollHeight`: <br>1. В `ReaderScreen.kt` в `onPageFinished` колбэке WebView выполнить `evaluateJavascript("(function(){return document.body.scrollHeight;})()")`. <br>2. Сохранить результат в `ReaderViewModel` и пробросить в `ReflowableTextFormatReader` как `effectivePageHeightPx`. <br>3. Пересчитать `PAGE_LAYOUT_UNITS` пропорционально этому значению. |
| Долгосрочное направление | Переход на CSS multi-column пагинацию (как в `foliate-js/src/layout.js`, см. `references/related-projects.md`) с фиксированным `height: calc(100vh - chrome - safe-area-inset-top - safe-area-inset-bottom)` и `column-fill: auto`. Без замера Kotlin-стороной. |

### «Текст режется и сверху, и снизу» (PAGE-mode)

| Поле | Значение |
| --- | --- |
| Где живёт | `ReflowableDocument.kt:200-230` (`splitOversizedMarkupBlock`) + `ReflowableDocument.kt:238-245` (`normalizePageBodies`) |
| Корневая причина | Двойная проблема: (1) жёстко зашитый `MIN_PAGE_FILL_REMAINDER_UNITS = 220` (L36) принудительно оставляет «дыры» в конце страницы, (2) `rebalanceShortPageBodies` (L452-480) склеивает страницы меньше `MIN_STANDALONE_PAGE_TEXT_CHARS = 280`, но если разница большая — оставляет обрезок. |
| Минимальный фикс | (1) `MIN_PAGE_FILL_REMAINDER_UNITS` → ослабить до 80. (2) Добавить fallback: если страница не добрала 65% TARGET, перебросить первый блок следующей страницы — уже есть в `fillUnderfilledPageBodies` (L482-532), но надо снизить `MIN_PAGE_FILL_TEXT_CHARS = 72` → 48 и `MIN_REMAINDER_LAYOUT_UNITS = 100` → 60 для редких коротких страниц. |
| Дополнительно | Не допускать, чтобы padding/«safe area» менялся во время чтения без пересчёта — обрабатывать как invalidation, см. `ReaderContentPolicy.kt:43-60`. |

### «Вертикальная лента работает, страничный режим — нет»

| Поле | Значение |
| --- | --- |
| Где живёт | `docs/bugs_status_20260523.md #1.г / #1.д / #8.а / #8.б / #8.в` |
| Корневая причина | WEBTOON-текст вынесен в `TextWebtoonView` (`feature-reader/.../components/TextWebtoonView.kt`) и `TextWebtoonDocument` flow — там пагинации нет (просто длинный скролл). PAGE-режим гонит ту же ленту через Kotlin-движок с эвристикой ширины → расхождения. |
| Минимальный фикс | Сначала применить патчи из `references/css-hygiene.md` (`coerceAtLeast` — L1046-1047 `ReaderScreen.kt`) и `references/color-preset.md`. Это уберёт самые грубые PAGE-only артефакты. Долгосрочно — см. раздел «Долгосрочное направление» выше. |

### «В PAGE-режиме обложка и превью показывают `coerceAtLeast(20)` вместо 12sp»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderScreen.kt:1046` (`fontSize.coerceAtLeast(20)`), `ReaderScreen.kt:1047` (`lineHeight.coerceAtLeast(1.45f)`) |
| Корневая причина | `pageLockJs` форсирует минимальный размер, перезаписывая пользовательский ввод. |
| Минимальный фикс | Убрать `coerceAtLeast`. Если значение действительно отсутствует — отдавать `null`/`undefined` из Kotlin; CSS сам подберёт дефолт. |

### «pageCount/lineHeight fallback/viewportBottomSafety не совпадают с реальным WebView»

| Поле | Значение |
| --- | --- |
| Где живёт | `docs/bugs_status_20260523.md #1.д` — `viewportBottomSafety` помечен как ❓ VERIFY; скорее всего, переехал в `HtmlPageView` или в JS-блок `TextWebtoonView` |
| Минимальный фикс | Использовать `WebView.evaluateJavascript("(function(){var r=document.body.getBoundingClientRect();return r.bottom-window.innerHeight;})()")` для замера остатка внизу страницы. Если > 4 px — добавить нижний gutter, если < -8 px — последняя строка обрезана, пересчитать страницы. |

## Что НЕ надо делать

- Не пытаться «выровнять» `MIN_SECTION_BREAK_CURRENT_UNITS = 4800` (L34) без замера WebView: цифра подогнана под `PAGE_LAYOUT_UNITS = 8000` ≈ 60% страницы, иначе появится нежелательный pagebreak на полпути.
- Не добавлять в `ReflowableDocument` новые эвристики ширины символа без замера — все уже учтены (`readerColumnWidth` L688), и прироста от новой эвристики не будет.
- Не использовать `getBoundingClientRect()` от `<html>` — он зависит от `transform: scale` и `font-zoom`. Меряй `body` напрямую.

## Smoke test

После фикса запусти `tests/.../ReaderHtmlCssJsTest.kt` (если есть локальные unit-тесты для PAGE) и регенерацию страниц на `samples/format-real-corpus/6177.epub`, `S_Skott_Protiv_zerna.epub`, `pod_sun_868805.epub`. Контрольный признак: последняя страница имеет ≥60% от среднего объёма, и нет страниц меньше `MIN_STANDALONE_PAGE_TEXT_CHARS`.

## Где это уже сделано правильно (для сравнения)

- `foliate-js/src/layout.js` — `calculate(_width, _height, _gap)`: divisor для spread/double-page, `_minSpreadWidth`, gap-fraction. Замеряет живой clientHeight.
- `koodo-reader/src/utils/reader/`: CSS columns + `column-gap`, без Kotlin-side угадывания.
- `FBReaderJ (Geometer Plus)` — `ZLTextView`, но он статически рендерит в свой собственный view, не WebView — для нас не применимо, зато полезен как академический reference.
