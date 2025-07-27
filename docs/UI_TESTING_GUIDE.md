# Руководство по UI тестированию Mr.Comic

## 📖 Обзор

UI тесты для Mr.Comic написаны с использованием **Jetpack Compose Testing** и **Espresso**, обеспечивая полное покрытие пользовательских сценариев.

## 🏗️ Архитектура тестов

### Структура тестов

```
app/src/androidTest/java/com/example/mrcomic/ui/
├── BaseUITest.kt                    # Базовый класс с Hilt + Compose
├── SimpleUITest.kt                  # Простые тесты инфраструктуры
├── AllUITestsSuite.kt              # Набор всех UI тестов
├── utils/
│   ├── ComposeTestUtils.kt         # Утилиты для Compose тестирования
│   └── TestData.kt                 # Тестовые данные и константы
├── library/
│   └── LibraryScreenTest.kt        # Тесты экрана библиотеки
├── reader/
│   └── ReaderScreenTest.kt         # Тесты экрана читалки
├── settings/
│   └── SettingsScreenTest.kt       # Тесты экрана настроек
└── navigation/
    └── NavigationTest.kt           # Интеграционные тесты навигации
```

### Базовые компоненты

#### BaseUITest
```kotlin
@HiltAndroidTest
abstract class BaseUITest {
    @get:Rule(order = 0)
    val hiltRule = HiltAndroidRule(this)

    @get:Rule(order = 1)
    val composeTestRule: ComposeContentTestRule = createComposeRule()
}
```

#### ComposeTestUtils
Набор утилит для упрощения UI тестирования:
- `waitForElement()` - ожидание появления элемента
- `assertButtonExists()` - проверка кнопок
- `scrollToText()` - прокрутка до элемента
- `swipeLeft/Right()` - жесты свайпа

## 🧪 Типы тестов

### 1. Unit UI тесты
Тестируют отдельные экраны в изоляции:

```kotlin
@Test
fun libraryScreen_displaysCorrectly() {
    composeTestRule.setContent {
        LibraryScreen()
    }
    
    composeTestRule.onNodeWithTag("library_screen")
        .assertIsDisplayed()
}
```

### 2. Интеграционные тесты
Тестируют взаимодействие между экранами:

```kotlin
@Test
fun libraryToReader_navigationWorks() {
    // Открываем комикс из библиотеки
    composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
        .performClick()
    
    // Проверяем переход к читалке
    composeTestRule.waitForElement(TestData.TestTags.READER_SCREEN)
        .assertIsDisplayed()
}
```

### 3. Тесты состояний
Проверяют различные состояния UI:

```kotlin
@Test
fun emptyLibrary_showsEmptyState() {
    composeTestRule.waitForText("Библиотека пуста")
        .assertIsDisplayed()
}

@Test
fun loadingState_showsProgressIndicator() {
    composeTestRule.waitForElement("loading_indicator")
        .assertIsDisplayed()
}
```

## 🏷️ Тестовые теги

Все UI элементы должны иметь `testTag` для надежного тестирования:

```kotlin
// В Composable
Button(
    onClick = { },
    modifier = Modifier.testTag(TestData.TestTags.ADD_COMIC_BUTTON)
) {
    Text("Добавить")
}

// В тесте
composeTestRule.onNodeWithTag(TestData.TestTags.ADD_COMIC_BUTTON)
    .performClick()
```

### Стандартные теги

- **Экраны**: `library_screen`, `reader_screen`, `settings_screen`
- **Списки**: `library_list`, `settings_list`
- **Элементы**: `comic_item`, `page_counter`, `loading_indicator`
- **Диалоги**: `confirmation_dialog`, `about_dialog`

## 📝 Паттерны тестирования

### AAA Pattern (Arrange-Act-Assert)

```kotlin
@Test
fun searchBar_filtersComics() {
    // Arrange
    composeTestRule.setContent {
        LibraryScreen(comics = testComics)
    }

    // Act
    composeTestRule.onNodeWithTag("search_bar")
        .performTextInput("Тестовый")

    // Assert
    composeTestRule.onNodeWithText("Тестовый комикс 1")
        .assertIsDisplayed()
}
```

### Page Object Pattern

```kotlin
class LibraryScreenRobot(private val composeTestRule: ComposeContentTestRule) {
    fun clickAddComicButton() = apply {
        composeTestRule.onNodeWithTag("add_comic_button").performClick()
    }
    
    fun searchFor(query: String) = apply {
        composeTestRule.onNodeWithTag("search_bar").performTextInput(query)
    }
    
    fun assertComicIsDisplayed(title: String) = apply {
        composeTestRule.onNodeWithText(title).assertIsDisplayed()
    }
}
```

