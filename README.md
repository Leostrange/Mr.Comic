<p align="center"><img src="./assets/leostrange-project-banner.svg" alt="Mr.Comic — Android comic and book reader" width="100%" /></p>

<p align="center">
  <a href="https://github.com/Leostrange/Mr.Comic/releases/latest"><img src="https://img.shields.io/badge/Release-v2.4.0-7C3AED?style=flat-square" alt="Release" /></a>
  <img src="https://img.shields.io/badge/Android-3DDC84?style=flat-square&logo=android&logoColor=white" alt="Android" />
  <img src="https://img.shields.io/badge/Kotlin-7F52FF?style=flat-square&logo=kotlin&logoColor=white" alt="Kotlin" />
  <img src="https://img.shields.io/badge/Jetpack_Compose-4285F4?style=flat-square&logo=jetpackcompose&logoColor=white" alt="Jetpack Compose" />
  <a href="https://github.com/Leostrange/Mr.Comic/actions/workflows/build-apk.yml"><img src="https://img.shields.io/github/actions/workflow/status/Leostrange/Mr.Comic/build-apk.yml?branch=main&style=flat-square&label=build" alt="Build" /></a>
</p>

<p align="center"><b>Один Android-ридер для комиксов, книг и аудиокниг.</b><br/>Растровые страницы и вертикальные ленты, reflowable-текст, библиотека, TTS, аудио и дополнительные словарные модули.</p>

<p align="center"><a href="https://github.com/Leostrange/Mr.Comic/releases/latest"><b>Скачать приложение</b></a> · <a href="https://github.com/Leostrange/Mr.Comic/releases/tag/dictionary-modules-v1.0.0">Словарные модули</a> · <a href="CHANGELOG.md">Изменения</a> · <a href="docs/README.md">Документация</a> · <a href="https://github.com/Leostrange/Mr.Comic/issues">Issues</a></p>

---

## Возможности

- комиксы и манга: постраничный режим и вертикальная лента;
- отдельные пути отображения для raster paged, raster vertical, reflowable paged и reflowable vertical;
- библиотека, папки, поиск, сортировка, прогресс, закладки и цитаты;
- текстовые книги с настройками шрифта, интервалов и пресетами Paper, Sepia, Newspaper, Night Ink и OLED Black;
- дневная, сепия и ночная схемы в графическом ридере;
- локальные аудиокниги через Android Media3;
- TTS;
- импорт, скачивание, экспорт и удаление словарных модулей;
- светлая, тёмная, AMOLED и динамическая темы.

## Поддерживаемые форматы

| Содержимое | Форматы | Статус |
|---|---|---|
| Комиксы и манга | CBZ, CBR, ZIP, RAR, 7Z, TAR, папки изображений | Основной сценарий |
| Документы | PDF, DJVU | Работает, качество зависит от документа |
| Reflowable-книги | EPUB, FB2, TXT, HTML, Markdown | Работает; пагинация улучшается |
| Дополнительные текстовые | RTF, MOBI, AZW3, DOCX, ODT | Поддержка зависит от разметки |
| Аудиокниги | локальные аудиофайлы через Media3 | Работает |

## Приложение и словари

| 📱 Приложение | 🧩 Дополнительные словари |
|---|---|
| APK и обновления Mr.Comic | Отдельные `.dbpack` для нужных языков |
| Теги `vX.Y.Z` | Теги `dictionary-modules-vX.Y.Z` |
| Достаточно для чтения без словарей | Не обязательны и не входят в APK |
| [Последний релиз](https://github.com/Leostrange/Mr.Comic/releases/latest) | [Каталог модулей](https://github.com/Leostrange/Mr.Comic/releases/tag/dictionary-modules-v1.0.0) |

Словари устанавливаются из приложения либо импортируются из файла. Их можно экспортировать для резервной копии или переноса. Подробнее: [Dictionary Modules](docs/DICTIONARY_MODULES.md).

## В разработке

Следующие направления уже существуют в коде, но пока не считаются полностью завершёнными:

- точность пагинации и сложная типографика;
- сноски во всех поддерживаемых форматах;
- OCR и перевод распознанного текста;
- офлайн- и онлайн-перевод;
- словарные сценарии и качество языковых баз;
- объяснение выделенного текста через LLM.

Актуальные задачи находятся в [GitHub Issues](https://github.com/Leostrange/Mr.Comic/issues).

## Что нового в v2.4.0

- исправлена компиляция геймификации и расчёт прогресса маскота;
- исправлены обрезание текста, вертикальные отступы и стабильность страниц при показе панелей;
- улучшены заголовки, титульные страницы, переносы и сноски;
- восстановлены настройки и пресеты графического ридера;
- тема теперь применяется одной транзакцией;
- словари вынесены из APK в независимые модули; добавлены импорт и экспорт.

Полный список: [CHANGELOG.md](CHANGELOG.md). Ограничения: [RELEASE_NOTES.md](RELEASE_NOTES.md).

## Архитектура

Mr.Comic — модульное Kotlin-приложение на Jetpack Compose и Material 3.

```text
android/
├── app/                   приложение, навигация и DI-корень
├── core-model/            общие модели
├── core-data/             Room, DataStore и репозитории
├── core-domain/           доменные правила и use cases
├── core-ui/               тема и общие UI-компоненты
├── engine-api/            контракты движков чтения
├── engine-formats/        парсеры и адаптеры форматов
├── engine-rendering/      рендеринг, кэш и предзагрузка
├── engine-epub-readium/   EPUB / Readium
├── engine-llm/            интеграции LLM и локальных моделей
├── engine-registry/       регистрация движков
├── feature-library/       библиотека и импорт
├── feature-reader/        чтение, жесты и TTS
├── feature-settings/      настройки
├── feature-ocr/           OCR
└── feature-onboarding/    запуск и онбординг
```

**Stack:** Kotlin · Jetpack Compose · Material 3 · Hilt · Room · DataStore · Media3 · Coroutines/Flow · Gradle · JDK 17

## Сборка

```powershell
# Windows
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

```bash
# Linux / macOS
./gradlew --no-daemon --console=plain :app:assembleDebug
```

APK: `android/app/build/outputs/apk/debug/Mr.Comic-debug.apk`

Проверки перед изменениями:

```bash
./gradlew --no-daemon testDebugUnitTest detekt :app:lintDebug :app:assembleDebug
```

[CONTRIBUTING.md](CONTRIBUTING.md) · [SECURITY.md](SECURITY.md)

## Приватность и лицензии

Mr.Comic следует local-first подходу: локальные книги и словари остаются на устройстве. Передача текста внешнему провайдеру выполняется только в явно выбранном пользователем сценарии.

Код распространяется по [Mr.Comic Source-Available License 1.0](LICENSE). Сторонние компоненты и словарные данные сохраняют собственные лицензии — см. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) и [Dictionary Modules](docs/DICTIONARY_MODULES.md).

---

<p align="center"><sub>Part of the <a href="https://github.com/Leostrange">Leostrange</a> open-source projects.</sub></p>
