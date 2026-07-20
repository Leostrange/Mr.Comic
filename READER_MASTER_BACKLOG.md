# Mr.Comic Reader - главный backlog

Дата: 2026-07-16  
Статус: активный. Этот файл задаёт порядок работы над текстовым ридером. Детальные
доказательства, команды и скриншоты остаются в `text-reader-tasklist-2026-07-13.md`
и `reader-qa-artifacts/`.

## Цель релиза

Текстовый ридер корректно открывает поддерживаемые книги через системный пикер в
режимах `Страницы` и `Вертикальная лента`: не теряет и не дублирует текст, не
создаёт ложный прогресс, не режет строки, открывает сноски отдельно, не оставляет
пустые кадры при смене темы и не направляет текстовые архивы в графический ридер.

## Правила фокуса

1. Не начинать P1/P2, пока не закрыты блокирующие P0 из текущей волны.
2. Одна задача = одно воспроизведение, минимальное исправление, тест, артефакт QA.
3. Добавлять книги только через системный `OpenDocument` picker.
4. Каждый текстовый формат проверять в обоих режимах, с показанным и скрытым chrome.
5. Не считать задачу закрытой по одному unit-тесту: нужны тест и проверка устройства,
   если поведение видно читателю.
6. Все команды Gradle запускать из корня как `.\gradlew.bat`; Unix-вариант
   `./gradlew` в этом репозитории не использовать.

## Текущий фокус

### NOW-1. Закрыть popup длинной сноски

- [ ] Повторить на API 36 после последней сборки сценарий: маркер HTML -> peek ->
  expand -> внутренний scroll -> collapse/close.
- [ ] Проверить в двух состояниях chrome: скрыт и раскрыт.
- [ ] Проверить, что раскрытие не включает chrome принудительно и нижняя reader-панель
  не перекрывает popup.
- [ ] Сохранить скриншоты: peek, expanded, scroll-middle, scroll-end.
- Приёмка: весь текст длинной заметки доступен прокруткой, верх и низ панели не
  перекрывают строку, положение popup не зависит от места нажатия.
- Текущее изменение: `expandFootnote()` больше не раскрывает chrome; `ReaderScreen`
  скрывает expanded bottom panel при раскрытой сноске. Unit `ReaderChromeComponentsTest`
  прошёл (2/2); device-подтверждение ожидается.

### NOW-2. Закрыть HTML-сноски и проверить EPUB/FB2

- [ ] HTML: подтвердить повторно реальным touch WebView после новой сборки.
- [ ] EPUB: проверить `noteref`, обратную ссылку и тело сноски вне основного потока.
- [ ] FB2: проверить ссылку `type=note`, цифровой маркер и popup.
- [ ] Сверить текст каждой сноски с исходником.
- Приёмка: только маркер остаётся в чтении; тело заметки открывается по нажатию.

## P0 - целостность текста, страницы и позиция

### PAG-001. Итоговое число страниц

- [x] Исправлена немая подмена ошибки предварительным числом страниц.
- [ ] Прогнать смену книги во время подсчёта, отмену, повторное открытие и смену режима.
- Приёмка: один окончательный total используется в заголовке, слайдере, прогрессе и
  переходах; provisional total не выдаётся за окончательный.

### PAG-002. Границы секций: пропуски и повторы

- [ ] Прогнать быстрые вперёд/назад переходы на нескольких EPUB-главах.
- [ ] Прогнать слайдер, переход в TOC, возврат и повторное открытие.
- [ ] Добавить контрольные маркеры в начало/середину/конец каждой проверочной секции.
- Приёмка: маркеры следуют строго по порядку, без `Empty HTML`, пропусков и дублей.

### PAG-003. Обрезание текста сверху и снизу

- [ ] Матрица: маленький/обычный/максимальный шрифт x line-height x chrome hidden/expanded.
- [ ] Проверить portrait и landscape.
- Приёмка: первая и последняя строки визуальной страницы полностью видны.

### PAG-004. Заполнение страниц

