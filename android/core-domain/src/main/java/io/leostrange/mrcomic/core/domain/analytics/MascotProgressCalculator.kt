package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.displayReadingProgress
import io.leostrange.mrcomic.core.model.MascotStage
import io.leostrange.mrcomic.core.model.MascotProgressState
import io.leostrange.mrcomic.core.model.MascotStageTimelineEntry
import io.leostrange.mrcomic.core.model.MascotStageTimeline
import io.leostrange.mrcomic.core.model.MascotStageArchiveEntry
import io.leostrange.mrcomic.core.model.MascotStageArchive
import javax.inject.Inject

/** Injectable facade for the pure mascot progress calculation. */
class MascotProgressCalculator @Inject constructor() {
    fun calculate(comics: List<Comic>): MascotProgressState = calculateMascotProgress(comics)
}

typealias MascotStage = io.leostrange.mrcomic.core.model.MascotStage
typealias MascotProgressState = io.leostrange.mrcomic.core.model.MascotProgressState
typealias MascotStageTimelineEntry = io.leostrange.mrcomic.core.model.MascotStageTimelineEntry
typealias MascotStageTimeline = io.leostrange.mrcomic.core.model.MascotStageTimeline
typealias MascotStageArchiveEntry = io.leostrange.mrcomic.core.model.MascotStageArchiveEntry
typealias MascotStageArchive = io.leostrange.mrcomic.core.model.MascotStageArchive

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
    comic.displayReadingProgress() <= 0f && comic.currentPage <= 0 && comic.lastReadDate == null -> 0
    comic.pageCount > 0 -> (comic.currentPage + 1).coerceIn(1, comic.pageCount)
    else -> maxOf(comic.currentPage + 1, 1)
}

private const val TITLE_COMPLETE_XP = 60
private const val TEEN_STAGE_XP = 200
private const val YOUNG_STAGE_XP = 700
private const val ADULT_STAGE_XP = 1600
