package io.leostrange.mrcomic.feature.library.components

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class LibraryAchievementsTest {

    @Test
    fun computeAchievements_reportsProgressCounters() {
        val achievements = computeAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action, Drama", "Comedy"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val reader = achievements.first { it.id == AchievementId.READER }
        val collector = achievements.first { it.id == AchievementId.COLLECTOR }
        val authorFan = achievements.first { it.id == AchievementId.AUTHOR_FAN }
        val genreGourmet = achievements.first { it.id == AchievementId.GENRE_GOURMET }

        assertEquals(4, reader.progressCurrent)
        assertEquals(10, reader.progressTarget)
        assertEquals(4, collector.progressCurrent)
        assertEquals(25, collector.progressTarget)
        assertEquals(3, authorFan.progressCurrent)
        assertEquals(5, authorFan.progressTarget)
        assertTrue(genreGourmet.isUnlocked)
        assertEquals(3, genreGourmet.progressCurrent)
        assertEquals(3, genreGourmet.progressTarget)
    }

    @Test
    fun nextUnlockAchievement_prefersMostAdvancedVisibleTarget() {
        val achievements = computeAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val next = nextUnlockAchievement(achievements)

        assertNotNull(next)
        assertEquals(AchievementId.GENRE_GOURMET, next!!.id)
        assertFalse(next.isUnlocked)
        assertEquals(2, next.progressCurrent)
        assertEquals(3, next.progressTarget)
    }

    @Test
    fun rememberedNextUnlockAchievement_keepsRememberedPendingTarget() {
        val achievements = computeAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val next = rememberedNextUnlockAchievement(
            achievements = achievements,
            rememberedAchievementId = AchievementId.READER.name
        )

        assertNotNull(next)
        assertEquals(AchievementId.READER, next!!.id)
        assertFalse(next.isUnlocked)
    }

    @Test
    fun rememberedNextUnlockAchievement_fallsBackWhenRememberedTargetIsGone() {
        val achievements = computeAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val next = rememberedNextUnlockAchievement(
            achievements = achievements,
            rememberedAchievementId = AchievementId.FIRST_COMPLETE.name
        )

        assertNotNull(next)
        assertEquals(AchievementId.GENRE_GOURMET, next!!.id)
    }

    @Test
    fun questTransitionFeedback_reportsCompletedQuestAndNextTarget() {
        val achievements = computeAchievements(
            totalComics = 6,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val transition = questTransitionFeedback(
            achievements = achievements,
            rememberedAchievementId = AchievementId.FIRST_COMPLETE.name,
            nextAchievement = achievements.first { it.id == AchievementId.READER }
        )

        assertNotNull(transition)
        assertTrue(transition!!.previousCompleted)
        assertEquals(AchievementQuestFeedbackTone.COMPLETED, transition.tone)
        assertEquals(AchievementId.FIRST_COMPLETE, transition.previousAchievementId)
        assertEquals(AchievementId.READER, transition.nextAchievementId)
    }

    @Test
    fun questTransitionFeedback_reportsQuestSwitchWhilePreviousIsStillPending() {
        val achievements = computeAchievements(
            totalComics = 4,
            completedComics = 1,
            bookmarkedComics = 0,
            allAuthors = listOf("A", "A", "A", "B"),
            allGenres = listOf("Action", "Drama"),
            secretUnlocked = false,
            strings = testAchievementStrings()
        )

        val transition = questTransitionFeedback(
            achievements = achievements,
            rememberedAchievementId = AchievementId.READER.name,
            nextAchievement = achievements.first { it.id == AchievementId.GENRE_GOURMET }
        )

        assertNotNull(transition)
        assertFalse(transition!!.previousCompleted)
        assertEquals(AchievementQuestFeedbackTone.SWITCHED, transition.tone)
        assertEquals(AchievementId.READER, transition.previousAchievementId)
        assertEquals(AchievementId.GENRE_GOURMET, transition.nextAchievementId)
    }

    private fun testAchievementStrings() = AchievementStrings(
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
}
