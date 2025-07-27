package com.example.mrcomic.ui.navigation

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import com.example.mrcomic.ui.BaseUITest
import com.example.mrcomic.ui.utils.ComposeTestUtils.waitForElement
import com.example.mrcomic.ui.utils.ComposeTestUtils.waitForText
import com.example.mrcomic.ui.utils.TestData
import dagger.hilt.android.testing.HiltAndroidTest
import org.junit.Test

/**
 * Интеграционные UI тесты для навигации между экранами
 */
@HiltAndroidTest
class NavigationTest : BaseUITest() {

    @Test
    fun bottomNavigation_switchesBetweenScreens() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Главный экран приложения с навигацией
            // MainScreen()
        }

        // Act & Assert - Переход к библиотеке
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()

        // Act & Assert - Переход к настройкам
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.SETTINGS_SCREEN)
            .assertIsDisplayed()

        // Act & Assert - Возврат к библиотеке
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()
    }

    @Test
    fun libraryToReader_navigationWorks() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение с комиксами в библиотеке
        }

        // Act
        // Переходим в библиотеку
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        // Открываем комикс
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .performClick()

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.READER_SCREEN, TestData.Timeouts.LONG_TIMEOUT)
            .assertIsDisplayed()
        
        composeTestRule.waitForElement(TestData.TestTags.COMIC_PAGE)
            .assertIsDisplayed()
    }

    @Test
    fun readerToLibrary_backNavigationWorks() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение в состоянии читалки
        }

        // Act
        // Показываем тулбар читалки
        composeTestRule.waitForElement(TestData.TestTags.COMIC_PAGE)
            .performClick()
        
        // Нажимаем кнопку назад
        composeTestRule.waitForText("← Назад")
            .performClick()

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN, TestData.Timeouts.MEDIUM_TIMEOUT)
            .assertIsDisplayed()
    }

    @Test
    fun deepLink_opensSpecificComic() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: Приложение с deep link на конкретный комикс
            // MainScreen(deepLinkComicId = "test_comic_1")
        }

        // Assert
        // Должен открыться сразу экран читалки с нужным комиксом
        composeTestRule.waitForElement(TestData.TestTags.READER_SCREEN, TestData.Timeouts.LONG_TIMEOUT)
            .assertIsDisplayed()
    }

    @Test
    fun backPress_navigatesCorrectly() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Главный экран приложения
        }

        // Act & Assert - Переход в настройки
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.SETTINGS_SCREEN)
            .assertIsDisplayed()

        // Act & Assert - Нажатие системной кнопки назад
        composeTestRule.activity.onBackPressed()
        
        // Должны вернуться к библиотеке (предыдущий экран)
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()
    }

    @Test
    fun navigationState_preservesCorrectly() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение с данными в библиотеке
        }

        // Act - Переходим в библиотеку и прокручиваем список
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        val libraryList = composeTestRule.waitForElement(TestData.TestTags.LIBRARY_LIST)
        libraryList.performScrollToNode(hasText(TestData.Comics.COMIC_TITLE_3))

        // Переходим в настройки
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()

        // Возвращаемся в библиотеку
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()

        // Assert - Состояние прокрутки должно сохраниться
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_3)
            .assertIsDisplayed()
    }

    @Test
    fun readerNavigationIndicator_showsCorrectPosition() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Читалка с многостраничным комиксом
        }

        // Act
        // Переходим на несколько страниц вперед
        val comicPage = composeTestRule.waitForElement(TestData.TestTags.COMIC_PAGE)
        
        repeat(3) {
            comicPage.performTouchInput { swipeLeft() }
            Thread.sleep(200) // Небольшая задержка между свайпами
        }

        // Assert
        composeTestRule.waitForText("4 / ${TestData.Comics.COMIC_PAGE_COUNT_1}")
            .assertIsDisplayed()
    }

    @Test
    fun navigationFromEmptyLibrary_worksCorrectly() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение с пустой библиотекой
        }

        // Act
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()

        // Assert
        composeTestRule.waitForText(TestData.Texts.EMPTY_LIBRARY_MESSAGE)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Texts.ADD_FIRST_COMIC)
            .assertIsDisplayed()

        // Act & Assert - Переход в настройки все еще работает
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.SETTINGS_SCREEN)
            .assertIsDisplayed()
    }

    @Test
    fun multipleBackNavigation_worksCorrectly() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение с комиксами
        }

        // Act - Создаем стек навигации: Библиотека -> Читалка
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .performClick()

        composeTestRule.waitForElement(TestData.TestTags.READER_SCREEN, TestData.Timeouts.LONG_TIMEOUT)
            .assertIsDisplayed()

        // Act & Assert - Первый back: Читалка -> Библиотека
        composeTestRule.waitForElement(TestData.TestTags.COMIC_PAGE)
            .performClick()
        
        composeTestRule.waitForText("← Назад")
            .performClick()

        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()

        // Act & Assert - Второй back: должен остаться в библиотеке (root)
        composeTestRule.activity.onBackPressed()
        
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()
    }

    @Test
    fun settingsToAboutDialog_navigationWorks() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение
        }

        // Act
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()
        
        composeTestRule.waitForText("О приложении")
            .performClick()

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.ABOUT_DIALOG)
            .assertIsDisplayed()

        // Act & Assert - Закрытие диалога
        composeTestRule.waitForText(TestData.Texts.BUTTON_CLOSE)
            .performClick()
        
        composeTestRule.waitForElement(TestData.TestTags.SETTINGS_SCREEN)
            .assertIsDisplayed()
    }

    @Test
    fun navigationDuringLoading_handledCorrectly() {
        // Arrange
        composeTestRule.setContent {
            // TODO: Приложение в состоянии загрузки
        }

        // Act
        // Пытаемся переключиться между экранами во время загрузки
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_SETTINGS)
            .performClick()

        // Assert
        // Навигация должна работать даже во время загрузки
        composeTestRule.waitForElement(TestData.TestTags.SETTINGS_SCREEN)
            .assertIsDisplayed()

        // Act & Assert - Возврат к библиотеке
        composeTestRule.waitForElement(TestData.TestTags.BOTTOM_NAV_LIBRARY)
            .performClick()
        
        // Может показать loading indicator или пустое состояние
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_SCREEN)
            .assertIsDisplayed()
    }
}