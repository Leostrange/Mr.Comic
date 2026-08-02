# План исправления контраста цветов Mr.Comic

**Дата**: 2026-07-31
**Проблема**: На 4-й и 5-й картинках скриншотов экрана «Цвета и поверхности» текст и поверхности сливаются при выборе насыщенного акцента (фиолетовый, синий, зелёный — любой).

---

## 🔍 Root cause (одно предложение)

В `core-ui/.../theme/Theme.kt::applyCustomThemeColors()` параметр `surfaceAnchorBackground = baseColorScheme.background` используется для расчёта **всех** `surfaceContainer*` токенов через `lerp()`, и когда пользователь включает `customBackgroundColor` (или его меняет акцент → dynamic colors → `baseColorScheme.background` становится акцентного оттенка), вся система поверхностей «протекает» в этот оттенок.

Существующий тест `ThemeColorIsolationTest.customBackgroundDoesNotMutateSurfaceOrControlColors` проверяет только `surface` и `surfaceVariant`, но **не** `surfaceContainer`, `surfaceContainerLow/High` и т.д. — поэтому баг не ловится.

---

## 🩻 Диагноз: 5 категорий багов

### 1. surfaceAnchorBackground протекает в surfaceContainer*

**Файл**: `android/core-ui/src/main/java/io/leostrange/mrcomic/core/ui/theme/Theme.kt:65, 101-112`

```kotlin
val surfaceAnchorBackground = baseColorScheme.background  // ← BUG
// ...
val surfaceContainerLowest = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)  // ← BUG
val surfaceContainerLow    = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)  // ← BUG
val surfaceContainer       = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)  // ← BUG
val surfaceContainerHigh   = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)  // ← BUG
val surfaceContainerHighest = lerp(surfaceBaseColor, onSurface, ...)  // OK
val surfaceDim             = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)  // BUG
```

Когда `dynamicColor=true` или `customBackgroundColor` задан, `baseColorScheme.background` становится акцентного цвета, и `lerp(accentColor, surfaceBaseColor, 0.62f)` даёт почти-акцент.

**Правильно**: при расчёте surfaceContainer* использовать **`result.background`** (= `backgroundColor`, который может быть custom) или **`effectiveSurface`** как якорь, а не `baseColorScheme.background`. То есть:

```kotlin
// ❌ Сейчас
val surfaceAnchorBackground = baseColorScheme.background
val surfaceContainer = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)

// ✅ Должно быть
val surfaceAnchorBackground = effectiveSurface  // или neutralBackground, не зависит от акцента
val surfaceContainer = lerp(surfaceAnchorBackground, surfaceBaseColor, ...)
```

Либо вообще — убрать `customBackgroundColor` из влияния на `surfaceContainer*` (тест `customBackgroundDoesNotMutateSurfaceOrControlColors` уже требует такого поведения, просто проверка неполная).

---

### 2. onSurfaceVariant вычисляется через luminance() с жёстким порогом 0.58

**Файл**: `android/core-ui/src/main/java/io/leostrange/mrcomic/core/ui/theme/Theme.kt:42-43`

```kotlin
private fun Color.contentColorForBackground(): Color =
    if (luminance() > 0.58f) Color(0xFF171717) else Color(0xFFF8F7F3)
```

**Проблема**: на фиолетовом с luminance ≈ 0.18 `contentColorForBackground` вернёт `0xFFF8F7F3` (почти белый) — и это OK. Но если `surface` (customSurface) — фиолетовый с luminance 0.22, и на нём `onSurface` = белый, и `surfaceVariant` (который используется как фон для вторичных карточек) получается через `lerp(effectiveSurface, onSurface, 0.14f)` = смесь фиолетового и белого, и `onSurfaceVariant` = `surfaceVariant.contentColorForBackground()` — здесь `luminance` ~ 0.32, и возвращается белый. Но фон уже почти-белый → **низкий контраст**.

**Правильно**: `contentColorForBackground` должен учитывать что onSurface**Variant** используется на surfaceVariant (более светлом/тёмном), а не на `surface`. Разделить логику:

