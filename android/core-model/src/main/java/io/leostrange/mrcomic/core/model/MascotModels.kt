package io.leostrange.mrcomic.core.model

enum class MascotStage {
    CHILD,
    TEEN,
    YOUNG,
    ADULT
}

data class MascotProgressState(
    val approxPagesRead: Int = 0,
    val completedTitles: Int = 0,
    val xp: Int = 0,
    val stage: MascotStage = MascotStage.CHILD,
    val stageStartXp: Int = 0,
    val nextStageXp: Int? = 200,
    val stageProgress: Float = 0f
)

data class MascotStageTimelineEntry(
    val stage: MascotStage,
    val unlockXp: Int,
    val isCompleted: Boolean,
    val isCurrent: Boolean,
    val isUpcoming: Boolean
)

data class MascotStageTimeline(
    val currentXp: Int,
    val currentStage: MascotStage,
    val stageStartXp: Int,
    val nextStageXp: Int?,
    val xpToNextStage: Int?,
    val isMaxStage: Boolean,
    val entries: List<MascotStageTimelineEntry>
)

data class MascotStageArchiveEntry(
    val stage: MascotStage,
    val unlockXp: Int,
    val isCurrent: Boolean,
    val isHighestReached: Boolean
)

data class MascotStageArchive(
    val currentStage: MascotStage,
    val highestReachedStage: MascotStage,
    val entries: List<MascotStageArchiveEntry>
)
