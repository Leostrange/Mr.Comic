# Pagination Research — 2026-08-05

## Сводка: как устроена пагинация в Mr.Comic сейчас

### Архитектура

```
ReaderScreen
  └─ HtmlPageView (846 строк) — WebView + JS bridge
       ├─ ReaderPagedLayoutJs.kt (789 строк) — JS-алгоритм разбивки на страницы
       ├─ ReaderPagedLayoutMetrics.kt (30 строк) — метрики viewport
       ├─ ReaderSectionPagingPolicy.kt (22 строки) — политика секций
       ├─ DeferredPageCountPolicy.kt (104 строки) — отложенный подсчёт страниц
       └─ TextPagePaginationController.kt (144 строки) — контроллер пагинации
```

### Алгоритм (ReaderPagedLayoutJs.kt)

**WebView-based, column-breaking через JavaScript:**

1. Фиксирует `pageWidth` и `pageHeight` на `root` элементе
2. Убирает CSS `column-width` / `column-gap` / `column-fill`
3. Сканирует элементы body сверху вниз, определяя границы страниц по позиции `getBoundingClientRect()`
4. Применяет `transform: translateY(-pageHeight * pageIndex)` для показа нужной страницы
5. Кэширует раскладку страниц в `window.__mrcomicPageLayouts`

**Плюсы текущего подхода:**
- Быстрая навигация между страницами (transform, без пересборки DOM)
- Поддержка reflow при смене размера шрифта (пересчёт pageCount)
- Работает с любым HTML-контентом (EPUB, FB2, TXT...)

**Минусы:**
- Сканирование элементов при каждом расчёте — O(n) по количеству элементов
- Нет widow/orphan control (висячие строки)
- Сноски могут разрываться между страницами
- Изображения могут обрезаться на границе страницы
- Нет поддержки CSS fragmentation spec

---

## Как делают другие ридеры

### ReadEra (16 форматов, Java, обфусцирован)

Пагинация обфусцирована R8, но по косвенным признакам:
- Использует **кастомный layout engine**, не WebView
- Битовые флаги в Format enum управляют рендерингом
- Поддержка JNI для DjVu (нативный рендер)
- 3600+ Java-файлов — огромная кодовая база

### Moon+ Reader (Java, 314 файлов)

**CSS-based подход с кастомным View:**
- `MRTextView` + `MyLayout` + `SoftHyphenStaticLayout` — кастомный текстовый движок
- `MAX_HTML_SIZE = 1_000_000` — лимит на главу, разбивает большие главы
- `BaseEBook` → форматные классы с override для рендеринга
- **CSS engine** (`CSS.java`) — более полная поддержка CSS чем WebView
- `Chapter` — внутренний класс с HTML/CSS метаданными
- 3D page turn (`GoogleBook3D`) — визуальный эффект

**Ключевое отличие:** Кастомный layout engine вместо WebView. Плюс — полный контроль над разбивкой. Минус — сложность поддержки.

### Apple Books

- Использует **CSS Multicolumn** (`column-width`, `column-fill: auto`)
- Нативный WebKit рендеринг с аппаратным ускорением
- Paginated scrolling через `UIPageViewController`
- Поддержка вертикального письма (японский) через CSS `writing-mode`

### KOReader (open source)

- **Crengine** — кастомный C++ layout engine
- Полный контроль над разбивкой: widow/orphan, keep-with-next
- Поддержка CSS3 fragmentation
- Render per page, не per chapter

### FBReader

- **Собственный layout engine на C++**
- Кэширование страниц в бинарном формате
- Быстрая навигация по большим книгам

---

## Подходы к пагинации — сравнение

| Подход | Примеры | Плюсы | Минусы |
|--------|---------|-------|--------|
| **WebView + JS column-breaking** | Mr.Comic, Readium | Простота, любой HTML, reflow | Производительность JS, нет widow/orphan |
| **CSS Multicolumn** | Apple Books | Нативно, аппаратное ускорение | Нет контроля над разрывами |
| **Кастомный C++ layout engine** | KOReader, FBReader, Moon+ | Полный контроль, быстро | Сложность, нужна поддержка форматов |
| **Canvas-based рендеринг** | Kindle (частично) | Пиксельный контроль | Нет выделения текста, нет accessibility |

---

## Ключевые проблемы и решения

### 1. Widow/Orphan control (висячие строки)

**Проблема:** Абзац из 3 строк: 2 на одной странице, 1 на следующей.
**Решения:**
- CSS: `widows: 2; orphans: 2` — работает в браузерах, но не в WebView с transform-пагинацией
- JS: при обнаружении разрыва — сдвинуть всю группу на следующую страницу
- KOReader: `orphan-penalty` и `widow-penalty` параметры в layout engine

**Для Mr.Comic:** Добавить проверку в JS-сканере: если последний элемент на странице занимает меньше 2 строк — перенести его на следующую.

### 2. Сноски (footnotes)

**Проблема:** Сноска может разорваться между страницами.
**Решения:**
- Moon+: CSS-based, сноски в inline-block с `page-break-inside: avoid`
- Readium: `aside[epub:type='footnote']` с display: none во flow, показ в popup
- Apple Books: popover над текстом

**Для Mr.Comic:** Сейчас сноски обрабатываются через `ReaderFootnoteController`. Нужно добавить `page-break-inside: avoid` для popup-контента.

