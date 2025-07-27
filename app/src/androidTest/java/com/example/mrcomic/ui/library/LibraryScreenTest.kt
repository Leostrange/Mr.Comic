package com.example.mrcomic.ui.library

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import com.example.mrcomic.ui.BaseUITest
import com.example.mrcomic.ui.utils.ComposeTestUtils.assertButtonExists
import com.example.mrcomic.ui.utils.ComposeTestUtils.assertIsDisplayedAndEnabled
import com.example.mrcomic.ui.utils.ComposeTestUtils.waitForElement
import com.example.mrcomic.ui.utils.ComposeTestUtils.waitForText
import com.example.mrcomic.ui.utils.TestData
import dagger.hilt.android.testing.HiltAndroidTest
import org.junit.Test

/**
 * UI тесты для экрана библиотеки комиксов
 */
@HiltAndroidTest
class LibraryScreenTest : BaseUITest() {

    @Test
    fun libraryScreen_displaysCorrectly() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: Здесь будет реальный LibraryScreen когда он будет создан
            // LibraryScreen()
        }

        // Assert
        // Проверяем, что основные элементы отображаются
        composeTestRule.onNodeWithTag(TestData.TestTags.LIBRARY_SCREEN)
            .assertExists()
            .assertIsDisplayed()
    }

    @Test
    fun emptyLibrary_showsEmptyState() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: LibraryScreen with empty state
        }

        // Assert
        composeTestRule.waitForText(TestData.Texts.EMPTY_LIBRARY_MESSAGE)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Texts.ADD_FIRST_COMIC)
            .assertIsDisplayed()
        
        composeTestRule.assertButtonExists(TestData.Texts.BUTTON_ADD)
    }

    @Test
    fun libraryWithComics_displaysComicsList() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: LibraryScreen with test comics
        }

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.LIBRARY_LIST)
            .assertIsDisplayed()
        
        // Проверяем, что комиксы отображаются
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_2)
            .assertIsDisplayed()
    }

    @Test
    fun addComicButton_clickOpensFilePicker() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen
        }

        // Act
        composeTestRule.waitForElement(TestData.TestTags.ADD_COMIC_BUTTON)
            .assertIsDisplayedAndEnabled()
            .performClick()

        // Assert
        // Проверяем, что открылся диалог выбора файла
        composeTestRule.waitForElement(TestData.TestTags.FILE_PICKER_DIALOG)
            .assertIsDisplayed()
    }

    @Test
    fun searchBar_filtersComics() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen with multiple comics
        }

        // Act
        val searchQuery = "Тестовый"
        composeTestRule.waitForElement(TestData.TestTags.SEARCH_BAR)
            .performTextInput(searchQuery)

        // Assert
        // Проверяем, что отображаются только отфильтрованные комиксы
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_2)
            .assertIsDisplayed()
        
        // Этот комикс не должен отображаться
        composeTestRule.onNodeWithText(TestData.Comics.COMIC_TITLE_3)
            .assertDoesNotExist()
    }

    @Test
    fun comicItem_longClickShowsContextMenu() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen with comics
        }

        // Act
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .performTouchInput {
                longClick()
            }

        // Assert
        // Проверяем, что появилось контекстное меню
        composeTestRule.waitForText(TestData.Texts.BUTTON_DELETE)
            .assertIsDisplayed()
    }

    @Test
    fun deleteComic_showsConfirmationDialog() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen with comics
        }

        // Act
        // Долгий клик для открытия контекстного меню
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .performTouchInput { longClick() }
        
        // Клик по кнопке удаления
        composeTestRule.waitForText(TestData.Texts.BUTTON_DELETE)
            .performClick()

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.CONFIRMATION_DIALOG)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Texts.DELETE_CONFIRMATION)
            .assertIsDisplayed()
        
        composeTestRule.assertButtonExists(TestData.Texts.BUTTON_OK)
        composeTestRule.assertButtonExists(TestData.Texts.BUTTON_CANCEL)
    }

    @Test
    fun sortButton_changesSortOrder() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen with multiple comics
        }

        // Act
        composeTestRule.waitForElement(TestData.TestTags.SORT_BUTTON)
            .performClick()
        
        composeTestRule.waitForText(TestData.Texts.MENU_SORT_BY_NAME)
            .performClick()

        // Assert
        // Проверяем, что порядок комиксов изменился
        // TODO: Добавить проверку актуального порядка элементов
    }

    @Test
    fun comicItem_clickOpensReader() {
        // Arrange
        composeTestRule.setContent {
            // TODO: LibraryScreen with comics
        }

        // Act
        composeTestRule.waitForText(TestData.Comics.COMIC_TITLE_1)
            .performClick()

        // Assert
        // Проверяем, что открылся экран читалки
        composeTestRule.waitForElement(TestData.TestTags.READER_SCREEN, TestData.Timeouts.LONG_TIMEOUT)
            .assertIsDisplayed()
    }

    @Test
    fun loadingState_showsProgressIndicator() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: LibraryScreen in loading state
        }

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.LOADING_INDICATOR)
            .assertIsDisplayed()
        
        composeTestRule.waitForText(TestData.Texts.LOADING_COMICS)
            .assertIsDisplayed()
    }

    @Test
    fun errorState_showsErrorMessageAndRetryButton() {
        // Arrange & Act
        composeTestRule.setContent {
            // TODO: LibraryScreen in error state
        }

        // Assert
        composeTestRule.waitForElement(TestData.TestTags.ERROR_MESSAGE)
            .assertIsDisplayed()
        
        composeTestRule.assertButtonExists(TestData.Texts.BUTTON_RETRY)
    }
}