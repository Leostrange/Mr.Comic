# docx.md — таблицы, шрифты, footnotes

## Симптом → файл → причина → фикс

### «В DOCX не отображаются таблицы»

| Поле | Значение |
| --- | --- |
| Где живёт | `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/DocxRenderSupport.kt:67-87` (`renderDocxTable`); L12-30 (`renderDocxBlockChildren`); `DocxTextSupport.kt:71` (вызов) |
| Присутствует код | ✅ `renderDocxTable` существует, оборачивает в `<div class="mrcomic-table-scroll"><table><tbody>...</tbody></table></div>`. Парсит `w:tr` → строки, `w:tc` → ячейки с `colspan`. |
| Корневая причина | **CSS-класс `.mrcomic-table-scroll` нигде не объявлен** в `READER_DOCUMENT_CSS` или `READER_MOBI_DOCUMENT_CSS`. Без стиля `<div class="mrcomic-table-scroll">` схлопывается, а `<table>` без `display:table` и ширины — невидим. |
| Где должен быть стиль | Нужно найти функцию-фабрику CSS (вероятно в `ReaderMarkupSupport.kt` или в `engine-formats/base/`), и добавить правило для `.mrcomic-table-scroll` и вложенных `<table>`, `<th>`, `<td>`. |
| Минимальный фикс (CSS) | ```css<br>.mrcomic-table-scroll{display:block;overflow-x:auto;width:100%;margin:0.6em 0;}<br>.mrcomic-table-scroll > table{border-collapse:collapse;display:table;width:100%;font-size:0.95em;}<br>.mrcomic-table-scroll th,<br>.mrcomic-table-scroll td{border:1px solid currentColor;padding:6px 8px;text-align:start;vertical-align:top;}<br>.mrcomic-table-scroll th{font-weight:600;background:rgba(0,0,0,0.04);}<br>@media (prefers-color-scheme:dark){.mrcomic-table-scroll th{background:rgba(255,255,255,0.06);}}<br>``` |
| Verified-in | `koodo-reader/src/assets/css/reader.css` — `.table-wrap`, `.table-wrap th`, `td` на тех же правилах. `koodo-reader` рендерит DOCX через mammoth-style HTML и тот же CSS. |

### «DOCX → крокозябры на кириллице / арабском / CJK»

| Поле | Значение |
| --- | --- |
| Где живёт | `DocxArchiveSupport.kt:348-354` (`resolveEmbeddedFontBytes`); `DocxArchiveSupport.kt` вероятно — функция декодирования текста |
| Корневая причина | Закодированные встроенные шрифты, у которых битый `fontKey` или инвалидная сигнатура → без проверки выходит мусор. В `bugs_status_20260523.md #5.б` уже ✅ FIXED: если `fontKey.isBlank()` → `null`, иначе сигнатура проверяется. |
| Защита | Уже есть: `hasValidEmbeddedFontSignature`, `deobfuscateEmbeddedFont`. Поддерживать актуальность — при апдейте библиотеки obfuskации шрифтов снова ломается. |

### «В DOCX цифры в footnote не подсвечиваются как в FB2/EPUB»

| Поле | Значение |
| --- | --- |
| Где живёт | `DocxRenderSupport.kt:139-153` (`renderDocxNoteReference`) |
| Корневая причина | Генерируется `<sup class="footnote-ref"><a href="#docx-footnote-$id">$label</a></sup>`. CSS-правило в `ReaderScreen.kt:1083` уже ловит `a[href^="#docx-footnote"]`, **но** `noteColor` не всегда доходит из-за `!important` каскада (см. `references/css-hygiene.md`). |
| Минимальный фикс | Убедиться, что стиль footnote-ref из `READER_DOCUMENT_CSS` действительно применяется (проверить через `WebView.evaluateJavascript("getComputedStyle(...)")`). В сложных случаях — добавить fallback как в `paintNoteRef` JS-блоке (L1091-1109): явно `style.setProperty('color', nc, 'important')`. |

### «DOCX параграф разбит по странице некрасиво»

| Поле | Значение |
| --- | --- |
| Где живёт | Результат работы `ReflowableDocument.paginateInternal` (см. `references/pagination.md`) |
| Корневая причина | Те же эвристики, что и для всего текста. Специфика DOCX — наличие `<w:tbl>`, у которого layout cost иной (`readerLayoutOverhead` L739 — 180 layout units, но это не учитывает содержимое ячеек). |
| Минимальный фикс | В `ReflowableDocument.kt:739` (`readerLayoutOverhead`) расширить ветку для `tag == "table"`: считать суммарный layout cost всех дочерних блоков + padding `+180`. Иначе таблицы часто недооцениваются, и страница «переполняется». |

## Что НЕ надо делать

- Не использовать `mammoth` (Node) для DOCX-парсинга — текущая Kotlin-реализация уже учитывает font obfuscation, namespace, `w:sdt`/`w:sdtContent`/`w:fldChar`/`w:instrText`/`w:del`/`w:moveFrom`. Переход на mammoth потеряет эти edge-cases.
- Не доверять `w:pStyle` без `w:rPr` — DOCX позволяет стиль задавать и там, и там. Текущий код обрабатывает оба места (`paragraphFontFamily` L267-276), но если меняешь — проверь оба источника.

## Smoke test

1. Открыть `samples/format-real-corpus/sample.docx`, найти таблицу, проверить `getBoundingClientRect()` ≥ 0 и `display != none`.
2. Встроить DOCX с шифрованным шрифтом Arial (см. `DocxArchiveSupportTest.kt:deobfuscateEmbeddedFont`), открыть, проверить, что нет «крокозябр» (визуально + grep логкэта на `InvalidSignatureException`).

## Verified-in

- `koodo-reader/src/utils/docx/*.ts` — mammoth-style путь, без obfuskации шрифта; они не открывают DOCX из шаринга.
- `fbreaderj` — поддержка DOCX через собственный `OdtReader`/`DocxReader`, очень старый и осторожный.
