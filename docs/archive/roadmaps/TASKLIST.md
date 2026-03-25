# Mr.Comic Tasklist

Актуальный рабочий тасклист по проекту.

Точка отката:
- ветка: `codex/savepoint-20260311-0100`
- коммит: `68c8473`
- сообщение: `savepoint: before customization audit`

Дополнительная точка отката перед текущим этапом стилизации библиотеки:
- ветка: `codex/savepoint-library-styling-20260313-2049`
- коммит: `ddc3b26`
- сообщение: `savepoint: before library styling overhaul`

Файловый бэкап перед этим этапом:
- `C:\Users\xmeta\projects\Mr.Comic_backups\Mr.Comic_backup_20260313_200900`

## Уже сделано

- [x] Создана точка отката перед большим этапом доработок.
- [x] Починен базовый сценарий выбора фонового изображения для библиотеки:
  при выборе изображения библиотека автоматически переключается в режим `IMAGE`,
  при сбросе не остаётся в пустом image-режиме.
- [x] Усилены визуальные различия полок `GLASS / WOOD / NEON`.
- [x] Начато разведение карточек по типу контента:
  текстовые книги получили более "книжную" подачу,
  графические тома — более постерную/graphic novel подачу.
- [x] Сохранена рабочая сборка после последних изменений.
- [x] Добавлены художественные пресеты фона:
  `Paper Grain`, `Cinema Noir`, `Aurora Mist`, `Manga Ink`, `E-Ink Wash`.
- [x] Добавлены библиотечные zone-presets:
  `Dark Study`, `Light Greenhouse`, `Science Lab`, `City Library`.
- [x] Расширены варианты полок:
  `GLASS`, `OAK`, `WALNUT`, `STEEL`, `LACQUER`, `NEON`, `MINIMAL`, `NONE`.
- [x] Улучшен live-preview блока `Полки и фон`:
  превью держится сверху, а длинные параметры скроллятся отдельно.
- [x] Добавлены отдельные настройки:
  `overlay/backdrop strength`, `veil`, `shelf depth`, `card shadow`, `panel opacity`.
- [x] Добавлены графические пресеты обложек:
  `POSTER`, `INK`, `MINIMAL`.
- [x] Обложки прогресса переведены на более выразительный аналоговый medallion-стиль.

## Библиотека и кастомизация

### P1 — самое важное

- [x] Переделать стиль обложек:
  уменьшить “кремовость” карточек, ослабить декоративную подложку, сделать обложку главным визуальным элементом, уменьшить радиус скругления, привести `Poster / Ink / Minimal` к более разным и понятным ролям.
- [x] Развести фон библиотеки по темам:
  отдельный фон для светлой темы, отдельный фон для тёмной темы, отдельный фон для AMOLED; фон сделать атмосферным, а не сюжетным.
- [x] Убрать конкуренцию фона с карточками:
  сделать фон слабее по контрасту, уменьшить детализацию задника, добиться того, чтобы обложки считывались раньше фона.

### P2 — важное

- [x] Сделать пресеты оформления библиотеки:
  `Paper`, `Dark Shelf`, `AMOLED`, `Comics / Neon`, чтобы пользователь не собирал вид вручную из десятка переключателей.
- [x] Пересобрать стиль карточек по типам контента:
  книги — более спокойные и строгие, графические тома — более витринные, папки — как коллекции, а не как UI-заглушки.
- [x] Сделать папку визуально ближе к коллекции:
  меньше ощущения “системной папки”, больше характера библиотечной подборки, при необходимости через превью обложек или более нейтральный контейнер.

### P3 — косметика

- [x] Подчистить превью в настройках библиотеки:
  сделать live preview ближе к реальному экрану, лучше показать различия между стилями обложек и фонов.
- [x] Снизить визуальный шум в сетке:
  чуть тише тени, меньше декоративных акцентов вокруг карточек, прогресс оставить, но сделать тоньше.
- [x] Сделать один рекомендованный дефолт:
  нужен один “эталонный” стиль библиотеки, от которого всё дальше пляшет.

## Reader UI / UX

- [x] Убрать дублирование счётчика страниц между верхней и нижней панелью в text reader.
- [x] Верхнюю панель text reader привести к логике:
  название файла + нужные действия, без лишних дублей.
- [x] Нижнюю панель в landscape для комиксов/манги/вебтуна держать компактной,
  чтобы слайдер страниц всегда оставался видимым.
- [x] Довести прозрачность нижних/верхних reader-панелей до реальной привязки к теме.
- [x] Полностью дочистить локализацию reader UI:
  меню, настройки текста, подсказки, панели, action labels.