- [ ] Замерить fill первой, средней и последней страниц в каждой главе.
- [ ] Исключить полупустые страницы, кроме конца главы, forced break и media/frontispiece.
- Приёмка: внутри обычной секции полезная высота стабильна, свободный хвост не возникает.

### PAG-005. Неизменность текста

- [ ] Сравнить нормализованный исходник с результатом TXT, FB2, EPUB и HTML парсеров.
- [ ] Проверить Unicode, мягкий дефис, zero-width spaces, кодировки и исходные переносы.
- [ ] Проверить отсутствие переноса внутри обычного слова в обоих режимах.
- Приёмка: буквы не превращаются в цифры; слова не разрезаются без исходного переноса.

### PAG-006. Единый fingerprint раскладки

- [x] Чистый `ReaderTextLayoutFingerprint` и тест параметров добавлены.
- [ ] Runtime: ориентация, ширина окна, режим, RTL и изменение шрифта должны
  инвалидировать раскладку ровно один раз.
- Приёмка: изменения layout-параметров перестраивают страницы; цвет - нет.

### PAG-007. Разделить координаты режимов

- [ ] Ввести и сохранять независимые locator-координаты для страницы и вертикальной ленты.
- [ ] При переключении переводить позицию через текстовый якорь, а не номер страницы.
- Приёмка: переключение возвращает к ближайшей фразе, не к приблизительной странице.

### PAG-008. Оракул целостности

- [ ] Собрать текст всех визуальных страниц WebView в тестовой среде.
- [ ] Сравнить с нормализованным документом и отдельно проверить отсутствие тел сносок.
- Приёмка: автоматический тест ловит потерю, дубль, перестановку и внедрение заметок.

### PAG-009. Жесты и выделение

- [ ] 100 свайпов вперёд/назад в page mode.
- [ ] Проверить long press и selection handles отдельно.
- Приёмка: свайп не выделяет текст; долгое нажатие сохраняет выделение.

### PAG-010. Вертикальная лента и system insets

- [ ] Скрытый chrome: текст не должен попадать под status bar.
- [ ] Показанный chrome: контент перестраивается без скачка позиции.
- Приёмка: верхняя строка не закрыта системными значками на всех состояниях.

## P0 - библиотека и сноски

### LIB-001. Прогресс новой книги

- [x] Модель не считает `pageCount=1` и placeholder progress завершённым чтением.
- [x] Новая HTML-книга через picker визуально не получила `100%`.
- [ ] Проверить свежий импорт EPUB, FB2, TXT и DOCX до первого открытия.
- Приёмка: `100%` появляется только после фактического достижения конца.

### NOTE-001. Отделение note body

- [x] HTML semantic footnote body извлекается в `footnoteMap` до разбиения секций.
- [ ] EPUB и FB2 аналогично подтвердить на устройстве.
- Приёмка: основной поток содержит маркер, не тело заметки.

### NOTE-002. Распознавание всех ссылок

- [ ] Единый тест-набор: `noteref`, `doc-noteref`, `fbanchor`, `#note-*`, `#fn-*`,
  `FbAutId_*`, FB2 note и цифровые ссылки.
- [ ] Добавить доступные label/role, если они теряются при sanitization.
- Приёмка: активный маркер заметен, доступен и открывает правильный текст.

### NOTE-003. Геометрия popup

- [ ] Закрыть NOW-1.
- [ ] Добавить unit-тест политики высоты с учётом top/bottom chrome и system inset.
- [ ] Добавить screenshot/instrumentation сценарий длинной заметки.
- Приёмка: popup не обрезается сверху/снизу и прокручивается внутри себя.

### STR-001. Frontispiece и forced break

- [ ] Подготовить EPUB с frontispiece, изображением и forced page break.
- [ ] Проверить, что соседние страницы не получают пустой хвост и не перескакивают.
- Приёмка: frontispiece отдельный структурный блок, а не случай страницы текста.

## P1 - форматы, контейнеры и производительность

