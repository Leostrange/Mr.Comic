package com.example.feature.library

import com.example.feature.library.components.AchievementId
import com.example.feature.library.components.AchievementStrings
import com.example.feature.library.components.computeAchievements
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MrComicProfileConsistencyTest {

    @Test
    fun resolveMrComicAchievementSummary_keepsRememberedPendingTargetWhenStillValid() {
        val achievements = testAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = AchievementId.READER.name
        )

        assertEquals(2, summary.unlockedCount)
        assertEquals(8, summary.visibleTotal)
        assertEquals(6, summary.visiblePendingCount)
        assertEquals(AchievementId.READER, summary.nextAchievement?.id)
        assertFalse(summary.hasUnlockedSecret)
    }

    @Test
    fun resolveMrComicAchievementSummary_fallsBackWhenRememberedTargetIsGone() {
        val achievements = testAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = AchievementId.FIRST_COMPLETE.name
        )

        assertEquals(AchievementId.GENRE_GOURMET, summary.nextAchievement?.id)
    }

    @Test
    fun resolveMrComicAchievementSummary_ignoresLockedSecretAsPublicNextTarget() {
        val achievements = testAchievements(
            totalComics = 30,
            completedComics = 20,
            bookmarkedComics = 1,
            allAuthors = listOf("A", "A", "A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama", "Comedy"),
            secretUnlocked = false
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = null
        )

        assertEquals(8, summary.unlockedCount)
        assertEquals(8, summary.visibleTotal)
        assertEquals(0, summary.visiblePendingCount)
        assertNull(summary.nextAchievement)
        assertFalse(summary.hasUnlockedSecret)
    }

    @Test
    fun resolveMrComicAchievementSummary_includesSecretOnceItIsUnlocked() {
        val achievements = testAchievements(
            totalComics = 30,
            completedComics = 20,
            bookmarkedComics = 1,
            allAuthors = listOf("A", "A", "A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama", "Comedy"),
            secretUnlocked = true
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = null
        )

        assertTrue(summary.hasUnlockedSecret)
        assertEquals(9, summary.unlockedCount)
        assertEquals(9, summary.visibleTotal)
        assertEquals(1f, summary.completionFraction)
    }

    @Test
    fun resolveMrComicAchievementSummary_fallsBackFromUnknownRememberedId() {
        val achievements = testAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = "UNKNOWN_TARGET"
        )

        assertEquals(AchievementId.GENRE_GOURMET, summary.nextAchievement?.id)
    }

    @Test
    fun resolveMrComicAchievementSummary_doesNotPromoteLockedSecretFromRememberedId() {
        val achievements = testAchievements(
            totalComics = 30,
            completedComics = 20,
            bookmarkedComics = 1,
            allAuthors = listOf("A", "A", "A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama", "Comedy"),
            secretUnlocked = false
        )

        val summary = resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = AchievementId.SECRET_CAT.name
        )

        assertNull(summary.nextAchievement)
        assertFalse(summary.hasUnlockedSecret)
        assertEquals(8, summary.visibleTotal)
    }

    private fun testAchievements(
        totalComics: Int,
        completedComics: Int,
        bookmarkedComics: Int,
        allAuthors: List<String?>,
        allGenres: List<String?>,
        secretUnlocked: Boolean
    ) = computeAchievements(
        totalComics = totalComics,
        completedComics = completedComics,
        bookmarkedComics = bookmarkedComics,
        allAuthors = allAuthors,
        allGenres = allGenres,
        secretUnlocked = secretUnlocked,
        strings = AchievementStrings(
            achFirstBook = "First Book",
            achFirstBookDesc = "desc",
            achReader = "Reader",
            achReaderDesc = "desc",
            achCollector = "Collector",
            achCollectorDesc = "desc",
            achFirstComplete = "First Complete",
            achFirstCompleteDesc = "desc",
            achMarathon = "Marathon",
            achMarathonDesc = "desc",
            achAuthorFan = "Author Fan",
            achAuthorFanDesc = "desc",
            achGenreGourmet = "Genre Gourmet",
            achGenreGourmetDesc = "desc",
            achBookmarker = "Bookmarker",
            achBookmarkerDesc = "desc",
            achSecretCat = "Secret Cat",
            achSecretCatDesc = "desc",
            achSecretHint = "hint"
        )
    )
}