```kotlin
private fun Color.onColorForSurface(isDark: Boolean): Color = when {
    luminance() > 0.6f -> Color(0xFF121212)  // тёмный текст на светлом
    luminance() < 0.3f -> Color(0xFFF8F7F3)  // светлый текст на тёмном
    isDark -> Color(0xFFF8F7F3)
    else -> Color(0xFF1B1B18)
}
```

Либо использовать `Color.luminance()`-aware `contrastColor()` (WCAG 3:1).

---

### 3. onPrimary может быть неконтрастным

**Файл**: `android/core-ui/src/main/java/io/leostrange/mrcomic/core/ui/theme/Theme.kt:77`

```kotlin
themeConfig.customPrimaryColor?.let {
    val primary = argbLongToThemeColor(it)
    val primaryContainer = deriveContainerColor(primary, backgroundColor, isDarkTheme)
    result = result.copy(
        primary = primary,
        onPrimary = primary.contentColorForBackground(),  // ← полагается на luminance
        ...
    )
}
```

**Проблема**: если primary — яркий жёлтый, то `luminance() > 0.58` → возвращается чёрный, OK. Но если primary — пастельный лавандовый (luminance ≈ 0.55), то на грани — может вернуть чёрный на лавандовом → низкий контраст.

**Правильно**: использовать **WCAG contrast ratio** (4.5:1 для AA) вместо luminance threshold:

```kotlin
fun Color.contrastingOnColor(): Color {
    val l = luminance()
    // WCAG: предпочитаем чёрный, если luminance > 0.18, иначе белый
    return if (l > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)
}
```

Это работает лучше, чем luminance threshold.

---

### 4. Хардкод цветов в бизнес-логике (вне темы)

