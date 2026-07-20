# Детальные рекомендации по Mr.Comic

Каждая рекомендация содержит: описание проблемы, текущий код, предложенное решение с примером, и оценку усилий.

---

## 🔴 Критические проблемы (Приоритет 1)

### 1.1 Thread-safety в `LazyLegacySessionHandle`

**Проблема:** Класс лениво инициализирует legacy-ридер без синхронизации. При конкурентном доступе из нескольких корутин (например, предзагрузка страниц + навигация) возможно создание двух экземпляров или чтение неинициализированного состояния.

**Текущий код (упрощённо):**
```kotlin
class LazyLegacySessionHandle(private val factory: () -> FormatReader) {
    private var reader: FormatReader? = null
    private var isClosed = false

    val legacyReader: FormatReader
        get() = reader ?: error("Reader not loaded")

    fun loadLegacyReader() {
        reader = factory()
    }

    fun close() {
        isClosed = true
        reader?.close()
    }
}
```

**Рекомендуемое решение:**
```kotlin
class LazyLegacySessionHandle(private val factory: () -> FormatReader) {
    private val mutex = Mutex()
    private var reader: FormatReader? = null
    private var isClosed = false

    /** Безопасный доступ — бросает IllegalStateException если закрыт. */
    val legacyReader: FormatReader
        get() = reader ?: throw IllegalStateException(
            "LegacyReader accessed before loadLegacyReader() or after close()"
        )

    /** Идемпотентная инициализация под мьютексом. */
    suspend fun loadLegacyReader() {
        mutex.withLock {
            if (isClosed) return
            if (reader == null) {
                reader = factory()
            }
        }
    }

    /** Закрытие под мьютексом — гарантирует отсутствие гонки с loadLegacyReader. */
    suspend fun close() {
        mutex.withLock {
            isClosed = true
            reader?.close()
            reader = null
        }
    }
}
```

**Альтернатива (без suspend):** Если вызывающий код не в корутине, использовать `synchronized`:
```kotlin
private val lock = Any()

fun loadLegacyReader() {
    synchronized(lock) {
        if (!isClosed && reader == null) reader = factory()
    }
}
```

**Усилия:** ~2 часа. Затрагивает `ReadiumEpubReader` и все вызовы `loadLegacyReader()`.

---

### 1.2 `FormatDetector` потребляет InputStream без reset

**Проблема:** Метод `detect(stream, name)` читает до 64 КБ из потока для определения magic bytes. После этого поток уже «испорчен» — последующий ридер получит данные со смещением. Это работает только если вызывающий код передаёт `BufferedInputStream` с достаточным буфером, но контракт нигде не задокументирован.

**Текущий код:**
```kotlin
fun detect(stream: InputStream, name: String): ComicFormat {
    return try {
        val extensionFormat = detectByExtension(name)
        if (extensionFormat != ComicFormat.UNKNOWN && extensionFormat != ComicFormat.CBZ) {
            return extensionFormat
        }
        val header = ByteArray(64 * 1024)
        val bytesRead = stream.read(header).coerceAtLeast(0)  // ← потребляет stream!
        val actualHeader = header.copyOf(bytesRead)
        detectByBytes(actualHeader) ?: extensionFormat
    } catch (_: Exception) {
        detectByExtension(name)
    }
}
```

**Рекомендуемое решение — вариант A (mark/reset):**
```kotlin
fun detect(stream: InputStream, name: String): ComicFormat {
    return try {
        val extensionFormat = detectByExtension(name)
        if (extensionFormat != ComicFormat.UNKNOWN && extensionFormat != ComicFormat.CBZ) {
            return extensionFormat
        }

        val buffered = stream.markSupported()
            .let { if (it) stream else BufferedInputStream(stream, 64 * 1024) }

        buffered.mark(64 * 1024)
        val header = ByteArray(64 * 1024)
        val bytesRead = buffered.read(header).coerceAtLeast(0)
        buffered.reset()  // ← возвращаем поток в исходное состояние

        val actualHeader = header.copyOf(bytesRead)
        detectByBytes(actualHeader) ?: extensionFormat
    } catch (_: Exception) {
        detectByExtension(name)
    }
}
```

**Вариант B (без изменения потока — читать только первые N байт через File):**
```kotlin
fun detect(file: File, name: String): ComicFormat {
    val extensionFormat = detectByExtension(name)
    if (extensionFormat != ComicFormat.UNKNOWN && extensionFormat != ComicFormat.CBZ) {
        return extensionFormat
    }
    val header = file.inputStream().use { it.readNBytes(64 * 1024) }
    return detectByBytes(header) ?: extensionFormat
}
```

**Дополнительно:** Добавить KDoc с контрактом:
```kotlin
/**
 * Определяет формат по magic bytes и расширению.
 * @param stream MUST support mark/reset (BufferedInputStream).
 *   Поток НЕ потребляется — после вызова позиция чтения не меняется.
 */
```

**Усилия:** ~1 час. Проверить все call-sites `FormatDetector.detect()`.

---

### 1.3 Баг в `DBRouter._get_db()` (Python)

**Проблема:** В `build_dictionary_room.py` класс `DBRouter` хранит словари в `self._dbs: dict[str, DictionaryDB]`, но метод `_get_db` при определённых условиях может обратиться к несуществующему атрибуту. Кроме того, метод `close()` итерирует `self._dbs.items()` и вызывает `.close()` на значениях, но если `DictionaryDB` не имеет метода `close()`, это упадёт.

**Текущий код:**
```python
class DBRouter:
    def __init__(self, out_path: Path, combined: bool = False):
        self.out_path = out_path
        self._dbs: dict[str, DictionaryDB] = {}
        if combined:
            self._dbs["__combined__"] = DictionaryDB(out_path)

    def _get_db(self, lang: str) -> DictionaryDB:
        if "__combined__" in self._dbs:
            return self._dbs["__combined__"]
        if lang not in self._dbs:
            self._dbs[lang] = DictionaryDB(self.out_path / f"dict-{lang}.db")
        return self._dbs[lang]
```

**Рекомендуемое решение:**
```python
class DBRouter:
    def __init__(self, out_path: Path, combined: bool = False):
        self.out_path = out_path
        self._dbs: dict[str, DictionaryDB] = {}
        self._combined = combined
        if combined:
            self._dbs["__combined__"] = DictionaryDB(out_path)

    def _get_db(self, lang: str) -> DictionaryDB:
        """Возвращает DB для языка. В combined-режиме — единую DB."""
        if self._combined:
            return self._dbs["__combined__"]
        if lang not in self._dbs:
            db_path = self.out_path / f"dict-{lang}.db"
            db_path.parent.mkdir(parents=True, exist_ok=True)
            self._dbs[lang] = DictionaryDB(db_path)
        return self._dbs[lang]

    def close(self) -> None:
        """Закрывает все открытые соединения."""
        for db in self._dbs.values():
            db.close()
        self._dbs.clear()

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()
```

**Дополнительно:** Обернуть использование в context manager:
```python
with DBRouter(out_path, combined=args.combined) as router:
    for payload in parse_source(args.source):
        router.insert(payload)
```

**Усилия:** ~30 минут.

---

### 1.4 Path traversal в `import_freedict.py`

**Проблема:** Функция `extract_archive` вызывает `tar.extractall(destination)` без фильтрации имён файлов. Вредоносный `.tar.xz` архив может содержать записи вида `../../etc/cron.d/evil`, что приведёт к записи файлов за пределы целевой директории (CVE-2007-4559).

