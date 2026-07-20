# format-text.md — FB2 / EPUB / MOBI / RTF / Markdown / HTML / TXT

## Симптом → файл → причина → фикс

### «Вместо буквы в слове цифра / слово разбито на слоги»

| Поле | Значение |
| --- | --- |
| Где живёт | `engine-formats/.../text/TextFormatReader.kt` + `ReaderMarkupSupport.kt` + `DocxTextSupport.kt` |
| Корневая причина | Двойная проблема: (1) Кодировка: старый FB2 сохранён в windows-1251, а парсер «смотрит» UTF-8 — тогда `0xB8` (╗) становится `╗`. Текущий `TextDecodingTest.kt` ловит это только в test-пути, не в production. (2) Soft hyphen: `\u00AD` (U+00AD SOFT HYPHEN) внутри FB2/EPUB разрывает отображение. См. `ReflowableDocument.kt:692` — там есть обработка ширины, но не удаление символа. |
| Минимальный фикс | (1) Добавить extension `String.normalizeReaderText(): String` — комбинирует: <br>• `normalize(Form.NFKC)` (Unicode normalize). <br>• `replace("\u00AD", "")` (вырезаем soft hyphen полностью; WebView сам решает, где переносить). <br>• `replace(Regex("[\\s\u00A0\u2000-\u200B\u205F-\u206F]+"), " ")` (схлопнуть странные whitespace). <br>• `replace(Regex("[\u200B-\u200D\uFEFF]"), "")` (zero-width, byte order mark — мусор в тексте). <br>(2) Применить в `TextFormatReader` после `Jsoup.parseBodyFragment`. |
| Smoke test | `samples/format-real-corpus/6177.fb2` (кириллица, часто встречается проблема). Прогон через `TextDecodingTest.kt` после фикса: все строки должны читаться естественно, без аномальных символов. |

### «Markdown — `<br>`, `<details>`, `<sub>`, `<kbd>` экранируются как текст»

| Поле | Значение |
| --- | --- |
| Где живёт | `engine-formats/.../text/TextFormatReader.kt:48` (`MARKDOWN_RENDERER.escapeHtml(true)`) |
| Корневая причина | `escapeHtml(true)` — Jsoup заменяет raw HTML на `&lt;` и т.д. Тогда `<br>` исходный невидим. |
| Минимальный фикс | Переключить на `MARKDOWN_RENDERER.escapeHtml(false)` + Jsoup `Safelist.relaxed()`. Текущий import уже имеет `HTML_READER_SAFE_LIST` (см. строку 67-68 `TextFormatReader.kt`). |
| Verified-in | `koodo-reader/src/utils/markdown.ts` использует `markdown-it` с HTML enabled. |

### «Markdown — YAML frontmatter роняется в контент»

| Поле | Значение |
| --- | --- |
| Где живёт | `TextFormatReader.kt:1473-1517` (`extractYamlFrontMatter`) |
| Корневая причина | Если закрывающий `---` не встретился, `contentStart` остаётся `-1` → весь файл падает в metadata. |
| Минимальный фикс | ```kotlin<br>if (contentStart < 0) {<br>  // closing `---` not found — treat whole raw as body, no metadata<br>  return raw to emptyMap()<br>}<br>``` |

### «HTML — TOC пустой, в файле есть только `<a name="…">` якоря (без h1-h6)»

| Поле | Значение |
| --- | --- |
| Где живёт | `TextFormatReader.kt:1455-1460` (`buildTableOfContents`), `TextFormatReader.kt:1433-1453` (`anchorPageIndex`) |
| Корневая причина | TOC строится **только** из `chapterAnchors` (h1-h6). `anchorPageIndex` индексирует все якоря, но в TOC не попадает. |
| Минимальный фикс | `if (documentData.chapterAnchors.isEmpty()) buildTocFromAnchorPageIndex()`. Moon+ Reader так и делает — fallback по `anchorPageIndex` для plain HTML. |
| Статус | В текущей ветке (на момент проверки) уже есть fallback (L1740-1743), но убедиться, что regression не вернулась при `git pull`. |

### «FB2 — `noteref://` не резолвится в footnote»

| Поле | Значение |
| --- | --- |
| Где живёт | `FootnoteTokens.FOOTNOTE_URL_PREFIXES = { "noteref://", "noteref:", "fbanchor://" }` (L63-65) |
| Корневая причина | JS-блок в `ReaderScreen.kt:443` уже умеет снимать `fbanchor://` префикс: `footnoteHref = href.indexOf('fbanchor://')===0 ? href.slice(11) : href`. Для `noteref://` тоже нужен аналогичный slice. |
| Минимальный фикс | В `ReaderScreen.kt:443`: <br>`var footnoteHref = href;`<br>`if (footnoteHref.indexOf('fbanchor://') === 0) footnoteHref = footnoteHref.slice(11);`<br>`else if (footnoteHref.indexOf('noteref://') === 0) footnoteHref = footnoteHref.slice(10);` |

### «RTF — Cyryllic cp1251 читается как latin-1»

| Поле | Значение |
| --- | --- |
| Где живёт | `engine-formats/.../text/RtfHtmlSupport.kt` (парсер RTF) |
| Корневая причина | Старые RTF часто сохраняются в `cp1251`, парсер не делает charset sniff, детектит как `latin1`. |
| Минимальный фикс | В `RtfHtmlSupport.kt` в начале парсинга выставлять `InputStreamReader(input, Charset.forName("windows-1251"))` если первый символ `0xC0–0xFF` совпадает с кириллицей и `HTML parser charset auto-detect` не сработал. |

## Smoke test (общий для всех форматов)

1. Открыть каждый файл из `samples/format-real-corpus/`:
   - `6177.epub`
   - `6177.fb2`
   - `pod_sun_868805.epub` + `pod_sun_868805.mobi`
   - `rtf_cyrillic_cp1251.rtf`
   - `sample.md`
   - `txt_alice_gutenberg.txt`
2. Тапнуть 3 раздела, проверить, что (a) текст читаемый, (b) навигация не теряется, (c) footnote-popup открывается.
3. Smoke-список из `docs/reader_test_progress.md` → заполнить строки тестов.

## Что НЕ надо делать

- Не доверять первому символу файла для определения кодировки FB2 — там стандартная BOM-логика ломается на длинных файлах. Использовать tri-gram signal (`Charset.forName("UTF-8").decode(...)` fallback с пометкой «degraded»).
- Не использовать `<base target="_blank">` для internal anchors — WebView перехватит их через клик-делегата и фон-тапы будут срабатывать.
- Не включать `MathJax` или `KaTeX` без явной опции в настройках — это «раздувает» EPUB на порядок.
