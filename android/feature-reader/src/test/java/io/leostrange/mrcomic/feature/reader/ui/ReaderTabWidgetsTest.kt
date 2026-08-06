package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.material3.Text
import androidx.compose.ui.semantics.ProgressBarRangeInfo
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsNotSelected
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.hasProgressBarRangeInfo
import androidx.compose.ui.test.isToggleable
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTouchInput
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.test.swipe
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/**
 * Robolectric + Compose UI tests for the shared reader control-center widgets
 * extracted into `ReaderTabWidgets.kt` during the ReaderControlCenterComponents
 * decomposition (2026-08-06): [ReaderChoiceChip], [ReaderSwitchRow] and
 * [ReaderSliderRow].
 */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [35])
class ReaderTabWidgetsTest {

    @get:Rule
    val composeRule = createComposeRule()

    @Test
    fun `choice chip shows label and reports clicks`() {
        var clicks = 0
        composeRule.setContent {
            ReaderChoiceChip(
                selected = false,
                onClick = { clicks++ },
                label = { Text("Single page") }
            )
        }
        composeRule.onNodeWithText("Single page").assertIsDisplayed()
        composeRule.onNodeWithText("Single page").assertIsNotSelected()
        composeRule.onNodeWithText("Single page").performClick()
        composeRule.onNodeWithText("Single page").performClick()
        assertEquals(2, clicks)
    }

    @Test
    fun `choice chip reflects selected state`() {
        composeRule.setContent {
            ReaderChoiceChip(
                selected = true,
                onClick = {},
                label = { Text("Vertical") }
            )
        }
        composeRule.onNodeWithText("Vertical").assertIsSelected()
    }

    @Test
    fun `switch row renders title and subtitle and reports toggle`() {
        var toggled: Boolean? = null
        composeRule.setContent {
            ReaderSwitchRow(
                title = "Dynamic color",
                subtitle = "Follow the system palette",
                checked = false,
                onCheckedChange = { toggled = it }
            )
        }
        composeRule.onNodeWithText("Dynamic color").assertIsDisplayed()
        composeRule.onNodeWithText("Follow the system palette").assertIsDisplayed()
        composeRule.onNode(isToggleable()).performClick()
        assertEquals(true, toggled)
    }

    @Test
    fun `slider row renders labels and reports value changes`() {
        val initialValue = 0.5f
        var value = initialValue
        composeRule.setContent {
            ReaderSliderRow(
                title = "Line spacing",
                valueText = "50%",
                value = value,
                valueRange = 0f..1f,
                onValueChange = { value = it }
            )
        }
        composeRule.onNodeWithText("Line spacing").assertIsDisplayed()
        composeRule.onNodeWithText("50%").assertIsDisplayed()
        composeRule.onNode(hasProgressBarRangeInfo(ProgressBarRangeInfo(initialValue, 0f..1f, 0)))
            .performTouchInput {
                // Drag deliberately from the thumb (center) toward the right edge.
                swipe(
                    start = center,
                    end = Offset(right - 10f, centerY),
                    durationMillis = 400
                )
            }
        assertTrue(value > initialValue)
    }
}