- [x] Проверить систему закладок и довести сценарии добавления/удаления/перехода.
- [x] Добавить таймер отдыха для глаз:
  настройка интервала в системных настройках и напоминание прямо во время чтения.

## Цитатник

- [x] Добавить сохранение цитаты из ридера.
- [x] Добавить прямое действие `Сохранить цитату` в меню выделения текста.
- [x] Разграничить библиотеку на два раздела:
  `Файлы` и `Цитатник`.
- [x] Добавить отдельный список цитат в библиотеке с переходом обратно к книге и странице.
- [x] Добавить удаление цитаты.
- [x] Добавить backup / restore для цитат.
- [x] Стабилизировать цитатник как отдельный раздел библиотеки:
  недоступный источник книги больше не выглядит как рабочая ссылка,
  а `comicTitle/comicPath` в сохранённых цитатах теперь синхронизируются при rename, backup/import и перепривязке доступа.
- [x] Развести визуальные тома и книги внутри файловой библиотеки:
  при смешанной подборке комиксы/манга/вебтун теперь отделяются от текстовых книг явным section-divider'ом,
  чтобы `CBZ/CBR/PDF/...` не смешивались в одной непрерывной ленте с `EPUB/FB2/TXT/...`.
- [x] Довести shell цитатника до отдельного режима библиотеки:
  при переключении в `Цитатник` теперь закрываются файловые controls/filter sheet,
  а сверху показывается собственный quote stats bar вместо file/completion statistics.
- [x] Убрать file-only top bar controls из `Цитатника`:
  quote-раздел больше не показывает hamburger badge, view toggle, thumbnail/menu и file add-actions,
  а title top bar переключается на `Цитатник`.

## Хвосты библиотеки

- [x] Убрать runtime-пасхалки из обычного режима библиотеки:
  больше не показывать скрытые overlay поверх библиотеки и не держать их на статистике/долгом нажатии.
- [x] Подровнять высоту карточек и текстовых блоков в библиотеке:
  уменьшить разнобой между обычными файлами, графическими томами и папками.
- [x] Ослабить декоративный фон за реальными обложками:
  при наличии настоящей обложки не перетягивать внимание тяжёлой подложкой.
- [x] Выровнять высоту обложек в сетке:
  единая пропорция для обычных книг, графических томов и папок при прямоугольном режиме.
- [x] Переработать визуал полок под карточками:
  сделать полки тоньше, мягче и без тяжёлой полосы/тени под каждым элементом.

## Производительность и адаптация под железо

- [x] Ввести профили устройств:
  `low-end`, `mid-range`, `high-end`, `e-ink`.
- [x] Подключить device-tier политику для preload, качества bitmap и анимаций.
- [x] Интегрировать `BitmapPool` в реальный decode/render pipeline.
- [x] Добавить sampling decode для image-форматов под размер viewport, а не всегда в полный размер.
- [x] Для `PDF` сделать high-res zoom tier:
  при большом масштабе запрашивать более детальный рендер, а не просто растягивать bitmap.
- [x] Для комиксов/манги/вебтуна доработать zoom так, чтобы качество картинки не расплывалось при увеличении.
- [x] Оптимизировать импорт `content://` файлов, чтобы меньше копировать в `filesDir` без необходимости.
- [x] Проверить memory pressure на длинных webtoon и больших PDF.
- [x] Для слабых устройств уменьшать preload и aggressive cache автоматически.
- [x] Для слабых устройств уменьшать анимации автоматически.
- [x] Для e-ink отключать лишние анимации и тяжёлые визуальные эффекты библиотечного фона.

### Hot spots по производительности

- [x] `BitmapPool.kt:9`:
  пул bitmap теперь подключён к `PDF` и image decode path через pooled `BitmapFactory` helpers (`inBitmap`).
- [x] `PagePreloader.kt:17`:
  прелоадер уже ограничивает окно страниц, это хорошая база, но её нужно связать с профилями устройств.
- [x] `PdfFormatReader.kt:58`:
  `PDF` теперь умеет discrete high-res render tiers для zoom, а `PageView` поднимает качество страницы по мере увеличения.
- [x] `ZipFormatReader.kt:43`:
  `CBZ/ZIP` переведены на device-tier sampling под размер viewport; тот же decode-policy теперь применён и к `CBR/RAR`.
- [x] `FolderFormatReader.kt`, `SevenZFormatReader.kt`, `TarFormatReader.kt`:
  image-based readers тоже переведены на viewport-aware sampling и high-res zoom tiers.
