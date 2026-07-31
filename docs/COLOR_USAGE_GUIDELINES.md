# Color Usage Guidelines — Mr.Comic

Краткий справочник для разработчиков: как правильно использовать цвета в Mr.Comic.

---

## ✅ DO

- Используй `MaterialTheme.colorScheme.*` — primary, surface, background и т.д.
- Используй `MrComicColorTokens.*` для семантических токенов (completed, success)
- Используй `mrComicCompletedColor()` из `Controls.kt` для completed-индикаторов (адаптивна к теме)
- Для on-цветов на кастомных фонах — `Color.contrastingOnColor()` (WCAG AA, порог luminance 0.18)
- Для ачивок/бейджей с фиксированным дизайном — выноси в `MrComicAchievementTokens` (не адаптируются к теме, OK для геймификации)

## ❌ DON'T

- Не используй `Color(0xFF...)` напрямую в `@Composable` — только в token definitions
- Не используй `Color.copy(alpha = 0.5f)` для backgrounds — используй `surfaceContainer*`
- Не создавай свои surface-like colors — используй систему `surfaceContainer*`
- Не используй luminance threshold 0.58 для on-цветов — это устаревший порог, даёт низкий контраст на средних тонах

---

## Surface Hierarchy (Material 3)

| Токен | Назначение | Пример |
|-------|-----------|--------|
| `background` | Фон экрана | Основной фон |
| `surface` | Основной слой карточек | Карточки, панели |
| `surfaceContainerLowest` | Самый нижний контейнер | Редко используется |
| `surfaceContainerLow` | Нижний контейнер | Вложенные элементы |
| `surfaceContainer` | Средний контейнер | Вложенные карточки |
| `surfaceContainerHigh` | Верхний контейнер | Модалки, выделенные элементы |
| `surfaceContainerHighest` | Самый верхний контейнер | Top-level overlays |
| `surfaceDim` | Приглушённая поверхность | Фоновые области |
| `surfaceBright` | Яркая поверхность | Акцентные области |
| `surfaceVariant` | Вторичная поверхность | Менее важные элементы |

---

## Contrast Rules

### WCAG AA (4.5:1 для текста, 3:1 для крупного текста)

Порог luminance **0.18** — оптимальная точка, где чёрный и белый текст оба дают ~4.5:1:

```
luminance > 0.18 → чёрный текст (0xFF000000)
luminance ≤ 0.18 → белый текст (0xFFFFFFFF)
```

### Почему не 0.58?

Старый порог 0.58 возвращал белый текст на фонах с luminance 0.3–0.58, где контраст белого текста всего ~1.9:1. Порог 0.18 даёт ≥ 4.5:1 для обоих вариантов.

---

## Surface Container Isolation

`surfaceContainer*` токены вычисляются из **нейтрального якоря** (`baseColorScheme.surface`), а не из `background`. Это предотвращает протекание акцентного цвета в surface hierarchy при:

- включённых dynamic colors (Material You)
- кастомном `customBackgroundColor`
- кастомном `customSurfaceColor` с opacity

---

## Semantic Tokens

| Токен | Где определён | Описание |
|-------|--------------|----------|
| `mrComicCompletedColor()` | `Controls.kt` | Цвет completed-индикатора (адаптивен) |
| `MrComicColorTokens.InkPaperCompletedArgb` | `MrComicDesignTokens.kt` | Светлая тема, completed |
| `MrComicColorTokens.InkPaperDarkCompletedArgb` | `MrComicDesignTokens.kt` | Тёмная тема, completed |

---

## Special Cases

- **ReaderSleepOverlay** — хардкод цветов OK (специальный ночной экран)
- **LibraryAchievements** — яркие градиенты для геймификации, не адаптируются к теме (by design)
- **EInk color scheme** — не менять, ч/б режим для электронных чернил

---

## Testing

```bash
# Unit tests для цветовой изоляции
.\gradlew.bat --no-daemon --console=plain :core-ui:testDebugUnitTest --tests "io.leostrange.mrcomic.core.ui.theme.ThemeColorIsolationTest"
```

Тесты проверяют:
- `customBackgroundDoesNotMutateSurfaceOrControlColors` — surface/surfaceVariant не зависят от custom bg
- `customBackgroundDoesNotTintSurfaceContainers` — surfaceContainer* нейтральны при custom bg
- `darkModeCustomBackgroundDoesNotTintSurfaceContainers` — то же для тёмной темы
- `customPrimaryOnContrastMeetsWcag` — onPrimary даёт ≥ 4.5:1 контраст

---

*Обновлено: 2026-07-31*
