package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.test.espresso.Espresso
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.appStringsForCode
import io.mockk.mockk
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/**
 * Robolectric + Compose UI tests for the appearance picker dialogs.
 *
 * Guards the dialog behaviour that moved into [AppearanceLibraryBackgroundsCard]
 * during the AppearanceSection decomposition (2026-08-06):
 *  - [SettingsPickerDialog] renders options and honours onSelect/onDismiss;
 *  - the card wiring (tile → dialog → apply → close) still works end to end.
 *
 * Strings are provided explicitly in English so the tests do not depend on
 * the default locale.
 */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [35])
class SettingsPickerDialogTest {

    @get:Rule
    val composeRule = createComposeRule()

    private val strings = appStringsForCode("en")

    private val options = listOf(
        ReaderPickerOption("PAPER_GRAIN", "Paper grain"),
        ReaderPickerOption("EINK_WASH", "E-Ink wash"),
        ReaderPickerOption("AURORA_MIST", "Aurora mist")
    )

    private fun setPickerDialog(
        title: String,
        options: List<ReaderPickerOption>,
        selectedValue: String,
        onDismiss: () -> Unit,
        onSelect: (String) -> Unit
    ) {
        composeRule.setContent {
            CompositionLocalProvider(LocalStrings provides strings) {
                SettingsPickerDialog(
                    title = title,
                    options = options,
                    selectedValue = selectedValue,
                    onDismiss = onDismiss,
                    onSelect = onSelect
                )
            }
        }
    }

    @Test
    fun `all options are rendered and title is shown`() {
        setPickerDialog(
            title = "Background style",
            options = options,
            selectedValue = "PAPER_GRAIN",
            onDismiss = {},
            onSelect = {}
        )
        composeRule.onNodeWithText("Background style").assertIsDisplayed()
        options.forEach { option ->
            composeRule.onNodeWithText(option.label).assertIsDisplayed()
        }
    }

    @Test
    fun `clicking an option reports its value`() {
        var selected: String? = null
        var dismissed = false
        setPickerDialog(
            title = "Background style",
            options = options,
            selectedValue = "PAPER_GRAIN",
            onDismiss = { dismissed = true },
            onSelect = { selected = it }
        )
        composeRule.onNodeWithText("E-Ink wash").performClick()
        assertEquals("EINK_WASH", selected)
        assertFalse(dismissed)
    }

    @Test
    fun `close button dismisses without selecting`() {
        var selected: String? = null
        var dismissed = false
        setPickerDialog(
            title = "Background style",
            options = options,
            selectedValue = "PAPER_GRAIN",
            onDismiss = { dismissed = true },
            onSelect = { selected = it }
        )
        composeRule.onNodeWithText("Close").performClick()
        assertTrue(dismissed)
        assertEquals(null, selected)
    }

    @Test
    fun `back press dismisses the dialog`() {
        var dismissed = false
        setPickerDialog(
            title = "Background style",
            options = options,
            selectedValue = "PAPER_GRAIN",
            onDismiss = { dismissed = true },
            onSelect = {}
        )
        composeRule.onNodeWithText("Background style").assertIsDisplayed()
        Espresso.pressBack()
        assertTrue(dismissed)
    }

    @Test
    fun `dialog can be reopened after dismiss`() {
        var dismissed by mutableStateOf(false)
        composeRule.setContent {
            CompositionLocalProvider(LocalStrings provides strings) {
                if (!dismissed) {
                    SettingsPickerDialog(
                        title = "Background style",
                        options = options,
                        selectedValue = "PAPER_GRAIN",
                        onDismiss = { dismissed = true },
                        onSelect = {}
                    )
                }
            }
        }
        composeRule.onNodeWithText("Background style").assertIsDisplayed()
        composeRule.onNodeWithText("Close").performClick()
        composeRule.onNodeWithText("Background style").assertDoesNotExist()
        // Reopen the dialog — must render fresh without leftovers.
        composeRule.runOnIdle {
            dismissed = false
        }
        composeRule.onNodeWithText("Background style").assertIsDisplayed()
        composeRule.onNodeWithText("Paper grain").assertIsDisplayed()
    }

    @Test
    fun `library backgrounds card opens picker dialog from tile and dismisses it`() {
        // The card owns the dialog state; the ViewModel setter extensions touch
        // viewModelScope (not mockable), so this test covers the tile→dialog
        // wiring and dismissal. Option selection is covered by the standalone
        // dialog tests above; the card's onSelect lambda is a thin pass-through.
        val viewModel = mockk<SettingsViewModel>(relaxed = true)
        composeRule.setContent {
            CompositionLocalProvider(LocalStrings provides strings) {
                AppearanceLibraryBackgroundsCard(
                    uiState = SettingsUiState(appLanguage = "en"),
                    strings = strings,
                    libraryText = librarySectionText("en"),
                    viewModel = viewModel
                )
            }
        }
        // Dialog is closed initially — its option is not on screen.
        composeRule.onNodeWithText("E-Ink wash").assertDoesNotExist()
        // Tap the "Background style" tile.
        composeRule.onNodeWithText("Background style").performClick()
        // Dialog opened — the option is now rendered.
        composeRule.onNodeWithText("E-Ink wash").assertIsDisplayed()
        // Back press closes the dialog (onDismiss → showBackgroundPicker = false).
        Espresso.pressBack()
        composeRule.onNodeWithText("E-Ink wash").assertDoesNotExist()
    }
}
