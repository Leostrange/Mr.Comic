# Mr.Comic — детальный список: что осталось сделать и проверить

**Базовый аудит:** [AUDIT_2026-07-07.md](AUDIT_2026-07-07.md)
**Обновлено:** 2026-07-08 (строки перепроверены по фактическому коду рабочего дерева, а не по статическому снимку 07-07)
**Ветка:** `feat/explain-engine-online-local`
**Важно:** всё описанное живёт в **незакоммиченном** рабочем дереве (66 изменённых + десятки новых файлов). Первый шаг любого сценария — не потерять это (см. §0).

Легенда статуса:
- ✅ **VERIFIED-07-08** — дефект перепроверен в текущем коде, строки актуальны, готов к правке.
- 🔲 **TODO-verify** — нужен прогон на устройстве/профайлере (рантайм-эффект).
- ⏸️ **DEFERRED** — сознательно отложено (мёртвый путь / нужен эмулятор).
- ☑️ **DONE** — уже исправлено в дереве, пункт можно закрывать.

---

## 0. Прежде всего — зафиксировать накопленное

**Проблема:** все P0/P1-фиксы из базового аудита существуют только в рабочем дереве. Одна неосторожная операция git — и они потеряны.

**Сделать:**
1. Прогнать компиляцию + JVM-тесты по затронутым модулям:
   ```
   .\gradlew.bat --no-daemon --console=plain :core-data:testDebugUnitTest :engine-formats:testDebugUnitTest :feature-reader:testDebugUnitTest :feature-library:compileDebugKotlin :app:compileDebugKotlin
   ```
2. Убедиться, что зелёное (по таблице аудита эти модули собирались, но дерево менялось после).
3. Закоммитить P0/P1-фиксы логическими группами (Room-миграция; утечки WebView; классификация архивов; TAR-кламп; runBlocking→appScope; аудиокниги IO; TOC; мини-плеер; format-каталог).
4. **Критерий приёмки:** `git status` чистый по этим файлам; сборка воспроизводима с нуля.

---

## 1. Незакрытые P1

### P1-5 · LOGIC · Мёртвый Kotlin-паджинатор текста — ⏸️ DEFERRED
- **Где:** `feature-reader/.../ReaderContentPolicy.kt:62` (`shouldUseKotlinTextPagePagination=false`); публичный `scheduleTextPagePaginationBuild` не вызывается — VM зовёт private no-op (`ReaderViewModel.kt:~3704`).
- **Симптом:** `isTextPagePaginationReady()` всегда false → навигация оперирует индексом spine-секции, а WebView режет секцию на N экранов. Счётчик страниц = число секций, TOC/переходы приземляются в начало секции, прогресс неточный.
- **Почему отложено:** реальный прогресс по подстраницам ИДЁТ через `onPagedLayoutPageCountChanged` → `EpubProgressCalculator`, т.е. это не активный user-facing краш. Удаление мёртвого пути — многофайловая правка навигации без рантайм-теста.
- **Что сделать (после эмулятор-проверки):** выбрать одно из двух —
  (а) удалить мёртвый Kotlin-путь (`TextReaderNavigation` no-op, `scheduleTextPagePaginationBuild`, `TextPaginator` char-оценку) и закрепить WebView `onPagedLayoutPageCountChanged` единственным источником page-count; либо
  (б) реально включить Kotlin-пагинацию и синхронизировать индексные пространства.
- **НЕ делать:** чинить `0.56f`/char-оценку в `TextPaginator.kt:120-129` — код мёртв, это латентный P2-7.
- **Верификация:** эмулятор, большой EPUB — сверить отображаемый счётчик страниц и точность прогресс-бара/TOC.

### P1-7 · PERF/RACE · Осиротевшие декоды страниц при флинге — 🔲 TODO-verify (не тронут)
- **Где:** `engine-rendering/.../PagePreloader.kt:179` — `scope.async(start = CoroutineStart.LAZY)` запускается в общем `scope`, а не как child от `preloadJob` (`:126`). При `preloadJob.cancel()` (`:124,199`) отменяется только ожидание, но сам `Deferred` декодирования доигрывает и делает `putPage` (`:183`).
- **Усилитель:** `decodeSemaphore = Semaphore(2)` (`:46`) — осиротевшие декоды держат оба пермита → декод видимой страницы стоит в очереди.
- **Сценарий:** быстрый флинг растрового комикса → накопление устаревших декодов, голодание актуального рендера, лишняя память.
- **Что сделать:** запускать декоды как child текущего preload-job (структурная конкурентность), отменять при смене окна; либо проверять `activeReaderToken`/актуальность окна перед `putPage`.
- **Верификация:** юнит-тест на отмену job → `putPage` не вызывается для устаревшего окна; профайлер при флинге.
- **Связь:** делать одним заходом с P2-1/P2-2 (жизненный цикл bitmap в этом же файле/кэше).

