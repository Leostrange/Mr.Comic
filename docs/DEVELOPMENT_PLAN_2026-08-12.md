# Mr.Comic — актуальный план разработки

Дата: 2026-08-12  
Статус: рабочий документ, заменяет разрозненные приоритеты для новых задач.

## 1. Цель продукта

Mr.Comic — универсальный Android-ридер для reflowable-книг, комиксов и
аудиокниг. Главный критерий качества — не количество поддержанных форматов,
а стабильное чтение: без пустых областей, обрезания текста, пропусков страниц
и потери позиции после смены режима, поворота или повторного открытия книги.

### Контракт Reader

Все форматы должны попадать ровно в один из четырёх контейнеров:

| Контейнер | Содержимое | Режим |
|---|---|---|
| `TEXT_PAGE` | EPUB, FB2, HTML, TXT, DOCX и другие reflowable-документы | постраничный |
| `TEXT_WEBTOON` | те же текстовые документы | вертикальная лента |
| `RASTER_PAGE` | CBZ/CBR/PDF/DJVU/папки с изображениями | постраничный |
| `RASTER_WEBTOON` | те же растровые документы | вертикальная лента |

Форматный парсинг принадлежит engine-модулям. UI не должен содержать
исключения вида «если EPUB/FB2, делать иначе».

## 2. Текущая оценка

| Область | Состояние | Оценка |
|---|---|---:|
| Модульная структура | 17 Gradle-модулей, направленные зависимости, без обнаруженных циклов | 8/10 |
| Форматы | `engine-formats` хорошо покрыт контрактными тестами | 7/10 |
| Reader runtime | вертикальная текстовая лента работает; PAGE требует runtime-матрицы | 6/10 |
| CI и static analysis | unit tests, detekt, lint, Kover, secrets scan, instrumentation tiers | 8/10 |
| Поддерживаемость | крупные UI/WebView-файлы всё ещё концентрируют много ответственности | 6/10 |

### Зафиксированные факты

- `feature-reader` — критический модуль: 153 main Kotlin-файла, 70 unit-test
  файлов и 16 instrumentation-test файлов.
- Логика PAGE распределена между `HtmlPageView`, `ReaderWebView` и
  `ReaderPagedLayoutJs`; это основной источник регрессионного риска.
- EPUB использует Readium для publication/session-навигации, но текущий
  renderer key — `HYBRID_EPUB_LEGACY_RENDER`. Следовательно, EPUB наследует
  риски общего WebView PAGE runtime.
- Рабочее дерево содержит незакоммиченные изменения нескольких направлений.
  До широких переделок их нужно фиксировать малыми тематическими коммитами.

## 3. Правило приоритизации

Работы выполняются только в таком порядке:

1. Не допускать потери текста, позиции и прогресса в Reader.
2. Закрыть PAGE runtime на реальных форматах и устройствах.
3. Уменьшать рискованные крупные файлы малыми тестируемыми срезами.
4. Доводить импорт, библиотеку, OCR, словари и AI.
5. Делать визуальные расширения и новые функции.

Новая feature не начинается, если её изменение затрагивает незакрытый P0
контракт Reader.

## 4. Фаза R0 — зафиксировать текущую интеграцию

### R0.1. Разделить рабочее дерево

**Цель:** получить проверяемые границы изменений.

- Сгруппировать текущие изменения минимум в: Reader runtime, format engines,
  Library/Settings/OCR, CI/security, документацию.
- Для каждой группы выполнить узкий build/test/detekt до коммита.
- Не смешивать удаление мёртвого кода с функциональными изменениями PAGE.

**Критерий готовности:** каждый коммит можно откатить без потери несвязанной
работы, `git diff --check` чистый.

### R0.2. Синхронизировать документацию

- Во всех документах использовать фактическое число: 17 Gradle-модулей.
- Согласовать описание Kover с реальным порогом 30%.
- Помечать результаты как `PASS`, `FAIL` или `NOT RUN`; unit test не является
  runtime-подтверждением WebView.

