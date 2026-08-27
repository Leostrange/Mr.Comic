# Bug Tracker — 2026-08-21

Source: `C:\Users\xmeta\.minimax\v2\assets\2026\08\21\22-56-55-091-asset_20260821-225655-091_c61d5ed3341c_2fd6bd7f-Цель.md`
Status: **NEW — not yet triaged. Acceptance criteria not met for any item.**

## Цель

Зафиксировать отдельным issue актуальные нерешённые дефекты Mr.Comic, выявленные по видео, прикреплённому багтрекеру и статическому анализу APK. Этот issue самостоятельный и не заменяет, не объединяет и не изменяет ранее созданные issues.

## Актуальный scope

В список входят **16 активных багов**. Подтверждённо исправленные симптомы в этот issue не входят:

- автоскролл в вертикальном режиме, из-за которого появлялась лишняя пустая область/ошибка viewport;
- чёрная полоса снизу при автопрокрутке PDF/CBR;
- отображение файлов CBR как архивов RAR — подтверждено исправленным пользователем;
- crash при входе в «Настройки → Перевод → Словари» — исключён по требованию владельца текущего списка.

## Bugs

### Reader / vertical mode

#### `BUG-VERTICAL-01` — Рассинхронизация фактической позиции чтения и ползунка

**Priority:** P1
**Area:** Reader State / Scroll / Progress

В режиме «Вертикальная лента» положение ползунка перестаёт соответствовать фактической позиции текста. Необходимо свести состояние к цепочке `DocumentPosition → ScrollPosition → ReadingProgress → SeekBar`; ползунок не должен иметь независимый источник позиции.

#### `BUG-PAGED-01` — Случайное выделение текста при перелистывании

**Priority:** P2
**Area:** Gesture / Text Selection

Обычный swipe/tap периодически инициирует выделение текста. Выделение должно запускаться только намеренным жестом, например long press. Требуется разделить приоритеты `Tap → Long Press → Selection → Page Swipe`.

#### `BUG-PAGED-02` — Неодинаковые верхние и нижние отступы в постраничном режиме

**Priority:** P2
**Area:** Layout / Pagination / Insets

На разных страницах верхние и нижние отступы текста визуально отличаются; в отдельных форматах появляются пустые области или обрезается текст. Автоскролльный viewport defect из вертикального режима сюда не входит — он отмечен как исправленный.

Расчёт должен быть централизованным: `Screen height − System Insets − Reader Insets − Reader Padding = Page Viewport`.

#### `BUG-PAGED-03` — Сноски конфликтуют с зонами перелистывания

**Priority:** P1
**Area:** Gesture / Hit Testing / Footnotes

Если сноска находится у края экрана и попадает в область page gesture, нажатие перехватывается перелистыванием. Приоритет hit-test должен быть: `Footnote/Link → Interactive Content → Selection → Page Navigation`.

### Reader state / pagination / navigation

#### `BUG-READER-01` — Некорректный подсчёт количества страниц

**Priority:** P1
**Area:** Pagination Engine

Одно и то же текстовое произведение отображает разные значения общего объёма: могут смешиваться страницы главы, секции и всего документа. Pagination должна зависеть от `Document + Viewport + Font Metrics + Spacing + Padding`, а логическая позиция документа должна быть отделена от visual page count.

#### `BUG-READER-02` — Не сохраняется выбранный режим чтения

**Priority:** P1
**Area:** Persistence / Reader Preferences

После повторного открытия книги «Страницы» могут смениться на «Вертикальную ленту» или наоборот. `ReadingMode` должен храниться и восстанавливаться единообразно для каждой книги.

#### `BUG-READER-03` — Не сохраняется фактическая позиция чтения

**Priority:** P0
**Area:** Persistence / Reading Position

После выхода из книги или переключения режима пользователь возвращается не к последнему месту. Восстановление должно использовать canonical document location: section/chapter, content anchor и relative offset; visual page может быть только fallback.