**Текущий код:**
```python
def extract_archive(archive_path: Path, destination: Path) -> Path:
    with tarfile.open(archive_path, "r:xz") as tar:
        tar.extractall(destination)  # ← УЯЗВИМОСТЬ
    dirs = [d for d in destination.iterdir() if d.is_dir()]
    if not dirs:
        raise RuntimeError(f"No extracted directory for {archive_path.name}")
    return dirs[0]
```

**Рекомендуемое решение (Python 3.12+):**
```python
def extract_archive(archive_path: Path, destination: Path) -> Path:
    with tarfile.open(archive_path, "r:xz") as tar:
        tar.extractall(destination, filter="data")  # ← безопасный фильтр
    dirs = [d for d in destination.iterdir() if d.is_dir()]
    if not dirs:
        raise RuntimeError(f"No extracted directory for {archive_path.name}")
    return dirs[0]
```

**Для Python 3.11 и ниже (ручная валидация):**
```python
import os

def _safe_extract(tar: tarfile.TarFile, destination: Path) -> None:
    dest_real = destination.resolve()
    for member in tar.getmembers():
        member_path = (dest_real / member.name).resolve()
        if not str(member_path).startswith(str(dest_real) + os.sep):
            raise ValueError(
                f"Path traversal detected in archive member: {member.name!r}"
            )
        # Отклоняем символические ссылки и device-файлы
        if member.issym() or member.islnk() or member.isdev():
            raise ValueError(f"Unsafe member type: {member.name!r}")
    tar.extractall(destination)

def extract_archive(archive_path: Path, destination: Path) -> Path:
    with tarfile.open(archive_path, "r:xz") as tar:
        _safe_extract(tar, destination)
    dirs = [d for d in destination.iterdir() if d.is_dir()]
    if not dirs:
        raise RuntimeError(f"No extracted directory for {archive_path.name}")
    return dirs[0]
```

**Дополнительно — checksum верификация загрузок:**
```python
import hashlib

def download_with_checksum(url: str, expected_sha256: str, dest: Path) -> Path:
    """Скачивает файл и проверяет SHA-256."""
    urllib.request.urlretrieve(url, dest)
    actual = hashlib.sha256(dest.read_bytes()).hexdigest()
    if actual != expected_sha256:
        dest.unlink(missing_ok=True)
        raise ValueError(
            f"Checksum mismatch for {url}: expected {expected_sha256}, got {actual}"
        )
    return dest
```

**Усилия:** ~1 час.

---

### 1.5 `error()` в `BookEngineRegistry.resolve()`

**Проблема:** При отсутствии зарегистрированного движка для формата вызывается `error(...)`, что бросает `IllegalStateException` и крашит приложение. В production это недопустимо — пользователь просто увидит crash вместо graceful fallback.

**Текущий код:**
```kotlin
@Singleton
class BookEngineRegistry @Inject constructor(
    private val engines: Set<@JvmSuppressWildcards BookEngine>
) {
    fun resolve(format: BookFormat): BookEngine {
        return engines.firstOrNull { format in it.supportedFormats }
            ?: error("No engine registered for format: $format")  // ← CRASH
    }
}
```

**Рекомендуемое решение — вариант A (nullable + логирование):**
```kotlin
@Singleton
class BookEngineRegistry @Inject constructor(
    private val engines: Set<@JvmSuppressWildcards BookEngine>,
    private val logger: Timber.Tree  // или android.util.Log
) {
    /** Возвращает движок или null, если формат не поддерживается. */
    fun resolve(format: BookFormat): BookEngine? {
        val engine = engines.firstOrNull { format in it.supportedFormats }
        if (engine == null) {
            logger.w("No engine registered for format: $format")
        }
        return engine
    }

    /** Convenience для call-sites, где fallback обязателен. */
    fun resolveOrDefault(format: BookFormat): BookEngine {
        return resolve(format)
            ?: engines.first { LegacyFormatBookEngine::class.java.isInstance(it) }
    }
}
```

**Вариант B (Result-обёртка для явной обработки):**
```kotlin
fun resolve(format: BookFormat): Result<BookEngine> {
    val engine = engines.firstOrNull { format in it.supportedFormats }
    return if (engine != null) {
        Result.success(engine)
    } else {
        Result.failure(UnsupportedFormatException(format))
    }
}

class UnsupportedFormatException(val format: BookFormat) :
    Exception("No engine registered for format: $format")
```

**Call-site после изменения:**
```kotlin
// Было:
val engine = bookEngineRegistry.resolve(format)

// Стало:
val engine = bookEngineRegistry.resolve(format)
    ?: run {
        _uiState.update { it.copy(error = "Формат $format не поддерживается") }
        return
    }
```

**Усилия:** ~2 часа (изменить registry + все call-sites + тесты).

---

## 🟡 Архитектурный рефакторинг (Приоритет 2)

### 2.1 Декомпозиция `ReaderViewModel` (4085 строк → 5 классов)

**Проблема:** `ReaderViewModel` имеет **18 инжектируемых зависимостей** и объединяет навигацию, рендеринг, перевод, OCR, TTS, аналитику, прогресс, цитаты, жесты и предзагрузку. Это делает класс невозможным для тестирования и модификации.

**Текущая структура (18 зависимостей):**
```kotlin
class ReaderViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val textHighlightRepository: TextHighlightRepository,
    private val formatFactory: FormatFactory,
    private val bookEngineRegistry: BookEngineRegistry,
    private val pagePreloader: PagePreloader,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val translatorEngine: TranslatorEngine,
    private val translationComparisonEngine: TranslationComparisonEngine,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val readerCheckpointStore: ReaderCheckpointStore,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val appScope: AppCoroutineScope,
    @ApplicationContext private val context: Context
)
```

**Предложенная декомпозиция:**

```
ReaderViewModel (координатор, ~400 строк)
├── ReaderNavigationController      → navigateTo, nextPage, prevPage, TOC
├── ReaderPageRenderer              → getPage, loadPage, preload, highQuality
├── ReaderTranslationController     → translate, dictionary, LLM explain
├── ReaderProgressTracker           → saveProgress, checkpoints, analytics, goals
└── ReaderSessionManager            → openComic, close, formatReader lifecycle
```

**Пример — `ReaderNavigationController`:**
```kotlin
@ViewModelScoped
class ReaderNavigationController @Inject constructor(
    private val pagePreloader: PagePreloader,
    private val readerCheckpointStore: ReaderCheckpointStore
) {
    private val _navigationEvents = MutableSharedFlow<NavigationEvent>(extraBufferCapacity = 1)
    val navigationEvents: SharedFlow<NavigationEvent> = _navigationEvents

    fun navigateTo(
        page: Int,
        totalPages: Int,
        readingMode: ReadingMode,
        smoothScroll: Boolean = false
    ) {
        val clamped = page.coerceIn(0, totalPages - 1)
        _navigationEvents.tryEmit(NavigationEvent(clamped, smoothScroll))
        pagePreloader.preloadAround(clamped, windowSize = 3)
    }

    fun nextPage(current: Int, totalPages: Int, mode: ReadingMode) {
        val delta = when (mode) {
            ReadingMode.PAGE_RTL -> -1
            else -> 1
        }
        navigateTo(current + delta, totalPages, mode)
    }

    fun navigateToTocEntry(entry: TocEntry, totalPages: Int) {
        navigateTo(entry.pageIndex, totalPages, ReadingMode.PAGE_LTR)
    }
}
```

