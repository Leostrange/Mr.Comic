'# Mr.Comic — подтверждённый баг-трекер ридера

Дата: 30 августа 2026 г. Код не изменялся. Все пункты подтверждены пользователем по фото или тесту.

## Правила
Не удалять элементы UI при уплотнении: менять только размеры, spacing, insets и адаптивную раскладку. Проверять portrait/landscape, страницы/вертикальную ленту, две страницы, системные панели, прогресс и восстановление. Причины ниже — маршрут расследования до чтения исходников и regression tests.

## Индекс
- RDR-001 Портретное кроп-меню занимает экран. Код: `ReaderMarginCropDialog.kt`, `ReaderMarginCropLayoutPolicy.kt`. Исправление: ограничить dialog viewport, уменьшить вертикальные padding/spacing и header/footer, оставить все слайдеры, переключатели и кнопки, обеспечить видимость верхней/нижней границы.
- RDR-002 Сноски MOBI некликабельны и не синие. Код: MOBI adapter, `HtmlPageView.kt`, `ReaderNativeJavaScriptBridge.kt`, `ReaderFootnoteController.kt`. Исправление: сохранить href/id и якоря при MOBI→HTML и пагинации, применить CSS ссылки, обработать переход и возврат.
- RDR-003 Сноски TXT в архиве некликабельны. Код: archive/TXT reader, engine-api text contract, HTML bridge. Исправление: распознавать footnote-ссылки до пагинации, связать номер с блоком сноски, экранировать текст.
- RDR-004 Прогресс показывает 2/2 и 100% раньше конца. Код: `ReaderUiState.kt`, `ReaderBookOpeningController.kt`, `DeferredPageCountPolicy.kt`, `SectionPaginator`, `LibraryContentPipeline`. Исправление: разделить physical page, spread и logical progress; единый источник для карточки, toolbar и chrome.
- RDR-005 Информация о книге дублируется/налезает в тулбарах. Код: `ReaderContainerHost.kt`, `ReaderBottomSheets.kt`, `ReaderUiState.kt`. Исправление: один владелец state и отдельные слоты title/metadata/autoplay/controls, согласовать height/insets.
- RDR-006 DOCX/Markdown в paged превращаются в длинную полосу. Код: `ReaderPagedLayoutJs.kt`, `TextContainer.kt`, `HtmlPageView.kt`, `ReaderContentPolicy.kt`, `SectionPaginator`. Исправление: исправить CSS viewport, page columns, переносы и доступную высоту; отдельно проверить таблицы, списки, ссылки и изображения.
- RDR-007 Позиция не сохраняется между режимами и библиотекой. Код: `ReaderBookOpeningController.kt`, `ReaderUiState.kt`, `SectionPaginator`, Room/DataStore repository. Исправление: хранить section/chapter + content offset/anchor, переводить anchor после пагинации и записывать при уходе/смене режима.
- RDR-008 Landscape-кроп закрывает четыре границы. Код: `ReaderMarginCropLayoutPolicy.kt`, `ReaderMarginCropDialog.kt`. Исправление: компактная two-column layout, одинаковые более широкие боковые и меньшие верхний/нижний отступы, учесть system insets.
- RDR-009 Landscape-хром-панели широкие и разной высоты. Код: `ReaderContainerHost.kt`, `ReaderBottomSheets.kt`, chrome composables, WindowInsets. Исправление: единый landscape chrome height для верхней/нижней панели, сохранить все элементы и одинаковые insets.
- RDR-010 Текст страницы не помещается по высоте в landscape. Код: `ReaderPageImageScalePolicy.kt`, `ReaderPagedLayoutJs.kt`, `ReaderContentPolicy.kt`. Исправление: масштабировать по высоте между chrome overlays и пересчитывать после ориентации/видимости toolbar.
- RDR-011 Текст залезает под toolbar/status bar. Код: `ReaderContainerHost.kt`, `ReaderPagedLayoutJs.kt`, `ReaderPageImageScalePolicy.kt`. Исправление: отдельно считать status-bar inset, toolbar height и content gap; скрытые toolbar — около двух строк от status bar, видимые — одна строка toolbar плюс одна строка gap.
- RDR-012 При смене режима меняется тема. Код: `ReaderContentPolicy.kt`, `HtmlPageView.kt`, `ReaderPagedLayoutJs.kt`, theme state в `ReaderUiState`. Исправление: применять тему при каждом page/WebView render; проверить CSS variables и относительный URL битого cover.
- RDR-013 Неправильно считается количество страниц. Код: `SectionPaginator`, `DeferredPageCountPolicy.kt`, `ReaderUiState.kt`, `ReaderBookOpeningController.kt`. Исправление: разделить physicalPageCount, spreadCount, verticalScreenCount и textSectionCount; публиковать count после пагинации, не подменять временным 2.

## Общая проверка
Для каждого исправления нужен regression test и ручная проверка portrait/landscape, страницы/vertical, two-page, смена темы, смена режима, библиотека и process recreation. Форматы: TXT, TXT в архиве, MOBI, DOCX, Markdown, FB2, RTF, PDF/DjVu и raster.

## Фотографии
Доступные вложения находятся в `photos/` по сессиям. Временные вложения, которых нет на диске, перечислены в `photos/MISSING.md`.
'
