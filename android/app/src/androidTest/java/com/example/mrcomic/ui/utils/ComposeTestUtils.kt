package com.example.mrcomic.ui.utils

import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsNode
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.ComposeContentTestRule

/**
 * Утилиты для UI тестирования Compose компонентов
 */
object ComposeTestUtils {

    /**
     * Ожидает появления элемента с заданным тестовым тегом
     */
    fun ComposeContentTestRule.waitForElement(
        testTag: String,
        timeoutMillis: Long = 5000
    ): SemanticsNodeInteraction {
        waitUntil(timeoutMillis = timeoutMillis) {
            onAllNodesWithTag(testTag).fetchSemanticsNodes().isNotEmpty()
        }
        return onNodeWithTag(testTag)
    }

    /**
     * Ожидает появления элемента с заданным текстом
     */
    fun ComposeContentTestRule.waitForText(
        text: String,
        timeoutMillis: Long = 5000
    ): SemanticsNodeInteraction {
        waitUntil(timeoutMillis = timeoutMillis) {
            onAllNodesWithText(text).fetchSemanticsNodes().isNotEmpty()
        }
        return onNodeWithText(text)
    }

    /**
     * Проверяет, что элемент отображается и доступен для взаимодействия
     */
    fun SemanticsNodeInteraction.assertIsDisplayedAndEnabled() {
        assertIsDisplayed()
        assertIsEnabled()
    }

    /**
     * Проверяет, что кнопка существует и кликабельна
     */
    fun ComposeContentTestRule.assertButtonExists(
        text: String,
        enabled: Boolean = true
    ) {
        onNodeWithText(text)
            .assertExists()
            .assertIsDisplayed()
            .assertHasClickAction()
        
        if (enabled) {
            onNodeWithText(text).assertIsEnabled()
        } else {
            onNodeWithText(text).assertIsNotEnabled()
        }
    }

    /**
     * Проверяет, что текстовое поле существует и содержит ожидаемый текст
     */
    fun ComposeContentTestRule.assertTextFieldValue(
        testTag: String,
        expectedValue: String
    ) {
        onNodeWithTag(testTag)
            .assertExists()
            .assertIsDisplayed()
            .assert(hasText(expectedValue))
    }

    /**
     * Вводит текст в поле с очисткой предыдущего содержимого
     */
    fun SemanticsNodeInteraction.clearAndTypeText(text: String) {
        performTextClearance()
        performTextInput(text)
    }

    /**
     * Прокручивает список до элемента с заданным текстом
     */
    fun ComposeContentTestRule.scrollToText(
        text: String,
        scrollableTestTag: String? = null
    ) {
        if (scrollableTestTag != null) {
            onNodeWithTag(scrollableTestTag).performScrollToNode(
                hasText(text)
            )
        } else {
            // Попробуем найти прокручиваемый контейнер автоматически
            onNode(hasScrollAction()).performScrollToNode(
                hasText(text)
            )
        }
    }

    /**
     * Ожидает исчезновения элемента (например, loading indicator)
     */
    fun ComposeContentTestRule.waitForElementToDisappear(
        testTag: String,
        timeoutMillis: Long = 5000
    ) {
        waitUntil(timeoutMillis = timeoutMillis) {
            onAllNodesWithTag(testTag).fetchSemanticsNodes().isEmpty()
        }
    }

    /**
     * Проверяет, что список содержит ожидаемое количество элементов
     */
    fun ComposeContentTestRule.assertListItemCount(
        listTestTag: String,
        expectedCount: Int
    ) {
        onNodeWithTag(listTestTag)
            .onChildren()
            .assertCountEquals(expectedCount)
    }

    /**
     * Симулирует свайп жест
     */
    fun SemanticsNodeInteraction.swipeLeft() {
        performTouchInput {
            swipeLeft()
        }
    }

    fun SemanticsNodeInteraction.swipeRight() {
        performTouchInput {
            swipeRight()
        }
    }

    /**
     * Проверяет наличие определенного семантического свойства
     */
    fun SemanticsNodeInteraction.assertHasProperty(
        property: SemanticsProperties.SemanticsPropertyKey<*>
    ) {
        assert(SemanticsMatcher("Has property $property") { node ->
            node.config.contains(property)
        })
    }
}