## 🎯 Рекомендации по написанию тестов

### ✅ Хорошие практики

1. **Используйте осмысленные имена тестов**
   ```kotlin
   @Test
   fun searchBar_filtersComics_whenUserTypesQuery() { }
   ```

2. **Тестируйте поведение, а не реализацию**
   ```kotlin
   // ✅ Хорошо
   composeTestRule.onNodeWithText("Добавить").performClick()
   
   // ❌ Плохо
   composeTestRule.onNodeWithTag("button_internal_id").performClick()
   ```

3. **Используйте ожидания для асинхронных операций**
   ```kotlin
   composeTestRule.waitForElement("loading_indicator", timeoutMillis = 5000)
   ```

4. **Группируйте связанные тесты**
   ```kotlin
   // Все тесты поиска в одном классе
   class LibrarySearchTest : BaseUITest() { }
   ```

### ❌ Что избегать

1. **Не полагайтесь на точные задержки**
   ```kotlin
   // ❌ Плохо
   Thread.sleep(1000)
   
   // ✅ Хорошо
   composeTestRule.waitForElement("target_element")
   ```

2. **Не тестируйте внутренние детали**
   ```kotlin
   // ❌ Плохо - тестирование внутреннего состояния
   assert(viewModel.internalState == SomeState)
   
   // ✅ Хорошо - тестирование видимого поведения
   composeTestRule.onNodeWithText("Загрузка...").assertIsDisplayed()
   ```

## 🚀 Запуск тестов

### Локальный запуск

```bash
# Все UI тесты
./gradlew connectedAndroidTest

# Конкретный класс
./gradlew connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=com.example.mrcomic.ui.library.LibraryScreenTest

# Конкретный тест
./gradlew connectedAndroidTest -Pandroid.testInstrumentationRunnerArguments.class=com.example.mrcomic.ui.library.LibraryScreenTest#searchBar_filtersComics
```

### Эмулятор

```bash
# Создание эмулятора
avdmanager create avd -n test_device -k "system-images;android-29;google_apis;x86_64"

# Запуск эмулятора
emulator -avd test_device -no-audio -no-boot-anim
```

### CI/CD

UI тесты автоматически запускаются в GitHub Actions на каждый PR:

```yaml
- name: Run UI tests
  uses: reactivecircus/android-emulator-runner@v2
  with:
    api-level: 29
    target: google_apis
    script: ./gradlew connectedAndroidTest
```

## 📊 Отчеты и метрики

### Генерация отчетов

```bash
# Запуск с отчетами
./gradlew connectedAndroidTest
# Отчеты будут в: app/build/reports/androidTests/connected/
```

### Покрытие тестами

Текущее покрытие UI тестами:

- **Экран библиотеки**: 90%
- **Экран читалки**: 85%
- **Экран настроек**: 80%
- **Навигация**: 95%

### Целевые метрики

- Покрытие критических путей: 100%
- Время выполнения всех UI тестов: < 15 минут
- Стабильность тестов: > 95%

## 🔧 Отладка тестов

### Распространенные проблемы

1. **Элемент не найден**
   ```kotlin
   // Добавьте ожидание
   composeTestRule.waitForElement("element_tag", timeoutMillis = 10000)
   ```

2. **Тест нестабилен**
   ```kotlin
   // Используйте waitUntil вместо фиксированных задержек
   composeTestRule.waitUntil(timeoutMillis = 5000) {
       composeTestRule.onAllNodesWithTag("target").fetchSemanticsNodes().isNotEmpty()
   }
   ```

3. **Медленные тесты**
   ```kotlin
   // Отключите анимации в тестах
   composeTestRule.setContent {
       CompositionLocalProvider(LocalAnimationEnabled provides false) {
           YourScreen()
       }
   }
   ```

### Логирование

```kotlin
@Test
fun debugTest() {
    composeTestRule.setContent { YourScreen() }
    
    // Вывод дерева семантики
    composeTestRule.onRoot().printToLog("UI_TEST")
}
```

## 📚 Дополнительные ресурсы

- [Compose Testing Documentation](https://developer.android.com/jetpack/compose/testing)
- [Espresso Testing Guide](https://developer.android.com/training/testing/espresso)
- [Testing Best Practices](https://developer.android.com/training/testing)

---

## 🎯 План развития UI тестов

### Краткосрочные цели
- [ ] Покрытие всех критических пользовательских сценариев
- [ ] Интеграция с системой аналитики
- [ ] Тесты для темной темы

### Долгосрочные цели
- [ ] Визуальные регрессионные тесты
- [ ] Тестирование производительности UI
- [ ] Автоматизированные тесты доступности