## 5. Фаза R1 — PAGE runtime: блокер качества

### R1.1. Единый контракт viewport и insets

**Проблема:** readiness WebView, JS-высота страницы и Kotlin-проверка метрик
не должны иметь разные пороги и разные трактовки safe insets.

- Создать единый `PagedViewportContract`: CSS width/height, top/bottom inset,
  usable height, минимальная высота и reason, почему layout нельзя запускать.
- Убрать дублирующиеся magic numbers из `ReaderWebView`,
  `ReaderPagedLayoutJs` и `ReaderPagedLayoutMetrics`.
- Нижний запас страницы привязать к высоте строки/предложения, а не к
  случайному числу пикселей.
- Добавить unit-тесты для portrait, landscape, bars visible/hidden и низкого
  landscape viewport.

**Критерий готовности:** PAGE не уходит в retry/fallback только из-за
согласованного допустимого landscape viewport; верхний и нижний отступы
одинаково рассчитываются в PAGE и WEBTOON.

### R1.2. Проверить PAGE на реальном corpus

Матрица обязательна для: EPUB, FB2, HTML, TXT, DOCX и текста внутри ZIP.

| Сценарий | Что подтвердить |
|---|---|
| Portrait + бары | текст не под барами, одинаковая полезная высота |
| Portrait + immersive | нет пустой полосы сверху/снизу |
| Landscape + бары | переносы и нижняя строка не обрезаются |
| Landscape + immersive | нет stale portrait layout, пустот и обрезания |
| 7 шагов вперёд/назад | нет повторов, пропусков, смены главы раньше границы |
| Граница главы | нет пустой страницы кроме естественного конца документа |
| PAGE ↔ WEBTOON | сохраняется глава и приблизительная текстовая позиция |
| Перезапуск процесса | позиция и прогресс восстанавливаются |

Для каждого результата сохранять: sample checksum, модель/API, чтение mode,
bars state, screenshot, UI dump, filtered logcat и итог `PASS`/`FAIL`.

**Критерий готовности:** все ячейки имеют runtime evidence; нет пустой
страницы, обрезания, повторов или пропусков на 7 перелистываниях.

### R1.3. Извлечь PAGE runtime из `ReaderWebView`

Разрез выполняется только после R1.1 и с сохранением поведения:

- `ReaderWebViewTouchController` — page taps, swipe, selection suppression.
- `ReaderPagedLayoutController` — readiness, retry, metrics, turn, restore.
- `ReaderFreeScrollRestoreController` — capture и restore WEBTOON позиции.
- `ReaderWebViewSelectionController` — contextual action mode.
- `ReaderWebView` остаётся тонким Android `WebView`-адаптером.

Для каждого контроллера — собственный unit-test до подключения в WebView.

**Критерий готовности:** `ReaderWebView.kt` не содержит одновременно touch,
pagination, selection и restore state machines.

## 6. Фаза R2 — restore, progress и EPUB

### R2.1. Каноническая позиция

- `ReaderLocator` — единственная персистентная координата чтения.
- PAGE хранит section + character offset/anchor; WEBTOON — section + offset +
  progression; raster — page index.
- Конвертации между контейнерами должны быть явными и тестируемыми.
- Запретить сохранение ложных `100%` до реального последнего содержимого.

**Критерий готовности:** PAGE → WEBTOON → PAGE и restart не отправляют
пользователя на cover, TOC или footnotes.

### R2.2. EPUB migration boundary

- Описать, какие функции предоставляет Readium, а какие остаются в legacy
  render path.
- Не переносить Readium navigation state в UI.
- Решение о замене `HYBRID_EPUB_LEGACY_RENDER` принимать только после того,
  как release matrix проходит на текущем маршруте.

**Критерий готовности:** documented ownership для publication, spine, TOC,
locator, renderer и preference sync.

## 7. Фаза R3 — форматы и импорт

### R3.1. Archive content scanner

- Вынести классификацию содержимого ZIP/TAR/7Z/RAR из repository в отдельный
  тестируемый scanner с stream/temp-file адаптерами.
