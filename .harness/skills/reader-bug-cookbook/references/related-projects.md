# related-projects.md — внешние ридеры и точки входа

Когда встроенной логики в Mr.Comic недостаточно или нужно сверить,
как это делают другие — отсюда ссылки на конкретные файлы и места
в чужих open-source ридерах. Не использовать как «форкать и подменять»,
а как reference для принятия решения о стратегии.

## Активные проекты (поддерживаются, ~25+ ★)

### Foliate / foliate-js (основа Readest)

- **Репозиторий**: `https://github.com/johnfactotum/foliate-js`
- **Главный файл**: `src/layout.js` — функция `calculate(_width, _height, _gap)`, реализует `divisor` для spread/double-page (когда `width >= _minSpreadWidth` → spread), вычисляет column-width с учётом gap-fraction.
- **Главный файл 2**: `src/mapping.js` — CFI-индексация параграфов для перехода на якорь.
- **Главный файл 3**: `src/pagination.js` или аналог — split на страницы с правильным orphan/widow контролем.
- **Главный файл 4**: `src/footnotes.js` — inline-рендер (`<aside class="footnote-popup">` поверх родительского блока), click-outside для закрытия.
- **Когда брать**: при большом рефакторинге пагинации (см. `references/pagination.md` — долгосрочный fix). Для footnote-popup это «долгосрочный fix» из `references/footnote.md`.
- **Условие**: согласовать с пользователем переход с Kotlin-движка на CSS columns + JS.

### Readest (Next.js 16)

- **Репозиторий**: `https://github.com/readest/readest`
- **Файл**: `src/app/reader/[bookId]/page.tsx` (или близкое) — split-view в две колонки, snapshot через `@react-view-snapshots/core`.
- **Когда брать**: при желании добавить side-by-side режим (например, две локали одной книги).

### Koodo-Reader

- **Репозиторий**: `https://github.com/koodo-reader/koodo-reader` (27.3k ★)
- **Файл**: `src/utils/reader/book.ts` + `src/assets/styles/reader.css`.
- **Поддержка форматов**: EPUB, PDF, MOBI, AZW3, FB2, DOCX, RTF, MD, HTML, CBR/CBZ — все на одной читалке.
- **DOCX путь**: mammoth-style → HTML → применяется тот же reader.css.
- **Что взять**: готовый `css.reader.css` блок для `.table-wrap`, `.table-wrap th/td`. См. `references/docx.md` — там полная вставка.

### FolioReader-Android (Java)

- **Репозиторий**: `https://github.com/FolioReader/FolioReader-Android`
- **Файл**: `folioreader/src/main/java/folioreader/view/Config.java`, `folio-overlay/.../*.java`.
- **Особенность**: ViewPager-based с двумя `<WebView>` для spread (двойная страница).
- **Что взять**: идиомы для double-page spread; viewport split на два WebView'а с синхронизированным scroll.

### FBReader / ZLibrary

- **Репозиторий**: `https://github.com/geometer/FBReaderJ` (последняя публичная GPL-версия)
- **Файл**: `src/org/geometerplus/fbreader/fbreader/FBReaderApp.java`; `ZLTextView.java`.
- **Особенность**: свой собственный native-view движок пагинации, не WebView. Не применимо напрямую для Mr.Comic (мы используем WebView), но академически полезно — как выглядит правильный text-model без браузера.
- **Прогресс**: `lastVisibleElement / totalElements` — модель, по которой стоит переписать `shouldMarkCompleted`. См. `references/progress.md`.

### Anx Reader (Flutter) — текущий референс пользователя

- **Файл**: `anx-reader-analyzed/book_style.dart` — содержит `fontSize, lineHeight, letterSpacing, wordSpacing, paragraphSpacing, sideMargin, topMargin, bottomMargin, indent, maxColumnCount, columnThreshold`.
- **Что взять**: рефакторинг `ReaderStyleJsonExchange.kt` на аналогичную структуру для совместимости с импортом из Anx Reader.

## Komga Reader (Kotlin + Spring server, Android client)

- **Репозиторий**: `https://github.com/gotson/komga`
- **Issue**: `komga/issues/2203` — Footnote popups near the bottom of the page are cut off. **Конкретный bug, аналогичный нашему**, с workaround в комментариях.

## Tachiyomi / Mihon (только растровый)

- **Репозиторий**: `https://github.com/mihonapp/mihon`
- **Когда смотреть**: для паттернов debounce-префетча и viewport-aware memoization в растровом reader'е. Для текстового reader'а не применимо.

## Web-платформенная пьеса (для понимания Web)

### epub.js (FuturePress)

- **Репозиторий**: `https://github.com/futurepress/epub.js`
- **Файл**: `src/layout.js`, `src/mapping.js`, `src/paginate.js`.
- **CFI-индексация** — стандарт, не reinventing the wheel.
- **Что брать**: математику `cfi()` → DOM Range для точного перехода на якорь, если потребуется.

## Где не смотреть (плохие примеры)

- Крупные коммерческие ридеры (Moon+, ReadEra, PocketBook) — их код закрыт, но они уже внутри Mr.Comic как APK в `reference/apps/`. Использовать для UI/UX-исследования, не для кода.
- `readium-js` — старый, неактивный с 2018. Не брать как reference для нового кода.

## Когда обращаться к этим проектам

| Если задача касается… | Где искать reference |
| --- | --- |
| Большой рефакторинг PAGE-пагинации | foliate-js/src/layout.js + koodo-reader reader.css |
| Footnote-popup «правильно, не PopupWindow» | foliate-js/src/footnotes.js |
| CFI / точная навигация | epub.js/src/mapping.js |
| Reading progress (% без false-100) | FBReader J ZLTextWord |
| DOCX table/CSS | koodo-reader/src/assets/styles/reader.css |
| Двух-страничный spread | FolioReader-Android folio-overlay |
| Обложка в CSS без ImageView | html-css в koodo-reader/assets/styles |
| Анимации перелистывания (page-side-by-side) | transitions.dev компоненты (см. отчёт research) |

## Smoke test

Перед тем, как адаптировать чужой код:
1. Найди в их репо **самый простой тест**, который гарантирует корректное поведение (обычно это `test/*.ts` или `src/__tests__/*`).
2. Скопируй минимальный кейс в локальный unit-тест Mr.Comic.
3. Если их реализация проходит на наших семплах (`samples/format-real-corpus/*`) — адаптируй.
4. Иначе — остановись, ищи другой reference.