- [x] `ComicRepository.kt:69`:
  одиночный `content://` импорт больше не копируется в `filesDir/library` по умолчанию; сначала используется прямой URI-доступ, а копия остаётся только fallback-путём.
- [x] `ComicRepository.kt:762`:
  путь с копированием `content://` файлов переведён на более экономный режим с direct-read first.

### Конкретный план по perf

- [x] Ввести профили устройств `low / mid / high / eink`.
- [x] Сделать sampling decode для image-форматов под размер viewport.
- [x] Сделать настоящий high-res zoom tier для комиксов.
- [x] Сделать настоящий high-res zoom tier для PDF.
- [x] Подключить `BitmapPool` в PDF/image decode pipeline.
- [x] Сделать динамический preload по RAM-классу устройства.

## Новые форматы чтения

### Текущее состояние

- [x] Уже поддерживаются:
  `CBZ`, `CBR`, `PDF`, `EPUB`, `FB2`, `ZIP`, `RAR`, `7Z`, `TAR`, `FOLDER`,
  `TXT`, `HTML`, `HTM`, `XHTML`, `Markdown`, `RTF`, `MOBI`, `AZW3`, `DOCX`, `ODT`.

### Быстрый приоритет

- [x] Добавить `TXT`.
- [x] Добавить `HTML / HTM / XHTML`.
- [x] Добавить `Markdown`.

### Средний приоритет

- [x] Добавить `RTF`.
- [x] Добавить `DOCX / ODT`.
- [x] Добавить `MOBI / AZW3`.

### Отдельный этап

- [ ] Добавить `DjVu`.
- [ ] Подобрать и интегрировать стабильный `DjVu` renderer/decoder под Android.
- [ ] Добавить cover extraction / page count / page render для `DjVu`.
- [ ] Проверить, как `DjVu` будет вести себя в zoom и preload pipeline.
- [x] Stage 0 для `DjVu`:
  формат распознаётся, импортируется и открывается в ридере с честным встроенным сообщением,
  пока отдельный renderer ещё не подключён.

### Приоритет по сложности

- [x] Быстро добавить:
  `TXT`, `HTML / HTM / XHTML`, `Markdown`.
- [x] Средняя сложность:
  `RTF`, `DOCX / ODT`, `MOBI / AZW3`.
- [~] Отдельный этап:
  `DjVu`, потому что он потребует отдельного renderer/native/lib-пути, но текущая архитектура под это подходит.

## Технический долг и системные улучшения

- [x] Полный sweep по hardcoded UI-строкам в `LibraryScreen`, `ReaderScreen`, `SettingsScreen`:
  основные пользовательские строки и ошибки уже вынесены/локализованы;
  дополнительно цитатник в `LibraryScreen` переведён на общий `AppStrings` вместо локальных `when(language)` helper-ов;
  библиотечный подраздел `SettingsScreen` дополнительно переведён на единый text-layer для tab labels/hints, saved themes, image background option и group-by labels;
  дальнейшие проблемы локализации в этих экранах будут уже не “большим sweep-пакетом”, а точечными regression-багами, если всплывут в ручной проверке.
- [x] Убрать локальный `tr(...)` и определение языка через `navLibrary` из `LibraryScreen`.
- [x] Добрать utility/plural-подписи библиотеки:
  количество файлов, папок, томов, наборов и общий счётчик уже вынесены в helper-функции `AppStrings`;
  если что-то ещё всплывёт в ручной проверке, это будет уже точечный regression, а не незавершённый пакет.
- [x] Дочистить `SettingsScreen`:
  главный экран настроек, секция `Кастомизация`, библиотечный подраздел и системный reader-подраздел уже переведены на централизованные language-aware тексты;
  дополнительно дочищены search/command-center/quick-reading, пресеты Paper/Night Ink/E-Ink, density/surface labels, quick blocks и библиотечные labels для background/card-style/cover-scale;
  отдельно добраны labels для graphic cover styles, shelf styles, sorting chips, tab labels/hints, saved themes и group-by labels внутри блока библиотеки;
  дополнительно локализованы section lead'ы и пользовательские строки в блоках `Перевод и OCR`, `Резервная копия и обслуживание`, `О приложении` и `Достижения`;
  дальше здесь остаются только точечные regression-случаи, если всплывут при ручной проверке.
- [x] Локализовать runtime-сообщения `SettingsViewModel` для backup/cache/repair:
  clear-cache, export/import и перепривязка доступа теперь используют app-language-aware helper'ы,
  а fallback-лейбл `Untitled` в backup/import тоже больше не зашит только на одном языке.