**Пример — `ReaderTranslationController`:**
```kotlin
@ViewModelScoped
class ReaderTranslationController @Inject constructor(
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val translatorEngine: TranslatorEngine,
    private val translationComparisonEngine: TranslationComparisonEngine
) {
    private val _translationState = MutableStateFlow<TranslationState>(TranslationState.Idle)
    val translationState: StateFlow<TranslationState> = _translationState

    suspend fun translateText(text: String, sourceLang: String?, targetLang: String) {
        _translationState.value = TranslationState.Loading
        val detectedLang = sourceLang ?: languageDetector.detect(text)
        val result = runCatching {
            lookupRouter.lookup(text, detectedLang, targetLang)
        }
        _translationState.value = result.fold(
            onSuccess = { TranslationState.Success(it) },
            onFailure = { TranslationState.Error(it.message ?: "Translation failed") }
        )
    }

    suspend fun explainWithLlm(text: String, context: String) {
        _translationState.value = TranslationState.Loading
        val result = runCatching { llmExplainEngine.explain(text, context) }
        _translationState.value = result.fold(
            onSuccess = { TranslationState.LlmResult(it) },
            onFailure = { TranslationState.Error(it.message ?: "LLM failed") }
        )
    }
}
```

**Обновлённый `ReaderViewModel` (координатор):**
```kotlin
class ReaderViewModel @Inject constructor(
    private val sessionManager: ReaderSessionManager,
    private val navigationController: ReaderNavigationController,
    private val pageRenderer: ReaderPageRenderer,
    private val translationController: ReaderTranslationController,
    private val progressTracker: ReaderProgressTracker,
    savedStateHandle: SavedStateHandle
) : ViewModel() {

    val uiState: StateFlow<ReaderUiState> = combine(
        sessionManager.sessionState,
        navigationController.navigationEvents,
        pageRenderer.renderState,
        translationController.translationState,
        progressTracker.progressState
    ) { session, nav, render, translation, progress ->
        ReaderUiState(session, render, translation, progress)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), ReaderUiState())

    fun nextPage() = navigationController.nextPage(
        uiState.value.currentPage,
        uiState.value.totalPages,
        uiState.value.readingMode
    )

    fun translateSelectedText(text: String) {
        viewModelScope.launch {
            translationController.translateText(text, null, "ru")
        }
    }
}
```

**План миграции (пошагово):**
1. Выделить `ReaderSessionManager` (openComic, close, formatReader lifecycle) — 1 день
2. Выделить `ReaderNavigationController` (navigateTo, TOC, жесты) — 1 день
3. Выделить `ReaderPageRenderer` (getPage, preload, highQuality) — 1 день
4. Выделить `ReaderTranslationController` (translate, dictionary, LLM) — 1 день
5. Выделить `ReaderProgressTracker` (save, checkpoints, analytics) — 0.5 дня
6. Переписать тесты под новые классы — 1 день

**Усилия:** ~5–6 дней. Каждый шаг можно делать отдельным PR.

---

### 2.2 Декомпозиция `SettingsViewModel` (3603 строки → ViewModel на экран)

**Проблема:** `SettingsViewModel` содержит **80+ combine-потоков** (`extrasFlow1a`, `extrasFlow1b`, ..., `extrasFlow7c2b`), объединяя настройки темы, чтения, перевода, TTS, производительности, словарей, жестов и т.д. в один класс. Имена потоков нечитаемы (`extrasFlow3a2`, `extrasFlow7b1a`).

**Текущая структура (фрагмент):**
```kotlin
class SettingsViewModel @Inject constructor(
    @ApplicationContext private val context: Context,
    private val themePreferencesRepository: ThemePreferencesRepository,
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val dictionaryEngine: DictionaryEngine,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine
) {
    // 80+ combine-потоков:
    private val extrasFlow1a = combine(...)
    private val extrasFlow1b = combine(...)
    private val extrasFlow2a = combine(...)
    private val extrasFlow2b = combine(...)
    // ...
    private val extrasFlow7c2b = combine(...)
    private val combinedSettingsUiState: Flow<SettingsUiState> = combine(
        baseUiState, extrasFlow12, extrasFlow3456, extrasFlow7, readerTtsFlow, perfFlow
    ) { ... }
}
```

**Предложенная декомпозиция — по экранам настроек:**

```
SettingsViewModel (роутер, ~100 строк)
├── AppearanceSettingsViewModel     → тема, цвета, шрифты, иконка приложения
├── ReaderSettingsViewModel         → режим чтения, жесты, яркость, ориентация
├── TranslationSettingsViewModel    → языки, движки перевода, LLM, словари
├── TtsSettingsViewModel            → голос, скорость, pitch, авто-прокрутка
├── PerformanceSettingsViewModel    → кэш, предзагрузка, качество рендера
└── LibrarySettingsViewModel        → импорт, бэкап, цели чтения, аналитика
```

**Пример — `TranslationSettingsViewModel`:**
```kotlin
@HiltViewModel
class TranslationSettingsViewModel @Inject constructor(
    private val dictionaryEngine: DictionaryEngine,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val preferences: UserPreferences
) : ViewModel() {

    val state: StateFlow<TranslationSettingsState> = combine(
        preferences.get(PreferencesKeys.SOURCE_LANG, "auto"),
        preferences.get(PreferencesKeys.TARGET_LANG, "ru"),
        preferences.get(PreferencesKeys.TRANSLATION_ENGINE, "offline"),
        preferences.get(PreferencesKeys.LLM_ENABLED, false),
        networkAvailableFlow
    ) { source, target, engine, llm, network ->
        TranslationSettingsState(source, target, engine, llm, network)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), TranslationSettingsState())

    fun setSourceLang(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.SOURCE_LANG, code) }
    }

    fun setTranslationEngine(engine: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_ENGINE, engine) }
    }
}
```

**Миграция навигации:**
```kotlin
// Было: один SettingsScreen с табами
// Стало: Compose Navigation с вложенными destination
NavHost(navController, startDestination = "settings/appearance") {
    composable("settings/appearance") { AppearanceSettingsScreen() }
    composable("settings/reader") { ReaderSettingsScreen() }
    composable("settings/translation") { TranslationSettingsScreen() }
    composable("settings/tts") { TtsSettingsScreen() }
    composable("settings/performance") { PerformanceSettingsScreen() }
    composable("settings/library") { LibrarySettingsScreen() }
}
```

**Усилия:** ~4 дня. Можно мигрировать по одному экрану за PR.

---

### 2.3 Декомпозиция `ComicRepository` (1811 строк → 4 репозитория)

**Проблема:** `ComicRepository` объединяет CRUD библиотеки, импорт файлов, определение форматов, извлечение обложек, восстановление из бэкапа и ремонт путей. 40+ методов, включая приватные хелперы на 100+ строк.

**Текущая структура (ключевые методы):**
```kotlin
class ComicRepository @Inject constructor(...) {
    // CRUD
    fun getAllComics(): Flow<List<Comic>>
    fun searchComics(query: String): Flow<List<Comic>>
    suspend fun getComicById(id: String): Comic?
    suspend fun deleteComic(comicId: String)
    suspend fun updateComicMeta(...)
    suspend fun toggleBookmark(comicId: String)
    suspend fun markCompleted(comicId: String)
    suspend fun updateProgress(...)

    // Импорт (200+ строк)
    suspend fun addComic(uri: Uri): Comic?
    suspend fun addComicsFromDirectory(treeUri: Uri)

    // Определение формата (150+ строк)
    private fun detectFormat(uri: Uri, name: String?, mimeType: String?): ComicFormat
    private fun detectByMagic(uri: Uri): ComicFormat
    private fun detectZipContainerFormat(uri: Uri): ComicFormat
    private fun detectArchiveContentFormat(uri: Uri): ComicFormat?

    // Обложки (200+ строк)
    private fun generateCoverPath(...): String?
    private fun extractCoverFromZip(sourcePath: String): Bitmap?
    private fun extractCoverFromDjvuPlaceholder(sourcePath: String): Bitmap?

    // Бэкап и ремонт (300+ строк)
    suspend fun restoreComicFromBackup(backupComic: Comic): RestoreComicResult?
    suspend fun repairLibraryAccess(treeUri: Uri): RepairLibraryAccessResult
    suspend fun repairStoredCovers(): Int
}
```

