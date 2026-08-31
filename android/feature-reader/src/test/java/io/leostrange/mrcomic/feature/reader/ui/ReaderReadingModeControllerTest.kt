package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.model.ReadingMode
import io.mockk.mockk
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderReadingModeControllerTest {

    @Test
    fun switchingToWebtoon_immediatelyPersistsNewModeWithoutChangingTheme() {
        val state = MutableStateFlow(
            ReaderUiState(
                readingMode = ReadingMode.PAGE_LTR,
                readerContainerKind = ReaderContainerKind.TEXT_PAGE,
                readerRendersHtmlContent = true,
                currentPage = 3,
                totalPages = 10,
                sectionCurrentPage = 2,
                sectionPageCount = 5,
                sectionCharacterOffset = 420,
                readerPreset = "OLED_BLACK",
                textColorScheme = "NIGHT",
            ),
        )
        var immediatelyPersistedState: ReaderUiState? = null
        val controller = ReaderReadingModeController(
            _uiState = state,
            viewModelScope = CoroutineScope(SupervisorJob() + Dispatchers.Unconfined),
            readerPreferences = mockk<UserPreferences>(relaxed = true),
            textReaderOrchestrator = mockk<TextReaderOrchestrator>(relaxed = true),
            totalBookSections = { 10 },
            normalizePageForMode = { page, _, _ -> page },
            syncReaderPosition = { _, _, _ -> },
            scheduleTextPagePaginationBuild = {},
            isProgressAlreadyPersisted = { _, _ -> false },
            prewarmHtmlPagesAround = {},
            activeComicSupportsBitmapPreload = { false },
            markReaderPresetCustom = {},
            savePositionImmediate = { immediatelyPersistedState = state.value },
        )

        controller.setReadingMode(ReadingMode.WEBTOON)

        assertEquals(ReadingMode.WEBTOON, immediatelyPersistedState?.readingMode)
        assertEquals(ReaderContainerKind.TEXT_WEBTOON, immediatelyPersistedState?.readerContainerKind)
        assertEquals("OLED_BLACK", immediatelyPersistedState?.readerPreset)
        assertEquals("NIGHT", immediatelyPersistedState?.textColorScheme)
    }
}