- [x] Дочистить app-shell локализацию и runtime-тексты:
  `ContinueScreen`, `App Icon`, `CrashReport` и app load-error теперь сидят на общем app-level text-layer;
  `MainActivity` нормализует app language перед раздачей `LocalStrings`,
  а `AppIconManager` больше не носит внутри себя русские name/description payload'ы как скрытый источник будущих mixed-language регрессий.
- [x] Отдельным аккуратным проходом дочистить `ReaderScreen`, не ломая текущий UX ридера:
  видимые строки error-state, note-panels, TOC/bookmarks, text settings и reader chrome уже переведены на language-aware helper;
  ошибка сохранения цитаты тоже вынесена в `ReaderUiText`, без локального `when(language)` в `ReaderViewModel`;
  оставшиеся строки здесь — это уже централизованные text-layer helper'ы, технические форматтеры и осознанные символы интерфейса, а не незавершённый localization sweep.
- [x] Свести language switching к одному источнику истины без смешения локализации через ресурсы и `AppStrings`.
- [x] Добавить regression-checklist для критических сценариев:
  библиотека, reader, zoom, фоны, полки, импорт файлов, смена языка.
- [x] Добавить smoke-набор ручной проверки для каждого debug APK.
- [x] Вынести библиотечные visual presets в отдельный data-layer, а не хранить только строковыми ключами в UI.

## Рекомендуемый порядок выполнения

