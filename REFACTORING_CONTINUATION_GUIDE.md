# Mr.Comic: наставление по продолжению декомпозиции

Дата: 2026-07-18
Статус: активный. Использовать перед каждой новой задачей по разделению крупных
Kotlin-файлов. Это не заменяет QA backlog текстового ридера.

## С чего начинать

Читать документы строго в этом порядке:

1. `READER_MASTER_BACKLOG.md` -- источник приоритета. Здесь указано, какой
   пользовательский сценарий блокирует релиз и какой ARC-срез следующий.
2. `READER_BUG_ANALYSIS_2026-07-17.md` -- карта причин. До выноса понять,
   какую конкретную гонку, координату или повторную загрузку изолирует модуль.
3. `plans/006-text-page-reader-regressions.md` -- сценарии воспроизведения и
   границы PAGE/WEBTOON, которые нельзя поменять случайно.
4. `TASKLIST_05_PLATFORM_FOUNDATION.md` -- общие границы между `app`,
   `feature-*`, `core-*` и `engine-*`.
5. Тесты рядом с кодом -- это фактический контракт. Сначала прочитать test,
   затем место вызова, и только после этого переносить функцию.

Если задача касается не ридера, начать с `TASKLIST_00_MASTER_STRUCTURE.md`,
а затем открыть соответствующий `TASKLIST_01`--`TASKLIST_05`.

## Принцип выноса

Один срез = одна ответственность + один набор тестов + одна проверка Gradle.

- Не переносить форматный парсинг в `ReaderScreen` или `ReaderViewModel`.
- Чистые правила и преобразования выносить в policy/helper с unit-тестом.
- Android/WebView/Compose оставлять на краях системы, рядом с адаптером.
- Не смешивать изменение поведения с архитектурным выносом.
- Не удалять и не форматировать несвязанные локальные изменения: рабочее дерево
  уже содержит параллельную работу.
- После каждого среза проверять XML отчёт теста, а не только строку Gradle.

## Очередь модулей

### 1. ReaderViewModel -- сначала координаторы

Основной файл: `android/feature-reader/.../ui/ReaderViewModel.kt`.

Уже вынесены чистые policies для navigation, progress, footnotes и insets.
Следующие срезы из `READER_MASTER_BACKLOG.md`:

1. `ReaderStylePresetReducer`: применение/reset/custom preset без перезагрузки
   документа. Тестировать сохранение custom и отсутствие layout reflow для цвета.
2. `ReaderSessionCoordinator`: open/close, отмена job, ownership ресурсов,
   `cancelAndJoin`/stale-result guard. Это приоритетнее новых UI-деталей, так как
   связано с пропусками, дублями и `Empty HTML`.
3. Разделить сохранение progress, загрузку формата и orchestration на отдельные
   use-case/coordinator классы. ViewModel оставляет state и вызовы.

### 2. ReaderScreen -- сначала границы режимов

Основной файл: `android/feature-reader/.../ui/ReaderScreen.kt`.

Очередь:

1. Вынести PAGE WebView bridge и расчёт viewport в отдельный UI-adapter.
   Контракт: вход -- HTML, viewport, target page; выход -- page metrics и событие
   перехода. Не смешивать с Compose sheet/chrome.
2. Вынести WEBTOON bridge отдельно. Ему принадлежат инкрементальная доставка
   секций, system inset и вертикальный locator.
3. Вынести жесты/selection suppression в policy + bridge. PAGE и WEBTOON не
   должны делить изменяемый номер страницы.
4. Вынести footnote panel и control sheets в отдельные composable-файлы после
   сохранения screenshot/unit контрактов.

До следующего исправления PAGE обязательно сделать `PAG-008`: оракул,
сравнивающий нормализованный текст со всеми визуальными страницами. Скриншоты
подтверждают, что ручной просмотр не ловит каждый повтор/пропуск строки.

### 3. EpubFormatReader -- превратить в координатор

Основной файл: `android/engine-formats/.../epub/EpubFormatReader.kt`.

Целевая роль файла: открыть ZIP, собрать зависимости и вызвать маленькие
компоненты. Очередь выноса:

1. HTML/CSS preparation: inline CSS, asset-backed CSS, SVG normalizer,
   normalization/rebuild document. `EpubInlineSvgNormalizer.kt` уже создан как
   первый срез.
2. OPF/TOC parsing: OPF, NCX, nav.xhtml и поиск ссылок в `EpubManifestParser`.
3. Chunking: DOM-блоки, оценка размера, partition/rebalance в
   `EpubHtmlChunker`. Это отдельный тестируемый алгоритм, не часть ZIP reader.
4. Footnotes: candidates, extraction и synthetic pages в `EpubFootnoteResolver`.
5. Cache serialization и cache key в `EpubCacheStore`.
6. ZIP/resource access оставить в тонком `EpubArchiveAccess`.

После каждого пункта запустить только относящиеся `Epub*Test`; затем
`:engine-formats:testDebugUnitTest` для завершённой волны.

### 4. TextFormatReader -- parser, reflow, sections

Основной файл: `android/engine-formats/.../text/TextFormatReader.kt`.

Очередь:

1. TXT normalizer: кодировка, mojibake, абзацы, главы, переносы слов.
2. HTML/Markdown renderer: очистка, notes, heading anchors.
3. Section splitter/paginator: только структурные секции; экранные страницы
   измеряет WebView, а не `charsPerPage`.
4. TOC/anchor index вынести из reader в отдельный builder.

Проверка обязательна на TXT с кириллицей, HTML с entity и markdown с заголовками:
это защищает от цифр вместо букв, разрезания слов и неверного TOC.

## Обязательный цикл для каждого среза

1. Прочитать контракт и существующие тесты.
2. Добавить characterization-тест, если поведения ещё нет в тестах.
3. Создать новый файл в текущем package; сначала перенести чистую функцию без
   изменения сигнатуры.
4. Удалить исходную копию только после переключения всех вызовов.
5. Запустить минимальный тест:
   установить `JAVA_HOME` в `C:\Program Files\Android\Android Studio\jbr`.
   В PowerShell использовать только `.\gradlew.bat`, не Unix-вариант `./gradlew`:
   `.\gradlew.bat --no-daemon --console=plain --max-workers=1 ...`
6. Прочитать `build/test-results/.../TEST-*.xml` и зафиксировать число errors/
   failures.
7. Для reader UX-среза собрать APK и проверить API 37 в обоих режимах через
   системный picker.
8. Обновить `READER_MASTER_BACKLOG.md` только после зелёного теста и QA-артефакта.

## Definition of done

Срез считается завершённым, только когда:

- основной файл стал меньше, а не получил дополнительный wrapper;
- новая ответственность имеет понятное имя и отдельный тест;
- публичный контракт не меняет координаты PAGE/WEBTOON;
- нет нового полного `loadUrl` ради косметического изменения;
- Gradle и XML отчёт зелёные;
- для видимого поведения есть артефакт с устройства.

## Чего не делать

- Не переносить сотни строк одной операцией.
- Не объединять PAGE и WEBTOON в общий mutable state.
- Не использовать число страниц как универсальный locator позиции.
- Не принимать `runCatching` с молчаливым fallback за обработку ошибки.
- Не объявлять баг закрытым по unit-тесту, если он виден на экране.
