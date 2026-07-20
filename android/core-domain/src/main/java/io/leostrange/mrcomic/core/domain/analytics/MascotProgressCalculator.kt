package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.model.Comic

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

fun calculateMascotProgress(comics: List<Comic>): MascotProgressState {
    val approxPagesRead = comics.sumOf { comic -> approximateReadPages(comic) }
    val completedTitles = comics.count { comic -> comic.isCompleted }
    val xp = approxPagesRead + completedTitles * TITLE_COMPLETE_XP

    val (stage, stageStartXp, nextStageXp) = when {
        xp < TEEN_STAGE_XP -> Triple(MascotStage.CHILD, 0, TEEN_STAGE_XP)
        xp < YOUNG_STAGE_XP -> Triple(MascotStage.TEEN, TEEN_STAGE_XP, YOUNG_STAGE_XP)
        xp < ADULT_STAGE_XP -> Triple(MascotStage.YOUNG, YOUNG_STAGE_XP, ADULT_STAGE_XP)
        else -> Triple(MascotStage.ADULT, ADULT_STAGE_XP, null)
    }

    val stageProgress = when (nextStageXp) {
        null -> 1f
        else -> ((xp - stageStartXp).toFloat() / (nextStageXp - stageStartXp).toFloat()).coerceIn(0f, 1f)
    }

    return MascotProgressState(
        approxPagesRead = approxPagesRead,
        completedTitles = completedTitles,
        xp = xp,
        stage = stage,
        stageStartXp = stageStartXp,
        nextStageXp = nextStageXp,
        stageProgress = stageProgress
    )
}

fun mascotStageFromName(name: String?): MascotStage = when (name) {
    MascotStage.TEEN.name -> MascotStage.TEEN
    MascotStage.YOUNG.name -> MascotStage.YOUNG
    MascotStage.ADULT.name -> MascotStage.ADULT
    else -> MascotStage.CHILD
}

fun resolveMascotStagePreview(
    currentStage: MascotStage,
    acknowledgedStageName: String?,
    enabled: Boolean = true
): MascotStage? {
    if (!enabled) return null
    val acknowledgedStage = mascotStageFromName(acknowledgedStageName)
    return currentStage.takeIf { stage ->
        stage.ordinal > acknowledgedStage.ordinal
    }
}

fun mascotStageUnlockXp(stage: MascotStage): Int = when (stage) {
    MascotStage.CHILD -> 0
    MascotStage.TEEN -> TEEN_STAGE_XP
    MascotStage.YOUNG -> YOUNG_STAGE_XP
    MascotStage.ADULT -> ADULT_STAGE_XP
}

fun resolveMascotStageTimeline(progress: MascotProgressState): MascotStageTimeline {
    val stages = listOf(
        MascotStage.CHILD,
        MascotStage.TEEN,
        MascotStage.YOUNG,
        MascotStage.ADULT
    )
    val entries = stages.map { stage ->
        MascotStageTimelineEntry(
            stage = stage,
            unlockXp = mascotStageUnlockXp(stage),
            isCompleted = mascotStageUnlockXp(stage) < progress.stageStartXp,
            isCurrent = progress.stage == stage,
            isUpcoming = mascotStageUnlockXp(stage) > progress.stageStartXp
        )
    }
    return MascotStageTimeline(
        currentXp = progress.xp,
        currentStage = progress.stage,
        stageStartXp = progress.stageStartXp,
        nextStageXp = progress.nextStageXp,
        xpToNextStage = progress.nextStageXp?.let { nextXp ->
            (nextXp - progress.xp).coerceAtLeast(0)
        },
        isMaxStage = progress.nextStageXp == null,
        entries = entries
    )
}

fun resolveMascotStageArchive(
    progress: MascotProgressState,
    acknowledgedStageName: String?
): MascotStageArchive {
    val acknowledgedStage = mascotStageFromName(acknowledgedStageName)
    val highestReachedStage = if (acknowledgedStage.ordinal > progress.stage.ordinal) {
        acknowledgedStage
    } else {
        progress.stage
    }
    val entries = MascotStage.entries
        .filter { stage -> stage.ordinal <= highestReachedStage.ordinal }
        .map { stage ->
            MascotStageArchiveEntry(
                stage = stage,
                unlockXp = mascotStageUnlockXp(stage),
                isCurrent = stage == progress.stage,
                isHighestReached = stage == highestReachedStage
            )
        }
    return MascotStageArchive(
        currentStage = progress.stage,
        highestReachedStage = highestReachedStage,
        entries = entries
    )
}

private fun approximateReadPages(comic: Comic): Int = when {
    comic.isCompleted && comic.pageCount > 0 -> comic.pageCount
    comic.isCompleted -> maxOf(comic.currentPage + 1, 1)
    comic.readingProgress <= 0f && comic.currentPage <= 0 && comic.lastReadDate == null -> 0
    comic.pageCount > 0 -> (comic.currentPage + 1).coerceIn(1, comic.pageCount)
    else -> maxOf(comic.currentPage + 1, 1)
}

private const val TITLE_COMPLETE_XP = 60
private const val TEEN_STAGE_XP = 200
private const val YOUNG_STAGE_XP = 700
private const val ADULT_STAGE_XP = 1600
