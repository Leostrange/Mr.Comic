# Contributing to Mr.Comic

Спасибо за интерес к Mr.Comic. Проект развивается как Android-приложение для чтения комиксов, манги, вебтунов и текстовых книг с локальными словарями, OCR и optional AI-инструментами.

## Перед началом

Перед крупной разработкой создайте issue или свяжите pull request с существующей задачей. Для translation/AI-функций используйте [issue #154](https://github.com/Leostrange/Mr.Comic/issues/154). Не добавляйте реальные ключи API, пользовательские книги, приватные скриншоты или персональные данные.

## Локальная сборка

Требуются JDK 17, Android SDK с compileSdk 37 и Gradle Wrapper из репозитория.

```bash
./gradlew --no-daemon --console=plain testDebugUnitTest
./gradlew --no-daemon --console=plain :app:lintDebug
./gradlew --no-daemon --console=plain :app:assembleDebug
```

На Windows используйте `gradlew.bat` вместо `./gradlew`.

## Ветвление и pull requests

Рабочие ветки создаются от `main` с коротким назначением, например `feat/dictionary-offline-cache` или `fix/highlight-removal`. Один pull request должен решать одну связанную задачу. В описании укажите issue, поведение до и после изменения, затронутые модули, тесты и визуальные изменения. Для reader UI приложите скриншоты или короткое видео.

Не выполняйте force-push в `main` и не добавляйте generated APK, локальные кэши, credentials или большие бинарные словари. Все новые внешние данные должны иметь источник и соответствующую запись в `THIRD_PARTY_NOTICES.md`.

## Тестирование

Минимальная проверка перед PR включает unit tests изменённых модулей, `:app:lintDebug` и сборку Debug APK. Для reader changes дополнительно проверьте шесть текстовых пресетов, смену режима чтения, восстановление позиции, выделение/удаление highlight, autoscroll и offline dictionary states. CI является обязательной проверкой для merge.

## Стиль commit

Используйте короткие Conventional Commit subjects: `feat:`, `fix:`, `test:`, `refactor:`, `docs:`, `build:` или `ci:`. Не включайте в commit сообщения секреты, токены и персональные данные.

## Лицензия

Исходный код распространяется по [Mr.Comic Source-Available License 1.0](LICENSE). Сторонние библиотеки, словари, шрифты и ассеты остаются под своими лицензиями.