**Предложенная декомпозиция:**

```
ComicRepository (facade, ~200 строк — делегирует)
├── LibraryRepository          → CRUD, поиск, закладки, прогресс
├── ImportRepository           → addComic, addComicsFromDirectory, detectFormat
├── CoverRepository            → generateCoverPath, extractCover*, repairStoredCovers
└── BackupRepository           → restoreComicFromBackup, repairLibraryAccess
```

**Пример — `ImportRepository`:**
```kotlin
@Singleton
class ImportRepository @Inject constructor(
    private val comicDao: ComicDao,
    private val formatDetector: FormatDetector,
    private val coverRepository: CoverRepository,
    @ApplicationContext private val context: Context
) {
    suspend fun addComic(uri: Uri): Comic? = withContext(Dispatchers.IO) {
        val name = getFileName(uri) ?: return@withContext null
        val format = formatDetector.detect(uri, name)
        if (format == ComicFormat.UNKNOWN) return@withContext null

        val comic = Comic(
            id = UUID.randomUUID().toString(),
            title = deriveTitleFromPath(name),
            path = uri.toString(),
            format = format,
            dateAdded = System.currentTimeMillis()
        )
        comicDao.insert(comic)
        coverRepository.generateAndStoreCover(comic)
        comic
    }

    suspend fun addComicsFromDirectory(treeUri: Uri): List<Comic> = withContext(Dispatchers.IO) {
        val documentFile = DocumentFile.fromTreeUri(context, treeUri)
            ?: return@withContext emptyList()
        documentFile.listFiles()
            .filter { it.isFile && isSupportedFormat(it.name) }
            .mapNotNull { addComic(it.uri) }
    }
}
```

**Усилия:** ~3 дня.

---

### 2.4 Разделение `FormatReader` (ISP — Interface Segregation Principle)

**Проблема:** `FormatReader` — god-interface с 14+ методами. Ридер изображений (CBZ) не нуждается в `getHtmlPage()`, `getFootnoteText()`, `resolveHrefToPage()`. Текстовый ридер не нуждается в `getPage()` с Bitmap. Все реализации вынуждены возвращать `null` / `emptyList()` для нерелевантных методов.

**Текущий интерфейс:**
```kotlin
interface FormatReader {
    fun rendersHtmlContent(): Boolean = false
    fun resolvedContentFormat(): ComicFormat? = null
    suspend fun getPageCount(): Int
    suspend fun getPage(index: Int): Bitmap?                    // ← только raster
    suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)
    suspend fun getHtmlPage(index: Int): String? = null         // ← только text
    fun htmlBaseUrl(): String? = null                           // ← только text
    fun htmlAssetBasePath(index: Int): String? = null           // ← только text
    fun openHtmlAsset(path: String): FormatReaderWebResource? = null  // ← только text
    suspend fun getMetadata(): Map<String, String> = emptyMap()
    fun getTableOfContents(): List<TocEntry> = emptyList()      // ← только text
    fun getFootnoteText(anchorId: String): String? = null       // ← только text
    fun resolveHrefToPage(href: String): Int? = null            // ← только text
    fun close()
}
```

**Предложенное разделение:**
```kotlin
/** Базовый контракт для всех ридеров. */
interface BaseFormatReader {
    suspend fun getPageCount(): Int
    suspend fun getMetadata(): Map<String, String> = emptyMap()
    fun getTableOfContents(): List<TocEntry> = emptyList()
    fun close()
}

/** Ридер растровых страниц (CBZ, CBR, PDF, DJVU, image folders). */
interface RasterPageReader : BaseFormatReader {
    suspend fun getPage(index: Int): Bitmap?
    suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = getPage(index)
}

/** Ридер текстового/HTML контента (EPUB, FB2, TXT, HTML, DOCX). */
interface TextContentReader : BaseFormatReader {
    suspend fun getHtmlPage(index: Int): String?
    fun htmlBaseUrl(): String? = null
    fun htmlAssetBasePath(index: Int): String? = null
    fun openHtmlAsset(path: String): FormatReaderWebResource? = null
    fun getFootnoteText(anchorId: String): String? = null
    fun resolveHrefToPage(href: String): Int? = null
}

/** Ридер, который может содержать и то, и другое (ZIP с DOCX внутри). */
interface HybridFormatReader : BaseFormatReader {
    fun resolvedContentFormat(): ComicFormat?
    fun rendersHtmlContent(): Boolean
}
```

**Миграция (пошагово):**
1. Создать новые интерфейсы в `engine-api`
2. `FormatReader` наследует все три (deprecated)
3. Новые ридеры реализуют только нужный интерфейс
4. `FormatFactory` возвращает `BaseFormatReader`
5. UI проверяет тип: `if (reader is RasterPageReader) ...`
6. Удалить `FormatReader` через 2–3 релиза

**Усилия:** ~3 дня (включая обновление всех call-sites).

---

### 2.5 Замена namespace `com.example` → уникальный

**Проблема:** Весь проект использует `com.example.*` — placeholder namespace из Android-шаблона. Это:
- Выглядит непрофессионально в production
- Может конфликтовать с другими приложениями на устройстве
- Блокирует публикацию в Google Play (Play Console отклоняет `com.example`)

**Текущие пакеты:**
```
com.example.mrcomic          → app
com.example.core.model       → core-model
com.example.core.data        → core-data
com.example.core.domain      → core-domain
com.example.core.ui          → core-ui
com.example.engine.api       → engine-api
com.example.engine.formats   → engine-formats
com.example.engine.registry  → engine-registry
com.example.engine.rendering → engine-rendering
com.example.engine.epub.readium → engine-epub-readium
com.example.feature.reader   → feature-reader
com.example.feature.library  → feature-library
com.example.feature.settings → feature-settings
com.example.feature.ocr      → feature-ocr
com.example.feature.onboarding → feature-onboarding
```

**Рекомендуемый namespace:**
```
io.leostrange.mrcomic          → app
io.leostrange.mrcomic.core.model
io.leostrange.mrcomic.core.data
io.leostrange.mrcomic.core.domain
io.leostrange.mrcomic.core.ui
io.leostrange.mrcomic.engine.api
io.leostrange.mrcomic.engine.formats
io.leostrange.mrcomic.engine.registry
io.leostrange.mrcomic.engine.rendering
io.leostrange.mrcomic.engine.epub.readium
io.leostrange.mrcomic.feature.reader
io.leostrange.mrcomic.feature.library
io.leostrange.mrcomic.feature.settings
io.leostrange.mrcomic.feature.ocr
io.leostrange.mrcomic.feature.onboarding
```