#### `BUG-READER-04` — Глобальная рассинхронизация прогресса чтения

**Priority:** P0/P1
**Area:** Reader State / Progress

Chrome-панель, toolbar, информация о файле и карточка библиотеки могут показывать разные page count и проценты. Нужна единая модель `DocumentPosition → ReadingProgress 0..1 → Chrome/Toolbar/File Info/Library`, отделённая от `PaginationState`.

#### `BUG-READER-05` — Смена режима изменяет тему-пресет

**Priority:** P2
**Area:** State Isolation / Theme

Переключение «Страницы ↔ Вертикальная лента» изменяет или сбрасывает выбранный пресет. `ReadingMode` и `ReaderTheme` должны быть независимыми состояниями.

#### `BUG-READER-06` — HTML-название книги не помещается по ширине

**Priority:** P3
**Area:** HTML Reader / Layout

Длинное название книги выходит за доступную ширину и обрезается. Нужны ellipsis, перенос строк или ограничение количества строк без перекрытия соседних элементов.

#### `BUG-READER-07` — Оглавление не работает в некоторых форматах

**Priority:** P1
**Area:** TOC / Document Navigation

Оглавление отображается, но переход по некоторым главам не открывает соответствующее место документа. Нужна унификация `Format Parser → TableOfContents → DocumentLocation → Reader` для EPUB, FB2, HTML и других поддерживаемых форматов.

### Library / visual system

#### `BUG-UI-01` — Несогласованное оформление карточек библиотеки

**Priority:** P2
**Area:** Design System / Library

Format badge и progress badge на некоторых обложках имеют недостаточный контраст; плашки используют разные формы несмотря на общую настройку скругления. Нужны единые `ShapeTokens`, `ColorTokens`, `TypographyTokens` и гарантированный контраст.

#### `BUG-UI-02` — Некорректный пресет «День» в графическом ридере

**Priority:** P2
**Area:** Graphic Reader / Theme

Пресет «День» применяется неправильно или визуально похож на другой режим. Day/Sepia/Night должны давать предсказуемые и независимые наборы фона, текста и overlay colors.

#### `BUG-UI-04` — Неконсистентное применение цветов фона, поверхностей и карточек

**Priority:** P1
**Area:** Theme / Library / Contrast

Выбранный фон применяется не ко всем поверхностям: библиотека может оставаться с blur, а отдельные элементы теряют контраст. Все reader/library surfaces должны использовать единый theme token pipeline.

#### `BUG-UI-05` — Сломанный компонент preview кастомизации

**Priority:** P2
**Area:** Customization / Preview

В preview вместо ожидаемого элемента отображается warning-like значок или некорректный placeholder. Preview должен визуально соответствовать реальному компоненту и выбранным настройкам.

### Additional bugs confirmed by video

#### `BUG-CANDIDATE-01` — «Цитатник» не открывает исходную страницу или якорь

**Priority:** P1
**Area:** Quotes / Document Location / Navigation

Нажатие на сохранённую цитату не возвращает пользователя к точному месту, откуда она была создана. Нужно сохранять и разрешать `href`, fragment, DOM anchor, character offset или другую mode-independent document location; page number может оставаться только legacy fallback.

## Acceptance criteria

Для каждого бага должны быть добавлены воспроизводимый тестовый сценарий, ожидаемый результат, regression test и проверка минимум на затронутых форматах/режимах. Исправление считается готовым только после прохождения runtime-тестов на реальном Android-устройстве или emulator и проверки, что исправление не нарушает сохранение позиции, прогресс, TOC, selection и theme state.

## Не входит в этот issue

Этот issue не включает Dictionaries crash, исправленную чёрную полосу PDF/CBR, исправленный auto-scroll viewport defect в вертикальном режиме, исправленное отображение CBR как RAR и любые новые симптомы, которые не были подтверждены повторным воспроизведением.
