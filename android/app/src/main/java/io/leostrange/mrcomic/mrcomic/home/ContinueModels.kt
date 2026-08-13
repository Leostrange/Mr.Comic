package io.leostrange.mrcomic.home

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH

data class ContinueUiState(
    val isLoading: Boolean = true,
    val continueReading: Comic? = null,
    val currentlyReading: List<Comic> = emptyList(),
    val hasLibraryContent: Boolean = false,
    val hasActiveReading: Boolean = false,
    val checkpointTrail: List<ReaderCheckpoint> = emptyList(),
    val mascotRecapEnabled: Boolean = true,
    val questPromptsEnabled: Boolean = true,
    val dailyReadingGoal: DailyReadingGoalState = DailyReadingGoalState(),
    val mascotProgress: MascotProgressState = MascotProgressState(),
    val mascotState: MrComicMascotState = MrComicMascotState(),
    val acknowledgedMascotStageName: String = MascotStage.CHILD.name,
    val mascotRecapEnabledAtMillis: Long = 0L,
    val questPromptsEnabledAtMillis: Long = 0L,
    val dailyReadingGoalEnabledAtMillis: Long = 0L,
    val totalTitles: Int = 0,
    val completedTitles: Int = 0
)

data class ContinueLibraryChrome(
    val backgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val backgroundImageUri: String? = null,
    val backdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val backgroundBlur: Float = DEFAULT_LIBRARY_BACKGROUND_BLUR,
    val backgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL
)

internal data class ContinueResolvedStartupData(
    val comics: List<Comic>,
    val trail: List<ReaderCheckpoint>,
    val isLoading: Boolean
)

