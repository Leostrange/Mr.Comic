package com.example.feature.library

import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MascotStageArchive
import com.example.core.domain.analytics.MascotStageArchiveEntry
import com.example.core.domain.analytics.MascotStage
import com.example.core.domain.analytics.MascotStageTimeline
import com.example.core.ui.mascot.mrComicMascotStageHint
import com.example.core.ui.mascot.mrComicMascotStageLabel
import com.example.core.ui.mascot.mrComicMascotStageShortLabel

internal fun mrComicSharedStageLabel(language: String, stage: MascotStage): String =
    mrComicMascotStageLabel(language, stage)

internal fun mrComicSharedStageShortLabel(language: String, stage: MascotStage): String =
    mrComicMascotStageShortLabel(language, stage)

internal fun mrComicSharedStageHint(language: String, progress: MascotProgressState): String =
    mrComicMascotStageHint(language, progress)

internal fun mrComicSharedStageNumber(stage: MascotStage): Int = when (stage) {
    MascotStage.CHILD -> 1
    MascotStage.TEEN -> 2
    MascotStage.YOUNG -> 3
    MascotStage.ADULT -> 4
}

internal fun mrComicSharedStageRunway(language: String, timeline: MascotStageTimeline): String = when {
    timeline.isMaxStage -> when (language) {
        "en" -> "Final stage locked in · ${timeline.currentXp} XP total"
        "ja" -> "最終段階で安定中 ・ 合計 ${timeline.currentXp} XP"
        "zh" -> "最终阶段已稳定 · 总计 ${timeline.currentXp} XP"
        "ko" -> "최종 단계 고정 · 총 ${timeline.currentXp} XP"
        else -> "Финальный этап закреплён · всего ${timeline.currentXp} XP"
    }

    else -> {
        val nextStage = timeline.entries.firstOrNull { it.isUpcoming }?.stage ?: timeline.currentStage
        val nextStageNumber = mrComicSharedStageNumber(nextStage)
        val xpToNext = timeline.xpToNextStage ?: 0
        when (language) {
            "en" -> "$xpToNext XP to Stage $nextStageNumber"
            "ja" -> "段階 $nextStageNumber まであと ${xpToNext} XP"
            "zh" -> "距离阶段 $nextStageNumber 还差 ${xpToNext} XP"
            "ko" -> "단계 $nextStageNumber 까지 ${xpToNext} XP 남음"
            else -> "До этапа $nextStageNumber осталось ${xpToNext} XP"
        }
    }
}

internal fun mrComicSharedStageArchiveTitle(language: String): String = when (language) {
    "en" -> "Stage archive"
    "ja" -> "段階アーカイブ"
    "zh" -> "阶段档案"
    "ko" -> "단계 아카이브"
    else -> "Архив этапов"
}

internal fun mrComicSharedStageArchiveSummary(
    language: String,
    archive: MascotStageArchive
): String {
    val reachedCount = archive.entries.size
    val totalStages = MascotStage.entries.size
    val highestStageNumber = mrComicSharedStageNumber(archive.highestReachedStage)
    return when (language) {
        "en" -> "Reached $reachedCount / $totalStages stages · highest Stage $highestStageNumber"
        "ja" -> "到達 $reachedCount / $totalStages 段階 ・ 最高 段階 $highestStageNumber"
        "zh" -> "已达到 $reachedCount / $totalStages 个阶段 · 最高阶段 $highestStageNumber"
        "ko" -> "$reachedCount / $totalStages 단계 도달 · 최고 단계 $highestStageNumber"
        else -> "Открыто $reachedCount / $totalStages этапов · максимум Этап $highestStageNumber"
    }
}

internal fun mrComicSharedStageArchiveStatus(
    language: String,
    entry: MascotStageArchiveEntry
): String = when {
    entry.isCurrent -> when (language) {
        "en" -> "Current"
        "ja" -> "現在"
        "zh" -> "当前"
        "ko" -> "현재"
        else -> "Текущий"
    }
    entry.isHighestReached -> when (language) {
        "en" -> "Highest reached"
        "ja" -> "最高到達"
        "zh" -> "最高到达"
        "ko" -> "최고 도달"
        else -> "Максимум"
    }
    else -> when (language) {
        "en" -> "Reached"
        "ja" -> "到達済み"
        "zh" -> "已到达"
        "ko" -> "도달"
        else -> "Открыт"
    }
}