- [x] Этап 1: довести `Полки и фон` + live preview + image background.
- [x] Этап 2: завершить content-aware styling библиотеки (`книга / graphic novel / папка`).
- [x] Этап 3: оптимизация reader pipeline и качества zoom.
  Завершено:
  - image reader и webtoon теперь реально запрашивают higher render-quality tiers (`q2 / q3`) при увеличении масштаба, вместо простого растягивания базового bitmap;
  - export текущей страницы в OCR теперь предпочитает более детальный render tier, если он уже есть или может быть быстро декодирован;
  - webtoon-scroll меньше дёргает `navigateTo()/saveProgress/preloadAround`, потому что обновление текущей страницы слегка debounce'ится;
  - high-quality render tiers теперь активнее подчищаются при переходе на другую страницу, чтобы качество zoom росло без тихого расползания памяти по соседним страницам;
  - после навигации reader прогревает higher-quality tier для текущей страницы/разворота на mid/high-end устройствах, чтобы zoom становился резче быстрее;
  - delayed high-res warmup теперь latest-only:
    если пользователь быстро ушёл на другую страницу, сменил режим или открыл другую книгу, старый warmup-job больше не должен докодировать уже неактуальные `q2/q3` страницы в фоне;
  - progress save теперь debounce'ится и не пишет одинаковую страницу в базу повторно при быстром webtoon-scroll/slider scrub;
  - отложенное сохранение прогресса теперь привязано к `comic.id`, а не только к номеру страницы:
    при быстром переходе между книгами pending save сначала flush'ится для старой книги и не может тихо записаться уже в новую сессию чтения;
  - `PagePreloader` дедуплицирует in-flight page decode'ы, так что параллельные запросы одной и той же страницы/качества не гонят повторный render;
  - смена reading mode (`PAGE / DUAL_PAGE / WEBTOON`) теперь тоже синхронно подтягивает preload, warmup, note и progress для новой якорной страницы/разворота, а не меняет только UI-state;
  - preload-окно и первый вход в книгу теперь считаются от реально видимых страниц/разворота, а не только от anchor-page;
  - text-reader больше не тянет image-pipeline по инерции:
    для EPUB/FB2/TXT/HTML/Markdown/RTF/MOBI/AZW3/DOCX/ODT отключены bitmap preload, high-quality retention и zoom warmup, которые всё равно не дают пользы текстовой странице;
  - загрузка page translation note переведена на latest-only путь, поэтому при быстром переходе между страницами не должна кратко всплывать заметка от прошлой страницы.
  - удержание high-quality render tiers (`q2 / q3`) теперь следует за реальным zoom-focus:
    в обычном page-reader оно держится на текущем zoomed page/spread,
    а в webtoon — на реально увеличенной странице, а не только на `currentPage` из scroll-state.
  - `PagePreloader` теперь не перезапускает один и тот же базовый preload-window повторно, если окно страниц не изменилось и нужные base pages уже в кэше.
  - zoom/scroll state больше не должен прилипать между разными книгами или повторными входами в одну и ту же книгу:
    `PageView` и `WebtoonView` теперь ключуют внутреннее gesture/list state по `comic.id`,
    а повторный выбор уже активного reading mode или текущей страницы больше не запускает лишний sync/preload/save проход.
  - при открытии новой книги reader теперь сразу сбрасывает `TOC / bookmarks / page note / inline footnotes`,
    а `loadToc()` корректно очищает оглавление и для книг без TOC, так что старые данные не должны мелькать или залипать между книгами.
  - асинхронные загрузки `bookmarks` и `pageTranslationNote` теперь тоже привязаны к конкретному `comic.id`,
    поэтому при быстром переключении между книгами не должны доезжать закладки/заметки от предыдущей книги только потому, что номер страницы совпал.
  - `PagePreloader` теперь session-aware не только по preload-window, но и по самим bitmap/in-flight ключам:
    cache и decode-пути привязаны к конкретному `FormatReader`, так что страницы разных книг с одинаковым page index больше не делят один и тот же internal key.
  - `currentHtmlContent` в text-reader теперь latest-only:
    старая HTML-страница не должна доезжать позже и затирать уже активную страницу после быстрого перехода.
  - text-reader больше не наследует `WEBTOON` как стартовый режим от прошлой image-сессии:
    для EPUB/FB2 и других text-formats отдельно хранится последний page-based portrait mode (`PAGE_LTR / PAGE_RTL`),
    а восстановление reader preferences в landscape больше не форсит `DUAL_PAGE` для сохранённого `WEBTOON`.
  - image-pipeline для text-reader теперь отключён и на самом первом открытии книги:
    `openComic(...)` больше не запускает `preloadAround(...)` для text-formats, а навигационный `requestedPage` теперь расходуется один раз и не может повторно сдвигать старт следующих книг в той же reader-сессии.
  - tap-зоны reader-а теперь уважают `PAGE_RTL`:
    левый/правый край страницы переключают направление одинаково для text-reader, page-reader и webtoon, а не только для кнопок в expanded toolbar.
  - открытие книги переведено на latest-only путь:
    быстрый переход между книгами теперь отменяет старый `load/open` job, reader preferences сначала восстанавливаются последовательно, а не догоняют книгу позже;
    заодно `requestOcr()` из reader-а теперь тоже latest-only, пишет уникальный temp PNG и не должен открывать OCR уже после смены книги/страницы.
  - page-scoped UI тоже дочищен:
    при открытии новой книги закрываются `Text settings`, а при переходе на другую страницу не тянется footnote от прошлой страницы.
  - stale open-request дополнительно зажат между фазами `openComic(...)`:
    устаревший запрос теперь проверяется не только в начале и конце, но и перед разрушительными шагами (`clearPages/close/createReader/getPageCount`),
    чтобы быстрый переход на другую книгу не успевал очистить уже активную новую сессию.
  - dual-page нормализация теперь идёт через один helper:
    открытие книги, навигация, visible spread и смена reading mode используют один и тот же even-page anchor, поэтому spread не должен тихо жить на odd-page.
  - opening mode новой книги теперь учитывает сам формат:
    текстовые книги не должны стартовать со “spread-aligned” страницы после предыдущего комикса в `DUAL_PAGE`.
  - `loadPage()` теперь захватывает конкретный `FormatReader` перед async-запуском,
    а локальный UI-state `ReaderScreen` (`brightness row`, eye-rest dialog) сбрасывается по `comic.id`, чтобы новая книга не наследовала открытые элементы прошлой.
  - `PageView` больше не анимирует mode-switch или большие page-jump'ы как соседний page-flip:
    при смене layout (`single <-> dual`) и дальних переходах теперь идёт чистый cut, а не ложный slide.
  - landscape auto-spread теперь уважает явный `WEBTOON`:
    wide-screen reader не должен молча возвращать книгу в `DUAL_PAGE`, если пользователь реально выбрал webtoon-режим.
- [x] Этап 4: добавить `TXT`, `HTML`, `Markdown`.
- [~] Этап 5: отдельным этапом заняться `DjVu`.
  Уже начато:
  - `DjVu` переведён с одной только текстовой заглушки на pluggable backend-path:
    у формата теперь есть отдельный `DjvuBackend`, так что будущий renderer можно будет подключить без перелома `FormatFactory` и reader pipeline;
  - пока backend остаётся безопасным placeholder-путём, но сам `DjVu` reader уже честно сообщает runtime-status backend-а и не маскирует состояние как "просто пустой файл";
  - для `DjVu` добавлена отдельная placeholder cover generation, поэтому такие документы больше не висят в библиотеке пустыми карточками без обложки.
  - зафиксировано текущее исследование renderer-вариантов и лицензий:
    [DJVU_RENDERER_RESEARCH.md](C:/Users/xmeta/projects/Mr.Comic/DJVU_RENDERER_RESEARCH.md)