### FMT-001. Матрица форматов

- [ ] TXT: UTF-8, UTF-16, Windows-1251, неверно объявленная кодировка.
- [ ] FB2: оглавление, сноски, изображения, кириллица.
- [ ] EPUB: reflow, frontispiece, сноски, CSS, TOC.
- [ ] HTML/HTM и Markdown: ссылки, таблицы, semantic notes.
- [ ] DOCX: абзацы, таблицы, merged cells, изображения.
- [ ] RTF: текст, изображения, кодировка.
- [ ] MOBI/AZW: открыть при реальной поддержке и явно зафиксировать ограничения.
- Для каждого: import picker, оба режима, position restore, повторное открытие.

### FMT-002. Текст внутри архивов

- [ ] Определять фактический внутренний формат до выбора reader container.
- [ ] Проверить TXT/HTML/EPUB в ZIP против CBZ/CBR.
- Приёмка: текстовый архив получает text palette и text reader, графический - graphic reader.

### FMT-003. Скорость открытия

- [ ] Измерить cold/warm open, секции, `getPageCount`, память и main-thread blocking.
- [ ] Кэшировать результаты безопасно по идентификатору файла и invalidate при изменении.
- Цель: повторное открытие быстрее cold; UI остаётся отзывчивым.

### FMT-004. DOCX-таблицы

- [ ] Поддержать rows, cells, `colspan`, `rowspan`, базовое форматирование.
- [ ] Добавить горизонтальную прокрутку без разрушения page layout.
- Приёмка: таблица не исчезает и остаётся читаемой на узком экране.

## P1 - темы, chrome и жизненный цикл

### UI-001. CUSTOM preset

- [ ] Сохранить custom colors при `CUSTOM -> built-in -> CUSTOM`.
- [ ] Отдельно проверить явный reset.

### UI-002. Пустой кадр при смене preset

- [ ] Применять CSS атомарно, сохраняя предыдущий кадр до готовности нового.
- [ ] Сохранить текущую позицию и не пересоздавать документ без необходимости.
- Приёмка: нет белого/пустого кадра и рывка позиции.

### UI-003. Палитры text/graphic

- [ ] Привязать палитру к фактическому выбранному engine/container.
- Приёмка: текстовые архивы не наследуют тёмный comic/manga слой.

## P1 - наблюдаемость и надёжность

### OPS-001. Аудит `runCatching`

- [ ] Разделить fallback, retry, user-visible error и programmer error.
- [ ] Запретить превращать загрузку/подсчёт/сохранение в мнимый успех.

### OPS-002. Reader diagnostics

- [ ] Структурированные события: format, engine, section, visual page, viewport,
  repagination reason, duration, fallback.
- [ ] Артефакт каждой QA-сессии привязать к версии APK и устройству.

### OPS-003. Закрытие ресурсов

- [ ] Идемпотентное закрытие reader/WebView/archive resources.
- [ ] Логировать ошибки закрытия без падения.

## P1 - обязательная декомпозиция

Архитектурный риск релизный: крупные `ReaderViewModel`, `ReaderScreen` и
`EpubFormatReader` препятствуют изолированным тестам и повышают вероятность регрессий.
Переносить логику только небольшими шагами после characterization-тестов.

### ARC-001. Контракты перед рефакторингом

- [ ] Зафиксировать тестами opening, paging, progress, mode switch, presets, footnotes,
  session close.

#### ARC-001 subtask order

- [x] ARC-001a: page-count retry and section-page reset characterization.
- [x] ARC-001b: chrome insets and layout fingerprint characterization.
- [x] ARC-001c: footnote anchor normalization, lookup candidates and anchor recognition.
- [ ] ARC-001d: page/vertical position hand-off characterization.
- [ ] ARC-001e: preset application and current-frame preservation characterization.
- [ ] ARC-001f: reader close/resource ownership characterization.

### ARC-002. `ReaderViewModel`

