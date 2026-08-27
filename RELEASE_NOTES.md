# Release Notes

## v2.5.0 — 2026-08-27

### Ридер

- Добавлены единые вкладки настроек «Чтение / Стиль / Сервисы» для текстового и графического ридеров.
- В «Сервисы» добавлено авточтение: запуск/пауза, задержка постраничного режима, скорость вертикальной ленты и быстрые профили скорости.
- В графическом ридере восстановлена кнопка настроек и доступны пресеты «День / Сепия / Ночь», масштаб и обрезка полей.

### Интерфейс

- Обновлены типографика, радиусы, поверхности и чипы библиотеки.
- Улучшены подложки названий и индикаторов прогресса на карточках.
- Добавлены шрифты AccessibleDfA, Liberation Sans, OpenDyslexic и iA Writer Duospace.

### Словари

- Офлайн-словари выделены в отдельный модуль `android/dictionaries-offline-store`.
- Модуль можно распространять отдельно от основного APK как дополнительный пакет данных.

### Проверка

- `:feature-reader:testDebugUnitTest` — успешно.
- `:feature-reader:compileDebugKotlin` — успешно.
- `:feature-library:compileDebugKotlin` — успешно.
- `:app:assembleDebug` — успешно.

Отложено: корректное отображение прогресса RTF и сохранение позиции страницы при смене режима чтения.

## v2.1.0 - 2026-06-22

Mr.Comic v2.1.0 focuses on reader stability, format routing and a cleaner public repository.

### Reader

- Consolidated text reader containers and CSS building.
- Improved page/webtoon text behavior, safe body insets and pagination resilience.
- Added crash recovery around renderer failures.
- Improved hyphenation, language attributes and favicon filtering for text/HTML content.
- Improved quote, footnote and reader chrome behavior.

### Formats

- Improved EPUB close behavior to avoid deadlocks.
- Improved EPUB asset base-path handling, progress calculation and HTML/CSS/JS tests.
- Added mojibake recovery for text decoding.
- Improved FB2, MOBI, archive delegation and text archive routing.
- Added reader format catalog and open/import policy coverage.

### Explain Engine

- Added LOCAL/ONLINE explain-engine provider selection.
- Added OpenRouter explain engine integration.

### Tests

- Expanded unit coverage for reader CSS, EPUB assets, EPUB close behavior, mojibake recovery, content policy, concurrency, footnote patterns, body inset injection, webtoon document building, format catalog and import/open routing.

### Repository

- Refreshed README with release badges, stack, supported formats and clean build commands.
- Added license, contributors and third-party notices.
- Kept local logs, screenshots, build outputs, private samples and analysis dumps out of git.

### Build

Windows build command:

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

Release tag: `v2.1.0`