---

## 2. P2 — детально, со сверенными строками

### ✅ Готовы к правке немедленно (VERIFIED-07-08, JVM-тестируемы)

#### P2-16 · LOGIC · REPLACE в кэше перевода сбрасывает hitCount/createdAt
- **Где:** `core-data/.../db/TranslationCacheDao.kt:15` — `@Insert(onConflict = OnConflictStrategy.REPLACE)`.
- **Триггер:** `core-domain/.../CachingTranslatorEngine.kt:51` при промахе кэша всегда вызывает `insert(...)` c дефолтами `createdAt=now, lastUsedAt=now, hitCount=1` (`TranslationCacheEntry.kt:33-36`). Уникальный индекс `Index("cacheKey", unique=true)` (`TranslationCacheEntry.kt:17`) → REPLACE удаляет старую строку и вставляет новую, обнуляя накопленный `hitCount` и исходный `createdAt`.
- **Последствие:** LRU-эвикция по `hitCount`/возрасту работает неверно; «горячие» переводы выглядят как новые.
- **Фикс (варианты):**
  - заменить на `OnConflictStrategy.IGNORE` и при промахе-но-конфликте вызывать `recordHit` (безопасно, минимально); **или**
  - `@Upsert` / ручной UPDATE, сохраняющий `createdAt` и увеличивающий `hitCount`.
- **Тест:** `TranslationCacheDaoTest` (Robolectric/in-memory Room) — вставить, `recordHit` ×N, повторно перевести тот же ключ → `hitCount` не сбросился, `createdAt` сохранён.
- **Модуль-владелец:** `:core-data`.

#### P2-9 · LOGIC · OPDS-поиск ломается (баг в ДВУХ местах)
- **Место A — repo:** `core-data/.../opds/OpdsRepository.kt:60-62` — `{searchTerms}` заменяется на hex-энкод байтов через `"%02x".format(...)`, склеенных `%20`. Это **не** percent-encoding: сервер получает `%68%65%6c...`, а не корректно закодированный запрос → поиск не находит.
- **Место B — VM (обходит repo!):** `feature-library/.../opds/OpdsCatalogViewModel.kt:83` — `loadFeed(searchUrl.replace("{searchTerms}", query))` подставляет **сырой** query (с пробелами/кириллицей/`&`) прямо в URL, вообще минуя `OpdsRepository.search()`.
- **Фикс:**
  1. В repo заменить hex-костыль на корректный percent-encoding (`android.net.Uri.encode(query)` или эквивалент), учесть шаблоны `{searchTerms}` и `{?searchTerms}`.
  2. VM должен звать `opdsRepository.search(searchUrl, query)`, а не делать `replace` сам — единый путь энкодинга.
- **Тест:** unit на построение URL — запрос `"война и мир & peace"` даёт валидный percent-encoded URL; проверить оба шаблона.
- **Модули:** `:core-data` + `:feature-library`.

#### P2-10 · LOGIC · Коллизия ключа downloadProgress по заголовку
- **Где:** `feature-library/.../opds/OpdsCatalogViewModel.kt:96,100,105,115` — `downloadProgress: Map<String, Float>` ключуется по `entry.title`.
- **Сценарий:** две книги с одинаковым `title` (частое на OPDS) → прогресс/очистка перетирают друг друга; в UI одна полоса на обе.
- **Фикс:** ключевать по стабильному идентификатору — `entry.acquisitionLink?.href` (уникален на загрузку). Обновить все 4 обращения к map и место чтения в UI.
- **Тест:** unit — два `OpdsEntry` с одинаковым title, разными href → две независимые записи прогресса.
- **Модуль:** `:feature-library`.

