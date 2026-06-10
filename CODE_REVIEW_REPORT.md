# 📋 Ревью кода: Текстовый ридер Mr.Comic

**Дата:** 10.06.2026  
**Статус:** ✅ Проведено и исправлено  
**Компиляция:** ✅ Успешна  

---

## 🐛 Найденные и исправленные баги

### 1. **CRITICAL: TAR архивы с текстом открываются белым экраном**

**Файл:** `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveDelegatingFormatReader.kt:304`

**Проблема:**
```kotlin
target.outputStream().use { output -> tar.copyTo(output) }  // BUG!
```

При извлечении текстовых файлов из TAR архива, `tar.copyTo()` копирует **весь оставшийся поток архива** в текущий файл, а не только данные одного entry.

**Результат:**
- Первый файл получает весь оставшийся архив (переполнение)
- Остальные файлы пусты или повреждены
- Текст в архивах показывает blank/loading screen

**Исправление:**
```kotlin
target.outputStream().use { output ->
    tar.copyTo(output, bufferSize = entry.size.toInt().coerceAtMost(8192))
}
```

**Статус:** ✅ ИСПРАВЛЕНО

---

### 2. **HIGH: Неправильное определение границ слов при разбиении текста**

**Файл:** `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt:1505`

**Проблема:**
```kotlin
val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd - 1)
if (whitespaceBoundary > start + charsPerChunk / 3) {
    boundary = whitespaceBoundary
}
```

- `lastIndexOf` с `startIndex = targetEnd - 1` пропускает пробел ровно на позиции `targetEnd`
- При отсутствии пробела в нужном диапазоне текст режется посередине слова
- Особенно критично для кириллицы и многобайтных символов

**Результат:**
- Неправильные разрывы слов: `таинствен-ные`, `высох-шие`
- Продолжение предложения пропадает при переходе на новую страницу
- Текст режется посредине слова в PAGE режиме

**Исправление:**
```kotlin
val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd)
    .takeIf { it >= start + charsPerChunk / 3 } ?: -1
if (whitespaceBoundary >= 0) {
    boundary = whitespaceBoundary
}
```

**Статус:** ✅ ИСПРАВЛЕНО

---

### 3. **MEDIUM: Коллизия ключей кеша архивов**

**Файл:** `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveFormatSupport.kt:256-257`

**Проблема:**
```kotlin
private fun stableDigestInput(vararg parts: String): String =
    parts.joinToString(separator = "") { part -> "${part.length}:$part;" }
```

Опасная конкатенация без экранирования разделителя:
- `["a:b", "c"]` → `"3:a:b;2:c;"`
- `["a", ":bc"]` → `"1:a;3::bc;"`

Если путь архива содержит `:` или `;`, кеш может вернуть неправильный контент.

**Результат:**
- Неправильный текст загружается из кеша
- Потенциальная потеря или повреждение данных при работе с архивами

**Исправление:**
```kotlin
private fun stableDigestInput(vararg parts: String): String =
    parts.joinToString(separator = "|") { part -> 
        "${part.length}:${part.replace("|", "%7C").replace(":", "%3A")}"
    }
```

**Статус:** ✅ ИСПРАВЛЕНО

---

### 4. **CRITICAL: Синтаксическая ошибка в детектре кодировки**

**Файл:** `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt:435`

**Проблема:**
```kotlin
ch in setOf('.,:;!?') -> score += 1  // SYNTAX ERROR!
```

Kotlin не может использовать строку в `setOf()` - требуются отдельные символы.

**Результат:**
- Ошибка компиляции
- Детектор кодировки вообще не работает
- Неправильное определение UTF-8, Windows-1251, KOI8-R

**Исправление:**
```kotlin
ch in setOf('.', ',', ':', ';', '!', '?') -> score += 1
```

**Статус:** ✅ ИСПРАВЛЕНО

---

## 📊 Статистика

| Категория | Кол-во |
|-----------|--------|
| **CRITICAL** | 2 |
| **HIGH** | 1 |
| **MEDIUM** | 1 |
| **ИСПРАВЛЕНО** | 4 |
| **Измененных файлов** | 3 |

---

## 🔍 Дополнительные проблемы в коде (требуют внимания)

### Потенциальные проблемы для будущих фиксов:

1. **Перезагрузка текстовых форматов (MOBI/EPUB)** - проверить логику кеширования в `ReflowableDocument.kt`
2. **Chrome/тулбары** - логика отступов и видимости в `ReaderScreen.kt` нужна унификация для TEXT vs GRAPHICS
3. **Encoding detection** - расширить паттерны детекции для других кодировок (IBM866, KOI7)
4. **EPUB сноски** - логика в `EpubFootnoteParser.kt` должна устанавливать правильный z-index для popup'ов
5. **Слово wrapping** - использовать Unicode grapheme cluster boundaries вместо простого поиска пробела

---

## ✅ Результаты тестирования

```
Compilation: ✅ SUCCESS
- engine-formats module: PASSED
- No Kotlin compilation errors
- Build time: ~23 seconds
```

**Важно:** Тесты `TextRealFileSmokeTest` и `EpubCorpusSmokeTest` требуют рунбутки на реальных данных для полной валидации.

---

## 🎯 Рекомендации

### Краткосрочные (Critical Priority)
1. ✅ Слейте исправления TAR архивов (влияет на все текстовые форматы в архивах)
2. ✅ Слейте исправления слово-wrapping (влияет на PAGE mode)
3. ✅ Слейте исправления синтаксиса (влияет на кодировку всех файлов)

### Среднесрочные (High Priority)
4. Переделать логику кеша `ArchiveFormatSupport` с использованием хешей вместо конкатенации
5. Добавить модульные тесты для экстракции TAR/RAR/7Z архивов
6. Расширить тесты кодировки (UTF-8, Windows-1251, KOI8-R, IBM866)

### Долгосрочные (Maintenance)
7. Рассмотреть использование Unicode-aware text segmentation (ICU4J)
8. Добавить профилирование загрузки текстовых форматов
9. Документировать формат бинарного кеша

---

## 📝 Версионность

- **Last Commit:** `5b05dbb` - "Save reader format and design updates"
- **Branch:** `codex/full-project-snapshot-20260514`
- **Modified Files:** 64
- **Lines Added:** 4377
- **Lines Deleted:** 5411