- Проверить текстовый архив, image archive, первые 100 entries, ошибки и
  cleanup временных файлов.

### R3.2. Форматный acceptance matrix

- Парсинг: открытие, TOC, cover, page count, ошибки.
- Рендеринг: первый экран, край главы, тяжёлые изображения/таблицы,
  footnotes, RTL при наличии sample.
- Восстановление: закрыть/открыть, сменить шрифт, сменить mode, повернуть.

**Критерий готовности:** каждый заявленный формат имеет как минимум один
checksum-pinned sample и runtime evidence своего контейнера.

## 8. Фаза R4 — архитектурный долг

### R4.1. Очистить module boundaries

- Перенести `ReaderTextFontCatalog` из `core-ui` в `feature-reader` или
  выделить независимый reader-fonts слой.
- Убрать зависимость `core-ui → core-domain`: mascot state должен идти через
  модель/интерфейс, а не через доменную реализацию.
- Не добавлять новые зависимости из feature в чужие feature-модули.

### R4.2. Крупные файлы

Приоритет разрезов:

1. `ReaderWebView.kt`, `ReaderPagedLayoutJs.kt`, `ReaderScreen.kt`.
2. `LibraryScreen.kt` и Library visual/card layers.
3. `Settings` UI и текстовые каталоги.
4. Локализационные файлы — деление по feature/domain, без изменения ключей.

Один разрез = одна ответственность + тест + отдельный коммит.

## 9. Фаза R5 — продуктовые подсистемы

Работа начинается после закрытия R1/R2.

### Library

- надёжный импорт, folder/OPDS, cover repair, сортировка и фильтры;
- производительность больших библиотек;
- отсутствие ложного progress/completion.

### Settings и presets

- единая модель reader preferences;
- preview не должен менять рабочую книгу;
- экспорт/import настроек с compatibility contract.

### OCR, словари, translation, LLM

- офлайн-функции должны иметь graceful fallback;
- сетевой/LLM слой не блокирует чтение;
- никакие секреты не хранятся в исходниках или артефактах.

## 10. Качество, CI и безопасность

### Обязательные gates

- `scripts/scan-secrets.sh`.
- targeted `testDebugUnitTest` + `detekt` изменённого модуля.
- `:app:compileDebugKotlin` при изменении DI, моделей, engine bindings.
- `:app:assembleDebug` перед устройством.
- runtime evidence для WebView, format routing, gesture и restore изменений.

### Перед выпуском

- полный `testDebugUnitTest`;
- корневой `detekt`;
- `:app:lintDebug`;
- Kover verify;
- reader release runtime matrix;
- ручной smoke на физическом устройстве для startup/frame-time утверждений.

### Секреты

- Секреты — только в локальном окружении/CI secret store.
- `local.properties`, `.env*`, `*.pem`, `*.key` остаются ignored.
- Историческая утечка Tavily закрывается только отдельной, явно одобренной
  операцией переписывания Git history и force-push.

## 11. Definition of Done

Задача считается завершённой, только если:

1. Изменение находится в правильном модуле.
2. Добавлен/обновлён узкий тест либо задокументирована техническая причина,
   почему тест невозможен.
3. Пройдены релевантные build, tests и detekt.
4. Для Reader/WebView есть runtime evidence, а не только unit-test.
5. Не ухудшены PAGE, WEBTOON, restore и progress.
6. Изменение отделено от несвязанных правок и готово к понятному коммиту.

## 12. Ближайшие задачи

1. R0.1 — зафиксировать текущие изменения тематическими коммитами.
2. R1.1 — единый `PagedViewportContract` и тесты низкого landscape.
3. R1.2 — провести PAGE matrix на одном стабильном эмуляторе и реальных
   format samples; оформить evidence в `docs/qa/`.
4. R1.3 — извлечь `ReaderPagedLayoutController` из `ReaderWebView`.
5. R2.1 — завершить PAGE ↔ WEBTOON restore и restart matrix.