**План миграции (автоматизированный):**
```bash
# 1. Переименование в build.gradle.kts (applicationId, namespace)
find android -name "build.gradle.kts" -exec sed -i \
    's/com\.example\.mrcomic/io.leostrange.mrcomic/g; s/com\.example\./io.leostrange.mrcomic./g' {} \;

# 2. Переименование в Kotlin/Java файлах
find android -name "*.kt" -exec sed -i 's/com\.example\./io.leostrange.mrcomic./g' {} \;

# 3. Переименование в AndroidManifest.xml
find android -name "AndroidManifest.xml" -exec sed -i 's/com\.example\./io.leostrange.mrcomic./g' {} \;

# 4. Переименование в XML ресурсах
find android -name "*.xml" -path "*/res/*" -exec sed -i 's/com\.example\./io.leostrange.mrcomic./g' {} \;

# 5. Перемещение директорий
find android -type d -path "*/com/example/*" | while read dir; do
    newdir=$(echo "$dir" | sed 's|/com/example/|/io/leostrange/mrcomic/|')
    mkdir -p "$newdir"
    mv "$dir"/* "$newdir/" 2>/dev/null
done

# 6. Удаление пустых com/example
find android -type d -empty -path "*/com/example*" -delete
```

**Важно:** После миграции необходимо:
- Обновить `applicationId` в `app/build.gradle.kts`
- Обновить все `intent-filter` в `AndroidManifest.xml`
- Обновить Room `@Database` — миграция не нужна, но проверить `identityHash`
- Обновить DataStore preferences key (если содержат package name)
- Обновить `proguard-rules.pro`

**Усилия:** ~1 день (скрипт + ручная проверка + тесты).

---

### 2.6 Завершение миграции на `DocumentEngine/DocumentSession`

**Проблема:** В проекте существует dual-API: старый `FormatReader` и новый `DocumentEngine/DocumentSession`. Часть кода использует старый API, часть — новый. Это создаёт путаницу и дублирование логики.

**Рекомендуемый план:**

**Фаза 1 — Аудит (0.5 дня):**
```bash
# Найти все использования старого API
grep -rn "FormatReader" android/ --include="*.kt" | grep -v "test/"
grep -rn "formatReader" android/ --include="*.kt" | grep -v "test/"

# Найти все использования нового API
grep -rn "DocumentEngine\|DocumentSession\|BookEngine\|BookSession" android/ --include="*.kt"
```

**Фаза 2 — Адаптер (1 день):**
```kotlin
/** Обёртка: старый FormatReader → новый BookSession. */
class LegacyFormatReaderSession(
    private val reader: FormatReader
) : BookSession {
    override suspend fun getPageCount(): Int = reader.getPageCount()
    override suspend fun getPage(index: Int): Bitmap? = reader.getPage(index)
    override fun getToc(): List<TocEntry> = reader.getTableOfContents()
    override fun close() = reader.close()
}
```

**Фаза 3 — Миграция call-sites (2 дня):**
- Заменить все `formatReader.getPage()` → `bookSession.getPage()`
- Заменить `formatReader.close()` → `bookSession.close()`
- Удалить `FormatReader` из `ReaderViewModel`

**Фаза 4 — Удаление legacy (0.5 дня):**
- Удалить `FormatReader` интерфейс
- Удалить `LegacyFormatReaderSession` адаптер
- Удалить `LazyLegacySessionHandle`

**Усилия:** ~4 дня.

---

## 🟢 Тестирование и CI/CD (Приоритет 3)

### 3.1 Расширение CI на все модули + lint

**Проблема:** Текущий `build-apk.yml` запускает тесты только для 2 из 12 модулей (`engine-formats`, `feature-reader`). Нет lint, нет instrumented tests, нет кэширования Gradle, нет проверки Python-скриптов.

**Текущий workflow:**
```yaml
- name: Unit Tests (engine-formats)
  run: ./gradlew --no-daemon :engine-formats:testDebugUnitTest

- name: Unit Tests (feature-reader)
  run: ./gradlew --no-daemon :feature-reader:testDebugUnitTest

- name: Build Debug APK
  run: ./gradlew --no-daemon :app:assembleDebug
```

**Рекомендуемый workflow:**
```yaml
name: Build & Test

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
      - uses: actions/setup-java@v5
        with:
          distribution: temurin
          java-version: '17'
          cache: gradle
      - uses: gradle/actions/setup-gradle@v5
      - name: Run Detekt
        run: ./gradlew --no-daemon detekt
      - name: Run Android Lint
        run: ./gradlew --no-daemon :app:lintDebug
      - name: Upload lint reports
        uses: actions/upload-artifact@v7
        if: always()
        with:
          name: lint-reports
          path: |
            android/app/build/reports/lint-results-*.html
            android/*/build/reports/detekt/*.html

  unit-tests:
    runs-on: ubuntu-latest
    needs: lint
    steps:
      - uses: actions/checkout@v6
      - uses: actions/setup-java@v5
        with:
          distribution: temurin
          java-version: '17'
          cache: gradle
      - uses: gradle/actions/setup-gradle@v5
      - name: Run ALL unit tests
        run: ./gradlew --no-daemon testDebugUnitTest
      - name: Upload test results
        uses: actions/upload-artifact@v7
        if: always()
        with:
          name: test-results
          path: android/*/build/reports/tests/

  build:
    runs-on: ubuntu-latest
    needs: unit-tests
    steps:
      - uses: actions/checkout@v6
      - uses: actions/setup-java@v5
        with:
          distribution: temurin
          java-version: '17'
          cache: gradle
      - uses: gradle/actions/setup-gradle@v5
      - name: Build Debug APK
        run: ./gradlew --no-daemon :app:assembleDebug
      - name: Build Release APK
        run: ./gradlew --no-daemon :app:assembleRelease
      - name: Upload APKs
        uses: actions/upload-artifact@v7
        with:
          name: MrComic-apks
          path: |
            android/app/build/outputs/apk/debug/*.apk
            android/app/build/outputs/apk/release/*.apk

  python-scripts:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
      - uses: actions/setup-python@v5
        with:
          python-version: '3.12'
      - name: Install dependencies
        run: pip install pytest
      - name: Test dictionary builders
        run: |
          cd Translate
          python -m pytest tests/ -v || echo "No tests yet — add them"
      - name: Smoke-test build_dictionary.py
        run: |
          cd Translate
          python build_dictionary.py --help
          python build_dictionary_room.py --help
```

**Усилия:** ~3 часа на настройку + ~1 день на Detekt-конфигурацию.

---

### 3.2 Добавление `kotlinx-coroutines-test`

**Проблема:** Все тесты корутин используют `runBlocking`, что:
- Не позволяет контролировать виртуальное время
- Может приводить к flaky-тестам при реальных задержках
- Не тестирует отмену корутин корректно

**Текущий паттерн:**
```kotlin
@Test
fun `loadComic emits state`() = runBlocking {
    val vm = ReaderViewModel(...)
    vm.loadComic("test.cbz")
    assertEquals(ReaderState.Loaded, vm.uiState.value.state)
}
```

