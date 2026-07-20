# footnote.md — popups, click routing, marker detection

## Симптом → файл → причина → фикс

### «Footnote popup обрезается снизу, если якорь у нижней трети экрана»

| Поле | Значение |
| --- | --- |
| Где живёт | JS-блок `isFootnoteTarget` + native-handler `onInlineFootnote` в `ReaderScreen.kt:344-498`, плюс конкретно вызов `PopupWindow.showAsDropDown(anchor)` в Kotlin-слое |
| Корневая причина | Используется `PopupWindow.showAsDropDown(anchor)` без проверки места снизу. На Android 7.0/7.1/8.0 есть исторический баг (`PopupWindow` API ≤ 26): если высота popup > места до низа, он распахивается на весь экран. Если меньше — обрезается по `anchor.bottom` + scroll. |
| Verified-in (как лечат другие) | `komga-reader/issues/2203` — конкретный bug «Footnote popups near the bottom of the page are cut off». Их workaround: переключиться на inline-popup (рендер `<aside>` с `position: absolute; max-height: 60vh`), без `PopupWindow`. |
| Минимальный фикс (Android 24-26) | В Kotlin-handler, перед `showAsDropDown`: <br>1. Измерить popup: `contentView.measure(UNSPECIFIED, UNSPECIFIED)`, высота = `contentView.measuredHeight`. <br>2. Получить `anchor.getLocationOnScreen(loc)`, `spaceBelow = screenH - (loc[1] + anchor.height)`, `spaceAbove = loc[1]`. <br>3. Если `popupHeight < spaceBelow` → `showAsDropDown(anchor, 0, 0)`. <br>4. Иначе, если `popupHeight < spaceAbove` → `showAsDropDown(anchor, 0, -anchor.height - popupHeight)`. <br>5. Иначе → `showAtLocation(anchor, Gravity.NO_GRAVITY, loc[0], loc[1] - popupHeight)` со сдвигом `popupHeight - spaceBelow`. <br>6. На API 24-26 принудительно использовать `showAtLocation`. |
| Долгосрочное фикс (лучше) | Полностью отказаться от `PopupWindow`: рендерить footnote-popup как inline (поверх WebView в `Box`, или прямо в WebView через `<aside class="footnote-popup" style="position:absolute; right:0; max-height:60vh; overflow-y:auto">`). Это сразу убирает рассинхрон с chrome: при показанном toolbar popup отображается под ним, при скрытом — поверх текста. |

### «Footnote маркер-цифра не подсвечивается как в fb2/epub»

| Поле | Значение |
| --- | --- |
| Где живёт | `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/FootnoteTokens.kt:55-90`, плюс JS-блок «paintNoteRef» в `ReaderScreen.kt:1083-1094` |
| Корневая причина | Регулярка `NUMBER_REF_REGEX = ^[\[\(]?\d{1,4}[\]\)]?$` (L56) срабатывает, **только если весь текст ссылки = число**. FB2 часто хранит маркер как `<a href="#note1"><sup>1</sup></a>` (срабатывает), но если маркер — Unicode `¹`, `²`, `³`, или `①–⑳`, или просто число рядом с буквой — не срабатывает. CSS `[href^="#fn"]` и т.п. (L1083) тоже не покрывает случаи, когда в FB2/EPUB схема href отличается. |
| Минимальный фикс | (1) Расширить `FootnoteTokens.NUMBER_REF_REGEX` Unicode superscript и circled digits (см. код ниже). (2) В `isLikelyFootnoteLink` (L73-94) добавить проверки. (3) В JS-селекторе `paintNoteRef` (`ReaderScreen.kt:1093-1109`) добавить конструкцию `:has(> sup)`, чтобы ловить inline-superscript маркеры, и `:matches(href*='footnote')`. |
| Код-вставка для `FootnoteTokens.kt` | ```kotlin<br>val UNICODE_SUPERSCRIPT_MARKERS: Regex = Regex("""^[\u00B9\u00B2\u00B3\u2070-\u2079]+$""")<br>val CIRCLED_DIGIT_MARKERS: Regex = Regex("""^[\u2460-\u2473\u24EB-\u24F4\u2776-\u2793]+$""")<br>val STAR_REF_REGEX_ANY: Regex = Regex("""^\*{1,6}$""")<br>``` В `isLikelyFootnoteLink` после `NUMBER_REF_REGEX`:<br>`if (UNICODE_SUPERSCRIPT_MARKERS.matches(text.trim())) return true`<br>`if (CIRCLED_DIGIT_MARKERS.matches(text.trim())) return true` |

### «Footnote popup не открывается, если тапнул ниже центра (сверху/снизу от центра)»

| Поле | Значение |
| --- | --- |
| Где живёт | `ReaderScreen.kt:381-405` (`onTouchStart / onTouchEnd` JS-логика) |
| Корневая причина | В `__isClickableLink` поиск идёт по ancestor-цепочке **только вверх** (probe.parentNode). Если footnote target лежит за пределами viewport — клик не доходит до элемента, потому что WebView перехватывает scroll. Дополнительно: chrome-панели крадут touch events, если активны. |
| Минимальный фикс | (1) Для хрома: убедиться, что `__readerNativeSuppressClickUntil` (L383) не установлен во время тапа по footnote. (2) Использовать `WebView.requestFocus()`, если chrome активен, чтобы taps на WebView «пробивали» сквозь chrome. (3) Добавить fallback в JS: если click не сработал на footnote за 200 мс — попробовать `document.elementFromPoint(e.clientX, e.clientY)` ещё раз. |

## Что НЕ надо делать

- Не подменять `FOOTNOTE_URL_PREFIXES` («noteref://», «noteref:», «fbanchor://») на другие схемы — они приходят из FB2/EPUB схемы, и их сломает любой ридер-клиент FB2.
- Не удалять `FOOTNOTE_HREF_REGEX` (L40-43) — он покрывает общий случай `#footnote-*`, `#fn-*` и т.п.
- Не полагаться только на `cls`/`role` — если в EPUB схема `epub:type="noteref"`, без двойной проверки по `role` всплывающее окно не откроется.

## Smoke test

1. `samples/format-real-corpus/6177.epub` — открыть, тапнуть на маркер сноски в главе 3, проверить, что popup появляется полностью (без обрезки) на любой высоте экрана.
2. FB2 (`6177.fb2`) — тапнуть на `¹` (Unicode superscript), проверить, что подсветка применилась (`noteColor` в `ReaderStyle`).

## Где это уже сделано правильно

- `komga-reader/issues/2203` — конкретно описана проблема + обходные решения в комментариях.
- `foliate-js/footnotes.js` — inline-рендер с `position: absolute`, плюс click-outside для закрытия. Это путь «долгосрочного фикса».
- `fbreaderj/.../FBReaderApp.java` — popup с автопозиционированием через ZLView классы (наследие e-ink эпохи).