### 3. Изображения в тексте

**Проблема:** Картинка 400px высотой не помещается на страницу 300px.
**Решения:**
- Apple Books: авто-масштабирование до ширины страницы, скролл внутри страницы
- KOReader: `max-height: pageHeight` с пропорциональным сжатием
- Readium: CSS `max-width: 100%; height: auto; max-height: 100vh`

**Для Mr.Comic:** Добавить в JS-сканер: если `element.getBoundingClientRect().height > pageHeight` — применить `max-height: pageHeight; object-fit: contain`.

### 4. RTL / вертикальное письмо

**Проблема:** Японский (вертикальный), арабский (RTL).
**Решения:**
- CSS `writing-mode: vertical-rl` для японского
- CSS `direction: rtl` для арабского
- Apple Books: нативная поддержка через CoreText
- KOReader: специальный layout для вертикального текста

**Для Mr.Comic:** `ReaderTextSettingsJs.kt` уже применяет `direction: rtl` и `text-align`. Нужно протестировать `writing-mode` для японского.

### 5. Консистентность номеров страниц

**Проблема:** После смены шрифта номера страниц сдвигаются.
**Решения:**
- Readium: `page-progression-direction` + `page-list` из EPUB nav
- Kindle: `position` вместо page numbers (позиция в книге)
- KOReader: хранение позиции в символах/процентах, не в страницах

**Для Mr.Comic:** Использовать проценты (`progressPercent`) для сохранения позиции, не номера страниц. Номера показывать для UI, но позицию хранить в символах.

---

## Рекомендации для Mr.Comic

### P0 — Критические улучшения

1. **Widow/orphan контроль** — добавить 2-строчный минимум в JS-сканер
   - Файл: `ReaderPagedLayoutJs.kt`
   - Ожидаемый эффект: ровное распределение текста

2. **Обработка больших изображений** — `max-height` + `object-fit`
   - Файл: `ReaderPagedLayoutJs.kt`
   - Ожидаемый эффект: картинки не обрезаются

3. **Страничная консистентность** — хранить позицию в символах
   - Файлы: `TextPagePaginationController.kt`, `ReaderSectionPagingPolicy.kt`
   - Ожидаемый эффект: позиция не теряется после смены шрифта

### P1 — Значительные улучшения

4. **CSS Fragmentation** — использовать `break-inside: avoid` для сносок/цитат
   - Файл: `ReaderPagedLayoutJs.kt`

5. **Отложенная пагинация для больших книг** — пагинировать только видимые + соседние страницы
   - Файл: `DeferredPageCountPolicy.kt`

6. **Кэширование раскладки** — уже есть `window.__mrcomicPageLayouts`, можно улучшить

### P2 — Долгосрочные

7. **Переход на CSS Multicolumn** — отказаться от JS-сканера, использовать нативный CSS
8. **Кастомный layout engine** — как KOReader, если WebView станет узким местом

---

## Размеры файлов пагинации

| Файл | Строк | Назначение |
|------|-------|------------|
| `ReaderPagedLayoutJs.kt` | 789 | JS-алгоритм разбивки |
| `HtmlPageView.kt` | 846 | WebView + JS bridge |
| `TextPagePaginationController.kt` | 144 | Контроллер пагинации |
| `ReaderPagedLayoutMetrics.kt` | 30 | Метрики viewport |
| `DeferredPageCountPolicy.kt` | 104 | Отложенный подсчёт |
| `ReaderSectionPagingPolicy.kt` | 22 | Политика секций |
| **Итого** | **1935** | |

---

## Решение по P2: CSS Multicolumn (readerPagedCssColumnJs / readerPagedCssColumnTurnJs)

**ФИНАЛЬНОЕ РЕШЕНИЕ (2026-08-06): отклонено, код удалён из кодовой базы.**

Оценка:

- Функции добавлены в `255c37e` как эксперимент и никогда не вызывались из
  `ReaderWebView` — мёртвый код без пользовательского пути.
- Возвращаемый JSON отличается от TreeWalker-пути (`pageWidth`/`scrollWidth`
  вместо `layouts`/`characterOffset`), поэтому не совместим с текущим
  `decodeReaderPagedLayoutMetrics` и сломал бы восстановление позиции.
- В CSS Multicolumn-режиме отсутствуют все P0-фичи, реализованные в июле–августе:
  orphan guard, image clamp, media pages, shields, characterOffset — подключение
  было бы регрессом качества, а не улучшением.
- Подключение потребовало бы переключателя режима через ReaderWebView +
  настройку + отдельный декодер метрик и проверку на устройстве.

По итогам оценки функции `readerPagedCssColumnJs`/`readerPagedCssColumnTurnJs`
и их контрактные тесты удалены (коммит 2026-08-06). История в git сохраняет
эксперимент, если подход понадобится пересмотреть. Текущий TreeWalker-путь
остаётся единственным механизмом пагинации.

**Когда пересмотреть:** если TreeWalker-путь станет узким местом (медленная
пагинация больших книг, ~2000-страничный guard в `buildPages`) — тогда
восстановить из git и подключить через явный режим с A/B-проверкой.

---

*Составлено на основе: конкурентного анализа (ReadEra, Moon+), reader runtime audit, анализа кода Mr.Comic.*
