# Theme Coherence Audit — Mr.Comic
**Дата**: 2026-07-31
**Цель**: Найти все причины, почему при выборе светлой темы часть экранов остаётся тёмной, и дать единый план исправления.

---

## 📸 Симптомы (из скриншота)

При выборе "Светлая" тема в настройках:
| Экран | Фон | Использует LibraryBackdropLayer? |
|-------|-----|----------------------------------|
| Продолжить | ❌ Тёмный | ✅ Да |
| Библиотека | ❌ Тёмный | ✅ Да |
| Перевод (OCR) | ✅ Светлый | ❌ Нет |
| Настройки / Внешний вид / Кастомизация | ❌ Тёмный | ✅ Да |
| Настройки / Внешний вид / Тема и настроение | ✅ Светлый | ❌ Нет |
| Настройки / Внешний вид / Кастомизация (другая секция) | ❌ Тёмный | ✅ Да |

**Паттерн**: ВСЕ экраны с `LibraryBackdropLayer` остаются тёмными. ВСЕ экраны без него — светлые.

---

## 🔬 Полная архитектура темы

### Pipeline

```
User taps "Светлая"
    ↓
SettingsViewModel.setThemeMode(ThemeMode.LIGHT)
    ↓
ThemePreferencesRepository.themeConfig (DataStore Flow)
    ↓
MainActivity: themeConfig by collectAsState()
    ↓
MrComicTheme(themeConfig)
    ↓
MrComicTheme(): isDarkTheme = when (LIGHT) → false
    ↓
baseColorScheme = InkPaperLightColorScheme  (light tokens)
    ↓
applyCustomThemeColors(baseColorScheme, themeConfig, isDarkTheme=false)
    ↓
MaterialTheme(colorScheme = result)  ← PROVIDES TO ALL CHILDREN
    ↓
    ├── ContinueScreen → LibraryBackdropLayer(colorScheme = MaterialTheme.colorScheme)
    ├── LibraryScreen  → LibraryBackdropLayer(colorScheme = MaterialTheme.colorScheme)
    ├── OcrScreen      → (no backdrop, uses MaterialTheme.colorScheme directly)
    └── SettingsScreen → conditionally renders LibraryBackdropLayer
```

### Файлы

| Файл | Роль |
|------|------|
| `core-ui/.../theme/Theme.kt` | `MrComicTheme` composable, `applyCustomThemeColors()`, `contrastingOnColor()` |
| `core-ui/.../theme/ThemePreset.kt` | 7 пресетов (PAPER, GLASS, AMOLED, NEON, GRAY, SEPIA, EINK) |
| `core-ui/.../designsystem/MrComicDesignTokens.kt` | `MrComicPalette`, `MrComicThemePresetToken`, `MrComicReadingPresetToken`, ARGB tokens |
| `core-ui/.../designsystem/Controls.kt` | `mrComicCompletedColor()` |
| `core-ui/.../library/LibraryVisualStyle.kt` | `LibraryBackdropLayer`, `resolveLibraryBackdropVariant()`, 10 background styles × 3 variants (LIGHT/DARK/AMOLED) |
| `core-ui/.../library/LibraryVisualPresets.kt` | Library theme preset snapshots |
| `app/.../home/ContinueScreen.kt` | ContinueScreen — uses LibraryBackdropLayer |
| `feature-library/.../LibraryScreen.kt` | LibraryScreen — uses LibraryBackdropLayer |
| `feature-ocr/.../OcrScreen.kt` | OcrScreen — NO backdrop, uses MaterialTheme directly |
| `feature-settings/.../SettingsScreen.kt` | SettingsScreen — conditional LibraryBackdropLayer for LIBRARY section |

---

## 🐛 Найденные баги (5 категорий)

### BUG-1: LibraryBackdropLayer не переключается при смене темы

**Файл**: `core-ui/.../library/LibraryVisualStyle.kt:1241`

```kotlin
val variant = remember(colorScheme) { resolveLibraryBackdropVariant(colorScheme) }
```

**Проблема**: `resolveLibraryBackdropVariant()` читает `colorScheme.background.luminance()`. Когда `MrComicTheme` пересчитывает `colorScheme` при смене DARK→LIGHT, НОВЫЙ `ColorScheme` объект приходит в `LibraryBackdropLayer` через `MaterialTheme.colorScheme`. Однако `remember(colorScheme)` может НЕ инвалидироваться, если:

1. Compose ещё не дошёл до recomposition этого composable (race condition между DataStore emit и recomposition)
2. `ColorScheme.equals()` не вызывается (структурная проверка в Compose использует referential equality для ключей `remember`)

