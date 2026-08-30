<div align="center">

# Mr.Comic

### Один Android-ридер для комиксов, книг и аудиокниг

Растровые страницы и вертикальные ленты, reflowable-текст, библиотека, TTS, аудио,
настраиваемое чтение и дополнительные словарные модули.

[![Release](https://img.shields.io/badge/app-v2.4.0-2563eb?style=for-the-badge)](https://github.com/Leostrange/Mr.Comic/releases/latest)
[![Android](https://img.shields.io/badge/platform-Android-3ddc84?style=for-the-badge&logo=android&logoColor=white)](https://github.com/Leostrange/Mr.Comic/releases/latest)
[![Kotlin](https://img.shields.io/badge/Kotlin-7f52ff?style=for-the-badge&logo=kotlin&logoColor=white)](https://kotlinlang.org/)
[![Compose](https://img.shields.io/badge/Jetpack_Compose-4285f4?style=for-the-badge&logo=jetpackcompose&logoColor=white)](https://developer.android.com/compose)
[![CI](https://img.shields.io/github/actions/workflow/status/Leostrange/Mr.Comic/build-apk.yml?branch=main&style=for-the-badge&label=build)](https://github.com/Leostrange/Mr.Comic/actions/workflows/build-apk.yml)

**[Скачать приложение](https://github.com/Leostrange/Mr.Comic/releases/latest)** ·
**[Словарные модули](https://github.com/Leostrange/Mr.Comic/releases/tag/dictionary-modules-v1.0.0)** ·
[Изменения](CHANGELOG.md) · [Документация](docs/README.md) · [Сообщить о проблеме](https://github.com/Leostrange/Mr.Comic/issues)

</div>

---

## Два независимых типа загрузок

| 📱 Приложение | 🧩 Дополнительные словари |
|---|---|
| APK и обновления самого Mr.Comic | Отдельные `.dbpack` для нужных языков |
| Выпуски имеют теги `vX.Y.Z` | Выпуски имеют теги `dictionary-modules-vX.Y.Z` |
| Достаточно для чтения без словарей | Не обязательны и не входят в APK |
| **[Открыть последний релиз](https://github.com/Leostrange/Mr.Comic/releases/latest)** | **[Открыть каталог модулей](https://github.com/Leostrange/Mr.Comic/releases/tag/dictionary-modules-v1.0.0)** |

Словари устанавливаются из приложения либо импортируются из файла. Их можно экспортировать для резервной копии или переноса на другое устройство. Подробности и лицензии: [Dictionary Modules](docs/DICTIONARY_MODULES.md).

## Что уже работает

- чтение комиксов и манги постранично и вертикальной лентой;
- отдельные пути отображения для raster paged, raster vertical, reflowable paged и reflowable vertical;
- библиотека, папки, поиск, сортировка, прогресс, закладки и цитаты;
- чтение текстовых книг с настройками шрифта, интервалов и пресетами Paper, Sepia, Newspaper, Night Ink и OLED Black;
- дневная, сепия и ночная схемы в графическом ридере;
- локальное воспроизведение аудиокниг через Android Media3;
- синтез речи (TTS);
- импорт, скачивание, экспорт и удаление дополнительных словарных модулей;
- светлая, тёмная, AMOLED и динамическая тема интерфейса.

## В разработке

Следующие направления существуют в коде, но пока не считаются полностью завершёнными:

- точность пагинации и совместимость сложной типографики текстовых книг;
- сноски во всех поддерживаемых форматах;
- OCR-сценарии и перевод распознанного текста;
- офлайн- и онлайн-перевод;
- словарные сценарии и качество языковых баз;
- объяснение выделенного текста через LLM.

Мы не помечаем экспериментальную или частично реализованную возможность как готовую. Актуальные задачи находятся в [GitHub Issues](https://github.com/Leostrange/Mr.Comic/issues).

## Форматы

| Содержимое | Форматы | Статус |
|---|---|---|
| Комиксы и манга | CBZ, CBR, ZIP, RAR, 7Z, TAR, папки изображений | Основной сценарий |
| Документы | PDF, DJVU | Работает, качество зависит от документа |
| Reflowable-книги | EPUB, FB2, TXT, HTML, Markdown | Работает; пагинация улучшается |
| Дополнительные текстовые | RTF, MOBI, AZW3, DOCX, ODT | Поддержка зависит от разметки файла |
| Аудиокниги | локальные аудиофайлы через Media3 | Работает |

## Что нового в v2.4.0

- исправлена компиляция геймификации и расчёт прогресса маскота;
- исправлены обрезание текста, вертикальные отступы и стабильность страниц при показе панелей;
- улучшены заголовки, титульные страницы, переносы, сноски и защита от случайного выделения при свайпе;
- восстановлены настройки и пресеты графического ридера без текстовых параметров;
- удалён дублирующий конструктор тем;
- тема теперь применяется одной транзакцией, без заметной каскадной «волны»;
- возвращены читаемые белые подложки меток на обложках библиотеки;
- словари вынесены из APK в независимые модули; добавлены импорт и экспорт.

Полный список: [CHANGELOG.md](CHANGELOG.md). Известные ограничения перечислены в [release notes](RELEASE_NOTES.md).

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

Стек: **Kotlin · Jetpack Compose · Material 3 · Hilt · Room · DataStore · Media3 · Coroutines/Flow · Gradle · JDK 17**.

## Сборка

Требуются Android SDK, JDK 17 и Gradle Wrapper из репозитория.

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

Инструкции для участников: [CONTRIBUTING.md](CONTRIBUTING.md). Политика безопасности: [SECURITY.md](SECURITY.md).

## Приватность и лицензии

Mr.Comic следует local-first подходу: локальные книги и словари остаются на устройстве. Передача текста внешнему провайдеру выполняется только в явно выбранном пользователем сценарии.

Код распространяется по [Mr.Comic Source-Available License 1.0](LICENSE). Сторонние компоненты и словарные данные сохраняют собственные лицензии — см. [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) и [Dictionary Modules](docs/DICTIONARY_MODULES.md).
