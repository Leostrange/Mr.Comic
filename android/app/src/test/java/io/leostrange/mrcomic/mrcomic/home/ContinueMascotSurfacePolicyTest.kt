package io.leostrange.mrcomic.home

import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotMood
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodHeadline
import io.leostrange.mrcomic.ui.continueScreenText
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ContinueMascotSurfacePolicyTest {

    @Test
    fun resolveContinueCompanionPresentation_usesNeutralCopyWhenMascotUiIsDisabled() {
        val text = continueScreenText("en")

        val presentation = resolveContinueCompanionPresentation(
            text = text,
            language = "en",
            mascotUiEnabled = false,
            mascotState = MrComicMascotState(mood = MrComicMascotMood.LOCKED_IN),
            recentTitle = "Recent title"
        )

        assertEquals(text.progressTitle, presentation.title)
        assertEquals(text.progressNeutralHint, presentation.hint)
        assertFalse(presentation.showMascot)
    }

    @Test
    fun resolveContinueCompanionPresentation_keepsMascotCopyWhenMascotUiIsEnabled() {
        val text = continueScreenText("en")
        val mascotState = MrComicMascotState(mood = MrComicMascotMood.LOCKED_IN)

        val presentation = resolveContinueCompanionPresentation(
            text = text,
            language = "en",
            mascotUiEnabled = true,
            mascotState = mascotState,
            recentTitle = "Recent title"
        )

        assertEquals(text.mascotTitle, presentation.title)
        assertEquals(
            mrComicMascotMoodHeadline("en", mascotState.mood, "Recent title"),
            presentation.hint
        )
        assertTrue(presentation.showMascot)
    }
}
