# План 3.1: Словари из LFS → Download-on-Demand

**Дата:** 2026-08-08 · **Статус:** План готов к реализации

## Текущее состояние

- **10 файлов** `.dbpack` в `android/app/src/main/assets/databases/`
- **718 МБ** общего размера (LFS)
- Файлы: en, fr, it, ja, ko, pl, pt, ru, tr, zh
- GitHub LFS лимиты: 1 ГБ хранилища, 1 ГБ трафика/мес

## Проблема

1. **Клонирование** — каждый клон скачивает ~720 МБ LFS-контента
2. **CI/CD** — каждый прогон CI тратит трафик LFS
3. **Лимиты** — проект уже на пределе бесплатных лимитов GitHub

## Варианты решения

### Вариант A: Download-on-Demand (рекомендуется)

**Суть:** Словари скачиваются при первом использовании (при первом переводе).

**Реализация:**
1. Убрать `.dbpack` файлы из репозитория
2. Загрузить их как Release Assets (v2.3.0)
3. При первом обращении к словарю:
   - Проверить, есть ли файл в `context.filesDir/dictionaries/`
   - Если нет — скачать из Release Assets
   - Распаковать и использовать

**Преимущества:**
- Репозиторий уменьшается на 718 МБ
- CI работает без LFS
- Пользователи скачивают только нужные словари
- Нет лимитов GitHub LFS

**Недостатки:**
- Нужна логика скачивания при первом использовании
- Нужен интернет при первом переводе
- Нужно хранить URL'ы для скачивания

### Вариант B: Slim Subset в репозитории

**Суть:** Оставить в репозитории только 2-3 самых маленьких словаря.

**Реализация:**
1. Оставить в LFS: en (20 МБ), ko (16 МБ), it (38 МБ) = ~74 МБ
2. Остальные 7 словарей загрузить как Release Assets
3. При первом обращении к недостающему словарю — скачать

**Преимущества:**
- Базовая функциональность работает без интернета
- Уменьшение размера на ~644 МБ

**Недостатки:**
- Всё ещё 74 МБ в LFS
- Сложнее логика (нужно проверять наличие)

### Вариант C: CDN/Cloud Storage

**Суть:** Хранить словари на внешнем CDN (Firebase, S3, Cloudflare R2).

**Реализация:**
1. Загрузить словари на CDN
2. При первом обращении — скачать с CDN
3. Кешировать локально

**Преимущества:**
- Нет лимитов GitHub
- Быстрое скачивание
- Версионирование

**Недостатки:**
- Нужен аккаунт CDN
- Нужно оплачивать хранение/трафик
- Дополнительная зависимость

## Рекомендация

**Вариант A (Download-on-Demand)** — самый простой и безопасный:

1. Создать GitHub Release v2.3.0 с `.dbpack` файлами
2. Добавить `DictionaryDownloader` в core-data
3. При первом использовании словаря — скачать и распаковать
4. Убрать `.dbpack` из репозитория

## Пошаговый план

### Шаг 1: Подготовка Release Assets

1. Создать тег `v2.3.0`
2. Загрузить 10 `.dbpack` файлов как Release Assets
3. Сохранить SHA-256 хеши для проверки целостности

### Шаг 2: DictionaryDownloader

```kotlin
// core-data/.../dictionary/DictionaryDownloader.kt
class DictionaryDownloader @Inject constructor(
    @ApplicationContext private val context: Context,
    private val httpClient: OkHttpClient
) {
    private val dictionariesDir = File(context.filesDir, "dictionaries")
    
    suspend fun ensureDictionary(language: String): File? {
        val dbFile = File(dictionariesDir, "dictionary_${language}.db")
        if (dbFile.exists()) return dbFile
        
        val url = "https://github.com/Leostrange/Mr.Comic/releases/download/v2.3.0/dictionary_${language}.dbpack"
        return try {
            downloadAndExtract(url, dbFile)
        } catch (e: Exception) {
            Log.e("DictionaryDownloader", "Failed to download dictionary for $language", e)
            null
        }
    }
}
```

### Шаг 3: Интеграция с DictionaryRepository

```kotlin
// Обновить DictionaryRepository
class DictionaryRepositoryImpl @Inject constructor(
    private val downloader: DictionaryDownloader,
    // ... остальные зависимости
) : DictionaryRepository {
    
    override suspend fun isLookupAvailable(language: String): Boolean {
        return downloader.ensureDictionary(language) != null
    }
}
```

### Шаг 4: Убрать из репозитория

1. Добавить `android/app/src/main/assets/databases/*.dbpack` в `.gitignore`
2. Убрать файлы из Git LFS
3. Обновить CI (убрать LFS checkout если есть)

### Шаг 5: Тестирование

1. Проверить, что словари скачиваются при первом использовании
2. Проверить, что кеширование работает (повторное использование без скачивания)
3. Проверить, что ошибки скачивания обрабатываются корректно

## Оценка усилий

- **Шаг 1:** 30 минут (создание Release)
- **Шаг 2:** 2-3 часа (DictionaryDownloader)
- **Шаг 3:** 1 час (интеграция)
- **Шаг 4:** 30 минут (убрать из репозитория)
- **Шаг 5:** 1 час (тестирование)
- **Итого:** 5-6 часов

## Риски

1. **Нет интернета** — при первом использовании нужен интернет
2. **Скорость скачивания** — большие файлы могут скачиваться долго
3. **Версионирование** — при обновлении словарей нужно обновлять Release
4. **Хранение** — пользователи тратят место на диске

## Альтернатива: Оставить в LFS

Если download-on-demand слишком сложен, можно:
1. Оставить словари в LFS
2. Добавить в `.gitignore` только `tmp/` (уже сделано)
3. Принять лимиты GitHub LFS

Это самый простой вариант, но не решает проблему размера репозитория.
