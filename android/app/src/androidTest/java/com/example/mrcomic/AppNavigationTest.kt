package com.example.mrcomic

import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.test.ext.junit.runners.AndroidJUnit4
import dagger.hilt.android.testing.HiltAndroidRule
import dagger.hilt.android.testing.HiltAndroidTest
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@HiltAndroidTest
@RunWith(AndroidJUnit4::class)
class AppNavigationTest {

    @get:Rule(order = 0)
    val hiltRule = HiltAndroidRule(this)

    @get:Rule(order = 1)
    val composeTestRule = createAndroidComposeRule<MainActivity>()

    @Test
    fun app_launches_and_shows_library_screen() {
        // Проверяем, что на стартовом экране есть заголовок "Библиотека"
        // Это подтвердит, что LibraryScreen успешно загрузился.
        // Используем getString для доступа к ресурсам строк, чтобы тест не зависел от хардкода.
        val libraryTitle = composeTestRule.activity.getString(R.string.library)
        composeTestRule.onNodeWithText(libraryTitle).assertExists()
    }
} 