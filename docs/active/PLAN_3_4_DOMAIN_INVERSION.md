# План 3.4: Инверсия core-domain → core-data

**Дата:** 2026-08-08 · **Статус:** План готов к реализации

## Проблема

`core-domain` (самый внутренний слой) напрямую импортирует `core-data` и `engine-formats`:

| Файл в core-domain | Импортирует из core-data | Импортирует из engine-formats |
|---|---|---|
| `ReaderCheckpointStore.kt` | `PreferencesKeys`, `dataStore` | — |
| `DailyReadingGoalStore.kt` | `PreferencesKeys`, `dataStore` | — |
| `CachingTranslatorEngine.kt` | `TranslationCacheDao`, `TranslationCacheEntry` | — |
| `RoomDictionaryEngine.kt` | `DictionaryRepository` | — |
| `TranslationModule.kt` | `TranslationCacheDao` | — |
| `GetComicPagesUseCase.kt` | — | `FormatFactory`, `FormatDetector` |

## Целевая архитектура

```
core-domain (интерфейсы + use cases)
    ↑依赖
core-data (реализации: Room, DataStore)
engine-api (BookEngine, BookSession)
    ↑依赖
engine-formats (реализации: FormatReader, FormatFactory)
```

## Пошаговый план

### Фаза 1: DataStore-хранилища (ReaderCheckpointStore, DailyReadingGoalStore)

**Шаг 1.1:** Создать интерфейсы в core-domain

```kotlin
// core-domain/.../analytics/ReaderCheckpointRepository.kt
interface ReaderCheckpointRepository {
    val checkpointTrail: Flow<List<ReaderCheckpoint>>
    val latestCheckpoint: Flow<ReaderCheckpoint?>
    suspend fun recordChapterReached(comicId: String, comicTitle: String, chapterTitle: String, page: Int)
    suspend fun clearCheckpoint()
    suspend fun removeComicCheckpoints(comicId: String)
    suspend fun pruneToComicIds(validComicIds: Set<String>)
}
```

```kotlin
// core-domain/.../analytics/DailyReadingGoalRepository.kt
interface DailyReadingGoalRepository {
    val goalState: Flow<DailyReadingGoalState>
    suspend fun setGoalEnabled(enabled: Boolean)
    suspend fun setTargetPages(targetPages: Int)
    suspend fun setStreakEnabled(enabled: Boolean)
    suspend fun setGraceEnabled(enabled: Boolean)
    suspend fun recordProgressDelta(pagesDelta: Int, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordSessionMinutes(durationMillis: Long, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordCompletedCheckpoint(count: Int = 1, nowMillis: Long = System.currentTimeMillis())
    suspend fun recordXpDelta(xpDelta: Int, nowMillis: Long = System.currentTimeMillis())
}
```

**Шаг 1.2:** Перенести реализации в core-data

- `ReaderCheckpointStore.kt` → `core-data/.../analytics/DataStoreReaderCheckpointRepository.kt`
- `DailyReadingGoalStore.kt` → `core-data/.../analytics/DataStoreDailyReadingGoalRepository.kt`
- Оставить data classes (`ReaderCheckpoint`, `DailyReadingGoalState`) в core-domain

**Шаг 1.3:** Создать Hilt-модуль в core-data

```kotlin
// core-data/.../di/DataStoreModule.kt
@Module
@InstallIn(SingletonComponent::class)
abstract class DataStoreModule {
    @Binds abstract fun bindReaderCheckpointRepo(impl: DataStoreReaderCheckpointRepository): ReaderCheckpointRepository
    @Binds abstract fun bindDailyReadingGoalRepo(impl: DataStoreDailyReadingGoalRepository): DailyReadingGoalRepository
}
```

**Шаг 1.4:** Обновить зависимости

- Убрать `implementation(project(":core-data"))` из core-domain/build.gradle.kts
- Добавить `implementation(project(":core-domain"))` в core-data/build.gradle.kts (если нет)
- Обновить все `@Inject constructor` в вызывающих сторонах

### Фаза 2: TranslationCache (CachingTranslatorEngine)

**Шаг 2.1:** Создать интерфейс в core-domain

```kotlin
// core-domain/.../translation/TranslationCacheRepository.kt
interface TranslationCacheRepository {
    suspend fun getByKey(key: String): TranslationCacheEntry?
    suspend fun recordHit(key: String)
    suspend fun insert(entry: TranslationCacheEntry)
}
```

**Шаг 2.2:** Перенести реализацию в core-data

- `TranslationCacheDao` уже в core-data
- Создать `RoomTranslationCacheRepository` в core-data

**Шаг 2.3:** Обновить CachingTranslatorEngine

- Заменить `TranslationCacheDao` на `TranslationCacheRepository`
- Обновить Hilt-модуль

### Фаза 3: DictionaryRepository

**Шаг 3.1:** Перенести интерфейс в core-domain

- `DictionaryRepository` уже имеет интерфейс в core-data
- Перенести интерфейс в core-domain, оставить реализацию в core-data

**Шаг 3.2:** Обновить RoomDictionaryEngine

- Импортировать интерфейс из core-domain

### Фаза 4: GetComicPagesUseCase (engine-formats)

**Шаг 4.1:** Заменить FormatFactory на BookEngine

```kotlin
// Было:
class GetComicPagesUseCase @Inject constructor(
    private val formatFactory: FormatFactory
)

// Стало:
class GetComicPagesUseCase @Inject constructor(
    private val bookEngineRegistry: BookEngineRegistry
)
```

**Шаг 4.2:** Использовать BookSession API вместо FormatReader

### Фаза 5: Убрать зависимости

**Шаг 5.1:** Обновить core-domain/build.gradle.kts

```kotlin
// Убрать:
implementation(project(":core-data"))
implementation(project(":engine-formats"))

// Оставить:
implementation(project(":core-model"))
implementation(libs.androidx.datastore.preferences) // для Preferences API
```

**Шаг 5.2:** Проверить, что core-data зависит от core-domain

```kotlin
// core-data/build.gradle.kts
implementation(project(":core-domain"))
```

## Риски

1. **Циклические зависимости** — core-data уже может зависеть от core-domain
2. **Hilt-модули** — нужно проверить, что все биндинги корректны
3. **Тесты** — существующие тесты могут потребовать обновления моков
4. **data classes** — `ReaderCheckpoint`, `DailyReadingGoalState` должны остаться в core-domain

## Оценка усилий

- **Фаза 1:** 2-3 часа (самая большая)
- **Фаза 2:** 1 час
- **Фаза 3:** 30 минут
- **Фаза 4:** 1 час
- **Фаза 5:** 30 минут
- **Итого:** 5-6 часов

## Порядок выполнения

1. Фаза 1 (DataStore) — самая безопасная, нет циклических зависимостей
2. Фаза 2 (TranslationCache) — простая, один интерфейс
3. Фаза 3 (Dictionary) — простая, интерфейс уже существует
4. Фаза 4 (engine-formats) — требует понимания BookEngine API
5. Фаза 5 (убрать зависимости) — финальная проверка
