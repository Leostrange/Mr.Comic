package com.example.mrcomic.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.Rule
import org.junit.Test

/**
 * Простой UI тест для проверки работоспособности тестовой инфраструктуры
 */
class SimpleUITest {

    @get:Rule
    val composeTestRule = createComposeRule()

    @Test
    fun simpleComposable_displaysCorrectly() {
        // Arrange
        composeTestRule.setContent {
            SimpleTestScreen()
        }

        // Act & Assert
        composeTestRule.onNodeWithTag("test_screen")
            .assertExists()
            .assertIsDisplayed()
        
        composeTestRule.onNodeWithText("Тестовый экран")
            .assertIsDisplayed()
        
        composeTestRule.onNodeWithText("Нажмите кнопку")
            .assertIsDisplayed()
    }

    @Test
    fun button_clickChangesText() {
        // Arrange
        composeTestRule.setContent {
            SimpleTestScreen()
        }

        // Act
        composeTestRule.onNodeWithTag("test_button")
            .performClick()

        // Assert
        composeTestRule.onNodeWithText("Кнопка нажата!")
            .assertIsDisplayed()
        
        composeTestRule.onNodeWithText("Нажмите кнопку")
            .assertDoesNotExist()
    }

    @Test
    fun textField_inputWorks() {
        // Arrange
        composeTestRule.setContent {
            SimpleTestScreen()
        }

        // Act
        composeTestRule.onNodeWithTag("test_input")
            .performTextInput("Тестовый текст")

        // Assert
        composeTestRule.onNodeWithTag("test_input")
            .assert(hasText("Тестовый текст"))
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SimpleTestScreen() {
    var buttonText by remember { mutableStateOf("Нажмите кнопку") }
    var inputText by remember { mutableStateOf("") }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .testTag("test_screen"),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text(
            text = "Тестовый экран",
            style = MaterialTheme.typography.headlineMedium
        )
        
        Text(text = buttonText)
        
        Button(
            onClick = { buttonText = "Кнопка нажата!" },
            modifier = Modifier.testTag("test_button")
        ) {
            Text("Тестовая кнопка")
        }
        
        OutlinedTextField(
            value = inputText,
            onValueChange = { inputText = it },
            label = { Text("Введите текст") },
            modifier = Modifier.testTag("test_input")
        )
        
        Text(text = "Введенный текст: $inputText")
    }
}