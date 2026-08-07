package io.leostrange.mrcomic.feature.library

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.feature.library.components.AchievementStrings

@Composable
internal fun rememberAchievementStrings(strings: AppStrings): AchievementStrings {
    return remember(strings.navLibrary) {
        mrComicAchievementStrings(strings)
    }
}