## Рекомендованный следующий пакет

- [x] Довести блок `Полки и фон` до полноценного состояния:
   - [x] новые shelf presets (MAHOGANY, CHERRY, MAPLE, BLACK_METAL)
   - [x] настоящие generated backgrounds
   - [x] реальный preview фонового изображения
- [x] Сделать content-aware library styling:
  книги, графические романы, папки.
- [x] После этого взять `TXT / HTML / Markdown`.
- [~] Затем отдельным этапом заняться `DjVu`.

## Перевод текста и комиксов

### Текущее состояние

- [x] Зафиксировать отдельное ТЗ на модуль перевода:
  [TRANSLATION_MODULE_TZ.md](C:/Users/xmeta/projects/Mr.Comic/TRANSLATION_MODULE_TZ.md)
- [x] Подтвердить текущий `stage 0`:
  есть `feature-ocr`, ML Kit OCR, ML Kit on-device translation, переход из ридера и сохранение перевода как заметки.
- [ ] Перевести текущий `feature-ocr` из demo/stage-0 режима в нормальный production pipeline.
  Уже сделано:
  - пакет нельзя считать закрытым окончательно:
    это всё ещё активный трек, а не "готовый большой OCR / translation-пакет";
    runtime-проверка от `2026-03-21` заново открыла его из-за реальных сбоев `ja/pl` в manual/OCR routing и OCR image-source path,
    так что до полного regression-pass по manual, image OCR, offline и online transport секция остаётся в работе;
  - disk-backed page cache для OCR-блоков и overlay-переводов;
  - результаты страницы теперь переживают повторный вход в OCR-экран и перезапуск процесса лучше, чем при чистом in-memory `LinkedHashMap`;
  - cache key стал source-aware: для OCR-страницы учитывается отпечаток исходного файла/источника, чтобы старый OCR/overlay не прилипал после изменения файла;
  - OCR page-cache получил schema versioning и age-based pruning, чтобы устаревшие снапшоты не тянулись бесконечно между тестами и старыми сборками.
  - из `feature-ocr` убран неиспользуемый `SimpleTranslateScreen` и старые репозиторные helper-методы раннего demo-пути;
  - standalone экран `OCR / Перевод` из навигации теперь умеет выбирать изображение страницы и запускать реальный OCR / overlay pipeline, а не сводится только к ручному текстовому полю.
  - standalone OCR-изображение теперь сохраняется через `SavedStateHandle` и хранится в app files storage, а не только во временном cache-пути;
  - для standalone режима появился явный сброс обратно в ручной текстовый режим.
  - `OcrScreen` переведён на отдельный `OcrUiText` слой вместо россыпи жёстких строк и смешанных лейблов раннего прототипа.
  - manual/standalone режим теперь использует полный translation language catalog для языка источника, а не урезанный OCR-only список;
  - manual перевод в `OcrScreen` теперь повторяет reader-side routing:
    single-word запросы получают словарный fallback вместо глухой MT-ошибки, а backend-ошибки локализованы и приведены к понятным сообщениям.
  - manual/standalone режим теперь получил и post-translation actions:
    можно открыть `Словарь` для одного слова, вызвать `Объяснить` для введённого текста и увидеть отдельные dictionary/explain cards, а не только один плоский translation result.
  - OCR runtime-сообщения и ошибки вынесены из `OcrViewModel` в отдельный helper-слой:
    success/error тексты, explain/cleanup/dictionary fallback и page preview description больше не зашиты прямо в логике экрана.
  - `DefaultComicTranslationEngine` больше не возвращает сырые English fallback-ошибки для page/block translation:
    backend-unavailable пути сводятся к доменному `TranslationBackendUnavailableException`, а пользовательский текст подставляется уже на уровне OCR UI.
  - standalone/manual `OcrScreen` получил ещё один UX-pass:
    длинные action-ряды переведены на `FlowRow`, dismiss-действия в success/error карточках больше не выглядят как сырой `×`,
    а часть речи в словарной карточке manual-режима локализуется так же, как и в OCR explain path.
  - manual/standalone result card теперь показывает честный профиль результата:
    chip с реально сработавшим режимом (`Dictionary / Offline / Online`) и chip с языковой парой, как в reader-side translation flow.
  - состояния standalone/manual OCR подчистены через отдельные state-reset helper-ы:
    при переходах между manual/image сценарием больше не должны прилипать старые `saveMessage`, error-state, block-selection и карточки словаря/объяснения из предыдущего подрежима.
  - экран `OCR / Перевод` теперь оформлен как явный двухрежимный flow:
    сверху есть отдельная mode-card для `Текстовый режим` и `OCR-режим по изображению`, с понятным описанием текущего сценария и его главным действием.
  - верх экрана `OCR / Перевод` больше не выглядит как техшапка:
    source / target / transport собраны в единый `Профиль перевода`, с mode-aware label (`Язык текста` / `Язык OCR`), кратким summary-chip профилем и более человеческой подсказкой, что транспорт берётся из настроек.
  - manual text mode собран в отдельный action-card:
    перевод, словарь, объяснение и копирование результата теперь живут как единый сценарий с контекстной подсказкой для `одно слово` vs `фраза`, а не как просто поле ввода и разрозненные кнопки ниже.
  - image OCR mode теперь тоже собран в отдельный page action-card:
    перевод страницы и `Только OCR` больше не висят как два тех-действия под превью, а сопровождаются контекстной подсказкой и кратким статусом по найденным/переведённым блокам.
  - неанглийские language pairs больше не упираются так рано в ложный `ONLINE` dead-end:
    `MlKitOfflineTranslationEngine` теперь может докачать on-device model прямо в explicit translate flow, `SafeOnlineTranslationEngine` всегда пробует этот offline fallback,
    а single-word explain в reader/OCR больше не блокируется глобальным explain toggle, если локальное словарное пояснение уже доступно.
  - `RoomDictionaryEngine` получил bridge fallback через English gloss/translation:
    если в Kaikki-данных нет прямого перевода на target language, движок пытается дотянуть результат через bridge term, а не показывать только source-language gloss.
  - OCR screen теперь строже ведёт себя во время операций:
    конфликтующие действия и переключения режима/языков блокируются, пока идёт OCR/translation/explain/cleanup,
    а сверху показывается единый busy-state с текущей активной операцией вместо ощущения "экран завис или проглотил тап".
  - экран теперь прямо показывает, что доступно для текущей языковой пары:
    словарь, offline-пара, установлен ли offline model, можно ли её докачать сейчас и как работает explain для слова/фразы;
    оттуда же можно заранее подготовить offline model без пробного перевода "вслепую".
  - карточка OCR-блока стала полноценным рабочим инструментом:
    она показывает detected language, переводный runtime-профиль, умеет повторно запускать OCR по самому блоку,
    очищать stale translation после обновления OCR и заново переводить блок прямо из sheet'а, в том числе явными `Auto / Offline / Online` действиями.
  - в настройки перевода добавлены реальные overlay-настройки для комиксов:
    opacity, font scale и style (`Auto / Light / Dark`) теперь сохраняются в `DataStore` и напрямую влияют на `OverlayRenderer`,
    так что OCR overlay можно настраивать не только логикой фильтров, но и визуально под конкретное устройство/тему.
  - explain для фраз и OCR-реплик больше не сводится к аккуратной заглушке:
    `SafeLlmExplainEngine` теперь собирает локальное пояснение из прямого перевода, типа источника, тона фразы и OCR-confidence,
    а для выбранного OCR-блока дополнительно передаётся соседний контекст страницы (`contextBefore / contextAfter`), чтобы объяснение не жило "в вакууме".
  - локальный explain больше не блокируется тумблером "расширенного" explain:
    reader и OCR всегда могут дать базовое локальное пояснение для фразы, а сам переключатель в настройках теперь описывает именно будущий расширенный explain-provider;
    в карточке OCR-блока соседний контекст страницы показывается ещё и явно в UI, а не только уходит внутрь explain-запроса.