#### P2-8 · CONTRACT · Не распознаются EPUB3-сноски по атрибутам
- **Где:** `engine-formats/.../epub/EpubFootnoteParser.kt` — распознавание идёт **только по `id`** (`noteIdRe:25-28`, DOM-обход `extractItemsFromDom:73-79`). EPUB3-разметка `<aside epub:type="footnote">` / `role="doc-footnote"` / `role="doc-endnote"` с нестандартным id не ловится → всплывающая сноска пустая.
- **Фикс:** в DOM-ветке (`extractItemsFromDom`) дополнительно принимать элемент как сноску, если `epub:type` ∈ {`footnote`,`endnote`,`rearnote`} или `role` ∈ {`doc-footnote`,`doc-endnote`}, независимо от формата id. Regex-ветку (`extractItemsFromRegex`) — по возможности тоже, но DOM приоритетна.
- **Тест:** расширить существующий `EpubFootnoteParserTest` — кейс `<aside epub:type="footnote" id="whatever">` извлекается; кейс `role="doc-footnote"`; не-сноска не ловится.
- **Модуль:** `:engine-formats` (тест уже есть).

#### P2-4 · ANR · runBlocking чтения DataStore на холодном старте
- **Где:** `app/.../splash/SplashPreferences.kt:13-17` (`isStartupVideoSplashEnabled`) и `:19-26` (`isStartupPreloadEnabled`) — оба через `runBlocking { ... .first() }` на пути splash-активити.
- **Сценарий:** блокирующее чтение DataStore на главном потоке при cold start → джанк; при не-IOException внутри — риск краша без guard.
- **Фикс:** предпочтительно — читать значения асинхронно и не блокировать первый кадр (дефолт сразу, реальное значение — по готовности); минимально — обернуть в `runCatching` с безопасным дефолтом и вынести чтение с главного потока. Свериться с тем, как splash использует эти значения (нельзя ломать поведение e-ink дефолта `!isEInkDevice()`).
- **Верификация:** запуск на устройстве (cold start) — нет ANR/джанка; JVM-тест на дефолт при исключении чтения.
- **Модуль:** `:app`.

---

### 🔲 Подтверждены в коде, но нужна проверка на устройстве/профайлере

#### P2-1 · RESOURCE-LEAK · LruCache битмапов без entryRemoved()
- **Где:** `engine-rendering/.../cache/TieredBitmapCache.kt:32-34` — `object : LruCache<String, CacheEntry>(maxMemoryKb) { sizeOf(...) }` без override `entryRemoved()`.
- **Симптом:** при авто-вытеснении битмап не `recycle()`-ится и не возвращается в пул аллокатора → на pre-O нативная память живёт до GC.
- **Фикс:** override `entryRemoved(evicted, key, oldValue, newValue)` → на `evicted && oldValue.bitmap != newValue?.bitmap` вернуть в `bitmapAllocator`/`recycle()` (согласовать с P2-2 releaseWithDelay, чтобы не рециклить используемый).
- **Верификация:** профайлер памяти; проверить, что рециклится только вытесненный и не отрисовываемый битмап.

#### P2-2 · CRASH/RACE · Освобождение битмапа по таймеру delay(1000)
- **Где:** `engine-rendering/.../preload/PagePreloader.kt:328-332` — `scope.launch { withContext(NonCancellable){ delay(1000); bitmapAllocator.release(bitmap) } }` (в `releaseWithDelay`, вызывается из `putPage:208` при смене readerToken).
- **Симптом:** если Flow отрисовал ссылку на этот битмап позже 1 с → «Canvas: trying to use a recycled bitmap».
- **Фикс:** привязать освобождение к жизненному циклу/ref-count, а не к произвольному таймеру; освобождать только когда битмап гарантированно не на экране.
- **Верификация:** стресс-флинг + смена книги; профайлер. Делать вместе с P1-7 и P2-1.

#### P2-3 · PERF · Крупные страницы не кэшируются
- **Где:** `engine-rendering/.../cache/TieredBitmapCache.kt:45-50` — `put()` кладёт в кэш только если `sizeKb < maxMemoryKb / 3`.
- **Симптом:** большие страницы (крупные развороты) никогда не кэшируются → перекодирование при каждом показе → джанк на возврате к странице.
- **Фикс:** пересмотреть порог (например, отдельный tier для крупных, или порог по доле, или диск-кэш L2); измерить hit-rate до/после.
- **Верификация:** профайлер/лог hit-rate на большом растровом комиксе.