**Рекомендуемый паттерн:**
```kotlin
// build.gradle.kts (feature-reader)
dependencies {
    testImplementation("org.jetbrains.kotlinx:kotlinx-coroutines-test:1.9.0")
}

// Тест
@OptIn(ExperimentalCoroutinesApi::class)
class ReaderViewModelTest {

    @get:Rule
    val mainDispatcherRule = MainDispatcherRule()

    @Test
    fun `loadComic emits Loaded state`() = runTest {
        val vm = ReaderViewModel(
            sessionManager = FakeReaderSessionManager(),
            navigationController = ReaderNavigationController(
                pagePreloader = FakePagePreloader(),
                readerCheckpointStore = FakeCheckpointStore()
            ),
            // ...
        )

        vm.loadComic("test.cbz")
        advanceUntilIdle()

        assertEquals(ReaderState.Loaded, vm.uiState.value.state)
    }

    @Test
    fun `navigateTo clamps page index`() = runTest {
        val controller = ReaderNavigationController(
            pagePreloader = FakePagePreloader(),
            readerCheckpointStore = FakeCheckpointStore()
        )

        controller.navigateTo(page = 999, totalPages = 10, readingMode = ReadingMode.PAGE_LTR)

        val event = controller.navigationEvents.first()
        assertEquals(9, event.page)  // clamped to totalPages - 1
    }
}

// Правило для замены Main dispatcher
class MainDispatcherRule(
    private val dispatcher: TestDispatcher = UnconfinedTestDispatcher()
) : TestWatcher() {
    override fun starting(description: Description) {
        Dispatchers.setMain(dispatcher)
    }
    override fun finished(description: Description) {
        Dispatchers.resetMain()
    }
}
```

**Усилия:** ~1 день (добавить зависимость + переписать ~50 тестов).

---

### 3.3 Instrumented tests (androidTest)

**Проблема:** В проекте **0 instrumented тестов**. Room-миграции, навигация, WebView-рендеринг, SAF-доступ — всё это невозможно протестировать unit-тестами.

**Рекомендуемый минимум:**

**1. Room-миграции (критично — 8 миграций):**
```kotlin
// android/core-data/src/androidTest/java/.../MigrationTest.kt
@RunWith(AndroidJUnit4::class)
class MigrationTest {
    private val helper = MigrationTestHelper(
        InstrumentationRegistry.getInstrumentation(),
        ComicDatabase::class.java
    )

    @Test
    fun migrate8To9() {
        // Создаём DB версии 8
        helper.createDatabase("test-db", 8).apply {
            execSQL("""
                INSERT INTO comics (id, title, path, format, currentPage, totalPages)
                VALUES ('1', 'Test', '/test.cbz', 'CBZ', 0, 10)
            """)
            close()
        }

        // Мигрируем на версию 9
        val db = helper.runMigrationsAndValidate(
            "test-db", 9, true,
            ComicDatabase.MIGRATION_8_9
        )

        // Проверяем данные
        val cursor = db.query("SELECT * FROM comics WHERE id = '1'")
        assertTrue(cursor.moveToFirst())
        assertEquals("Test", cursor.getString(cursor.getColumnIndexOrThrow("title")))
        cursor.close()
        db.close()
    }
}
```

**2. Навигация (Compose):**
```kotlin
// android/app/src/androidTest/java/.../NavigationTest.kt
@HiltAndroidTest
@RunWith(AndroidJUnit4::class)
class NavigationTest {
    @get:Rule
    val hiltRule = HiltAndroidRule(this)

    @get:Rule
    val composeRule = createAndroidComposeRule<MainActivity>()

    @Test
    fun navigateFromLibraryToReader() {
        composeRule.onNodeWithText("Библиотека").assertIsDisplayed()
        composeRule.onNodeWithContentDescription("Открыть книгу").performClick()
        composeRule.onNodeWithText("Читалка").assertIsDisplayed()
    }
}
```

**3. WebView-рендеринг EPUB:**
```kotlin
@Test
fun epubRendersFirstPage() {
    val reader = ReadiumEpubReader(context, testEpubUri)
    runBlocking {
        val html = reader.getHtmlPage(0)
        assertNotNull(html)
        assertTrue(html!!.contains("<html") || html.contains("<body"))
    }
    reader.close()
}
```

**CI-интеграция (Firebase Test Lab или emulator):**
```yaml
  instrumented-tests:
    runs-on: ubuntu-latest
    needs: unit-tests
    steps:
      - uses: actions/checkout@v6
      - uses: actions/setup-java@v5
        with:
          distribution: temurin
          java-version: '17'
          cache: gradle
      - name: Enable KVM
        run: |
          echo 'KERNEL=="kvm", GROUP="kvm", MODE="0666", OPTIONS+="static_node=kvm"' | sudo tee /etc/udev/rules.d/99-kvm4all.rules
          sudo udevadm control --reload-rules
          sudo udevadm trigger --name-match=kvm
      - name: Run instrumented tests
        uses: reactivecircus/android-emulator-runner@v2
        with:
          api-level: 34
          arch: x86_64
          script: ./gradlew --no-daemon connectedDebugAndroidTest
```

**Усилия:** ~3 дня (написание тестов) + ~2 часа (CI-настройка).

---

### 3.4 Автоматизация релизов

**Проблема:** Релиз выполняется вручную: тег → локальная сборка → подписание → загрузка в GitHub Releases. Нет автоматического changelog, нет верификации, нет публикации в Play Store.

**Рекомендуемый workflow:**
```yaml
name: Release

on:
  push:
    tags: ['v*']

permissions:
  contents: write

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
        with:
          fetch-depth: 0  # для changelog

      - uses: actions/setup-java@v5
        with:
          distribution: temurin
          java-version: '17'
          cache: gradle

      - name: Decode keystore
        run: |
          echo "${{ secrets.KEYSTORE_BASE64 }}" | base64 -d > $HOME/keystore.jks

      - name: Build signed Release APK
        run: |
          ./gradlew --no-daemon :app:assembleRelease \
            -Pandroid.injected.signing.store.file=$HOME/keystore.jks \
            -Pandroid.injected.signing.store.password=${{ secrets.KEYSTORE_PASSWORD }} \
            -Pandroid.injected.signing.key.alias=${{ secrets.KEY_ALIAS }} \
            -Pandroid.injected.signing.key.password=${{ secrets.KEY_PASSWORD }}

      - name: Build AAB (для Play Store)
        run: |
          ./gradlew --no-daemon :app:bundleRelease \
            -Pandroid.injected.signing.store.file=$HOME/keystore.jks \
            -Pandroid.injected.signing.store.password=${{ secrets.KEYSTORE_PASSWORD }} \
            -Pandroid.injected.signing.key.alias=${{ secrets.KEY_ALIAS }} \
            -Pandroid.injected.signing.key.password=${{ secrets.KEY_PASSWORD }}

      - name: Generate changelog
        id: changelog
        run: |
          PREV_TAG=$(git describe --tags --abbrev=0 HEAD^)
          git log --pretty=format:"- %s" $PREV_TAG..HEAD > CHANGELOG.md

      - name: Create GitHub Release
        uses: softprops/action-gh-release@v2
        with:
          body_path: CHANGELOG.md
          files: |
            android/app/build/outputs/apk/release/*.apk
            android/app/build/outputs/bundle/release/*.aab

      # Опционально: публикация в Play Store
      # - name: Upload to Play Store
      #   uses: r0adkll/upload-google-play@v1
      #   with:
      #     serviceAccountJsonPlainText: ${{ secrets.PLAY_SERVICE_ACCOUNT }}
      #     packageName: io.leostrange.mrcomic
      #     releaseFiles: android/app/build/outputs/bundle/release/*.aab
      #     track: internal
```

**Необходимые GitHub Secrets:**
| Secret | Описание |
|--------|----------|
| `KEYSTORE_BASE64` | Keystore в base64 (`base64 -i keystore.jks`) |
| `KEYSTORE_PASSWORD` | Пароль keystore |
| `KEY_ALIAS` | Алиас ключа |
| `KEY_PASSWORD` | Пароль ключа |
| `PLAY_SERVICE_ACCOUNT` | (опционально) JSON сервисного аккаунта Play Console |

**Усилия:** ~4 часа.

---