### Этап 1 — Text Translation MVP

- [x] Добавить domain-модели:
  `TranslationRequest`, `TranslationResult`, `DictionaryEntry`, `OcrBlock`, `OverlayBlock`.
- [x] Добавить `LanguageDetector`.
- [x] Добавить `LookupRouter`.
- [x] Добавить `OfflineTranslationEngine`.
- [x] Добавить `OnlineTranslationEngine` интерфейс и безопасный fallback-путь.
- [x] Реализовать перевод выделенного текста в книгах.
- [x] Реализовать словарный режим для одного слова.
- [x] Скачать и встроить свободно используемые локальные словари для MVP-пар:
  `en-ru`, `ru-en`, `en-ja`, `ja-en`, `ja-ru`, `en-zh`, `zh-ru`.
- [x] Подключить Room-compatible offline dictionary layer с prepackaged SQLite DB и fallback на текущий FreeDict/MT lookup.
- [x] Закрыть Room tech debt словаря:
  добавить индексы по `entry_id`, синхронизировать builder-схему и убрать KSP-предупреждения.
- [x] Реализовать bottom sheet для слова / фразы.
- [x] Добавить настройки:
  source language, target language, mode `offline / online / auto`, explain toggle.
- [x] Расширить translation language catalog по материалам из `Ocr update`.
  Сделано:
  - runtime поддерживает новые языки `fr`, `it`, `pl`, `tr`, `pt-BR` в `Settings / Reader / OCR`;
  - `RoomDictionaryEngine` ранжирует результаты с учётом `target language`;
  - `Translate/build_dictionary_room.py` принимает дополнительные `Kaikki`-источники через `--kaikki lang:path-or-url`;
  - однофайловая shipped `dictionary.db` была собрана офлайн с дополнительными языками `fr`, `it`, `pl`, `tr`, `pt`, но упёрлась в Android packaging;
  - runtime и packaged assets переведены на per-language Room DB set;
  - для shipped-упаковки словари дополнительно переведены в precompressed assets:
    `dictionary_en.dbpack`, `dictionary_fr.dbpack`, `dictionary_it.dbpack`, `dictionary_ja.dbpack`, `dictionary_ko.dbpack`,
    `dictionary_pl.dbpack`, `dictionary_pt.dbpack`, `dictionary_ru.dbpack`, `dictionary_tr.dbpack`, `dictionary_zh.dbpack`.