#### P2-6 · PERF · isLookupAvailable распаковывает asset-БД на потоке вызова
- **Где:** `core-data/.../dictionary/DictionaryRepository.kt:32-35` — `isLookupAvailable` (НЕ suspend) → `daoForLanguage:123` → `DictionaryAssetExtractor.ensureExtractedDatabase` (`:130`, распаковка asset-БД) + `DictionaryDatabase.fromFile` (`:134`, открытие Room). Первый вызов на UI-потоке = фриз.
- **Фикс:** сделать `isLookupAvailable`/`daoForLanguage` suspend и уводить извлечение/открытие на `Dispatchers.IO`; либо прогревать словарь заранее. Проверить всех вызывающих `isLookupAvailable` (может быть на UI).
- **Верификация:** трассировка первого lookup; профайлер главного потока.

#### P2-11 · CRASH · setMediaItems без coerce индекса главы
- **Где:** `feature-library/.../AudiobookPlayerViewModel.kt:134` — `ctrl.setMediaItems(items, displayAudiobook.lastChapterIndex, displayAudiobook.lastPositionMs)` без клампа `lastChapterIndex`.
- **Сценарий:** после переимпорта аудиокниги с меньшим числом глав сохранённый `lastChapterIndex` больше `items.lastIndex` → `IllegalSeekPositionException`.
- **Фикс:** `val startIndex = displayAudiobook.lastChapterIndex.coerceIn(0, (items.size-1).coerceAtLeast(0))`; при рассинхроне сбросить позицию в 0.
- **Верификация:** unit на кламп; ручной сценарий переимпорта с меньшим числом глав.

#### P2-12 · RACE · rememberLazyListState без ключа по comic.id
- **Где:** `feature-reader/.../components/WebtoonView.kt:60-62` — комментарий (`:58-59`) обещает «key listState on comic id», но `rememberLazyListState(initialFirstVisibleItemIndex = uiState.currentPage)` вызван без ключа-аргумента `key`/`remember(comic.id)`.
- **Симптом:** при смене книги/главы состояние скролла переиспользуется → стартует со старой позиции вместо `currentPage` новой книги.
- **Фикс:** `rememberLazyListState(...)` завернуть в `key(comic.id)` или `remember(comic.id) { LazyListState(...) }` — чтобы при смене id создавался новый state.
- **Верификация:** ручной прогон — открыть книгу A, проскроллить, открыть книгу B → позиция B корректная.

#### P2-14 · CRASH · substring(bodyStart,bodyEnd) без проверки порядка
- **Где:** два места в `engine-formats/.../epub/EpubFormatReader.kt`:
  - `extractBodyContent:1214-1218` — `bodyStart` от `<body>` (или 0), `bodyEnd = lastIndexOf("</body>")` (или `length`). Если `</body>` встречается ДО `<body>` (битая/экзотическая разметка), `bodyEnd < bodyStart` → `StringIndexOutOfBoundsException`, и метод **не** обёрнут в `runCatching` (в отличие от соседнего `extractWrappedBodyContent:1221`).
  - `extractChunk:2635-2646` — аналогичная арифметика `bodyStart/bodyEnd`, `substring:2646` без гарантии `bodyEnd >= bodyStart`.
- **Фикс:** клампить `bodyEnd = bodyEnd.coerceAtLeast(bodyStart)` (или проверять порядок и падать в фолбэк), опционально обернуть в `runCatching` как у `extractWrappedBodyContent`.
- **Тест:** unit с html, где `</body>` идёт раньше `<body>` / отсутствует `<body>` → не бросает, возвращает разумный фолбэк.
- **Модуль:** `:engine-formats`.

---

### ⏸️ Латентно / отложено

#### P2-7 · CONTRACT · Ключ кэша пагинации без fontFamily/textAlign/padding
- **Где:** `.../TextPagePaginationController.kt:110-136`. Ключ кэша не включает `fontFamily/textAlign/padding`, insets не пробрасываются.
- **Статус:** **латентно** — путь мёртв (P1-5). Чинить только вместе с решением по P1-5, иначе бессмысленно.

#### P2-15 · CONTRACT · Домен зависит от engine.formats.base
- **Где:** `core-domain/.../usecase/GetComicPagesUseCase.kt:7-8` импортирует `engine.formats.base.FormatFactory/FormatDetector` вместо `engine-api`.
- **Статус:** частный случай архитектурного нарушения (см. §4). Отдельная задача — расширение `engine-api`.

---

### ☑️ Уже сделано — закрыть пункт