**Файлы**:
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/LibraryScreen.kt:2560-2571` — `Color(0xFF4CAF50)` (зелёный) для completed badge. Не контрастен на зелёной теме.
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/components/LibraryAchievements.kt` — 25+ хардкод gradient colors. На светлой/тёмной теме они не адаптируются.
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/components/ReaderSleepOverlay.kt` — 15+ хардкодов для sleep overlay (ночной режим), OK, поскольку это специальный оверлей.
- `android/feature-reader/src/main/java/io/leostrange/mrcomic/feature/reader/ui/ReaderHeaderFooterUi.kt`, `RsvpOverlay.kt` — нужна проверка.

**Правильно**: 
1. `Color(0xFF4CAF50)` → `MaterialTheme.colorScheme.tertiary` (если зелёный — success). Либо определить в `MrComicColorTokens` `success = Color(0xFF4CAF50)` и `successContainer = Color(0xFF...)`.
2. Achievements gradients: заменить на `MaterialTheme.colorScheme.primary`, `tertiary`, `secondary` с вариациями. Если нужны именно яркие градиенты — вынести в `MrComicAchievementTokens` (но это значит, что они **никогда** не адаптируются к теме, и пользователь с тёмной темой увидит яркие градиенты — это OK, как дизайнерское решение, но должно быть явным).
3. ReaderSleepOverlay — оставить как есть, это специальный экран.

---

### 5. Preview card не показывает ВСЕ типы поверхностей

**Файл**: `android/feature-settings/src/main/java/io/leostrange/mrcomic/feature/settings/ui/SettingsScreen.kt:4176-4269`

Preview показывает: primary, primaryContainer, surface, background. **Не показывает**: surfaceContainer, surfaceContainerHigh, surfaceVariant, error, errorContainer. Пользователь выбирает цвета вслепую для этих токенов.

**Правильно**: добавить в preview блоки для:
- `surfaceContainer` (вложенные карточки)
- `surfaceContainerHigh` (модалки, выбранные элементы)
- `error` (ошибки)
- `errorContainer` (ошибки с фоном)

---

## 📋 План исправления (приоритезирован)

### Фаза 1: Critical — fix Theme.kt (1 файл, ~20 строк)

**Файл**: `android/core-ui/src/main/java/io/leostrange/mrcomic/core/ui/theme/Theme.kt`

1. **Исправить `surfaceAnchorBackground`** (строки 65, 101-112)
   - Заменить `val surfaceAnchorBackground = baseColorScheme.background` на якорь, не зависящий от custom/dynamic:
     ```kotlin
     val surfaceAnchorBackground = effectiveSurface  // или result.background, но ДО применения customBackgroundColor
     ```
   - Уточнить: если пользователь меняет только `customBackgroundColor` (не `customSurfaceColor`), surface family должна остаться от базовой темы.

2. **Исправить `onPrimary` calculation** (строки 42-43, 77)
   - Заменить `contentColorForBackground()` (luminance threshold 0.58) на WCAG-based `contrastingOnColor()`:
     ```kotlin
     private fun Color.contrastingOnColor(): Color =
         if (luminance() > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)
     ```

3. **Добавить отдельный расчёт для `onSurfaceVariant`** (строки 99-100, 126)
   - Сейчас `onSurfaceVariant = surfaceVariant.contentColorForBackground()` — это luminance на surfaceVariant. Нужно гарантировать минимум 4.5:1 contrast ratio. Использовать ту же `contrastingOnColor()` функцию.

**Тест**:
- Расширить `ThemeColorIsolationTest`:
  - Добавить тест `customBackgroundDoesNotMutateSurfaceContainers` — проверить, что `surfaceContainer`, `surfaceContainerLow`, `surfaceContainerHigh`, `surfaceContainerLowest`, `surfaceContainerHighest` НЕ зависят от `customBackgroundColor`.
  - Добавить тест `customPrimaryOnContrastMeetsWcag` — для ярких primary цветов проверить, что onPrimary имеет contrast ratio >= 4.5:1.

---

### Фаза 2: Replace business-logic hardcoded colors (5 файлов)

**Файлы**:
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/LibraryScreen.kt` — `Color(0xFF4CAF50)` → токен.
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/components/LibraryAchievements.kt` — хардкод gradients.
- `android/feature-library/src/main/java/io/leostrange/mrcomic/feature/library/components/ReaderSleepOverlay.kt` — оставить (special overlay).
- `android/feature-reader/src/main/java/io/leostrange/mrcomic/feature/reader/ui/ReaderHeaderFooterUi.kt` — проверить.
- `android/feature-reader/src/main/java/io/leostrange/mrcomic/feature/reader/ui/rsvp/RsvpOverlay.kt` — проверить.

**Действия**:
1. Добавить в `MrComicColorTokens`:
   ```kotlin
   const val SuccessArgb = 0xFF4CAF50L
   const val SuccessContainerArgb = 0xFFC8E6C9L
   const val SuccessDarkArgb = 0xFF81C784L
   const val SuccessDarkContainerArgb = 0xFF1B5E20L
   ```
2. Заменить `Color(0xFF4CAF50)` → `mrComicArgbColor(MrComicColorTokens.SuccessArgb)`.
3. Achievements: решить с дизайнером — или:
   - **Вариант A**: вынести в `MrComicAchievementTokens` (не адаптируются к теме — OK, если так задумано).
   - **Вариант B**: использовать `MaterialTheme.colorScheme.primary/tertiary/secondary` с `.copy(alpha = 0.92f)` для градиента.

**Рекомендация**: Вариант A — achievements специально должны быть яркими для геймификации. Добавить `MrComicAchievementTokens`.

---

### Фаза 3: Improve preview card (1 файл, ~30 строк)

**Файл**: `android/feature-settings/src/main/java/io/leostrange/mrcomic/feature/settings/ui/SettingsScreen.kt:4176-4269`

Добавить в `ThemePreviewCard` дополнительные превью-блоки:

```kotlin
// После previewPrimaryContainer блока, добавить:
// surfaceContainer preview
Box(
    modifier = Modifier
        .fillMaxWidth()
        .clip(MaterialTheme.shapes.medium)
        .background(currentScheme.surfaceContainer)
        .padding(8.dp)
) {
    Text(
        "Вложенная карточка",
        color = currentScheme.onSurface
    )
}

// error preview
Row(...) {
    Box(modifier = Modifier
        .clip(RoundedCornerShape(8.dp))
        .background(currentScheme.errorContainer)
        .padding(8.dp)) {
        Text("Ошибка", color = currentScheme.onErrorContainer)
    }
}
```

---

### Фаза 4: Documentation (1 файл, README в docs/)

**Файл**: `docs/COLOR_USAGE_GUIDELINES.md` — создать документ для будущих разработчиков:

```markdown
# Color usage guidelines in Mr.Comic

