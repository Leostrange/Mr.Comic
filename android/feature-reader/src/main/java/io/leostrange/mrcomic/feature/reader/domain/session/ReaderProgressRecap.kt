package io.leostrange.mrcomic.feature.reader.domain.session

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderProgressRecapType

data class ReaderProgressRecap(
    val type: ReaderProgressRecapType,
    val comicId: String,
    val comicTitle: String,
    val chapterTitle: String? = null,
    val currentPage: Int,
    val totalPages: Int,
    val pagesDelta: Int,
    val xpAwarded: Int,
    val goalEnabled: Boolean,
    val pagesReadToday: Int,
    val targetPages: Int,
    val isDailyGoalComplete: Boolean,
    val pagesReadThisWeek: Int,
    val weeklyTargetPages: Int,
    val isWeeklyPlanComplete: Boolean,
    val streakEnabled: Boolean,
    val currentStreak: Int,
    val emittedAtMillis: Long = System.currentTimeMillis()
)