#### P2-13 · LOGIC · Короткое чтение ломает магические байты — DONE
- **Было:** одиночный `read(header)` считался полным чтением.
- **Сейчас:** `engine-formats/.../base/FormatDetector.kt:20-34` — читает до 64 КБ (`ByteArray(64*1024)`), `bytesRead.coerceAtLeast(0)`, extension-first, `detectZipContainer` по `META-INF/container.xml`/`[Content_Types].xml`. Проблема из аудита устранена.
- **Действие:** пометить закрытым; при желании — добавить регресс-тест на «короткий первый `read`».

---

## 3. Латентность открытия текста (раздел 7 аудита — приоритет пользователя)

**Статус:** гипотеза, не начато. **Замер обязателен ДО правок.**

**Подтверждённые точки блокировки (сверено):**
- `engine-formats/.../epub/EpubFormatReader.kt:1382, 1402, 1423, 1442` — `runBlocking { cacheDao... }` внутри движка сериализует чтение/запись кэша при открытии (это же P2-5).
- Полный парс EPUB + JSON-сериализация манифеста/структуры до показа первой страницы.

**План (строго по порядку):**
1. **Измерить:** добавить временные метки `openComic` → `reader.open` → первая `getHtmlPage` → первый `onPagedLayoutPageCountChanged`; открыть большой (>5 МБ) и малый EPUB, замерить cold/warm. Зафиксировать дельту.
2. **Рычаги по убыванию эффекта:**
   - ленивая первая spine-секция (рисовать сразу, остальное парсить в фоне) — крупнейший выигрыш perceived latency;
   - запись кэша fire-and-forget: `storeManifestInCache/storeParsedInCache` → `applicationScope.launch(IO)`, убрать `runBlocking` из пути открытия;
   - инкрементальный/потоковый парс больших EPUB;
   - прогрев кэша при импорте в библиотеку (фоново).
3. **Проверить двойную пагинацию** (мёртвый Kotlin-путь P1-5 + WebView) — не тратится ли CPU дважды.
4. **Верификация:** те же метки после правок — подтвердить дельту, отсутствие регрессий на малых файлах.

---

## 4. Архитектурные инварианты (раздел 4 аудита)

1. **Engine boundary нарушен массово.** `feature-reader`/`core-domain` импортируют `engine.formats.*` и `engine.rendering.*` напрямую (`ReaderViewModel.kt:67-78`, `TextBookSessionBridge.kt`, `GetComicPagesUseCase.kt` и др.). Причина: `engine-api` не имеет surface для постраничного рендера/пагинации.
   - **Решение (крупная задача):** расширить `engine-api` контрактом рендера/пагинации ИЛИ формально признать `engine-formats.base` контрактным слоем и обновить grep-инвариант в SKILL.md.
2. **Двойной источник выделений:** Room `text_highlights` ↔ DataStore `highlights_<comicId>` (`PreferencesKeys.kt:199`) — нет кода синхронизации, риск рассинхрона. **Нужна проверка reader-модуля** (INFERRED).

---

## 5. Рекомендуемый порядок работ

| Шаг | Содержание | Риск | Верификация |
|---|---|---|---|
| **0** | Прогнать сборку/тесты и **закоммитить** накопленные P0/P1 | низкий | git чистый, тесты зелёные |
| **1** | Пакет «чистые P2» одной серией: **P2-16 → P2-9 → P2-10 → P2-8 → P2-4** | низкий | JVM-тест на каждый в модуле-владельце |
| **2** | «Сверить и починить»: **P2-11, P2-12, P2-14** (строки уже сверены — можно сразу) | низкий-средний | unit + ручной сценарий |
| **3** | `engine-rendering`, один заход: **P1-7 + P2-1 + P2-2 + P2-3** (жизненный цикл bitmap/preload) | средний | профайлер + тест отмены |
| **4** | **P2-6** словарь на IO | низкий | трассировка первого lookup |
| **5** | **Латентность текста** (§3) с замером до/после | средний | метки времени |
| **6** | **P1-5** — эмулятор-верификация, затем удалить мёртвый путь или закрепить WebView | средний | счётчик страниц на эмуляторе |
| **7** | **Инварианты** (§4) — рефактор `engine-api` | высокий | компиляция всех модулей |

**Принцип (Phase 3 SKILL.md):** перед фиксом каждого P0/P1/P2 — воспроизводящий тест в модуле-владельце. `☑️ DONE` (P2-13) и `⏸️ DEFERRED` (P2-7, P1-5) работы не требуют сейчас.