- [ ] Выделять session coordinator, pagination, progress, settings, footnotes и resources.
- Приёмка: ViewModel координирует state/use cases, не парсит формат и не измеряет layout.

#### ARC-002 subtask order

- [x] ARC-002a: `ReaderFootnoteAnchorPolicy` - normalize/candidates/classification.
- [x] ARC-002b: `ReaderFootnotePopupPolicy` - plain-text cleanup and presentation state.
- [x] ARC-002c: `ReaderNavigationPolicy` - visual page normalization, dual spreads and mode step.
  Engine/display and section coordinates remain in the existing `TextReaderNavigation` seam.
- [x] ARC-002d: `ReaderProgressPolicy` - persistence eligibility and completion guard.
- [ ] ARC-002e: `ReaderStylePresetReducer` - apply/reset/custom preservation.
- [ ] ARC-002f: `ReaderSessionCoordinator` - open/close, retries and resource lifecycle.

### ARC-003. `ReaderScreen`

- [ ] Выделять page container, vertical container, chrome/insets, gestures, notes,
  settings sheets.
- Приёмка: page и vertical не делят изменяемые координаты; UI не перезагружает документ.

#### ARC-003 subtask order

- [ ] ARC-003a: move `ReaderNotePanel` height/overlay policy behind pure inputs.
  Pure `ReaderNotePanelHeightPolicy` is connected and unit-tested; the required
  API 36 long-note screenshot/instrumentation scenario is still open.
- [ ] ARC-003b: isolate WebView gesture/selection bridge behind a tested controller.
- [ ] ARC-003c: isolate paged-layout JS construction and metrics decoding.
- [ ] ARC-003d: split page and vertical containers into independent composables.
- [ ] ARC-003e: split chrome, settings and secondary sheets from the reader root.

### ARC-004. `EpubFormatReader`

- [ ] Выделять ZIP/resources, OPF/navigation, sections, footnotes, CSS, page source.
- Приёмка: EPUB parsing независим от UI и покрыт fixture-тестами.

#### ARC-004 subtask order

- [ ] ARC-004a: OPF/package and spine parsing.
- [ ] ARC-004b: resource/archive access and lifecycle.
- [ ] ARC-004c: section/page-source construction.
- [ ] ARC-004d: footnote extraction and lookup map.
- [ ] ARC-004e: stylesheet normalization and asset URL rewriting.

### ARC-005. Границы модулей

- [ ] Ввести проверку отсутствия обратных зависимостей engine <- UI.
- [ ] Документировать владельцев состояния и потоки данных.

## P2 - тестовая инфраструктура

- [ ] Параметризованные pagination tests: viewport, orientation, font scale, fonts,
  spacing, margins, themes, RTL и языки.
- [ ] Instrumentation tests: picker import, 100 swipes, long press, note popup, chrome.
- [ ] Golden screenshots: first/middle/last page, long footnote, DOCX table, status inset.
- [ ] Performance benchmarks: first paint, full pagination, preset change, cold/warm archive.

## Единый порядок выполнения

1. NOW-1 и NOW-2.
2. PAG-002..PAG-010 и LIB-001.
3. NOTE-001..NOTE-003 и STR-001.
4. FMT-001 как матрица; найденные дефекты сразу заводить в FMT-002..FMT-004.
5. UI-001..UI-003, OPS-001..OPS-003.
6. ARC-001, затем ARC-002..ARC-005 по подсистемам, а не массовой переписью.
7. P2 закрепляет каждую закрытую волну до релизного прогона.

## Релизный шлюз

- [ ] `testDebugUnitTest` проходит полностью.
- [ ] Инструментальные тесты проходят на минимальном и целевом Android API.
- [ ] Все форматы FMT-001 импортированы через picker и проверены в обоих режимах.
- [ ] PAG-008 подтверждает отсутствие пропусков, дублей и перестановок.
- [ ] Нет известных P0; для каждого P1 есть владелец, решение и доказательство QA.
- [ ] Критические contracts вынесены из UI-монолитов и покрыты изолированными тестами.
