package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.feature.library.components.AchievementId
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryDiscoveryQuestPolicyTest {

    @Test
    fun mrComicDiscoveryHintAction_routesMarathonToSeriesWhenSeriesIsAvailable() {
        val action = mrComicDiscoveryHintAction(
            achievement = testAchievement(AchievementId.MARATHON),
            hasRecent = true,
            preferredSeriesName = "Chainsaw Man",
            preferredCollectionQuery = null
        )

        assertEquals(MrComicDiscoveryAction.OPEN_SERIES, action)
        assertEquals(
            MrComicQuestType.FINISH_SERIES,
            mrComicQuestType(testAchievement(AchievementId.MARATHON), action)
        )
    }

    @Test
    fun mrComicDiscoveryHintAction_routesAuthorFanToCollectionWhenAuthorQueryExists() {
        val action = mrComicDiscoveryHintAction(
            achievement = testAchievement(AchievementId.AUTHOR_FAN),
            hasRecent = false,
            preferredSeriesName = null,
            preferredCollectionQuery = "Junji Ito"
        )

        assertEquals(MrComicDiscoveryAction.OPEN_COLLECTION, action)
        assertEquals(
            MrComicQuestType.READ_COLLECTION,
            mrComicQuestType(testAchievement(AchievementId.AUTHOR_FAN), action)
        )
    }

    @Test
    fun resolveMrComicCollectionQuery_prefersTopAuthorAndGenre() {
        assertEquals(
            "Junji Ito",
            resolveMrComicCollectionQuery(
                achievementId = AchievementId.AUTHOR_FAN,
                rawAuthors = listOf("Junji Ito", "Junji Ito", "Naoki Urasawa"),
                rawGenres = emptyList()
            )
        )
        assertEquals(
            "Horror",
            resolveMrComicCollectionQuery(
                achievementId = AchievementId.GENRE_GOURMET,
                rawAuthors = emptyList(),
                rawGenres = listOf("Horror, Mystery", "horror", "Sci-Fi")
            )
        )
    }

    @Test
    fun resolveMrComicStableDiscoveryAction_keepsSpecificRememberedRouteWhenStillValid() {
        val action = resolveMrComicStableDiscoveryAction(
            achievement = testAchievement(AchievementId.MARATHON),
            hasRecent = true,
            preferredSeriesName = "Chainsaw Man",
            preferredCollectionQuery = null,
            rememberedAchievementId = AchievementId.MARATHON.name,
            rememberedActionName = MrComicDiscoveryAction.OPEN_RECENT.name
        )

        assertEquals(MrComicDiscoveryAction.OPEN_RECENT, action)
    }

    @Test
    fun resolveMrComicStableDiscoveryAction_upgradesFromFilesToSpecificRoute() {
        val action = resolveMrComicStableDiscoveryAction(
            achievement = testAchievement(AchievementId.AUTHOR_FAN),
            hasRecent = false,
            preferredSeriesName = null,
            preferredCollectionQuery = "Junji Ito",
            rememberedAchievementId = AchievementId.AUTHOR_FAN.name,
            rememberedActionName = MrComicDiscoveryAction.OPEN_FILES.name
        )

        assertEquals(MrComicDiscoveryAction.OPEN_COLLECTION, action)
    }

    @Test
    fun resolveMrComicStableDiscoveryAction_dropsRememberedRouteWhenItIsNoLongerValid() {
        val action = resolveMrComicStableDiscoveryAction(
            achievement = testAchievement(AchievementId.MARATHON),
            hasRecent = false,
            preferredSeriesName = null,
            preferredCollectionQuery = null,
            rememberedAchievementId = AchievementId.MARATHON.name,
            rememberedActionName = MrComicDiscoveryAction.OPEN_SERIES.name
        )

        assertEquals(MrComicDiscoveryAction.OPEN_FILES, action)
    }

    private fun testAchievement(id: AchievementId) = LibraryAchievement(
        id = id,
        title = id.name,
        description = "desc",
        emoji = "*",
        isUnlocked = false,
        progressCurrent = 1,
        progressTarget = 3
    )
}