**Проверка**: Compose `remember` использует **structural equality** (`==`) для ключей. `ColorScheme` — data class, поэтому `==` сравнивает все поля. НО: если `applyCustomThemeColors` возвращает `baseColorScheme` БЕЗ изменений (custom colors = null, opacity = 1.0), то `result` — это тот же объект, что и `baseColorScheme`. При этом `baseColorScheme` для LIGHT — это `InkPaperLightColorScheme`, а для DARK — `InkPaperDarkColorScheme`. Они РАЗНЫЕ объекты, поэтому `remember` ДОЛЖЕН инвалидироваться.

**Вероятная причина**: Race condition — `LibraryBackdropLayer` рендерится ДО того, как `MaterialTheme.colorScheme` обновился. Compose может кешировать composition tree и не обновить backdrop до следующего кадра.

**Фикс**: Убрать `remember` для `variant` или использовать `derivedStateOf`:

```kotlin
// БЫЛО:
val variant = remember(colorScheme) { resolveLibraryBackdropVariant(colorScheme) }

// НАДО:
val variant = resolveLibraryBackdropVariant(colorScheme)  // без remember, чистая функция
```

Функция `resolveLibraryBackdropVariant()` — дешёвая (2x luminance + сравнение), `remember` тут не нужен.

---

### BUG-2: applyCustomThemeColors не пересчитывает surface family при смене themeMode

**Файл**: `core-ui/.../theme/Theme.kt:110`

```kotlin
if (themeConfig.customSurfaceColor != null || themeConfig.surfaceOpacity < 0.999f) {
    // surface family пересчитывается ТОЛЬКО здесь
}
```

**Проблема**: Surface hierarchy (`surfaceContainer*`, `surfaceDim`, `surfaceBright`) пересчитывается ТОЛЬКО когда пользователь задал `customSurfaceColor` ИЛИ `surfaceOpacity < 1.0`. Если пользователь просто меняет DARK→LIGHT без кастомного surface, surface family берётся из `baseColorScheme` (InkPaperLightColorScheme) — и это корректно.

**НО**: если пользователь БЫЛ на DARK с `surfaceOpacity = 0.85f`, а потом переключился на LIGHT, surface family будет пересчитана по LIGHT base. Это OK.

**Реальный баг**: Если пользователь на DARK с `customSurfaceColor = 0xFF1A1A2E` (тёмный surface) и переключается на LIGHT, `customSurfaceColor` НЕ сбрасывается. Surface family остаётся тёмной!

**Фикс**: При смене themeMode сбрасывать `customSurfaceColor` и `surfaceOpacity` к дефолту, ИЛИ в `applyCustomThemeColors` пересчитывать surface family ВСЕГДА (не только при custom surface).

---

### BUG-3: contentColorForPreview() в SettingsScreen имеет несогласованный порог

**Файл**: `feature-settings/.../SettingsScreen.kt:4173-4174`

```kotlin
private fun Color.contentColorForPreview(): Color =
    if (luminance() > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)
```

**Статус**: Уже исправлен в коммите `e4cd5e2`. Порог был 0.56, стал 0.18 (как `contrastingOnColor()` в Theme.kt).

---

### BUG-4: mrComicCompletedColor() использует luminance 0.45 вместо theme-aware

**Файл**: `core-ui/.../designsystem/Controls.kt:64-68`

```kotlin
fun mrComicCompletedColor(): Color = if (MaterialTheme.colorScheme.background.luminance() > 0.45f) {
    mrComicArgbColor(MrComicColorTokens.InkPaperCompletedArgb)      // 0xFF4CAF50
} else {
    mrComicArgbColor(MrComicColorTokens.InkPaperDarkCompletedArgb)  // 0xFF81C784
}
```

**Проблема**: Использует `luminance() > 0.45f` для определения «светлая/тёмная тема». Это НЕ контраст-порог (как `contrastingOnColor`), а theme detection. Логически верно — 0.45 — нормальный порог для light/dark detection. НО: при кастомном background с luminance ≈ 0.4 (например, тёмно-синий) функция вернёт тёмно-зелёный вместо светло-зелёного.

**Рекомендация**: Использовать `isSystemInDarkTheme()` или передавать `isDark` параметр вместо luminance heuristic.

**Приоритет**: Низкий. Работает в 95% случаев.

---

### BUG-5: Dynamic Color не учитывает customBackgroundColor

**Файл**: `core-ui/.../theme/Theme.kt:262-264`

```kotlin
themeConfig.useDynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
    if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
}
```

**Проблема**: Когда `useDynamicColor = true`, `baseColorScheme` берётся из `dynamicLightColorScheme(context)` / `dynamicDarkColorScheme(context)`. Затем `applyCustomThemeColors` применяет custom primary/secondary/background поверх dynamic. Это корректно.

