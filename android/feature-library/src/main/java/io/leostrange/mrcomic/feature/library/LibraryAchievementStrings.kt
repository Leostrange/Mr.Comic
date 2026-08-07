package io.leostrange.mrcomic.feature.library

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.feature.library.components.AchievementStrings

@Composable
internal fun rememberAchievementStrings(strings: AppStrings): AchievementStrings {
    return remember(strings.navLibrary) {
        AchievementStrings(
            achFirstBook = strings.achFirstBook,
            achFirstBookDesc = strings.achFirstBookDesc,
            achReader = strings.achReader,
            achReaderDesc = strings.achReaderDesc,
            achCollector = strings.achCollector,
            achCollectorDesc = strings.achCollectorDesc,
            achFirstComplete = strings.achFirstComplete,
            achFirstCompleteDesc = strings.achFirstCompleteDesc,
            achMarathon = strings.achMarathon,
            achMarathonDesc = strings.achMarathonDesc,
            achAuthorFan = strings.achAuthorFan,
            achAuthorFanDesc = strings.achAuthorFanDesc,
            achGenreGourmet = strings.achGenreGourmet,
            achGenreGourmetDesc = strings.achGenreGourmetDesc,
            achBookmarker = strings.achBookmarker,
            achBookmarkerDesc = strings.achBookmarkerDesc,
            achSecretCat = strings.achSecretCat,
            achSecretCatDesc = strings.achSecretCatDesc,
            achSecretHint = strings.achSecretHint
        )
    }
}
