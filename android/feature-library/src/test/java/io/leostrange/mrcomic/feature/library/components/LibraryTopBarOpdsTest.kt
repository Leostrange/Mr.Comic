package io.leostrange.mrcomic.feature.library.components

import androidx.compose.foundation.layout.Box
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.appStringsForCode
import io.leostrange.mrcomic.feature.library.GroupByMode
import io.leostrange.mrcomic.feature.library.LibraryContentSection
import io.leostrange.mrcomic.feature.library.LibraryFormatFilter
import io.leostrange.mrcomic.feature.library.LibraryStatusFilter
import io.leostrange.mrcomic.feature.library.LibraryViewMode
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [35])
class LibraryTopBarOpdsTest {

    @get:Rule
    val composeRule = createComposeRule()

    private val strings = appStringsForCode("en")

    private fun setTopBar(onOpdsCatalogClick: () -> Unit) {
        composeRule.setContent {
            CompositionLocalProvider(LocalStrings provides strings) {
                MaterialTheme {
                    Box {
                        LibraryTopBar(
                            contentSection = LibraryContentSection.FILES,
                            isControlsExpanded = true,
                            sortOrder = SortOrder.DATE_ADDED_DESC,
                            statusFilter = LibraryStatusFilter.ALL,
                            formatFilter = LibraryFormatFilter.ALL,
                            groupByMode = GroupByMode.FOLDER,
                            thumbnailMode = "RECTANGLE",
                            viewMode = LibraryViewMode.GRID,
                            onToggleControls = {},
                            onToggleView = {},
                            onOpenFilters = {},
                            onThumbnailModeChange = {},
                            onAddFileClick = {},
                            onAddFolderClick = {},
                            onOpdsCatalogClick = onOpdsCatalogClick,
                            canNavigateUp = false,
                            onNavigateUp = {},
                            onSettingsClick = {}
                        )
                    }
                }
            }
        }
    }

    @Test
    fun opdsIsNotRenderedInsideLocalImportMenu() {
        setTopBar {}

        composeRule.onNodeWithContentDescription(strings.actionFolder).performClick()
        composeRule.onNodeWithText(strings.actionFile).assertIsDisplayed()
        composeRule.onNodeWithText(strings.actionFolder).assertIsDisplayed()
        composeRule.onNodeWithText(strings.opdsCatalog).assertDoesNotExist()
    }

    @Test
    fun opdsCloudActionNavigatesFromTopBar() {
        var clicks = 0
        setTopBar { clicks++ }

        composeRule.onNodeWithContentDescription(strings.opdsCatalog).performClick()
        composeRule.waitForIdle()

        assertEquals(1, clicks)
    }
}