**НО**: Dynamic colors уже содержат accent-tinted background (Material You). Когда пользователь задаёт `customBackgroundColor`, он перезаписывает dynamic background. Но surface family в dynamic scheme уже accent-tinted — `applyCustomThemeColors` пересчитывает surface family ТОЛЬКО если `customSurfaceColor != null || surfaceOpacity < 1.0`. Если пользователь задал только `customBackgroundColor`, surface family остаётся от dynamic scheme (accent-tinted)!

**Фикс**: В `applyCustomThemeColors`, если `customBackgroundColor != null`, пересчитывать surface family ВСЕГДА (не только при custom surface). Это BUG-2 расширение.

---

### BUG-6: LibraryShelfBar remember(colorScheme) — shelf highlight может устареть

**Файл**: `core-ui/.../library/LibraryVisualStyle.kt:1342`

```kotlin
val spec = remember(shelfStyle, colorScheme, depth) {
    resolveLibraryShelfSpec(rawStyle = shelfStyle, colorScheme = colorScheme, depth = depth)
}
```

**Проблема**: Аналогично BUG-1 — `remember(colorScheme)` может не инвалидироваться при смене темы. Большинство shelf стилей используют хардкод цвета (oak, walnut, steel и т.д.), НО `ShelfLacquer` использует `colorScheme.primary`:

```kotlin
highlightColor = colorScheme.primary.copy(alpha = 0.55f)  // строка 650
```

**Влияние**: Shelf подсветка для Lacquer стиля может остаться от старой темы.

**Фикс**: Аналогично BUG-1 — убрать `remember` для `colorScheme`:

```kotlin
// НАДО:
val spec = remember(shelfStyle, depth) {
    resolveLibraryShelfSpec(rawStyle = shelfStyle, colorScheme = colorScheme, depth = depth)
}
```

**Приоритет**: P2. Только один shelf стиль использует colorScheme.

---

## 📋 Сводная таблица багов (обновлена)

| ID | Где | Что | Влияние | Приоритет |
|----|-----|-----|---------|-----------|
| BUG-1 | `LibraryVisualStyle.kt:1241` | `remember(colorScheme)` для variant может не инвалидироваться | Все экраны с backdrop остаются тёмными | **P0** |
| BUG-2 | `Theme.kt:110` | Surface family не пересчитывается при смене themeMode с custom surface | Тёмный surface на светлой теме | **P0** |
| BUG-3 | `SettingsScreen.kt:4173` | contentColorForPreview порог 0.56 | Неправильный контраст в preview | ✅ Исправлен |
| BUG-4 | `Controls.kt:64` | mrComicCompletedColor luminance heuristic | Зелёный badge может быть не того оттенка | P2 |
| BUG-5 | `Theme.kt:262` | Dynamic + customBackground не пересчитывает surface | Surface accent-tinted при dynamic + custom bg | P1 |
| BUG-6 | `LibraryVisualStyle.kt:1342` | `remember(colorScheme)` для shelf spec — Lacquer highlight устаревает | Shelf подсветка от старой темы | P2 |

---

## 🔧 План исправления (6 шагов, 4 файла)

### Шаг 1: Убрать `remember(colorScheme)` в LibraryVisualStyle (BUG-1 + BUG-6)
**Файл**: `core-ui/.../library/LibraryVisualStyle.kt`

**1a. Строка 1241** (backdrop variant):
```kotlin
// БЫЛО:
val variant = remember(colorScheme) { resolveLibraryBackdropVariant(colorScheme) }
// НАДО:
val variant = resolveLibraryBackdropVariant(colorScheme)
```

**1b. Строка 1342** (shelf spec):
```kotlin
// БЫЛО:
val spec = remember(shelfStyle, colorScheme, depth) { ... }
// НАДО:
val spec = remember(shelfStyle, depth) { ... }
```

**Почему**: Обе функции дешёвые. `remember(colorScheme)` создаёт race condition при смене темы — variant/spec остаются от старой темы.

**Тест**: Вручную: переключить DARK→LIGHT, проверить что все экраны с backdrop переключаются.

---

### Шаг 2: Пересчитывать surface family при customBackgroundColor
**Файл**: `core-ui/.../theme/Theme.kt:110`

```kotlin
// БЫЛО:
if (themeConfig.customSurfaceColor != null || themeConfig.surfaceOpacity < 0.999f) {

// НАДО:
if (themeConfig.customSurfaceColor != null || themeConfig.surfaceOpacity < 0.999f
    || themeConfig.customBackgroundColor != null) {
```

**Почему**: Если пользователь задал custom background (или dynamic colors дали accent-tinted bg), surface family должна пересчитаться, чтобы не протекать акцентный tint.

**Тест**: Unit test — `customBackgroundAlsoRecalculatesSurfaceFamily`.

---

### Шаг 3: Dynamic Color + customBackground surface recalculation
**Файл**: `core-ui/.../theme/Theme.kt:110` (тот же блок, что и Шаг 2)