- [x] Оптимизировать вес shipped offline dictionary assets.
  Итог:
  - суммарный размер packed словарей `dictionary_*.dbpack`: около `752 MB`;
  - `Mr.Comic-debug.apk` после оптимизации: около `918 MB`;
  - все новые офлайн-языки при этом сохранены.
- [ ] Усилить single-word fallback для неанглийских словарей и перевода.
  Сделано:
  - для одного слова reader/OCR теперь не слишком рано доверяют language detection;
  - добавлен multi-candidate single-word resolver для словаря с учётом preferred/detected/fallback source language;
  - `RoomDictionaryEngine` мостит отсутствующие target-переводы через English dictionary lookup, а не только через сырой gloss;
  - `2026-03-21`: трек переоткрыт после runtime-проверки, потому что manual OCR route всё ещё терял `AUTO` source language, словарный fallback и source language выбранного OCR-блока для `ja/pl`.

### Этап 2 — OCR Translate for Comics

- [x] Добавить `ComicTextDetector` / page segmentation.
- [x] Перевести OCR с whole-page текста на список блоков.
- [x] Добавить `ComicTranslationEngine`.
- [x] Добавить `OverlayRenderer`.
- [x] Добавить tap-to-translate для отдельного блока.
- [x] Добавить translate-visible-page.
- [x] Добавить кеш OCR и переводов на страницу.

### Этап 3 — Advanced Comic Translation

- [x] Добавить block type classification:
  `speech / narration / sfx / unknown`.
- [x] Добавить фильтры:
  только диалоги / включать SFX.
- [x] Улучшить layout overlay.
- [x] Подготовить базу под post-MVP text replacement внутри бабблов.

### Этап 4 — Explain Layer
 
- [x] Добавить `LlmExplainEngine`.
- [x] Добавить explain для текстового ридера.
- [x] Добавить explain для OCR-блоков.
- [x] Добавить cleanup шумного OCR.

- [x] Добавить ручную перепривязку SAF-доступа для восстановленных книг после переустановки, чтобы библиотека и обложки оживали без повторного ручного импорта каждой книги.
- [x] Усилить восстановление библиотеки после backup/import:
  автоматически пытаться оживить записи через уже выданные SAF-разрешения и явно показывать, сколько файлов всё ещё требуют ручной перепривязки исходной папки.

- [x] По фото 2026-03-20 добить библиотечную shell-полировку.
  Сделано:
  - верхний счётчик файловой библиотеки стал нейтральным (`файлы`), а не `комиксы`;
  - добавлен третий верхний таб `Закладки` как отдельный раздел избранных файлов;
  - табы `Библиотека / Закладки / Цитатник` выровнены в одну линию с одинаковой формой;
  - grid-карточки файлов и папок получили заголовок прямо в нижней части обложки, без отдельного нижнего пустого блока;
  - folder cover теперь предпочтительно берётся от первого вложенного файла с реальной обложкой;
  - импорт папок больше не обрезает генерацию обложек после первых 80 файлов.
