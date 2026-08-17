package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class LibraryScreenStatePolicyTest {

    @Test
    fun `normalizes metadata before counting and selects first recent series`() {
        val facts = resolveLibraryScreenStateFacts(
            rawAuthors = listOf(" Author A ", null, "", "Author A", "Author B"),
            rawGenres = listOf("Fantasy", " Fantasy ", "Drama", "   "),
            recentlyRead = listOf(
                Comic(series = "  Saga  "),
                Comic(series = "Later series")
            )
        )

        assertEquals(2, facts.uniqueAuthorCount)
        assertEquals(2, facts.uniqueGenreCount)
        assertEquals("Saga", facts.preferredQuestSeriesName)
    }

    @Test
    fun `uses no preferred series when the most recently read comic has none`() {
        val facts = resolveLibraryScreenStateFacts(
            rawAuthors = emptyList(),
            rawGenres = emptyList(),
            recentlyRead = listOf(Comic(series = "   "), Comic(series = "Fallback"))
        )

        assertEquals(0, facts.uniqueAuthorCount)
        assertEquals(0, facts.uniqueGenreCount)
        assertNull(facts.preferredQuestSeriesName)
    }
}