## ✅ DO
- Используй `MaterialTheme.colorScheme.surface`, `.background`, `.primary` и т.д.
- Используй `MrComicColorTokens` для семантических токенов (success, warning, info)
- Для ачивок/бейджей с фиксированным дизайном — выноси в `MrComicAchievementTokens`

## ❌ DON'T
- Не используй `Color(0xFF...)` в @Composable (только в token definitions)
- Не используй `Color.copy(alpha = 0.5f)` для backgrounds — используй surfaceVariant
- Не создавай свои surface-like colors — используй систему surfaceContainer*

## Surface hierarchy (Material 3)
- background — экран
- surface — основной слой для карточек
- surfaceContainer — вложенные карточки
- surfaceContainerHigh — модалки, выделенные элементы
- surfaceContainerHighest — самый верхний слой
- surfaceVariant — вторичный (для менее важных элементов)
```

---

## 🧪 Как проверить результат

### Unit tests (Theme.kt)
```bash
.\gradlew.bat --no-daemon --console=plain :core-ui:testDebugUnitTest --tests "io.leostrange.mrcomic.core.ui.theme.ThemeColorIsolationTest"
```

### Device test (manual)
1. Открыть `Settings → Внешний вид → Тема`
2. Выбрать пресет **AMOLED** (тёмная тема)
3. В разделе «Акцент и сигнальные цвета» выбрать яркий **фиолетовый** (5-й цвет в первом ряду)
4. Проверить preview card: текст «Ридер» должен быть белым/почти белым и хорошо читаемым
5. Повторить с **синим** акцентом
6. Повторить с **зелёным** акцентом
7. В разделе «Фон и поверхности» — изменить background на насыщенный, проверить, что surface карточек остаются нейтральными тёмными

### Automated UI test (опционально)
Добавить Compose UI test, который проходит по экрану «Цвета и поверхности» с разными акцентами и проверяет `assertContrastRatio(text, background) >= 4.5`.

---

## 📊 Скоуп

| Фаза | Файлов | Строк | Риск |
|-------|--------|-------|------|
| 1. Theme.kt fix | 1 | ~30 | Низкий (тесты есть) |
| 2. Hardcoded colors | 4-5 | ~50 | Средний (затрагивает визуал) |
| 3. Preview card | 1 | ~30 | Низкий (только preview) |
| 4. Docs | 1 | ~80 | Нет (только текст) |
| **Итого** | **7-8** | **~190** | **Низкий-средний** |

---

## ⚠️ Не делать

1. **Не менять EInk color scheme** (`Theme.kt:137-157`) — это для электронных книг, ч/б режим, контраст OK.
2. **Не менять `InkPaperLight`/`InkPaperDark` токены** — это базовые палитры, проверены.
3. **Не добавлять luminance-based "умную" автоинверсию primary** — слишком рискованно для UI, пользователь сам выбирает onPrimary в теме.
4. **Не использовать `Color.copy(alpha = X)` для backgrounds** — это антипаттерн в M3. Если нужен полупрозрачный фон, использовать `surfaceContainer*`.

---

## 📝 Commit plan (после одобрения)

```
fix(theme): isolate surface family from custom background color
   - Fix surfaceAnchorBackground to use effectiveSurface not baseColorScheme.background
   - Use WCAG-based contrastingOnColor() instead of luminance threshold
   - Add onSurfaceVariant contrast guarantee
   
refactor(library): replace hardcoded colors with design tokens
   - Color(0xFF4CAF50) → MrComicColorTokens.SuccessArgb
   - Add MrComicAchievementTokens for fixed-color achievements
   - Update achievements to use tokens
   
feat(settings): enhance theme preview with surfaceContainer + error samples
   - Add nested card preview (surfaceContainer)
   - Add error preview (errorContainer)
   - Add warning preview (if we have warning token)
   
docs(theme): add color usage guidelines
   - Create docs/COLOR_USAGE_GUIDELINES.md
   - Document surface hierarchy
   - Document DO/DON'T rules
```

---

## Готово к работе

Этот план не делает никаких изменений. После одобрения можно начинать с Фазы 1 (Theme.kt fix), потому что это устраняет **главный root cause** — протечку customBackground в surfaceContainer. Без этого фикса все остальные изменения дадут лишь частичный результат.