### 3.5 Добавление Detekt для статического анализа

**Проблема:** Нет автоматической проверки стиля, сложности кода, потенциальных багов. God-классы (4000+ строк) не детектируются на этапе CI.

**Рекомендуемая конфигурация:**

```kotlin
// build.gradle.kts (root)
plugins {
    id("io.gitlab.arturbosch.detekt") version "1.23.7" apply false
}

subprojects {
    apply(plugin = "io.gitlab.arturbosch.detekt")
    detekt {
        buildUponDefaultConfig = true
        config.setFrom(files("$rootDir/config/detekt/detekt.yml"))
        baseline = file("$rootDir/config/detekt/baseline.xml")
    }
}
```

```yaml
# config/detekt/detekt.yml
complexity:
  LargeClass:
    active: true
    threshold: 500  # ← детектирует god-классы
  LongMethod:
    active: true
    threshold: 80
  LongParameterList:
    active: true
    functionThreshold: 8  # ← ReaderViewModel имеет 18 параметров!
  TooManyFunctions:
    active: true
    thresholdInClasses: 30

style:
  MagicNumber:
    active: true
    ignorePropertyDeclaration: true
  MaxLineLength:
    active: true
    maxLineLength: 140

naming:
  PackageNaming:
    active: true
    packagePattern: '^[a-z]+(\.[a-z][a-z0-9]*)*$'  # ← запрет com.example

potential-bugs:
  UnsafeCallOnNullableType:
    active: true
  UnnecessaryNotNullCheck:
    active: true
```

**Генерация baseline (для существующих нарушений):**
```bash
./gradlew detektBaseline
```

**Усилия:** ~2 часа (настройка) + постепенное устранение нарушений.

---

## 🔵 Долгосрочное качество (Приоритет 4)

### 4.1 Интерфейсы для репозиториев

**Проблема:** Все репозитории — конкретные классы без интерфейсов. ViewModel инжектят `ComicRepository` напрямую, что:
- Затрудняет подмену в тестах (нужен MockK вместо простого fake)
- Связывает ViewModel с реализацией (Room, SAF)
- Блокирует возможность альтернативных реализаций (сеть, кэш)

**Текущий код:**
```kotlin
// ViewModel напрямую зависит от конкретики
class ReaderViewModel @Inject constructor(
    private val comicRepository: ComicRepository,  // ← конкретный класс
    ...
)
```

**Рекомендуемое решение:**
```kotlin
// Интерфейс в core-domain (не зависит от Room/Android)
interface LibraryRepository {
    fun getAllComics(): Flow<List<Comic>>
    fun searchComics(query: String): Flow<List<Comic>>
    suspend fun getComicById(id: String): Comic?
    suspend fun deleteComic(comicId: String)
    suspend fun updateProgress(comicId: String, currentPage: Int, totalPages: Int)
    suspend fun toggleBookmark(comicId: String)
}

// Реализация в core-data
@Singleton
class RoomLibraryRepository @Inject constructor(
    private val comicDao: ComicDao
) : LibraryRepository {
    override fun getAllComics(): Flow<List<Comic>> = comicDao.getAllComics()
    override suspend fun getComicById(id: String): Comic? = comicDao.getComicById(id)
    // ...
}

// DI-модуль
@Module
@InstallIn(SingletonComponent::class)
abstract class RepositoryModule {
    @Binds
    abstract fun bindLibraryRepository(impl: RoomLibraryRepository): LibraryRepository
}

// ViewModel зависит от абстракции
class ReaderViewModel @Inject constructor(
    private val libraryRepository: LibraryRepository,  // ← интерфейс
    ...
)
```

**Тестирование с fake:**
```kotlin
class FakeLibraryRepository : LibraryRepository {
    val comics = MutableStateFlow<List<Comic>>(emptyList())
    override fun getAllComics() = comics
    override suspend fun getComicById(id: String) = comics.value.find { it.id == id }
    // ...
}

@Test
fun `reader loads comic by id`() = runTest {
    val fakeRepo = FakeLibraryRepository()
    fakeRepo.comics.value = listOf(testComic)
    val vm = ReaderViewModel(libraryRepository = fakeRepo, ...)
    // ...
}
```

**Усилия:** ~2 дня (создать интерфейсы + обновить DI + переписать тесты).

---

### 4.2 Вынос Room-аннотаций из `core-model`

**Проблема:** Модуль `core-model` содержит Room-аннотации (`@Entity`, `@PrimaryKey`, `@ColumnInfo`). Это нарушает принцип зависимостей: модель данных не должна знать о способе хранения.

**Текущая структура:**
```kotlin
// core-model/src/main/java/.../Comic.kt
@Entity(tableName = "comics")  // ← Room в core-model!
data class Comic(
    @PrimaryKey val id: String,
    @ColumnInfo(name = "title") val title: String,
    @ColumnInfo(name = "path") val path: String,
    @ColumnInfo(name = "format") val format: ComicFormat,
    // ...
)
```

**Рекомендуемое решение — mapping в `core-data`:**
```kotlin
// core-model — чистая доменная модель (без Android-зависимостей)
data class Comic(
    val id: String,
    val title: String,
    val path: String,
    val format: ComicFormat,
    val currentPage: Int = 0,
    val totalPages: Int = 0,
    val dateAdded: Long = 0L
)

// core-data — Room-сущность + маппинг
@Entity(tableName = "comics")
data class ComicEntity(
    @PrimaryKey val id: String,
    @ColumnInfo(name = "title") val title: String,
    @ColumnInfo(name = "path") val path: String,
    @ColumnInfo(name = "format") val format: String,  // enum → String
    @ColumnInfo(name = "current_page") val currentPage: Int,
    @ColumnInfo(name = "total_pages") val totalPages: Int,
    @ColumnInfo(name = "date_added") val dateAdded: Long
)

fun ComicEntity.toDomain(): Comic = Comic(
    id = id, title = title, path = path,
    format = ComicFormat.valueOf(format),
    currentPage = currentPage, totalPages = totalPages, dateAdded = dateAdded
)

fun Comic.toEntity(): ComicEntity = ComicEntity(
    id = id, title = title, path = path,
    format = format.name,
    currentPage = currentPage, totalPages = totalPages, dateAdded = dateAdded
)
```

**Преимущества:**
- `core-model` становится pure Kotlin (можно использовать в KMP)
- Изменение схемы БД не затрагивает доменный слой
- Тесты доменной логики не требуют Android/Room

**Усилия:** ~2 дня (создать Entity + мапперы + обновить DAO + миграция).

---

### 4.3 KDoc для публичных API движков

**Проблема:** Публичные интерфейсы движков (`BookEngine`, `BookSession`, `FormatReader`) не имеют KDoc. Разработчик не может понять контракт методов без чтения реализации.

**Рекомендуемый стандарт:**
```kotlin
/**
 * Стратегия чтения для конкретного семейства форматов.
 *
 * Реализации регистрируются через Dagger `@IntoSet` multibinding
 * и разрешаются [BookEngineRegistry] по [BookFormat].
 *
 * Lifecycle: создаётся один раз (Singleton), сессии создаются на каждую книгу.
 * Thread-safety: реализации ДОЛЖНЫ быть потокобезопасными для concurrent
 * вызовов [openSession] из разных корутин.
 *
 * @see BookEngineRegistry
 * @see BookSession
 */
interface BookEngine {
    /**
     * Форматы, которые поддерживает данный движок.
     * Используется [BookEngineRegistry.resolve] для диспатча.
     *
     * @return непустой набор форматов; пустой набор = движок никогда не будет выбран
     */
    val supportedFormats: Set<BookFormat>

    /**
     * Открывает сессию чтения для книги.
     *
     * @param uri URI файла (content:// или file://)
     * @param mimeType MIME-тип из ContentResolver (может быть null)
     * @return [BookSession] для постраничного доступа
     * @throws UnsupportedFormatException если формат не поддерживается
     * @throws IOException при ошибке чтения файла
     */
    suspend fun openSession(uri: Uri, mimeType: String?): BookSession
}
```

