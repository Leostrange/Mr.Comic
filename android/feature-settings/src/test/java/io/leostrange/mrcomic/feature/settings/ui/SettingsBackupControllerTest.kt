package io.leostrange.mrcomic.feature.settings.ui

import androidx.test.core.app.ApplicationProvider
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.runTest
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@OptIn(ExperimentalCoroutinesApi::class)
@RunWith(RobolectricTestRunner::class)
class SettingsBackupControllerTest {

    private val preferences = mockk<UserPreferences>()
    private val themePreferencesRepository = mockk<ThemePreferencesRepository>()
    private val comicRepository = mockk<ComicRepository>()
    private val quoteRepository = mockk<QuoteRepository>()

    private fun TestScope.createController(
        statusState: MutableStateFlow<StatusState> = MutableStateFlow(StatusState()),
    ) = SettingsBackupController(
        context = ApplicationProvider.getApplicationContext(),
        preferences = preferences,
        themePreferencesRepository = themePreferencesRepository,
        comicRepository = comicRepository,
        quoteRepository = quoteRepository,
        scope = this,
        statusState = statusState,
        language = { "ru" },
    )

    @Test
    fun consumeCacheMessageClearsStatusMessage() = runTest {
        val statusState = MutableStateFlow(StatusState(message = "old"))
        val controller = createController(statusState)

        controller.consumeCacheMessage()

        assertNull(statusState.value.message)
    }

    @Test
    fun consumePendingLibraryRepairLaunchResetsToken() = runTest {
        val statusState = MutableStateFlow(StatusState(pendingLibraryRepairLaunchToken = 42L))
        val controller = createController(statusState)

        controller.consumePendingLibraryRepairLaunch()

        assertEquals(0L, statusState.value.pendingLibraryRepairLaunchToken)
    }

    @Test
    fun parseImportedReaderTypographyRejectsUnknownJson() = runTest {
        val controller = createController()

        assertNull(controller.parseImportedReaderTypography(JSONObject()))
        assertNull(controller.parseImportedReaderTypography(JSONObject("{\"color\":\"#fff\"}")))
    }

    @Test
    fun parseImportedReaderTypographyBuildsPresetFromKnownKeys() = runTest {
        every { preferences.get(PreferencesKeys.TEXT_FONT_SIZE, 18) } returns flowOf(18)
        every { preferences.get(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY") } returns flowOf("DAY")
        every { preferences.get(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia") } returns flowOf("Georgia")
        every { preferences.get(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f) } returns flowOf(1.8f)
        every { preferences.get(PreferencesKeys.TEXT_LETTER_SPACING, 0f) } returns flowOf(0f)
        every { preferences.get(PreferencesKeys.TEXT_WORD_SPACING, 0f) } returns flowOf(0f)
        every { preferences.get(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f) } returns flowOf(0.2f)
        every { preferences.get(PreferencesKeys.TEXT_ALIGNMENT, "justify") } returns flowOf("justify")
        every { preferences.get(PreferencesKeys.TEXT_BOLD, false) } returns flowOf(false)
        every { preferences.get(PreferencesKeys.READING_BRIGHTNESS, -1f) } returns flowOf(-1f)
        every { preferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false) } returns flowOf(false)
        every { preferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE") } returns flowOf("SLIDE")
        val controller = createController()

        val preset = controller.parseImportedReaderTypography(
            JSONObject(
                """
                {
                  "presetName": "My Style",
                  "basePreset": "DOCUMENT",
                  "fontSize": 22,
                  "colorScheme": "night",
                  "lineHeight": 2.0,
                  "bold": true
                }
                """.trimIndent()
            )
        )

        assertNotNull(preset)
        assertEquals("My Style", preset!!.displayName)
        assertEquals(22, preset.textFontSize)
        assertEquals("NIGHT", preset.textColorScheme)
        assertEquals(2.0f, preset.textLineHeight)
        assertTrue(preset.textBold)
    }

    @Test
    fun buildBackupJsonContainsComicAndQuoteEntries() = runTest {
        every { preferences.get(any(), any<Any>()) } returns flowOf("")
        every { themePreferencesRepository.themeConfig } returns flowOf(
            io.leostrange.mrcomic.core.ui.theme.ThemeConfig()
        )
        every { themePreferencesRepository.themePreset } returns flowOf(
            io.leostrange.mrcomic.core.ui.theme.ThemePreset.PAPER
        )
        val controller = createController()
        val comic = Comic(id = "c1", title = "Chapter One", path = "/doc/comic.cbz", format = ComicFormat.CBZ)
        val quote = io.leostrange.mrcomic.core.data.db.entity.SavedQuote(
            id = "q1",
            comicId = "c1",
            comicTitle = "Chapter One",
            comicPath = "/doc/comic.cbz",
            page = 3,
            text = "Hello",
            contentHash = "abc123",
        )

        val root = controller.buildBackupJson(listOf(comic), listOf(quote))

        assertEquals(5, root.optInt("version"))
        assertEquals(1, root.getJSONArray("entries").length())
        assertEquals("Chapter One", root.getJSONArray("entries").getJSONObject(0).optString("title"))
        assertEquals("CBZ", root.getJSONArray("entries").getJSONObject(0).optString("format"))
        assertEquals(1, root.getJSONArray("quotes").length())
        assertTrue(root.has("preferences"))
        assertTrue(root.has("themePreferences"))
        assertTrue(root.has("appIcon"))
    }
}