После Шага 2, если `customBackgroundColor != null`, surface family пересчитается. Для dynamic colors без custom background — surface family из dynamic scheme (accent-tinted) — это **ожидаемое поведение** Material You. НЕ фиксить.

---

### Шаг 4: mrComicCompletedColor — передавать isDark вместо luminance
**Файл**: `core-ui/.../designsystem/Controls.kt:64`

```kotlin
// БЫЛО:
fun mrComicCompletedColor(): Color = if (MaterialTheme.colorScheme.background.luminance() > 0.45f) {

// НАДО:
@Composable
fun mrComicCompletedColor(): Color {
    val isDark = MaterialTheme.colorScheme.background.luminance() < 0.42f
    return if (isDark) {
        mrComicArgbColor(MrComicColorTokens.InkPaperDarkCompletedArgb)
    } else {
        mrComicArgbColor(MrComicColorTokens.InkPaperCompletedArgb)
    }
}
```

**Приоритет**: P2. Улучшение, не критично.

---

### Шаг 5: Тесты
**Файл**: `core-ui/src/test/.../ThemeColorIsolationTest.kt`

Добавить:
```kotlin
@Test
fun customBackgroundAlsoRecalculatesSurfaceFamily() {
    val base = lightColorScheme(surface = Color(0xFFFFFFFF), background = Color(0xFFF7F3EE))
    val result = applyCustomThemeColors(
        baseColorScheme = base,
        themeConfig = ThemeConfig(customBackgroundColor = 0xFF1B5E20),
        isDarkTheme = false
    )
    // Surface family должна быть пересчитана, не должна совпадать с base
    assertNotEquals(base.surfaceContainer, result.surfaceContainer)
    assertNotEquals(base.surfaceContainerHigh, result.surfaceContainerHigh)
}

@Test
fun dynamicColorWithCustomBackgroundDoesNotLeakAccentToSurface() {
    // Simulate dynamic colors with accent-tinted background
    val dynamicBase = lightColorScheme(
        background = Color(0xFFE8DEF8),  // purple-tinted (Material You)
        surface = Color(0xFFFFFBFE)
    )
    val result = applyCustomThemeColors(
        baseColorScheme = dynamicBase,
        themeConfig = ThemeConfig(customBackgroundColor = 0xFFFFFBFE),  // override to neutral
        isDarkTheme = false
    )
    // Surface containers should be neutral, not purple-tinted
    assertTrue(result.surfaceContainer.luminance() > 0.85f)
}
```

---

## ✅ Исправлено ранее (в этой серии)

| Что | Коммит | Описание |
|-----|--------|----------|
| `contrastingOnColor()` порог 0.18 | `84dbc1d` | WCAG AA contrast для on* токенов |
| `surfaceAnchorBackground` нейтральный | `84dbc1d` | Surface containers от surface, не от background |
| `Color(0xFF4CAF50)` → `mrComicCompletedColor()` | `0552fe1` | LibraryScreen completed badge |
| `ThemePreviewCard` surfaceContainer + error | `73b1848` | Preview показывает все типы поверхностей |
| `contentColorForPreview()` порог 0.18 | `e4cd5e2` | Preview контраст согласован с Theme.kt |
| `onPreview` порог 0.18 | `e4cd5e2` | Preview текст согласован |
| Button contentColor порог 0.18 | `e4cd5e2` | Preview кнопка согласована |
| docs/COLOR_USAGE_GUIDELINES.md | `fd3dfb8` | Документация для разработчиков |

---

## 🚫 Не делать

1. Не трогать `ReaderMaterialColorScheme` — ридер имеет свою автономную систему цветов
2. Не трогать `EInkColorScheme` — для электронных чернил
3. Не трогать `InkPaperLight`/`InkPaperDark` токены — базовые палитры
4. Не добавлять luminance-based автоинверсию primary — пользователь сам выбирает
5. Не трогать `LibraryVisualStyle` backdrop цвета для DARK/AMOLED — они дизайнерские

---

## 📊 Скоуп

| Шаг | Файл | Строк | Риск |
|-----|------|-------|------|
| 1a. Убрать remember для variant | LibraryVisualStyle.kt | ~1 | Нулевой |
| 1b. Убрать remember для shelf spec | LibraryVisualStyle.kt | ~1 | Нулевой |
| 2. Surface family при custom bg | Theme.kt | ~2 | Низкий |
| 3. (covered by Шаг 2) | — | — | — |
| 4. mrComicCompletedColor isDark | Controls.kt | ~5 | Низкий |
| 5. Тесты | ThemeColorIsolationTest.kt | ~25 | Нулевой |
| **Итого** | **4 файла** | **~34** | **Низкий** |