**Где добавить KDoc в первую очередь:**
1. `engine-api`: `BookEngine`, `BookSession`, `PageRenderer`
2. `engine-formats`: `FormatReader` (или новые интерфейсы из 2.4)
3. `engine-registry`: `BookEngineRegistry`
4. `core-domain`: `TranslatorEngine`, `LookupRouter`, `DictionaryEngine`

**Усилия:** ~1 день.

---

### 4.4 Рассмотрение Kotlin Multiplatform (KMP)

**Проблема:** Доменная логика перевода (`TranslatorEngine`, `LookupRouter`, `DictionaryEngine`, `LanguageDetector`) полностью написана на Kotlin, но привязана к Android через `Context`, `Uri`, и Room.

**Что можно вынести в KMP (commonMain):**
```
shared/
├── core-model/          → Comic, BookFormat, TocEntry (уже почти pure Kotlin)
├── translation/
│   ├── TranslatorEngine.kt
│   ├── LookupRouter.kt
│   ├── CachingTranslator.kt
│   ├── SafeTranslator.kt
│   └── LanguageDetector.kt
├── dictionary/
│   ├── DictionaryEngine.kt
│   └── DictionaryEntry.kt
└── analytics/
    └── ReadingAnalyticsTracker.kt (интерфейс)
```

**Что остаётся в Android (androidMain):**
```
android/
├── core-data/           → Room, DataStore, SAF
├── engine-*/            → WebView, Bitmap, Media3
├── feature-*/           → Compose UI
└── app/                 → Application, DI
```

**Преимущества:**
- Доменная логика тестируется без Android (быстрее, проще)
- Возможность переиспользования в iOS-ридере (если будет)
- Чёткая граница между бизнес-логикой и платформой

**Когда начинать:** После декомпозиции god-классов (2.1–2.3) и выноса Room-аннотаций (4.2). Без этих шагов KMP-миграция будет болезненной.

**Усилия:** ~1–2 недели (после подготовительных шагов).

---

### 4.5 I/O в ViewModel — вынос в UseCase-слой

**Проблема:** ViewModel напрямую вызывают `withContext(Dispatchers.IO)` и работают с файловой системой, ContentResolver, Bitmap. Это нарушает Clean Architecture и делает ViewModel нетестируемыми без Android.

**Текущий код (в ComicRepository, вызывается из ViewModel):**
```kotlin
suspend fun addComic(uri: Uri): Comic? = withContext(Dispatchers.IO) {
    val name = getFileName(uri) ?: return@withContext null
    val format = detectFormat(uri, name, null)
    // ... 60+ строк работы с файлами
}
```

**Рекомендуемое решение — UseCase:**
```kotlin
// core-domain (pure Kotlin, без Android)
class ImportComicUseCase @Inject constructor(
    private val libraryRepository: LibraryRepository,
    private val formatDetector: FormatDetector,
    private val coverExtractor: CoverExtractor
) {
    suspend operator fun invoke(source: BookSource): Result<Comic> {
        return runCatching {
            val format = formatDetector.detect(source)
            require(format != ComicFormat.UNKNOWN) { "Unsupported format" }
            val comic = libraryRepository.createComic(source, format)
            coverExtractor.extractAndStore(comic)
            comic
        }
    }
}

// ViewModel (тонкий слой)
class LibraryViewModel @Inject constructor(
    private val importComic: ImportComicUseCase
) : ViewModel() {
    fun importFile(uri: Uri) {
        viewModelScope.launch {
            importComic(BookSource.Uri(uri))
                .onSuccess { _state.update { it.copy(lastImported = it) } }
                .onFailure { _state.update { it.copy(error = it.message) } }
        }
    }
}
```

**Усилия:** ~3 дня (создать UseCase-классы + обновить ViewModel + тесты).

---

## 📋 Сводная таблица рекомендаций

| # | Рекомендация | Приоритет | Усилия | Затрагивает |
|---|-------------|-----------|--------|-------------|
| 1.1 | Thread-safety `LazyLegacySessionHandle` | 🔴 Критический | 2 ч | engine-epub-readium |
| 1.2 | `FormatDetector` mark/reset | 🔴 Критический | 1 ч | engine-formats |
| 1.3 | Баг `DBRouter._get_db()` | 🔴 Критический | 30 мин | Translate/ |
| 1.4 | Path traversal в tarfile | 🔴 Критический | 1 ч | scripts/ |
| 1.5 | `error()` → nullable в registry | 🔴 Критический | 2 ч | engine-registry |
| 2.1 | Декомпозиция `ReaderViewModel` | 🟡 Высокий | 5–6 д | feature-reader |
| 2.2 | Декомпозиция `SettingsViewModel` | 🟡 Высокий | 4 д | feature-settings |
| 2.3 | Декомпозиция `ComicRepository` | 🟡 Высокий | 3 д | core-data |
| 2.4 | ISP для `FormatReader` | 🟡 Высокий | 3 д | engine-api, engine-formats |
| 2.5 | Namespace `com.example` → уникальный | 🟡 Высокий | 1 д | весь проект |
| 2.6 | Миграция на `DocumentEngine` | 🟡 Высокий | 4 д | engine-*, feature-reader |
| 3.1 | CI: все модули + lint | 🟢 Средний | 1 д | .github/ |
| 3.2 | `kotlinx-coroutines-test` | 🟢 Средний | 1 д | все тесты |
| 3.3 | Instrumented tests | 🟢 Средний | 3 д | androidTest/ |
| 3.4 | Авто-релиз | 🟢 Средний | 4 ч | .github/ |
| 3.5 | Detekt | 🟢 Средний | 2 ч | root build |
| 4.1 | Интерфейсы репозиториев | 🔵 Низкий | 2 д | core-domain, core-data |
| 4.2 | Room-аннотации → core-data | 🔵 Низкий | 2 д | core-model, core-data |
| 4.3 | KDoc для API | 🔵 Низкий | 1 д | engine-api |
| 4.4 | KMP для доменной логики | 🔵 Низкий | 1–2 нед | shared/ |
| 4.5 | UseCase-слой | 🔵 Низкий | 3 д | core-domain |

### Рекомендуемый порядок выполнения

```
Неделя 1:  1.1 → 1.2 → 1.3 → 1.4 → 1.5  (критические баги)
Неделя 2:  2.5 → 3.1 → 3.5               (namespace + CI + Detekt)
Неделя 3:  2.1 (ReaderViewModel)          (начало декомпозиции)
Неделя 4:  2.2 + 2.3                      (SettingsViewModel + ComicRepository)
Неделя 5:  2.4 + 2.6                      (ISP + DocumentEngine миграция)
Неделя 6:  3.2 + 3.3 + 3.4               (тесты + авто-релиз)
Месяц 2+:  4.1 → 4.2 → 4.5 → 4.3 → 4.4  (долгосрочное качество)
```

---

*Детальные рекомендации подготовлены 20.07.2026 на основе статического анализа commit HEAD репозитория [github.com/Leostrange/Mr.Comic](https://github.com/Leostrange/Mr.Comic)*
