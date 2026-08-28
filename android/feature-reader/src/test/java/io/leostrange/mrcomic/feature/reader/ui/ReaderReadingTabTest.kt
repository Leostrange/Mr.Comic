package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.hasAnySibling
import androidx.compose.ui.test.hasScrollToNodeAction
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.isToggleable
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollToNode
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.ui.locale.English
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/**
 * Robolectric + Compose UI tests for [ReaderReadingTab], the reading-mode tab
 * extracted into `ReaderReadingTab.kt` during the ReaderControlCenterComponents
 * decomposition (2026-08-06).
 *
 * Localized strings are pinned to English via [LocalStrings] so the tests do
 * not depend on the default (Russian) locale.
 */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [35])
class ReaderReadingTabTest {

    @get:Rule
    val composeRule = createComposeRule()

    private class Callbacks {
        var readingMode: ReadingMode? = null
        var keepScreenOn: Boolean? = null
        var tapZoneMode: String? = null
    }

    private fun setTab(
        uiState: ReaderUiState = ReaderUiState(),
        callbacks: Callbacks = Callbacks(),
        isTextReader: Boolean = false
    ) {
        composeRule.setContent {
            CompositionLocalProvider(LocalStrings provides English) {
                ReaderReadingTab(
                    uiState = uiState,
                    isTextReader = isTextReader,
                    onReadingModeChange = { callbacks.readingMode = it },
                    onKeepScreenOnChange = { callbacks.keepScreenOn = it },
                    onScreenTimeoutChange = {},
                    onImmersiveModeChange = {},
                    onLandscapeSpreadChange = {},
                    onPreloadPagesChange = {},
                    onPageAnimationChange = {},
                    onTapZoneModeChange = { callbacks.tapZoneMode = it },
                    onTapZoneSwapChange = {},
                    onTapZoneActionChange = { _, _ -> },
                    onVolumePagingChange = {},
                    onHeaderSlotChange = { _, _ -> },
                    onFooterSlotChange = { _, _ -> },
                    onHeaderFooterFontSizeChange = {},
                    onHeaderFooterVerticalPaddingChange = {},
                    onHeaderFooterLeftPaddingChange = {},
                    onHeaderFooterRightPaddingChange = {},
                    onChromeAutoHideChange = {}
                )
            }
        }
    }

    @Test
    fun `reading mode chips render and report selection`() {
        val callbacks = Callbacks()
        setTab(callbacks = callbacks)

        composeRule.onNodeWithText("Reading mode").assertIsDisplayed()
        composeRule.onNodeWithText("Pages →").assertIsDisplayed()
        composeRule.onNodeWithText("Vertical Scroll").assertIsDisplayed()

        composeRule.onNodeWithText("Vertical Scroll").performClick()
        assertEquals(ReadingMode.WEBTOON, callbacks.readingMode)

        composeRule.onNodeWithText("Pages →").performClick()
        assertEquals(ReadingMode.PAGE_LTR, callbacks.readingMode)
    }

    @Test
    fun `keep screen on switch reports toggle`() {
        val callbacks = Callbacks()
        setTab(callbacks = callbacks)

        scrollTo("Keep Screen On")
        composeRule.onNode(isToggleable() and hasAnySibling(hasText("Keep Screen On")))
            .performClick()
        assertEquals(true, callbacks.keepScreenOn)
    }

    @Test
    fun `tap zone mode chip reports selection`() {
        val callbacks = Callbacks()
        setTab(callbacks = callbacks)

        scrollTo("Tap zones")
        composeRule.onNodeWithText("Custom").assertIsDisplayed()
        composeRule.onNodeWithText("Custom").performClick()
        assertEquals(ReaderTapZoneMode.CUSTOM.name, callbacks.tapZoneMode)
    }

    @Test
    fun `custom tap zone mode shows three action pickers`() {
        val callbacks = Callbacks()
        setTab(
            uiState = ReaderUiState(tapZoneMode = ReaderTapZoneMode.CUSTOM.name),
            callbacks = callbacks
        )

        // Scroll to each picker title individually — the LazyColumn viewport
        // is small, so only the current section is composed.
        scrollTo("Left zone")
        composeRule.onNodeWithText("Left zone").assertIsDisplayed()
        scrollTo("Center zone")
        composeRule.onNodeWithText("Center zone").assertIsDisplayed()
        scrollTo("Right zone")
        composeRule.onNodeWithText("Right zone").assertIsDisplayed()

        // Every picker lists the same actions, so each action label appears
        // once per picker: 3 total.
        scrollTo("Previous page")
        composeRule.onAllNodesWithText("Previous page").assertCountEquals(3)
        composeRule.onAllNodesWithText("Menu").assertCountEquals(3)
        composeRule.onAllNodesWithText("Next page").assertCountEquals(3)
    }

    @Test
    fun `header and footer sliders render`() {
        setTab(isTextReader = true)

        scrollTo("Font size")
        composeRule.onNodeWithText("Font size").assertIsDisplayed()
        scrollTo("Vertical padding")
        composeRule.onNodeWithText("Vertical padding").assertIsDisplayed()
        scrollTo("Left inset")
        composeRule.onNodeWithText("Left inset").assertIsDisplayed()
        scrollTo("Right inset")
        composeRule.onNodeWithText("Right inset").assertIsDisplayed()
    }

    @Test
    fun `header and footer typography sliders are hidden for graphic readers`() {
        setTab(isTextReader = false)

        composeRule.onAllNodesWithText("Font size").assertCountEquals(0)
        composeRule.onAllNodesWithText("Vertical padding").assertCountEquals(0)
        composeRule.onAllNodesWithText("Left inset").assertCountEquals(0)
        composeRule.onAllNodesWithText("Right inset").assertCountEquals(0)
    }

    @Test
    fun `webtoon mode disables page animation chips`() {
        setTab(uiState = ReaderUiState(readingMode = ReadingMode.WEBTOON))

        scrollTo("Page animation is disabled in vertical strip mode.")
        composeRule.onNodeWithText("Page animation is disabled in vertical strip mode.").assertIsDisplayed()
    }

    private fun scrollTo(text: String) {
        // The outer LazyColumn is the first scrollable-to-node container in
        // tree order; the inner LazyRows come after it.
        composeRule.onAllNodes(hasScrollToNodeAction())[0]
            .performScrollToNode(hasText(text))
    }
}
