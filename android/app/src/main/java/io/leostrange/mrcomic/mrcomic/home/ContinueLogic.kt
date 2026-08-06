package io.leostrange.mrcomic.home

import androidx.compose.material3.Text
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodHeadline
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.ui.ContinueScreenText
import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
import java.util.TimeZone

internal fun visibleCheckpointTrail(
    trail: List<ReaderCheckpoint>,
    libraryComicIds: Set<String>,
    activeComicIds: Set<String>
): List<ReaderCheckpoint> {
    return trail
        .filter { checkpoint -> checkpoint.comicId in libraryComicIds && checkpoint.comicId in activeComicIds }
        .take(3)
}

internal fun shouldShowContinueCheckpointChip(
    hasReturnPrompt: Boolean,
    checkpointTrail: List<ReaderCheckpoint>,
    mascotRecapEnabled: Boolean,
    hasLibraryContent: Boolean
): Boolean = !hasReturnPrompt && mascotRecapEnabled && hasLibraryContent && checkpointTrail.isNotEmpty()

internal fun shouldShowContinueReturnCard(
    continueReading: Comic?,
    returnPrompt: ContinueReturnPrompt?
): Boolean = returnPrompt != null && returnPrompt.comicId != continueReading?.id

internal fun dedupeContinueCheckpointTrail(
    checkpointTrail: List<ReaderCheckpoint>,
    continueReading: Comic?
): List<ReaderCheckpoint> {
    val continueComicId = continueReading?.id ?: return checkpointTrail
    return checkpointTrail.filterNot { checkpoint -> checkpoint.comicId == continueComicId }
}

internal fun shouldShowContinueWeeklyPlanChip(
    goalState: DailyReadingGoalState,
    hasReturnPrompt: Boolean,
    hasLibraryContent: Boolean
): Boolean {
    if (!hasLibraryContent || !goalState.enabled || hasReturnPrompt) return false
    return goalState.pagesReadThisWeek > 0 ||
        goalState.completedDaysThisWeek > 0 ||
        goalState.isWeeklyPlanCompleted
}

internal fun shouldShowContinueReadingCalendarStrip(
    goalState: DailyReadingGoalState,
    hasReturnPrompt: Boolean,
    hasStagePreview: Boolean,
    hasLibraryContent: Boolean
): Boolean {
    if (!hasLibraryContent || !goalState.enabled || hasReturnPrompt || hasStagePreview) return false
    return goalState.recentActivity.any { day ->
        day.pagesRead > 0 || day.goalCompleted || day.minutesRead > 0 || day.completedCheckpoints > 0
    } || goalState.pagesReadToday > 0 ||
        goalState.pagesReadThisWeek > 0 ||
        goalState.currentStreak > 0 ||
        goalState.isWeeklyPlanCompleted
}

internal fun shouldShowContinueStagePreview(
    hasLibraryContent: Boolean,
    hasReturnPrompt: Boolean,
    stagePreview: MascotStage?
): Boolean = hasLibraryContent && stagePreview != null && !hasReturnPrompt

internal fun resolveContinueCompanionPresentation(
    text: ContinueScreenText,
    language: String,
    mascotUiEnabled: Boolean,
    mascotState: MrComicMascotState,
    recentTitle: String?
): ContinueCompanionPresentation {
    return if (mascotUiEnabled) {
        ContinueCompanionPresentation(
            title = text.mascotTitle,
            hint = mrComicMascotMoodHeadline(
                language = language,
                mood = mascotState.mood,
                recentTitle = recentTitle
            ),
            showMascot = true
        )
    } else {
        ContinueCompanionPresentation(
            title = text.progressTitle,
            hint = text.progressNeutralHint,
            showMascot = false
        )
    }
}

internal fun resolveContinueReturnPrompt(
    goalState: DailyReadingGoalState,
    continueReading: Comic?,
    checkpointTrail: List<ReaderCheckpoint>,
    currentDayKey: String = currentContinueDayKey()
): ContinueReturnPrompt? {
    val lastActivityDayKey = latestMeaningfulReadingDayKey(goalState) ?: return null
    val daysAway = continueReadingDayGap(
        currentDayKey = currentDayKey,
        lastActivityDayKey = lastActivityDayKey
    ) ?: return null
    if (daysAway !in 2..4) return null

    continueReading?.let { comic ->
        return ContinueReturnPrompt(
            daysAway = daysAway,
            comicId = comic.id,
            page = null,
            targetTitle = comic.title,
            usesCheckpoint = false
        )
    }

    checkpointTrail.firstOrNull()?.let { checkpoint ->
        return ContinueReturnPrompt(
            daysAway = daysAway,
            comicId = checkpoint.comicId,
            page = checkpoint.page,
            targetTitle = checkpoint.comicTitle,
            usesCheckpoint = true
        )
    }

    return null
}

internal fun resolveContinueReturnSupportTone(
    goalState: DailyReadingGoalState
): ContinueReturnSupportTone = when {
    !goalState.enabled -> ContinueReturnSupportTone.QUIET
    goalState.isWeeklyPlanCompleted -> ContinueReturnSupportTone.WEEKLY_DONE
    goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        goalState.graceEnabled &&
        goalState.graceDaysRemainingThisWeek == 0 -> ContinueReturnSupportTone.GRACE_SPENT
    goalState.streakEnabled && goalState.currentStreak > 0 -> ContinueReturnSupportTone.STREAK_LIVE
    else -> ContinueReturnSupportTone.WEEKLY
}

internal fun latestMeaningfulReadingDayKey(goalState: DailyReadingGoalState): String? {
    return (goalState.historyActivity + goalState.recentActivity)
        .distinctBy { it.dayKey }
        .sortedBy { it.dayKey }
        .lastOrNull { day ->
            day.pagesRead > 0 ||
                day.minutesRead > 0 ||
                day.completedCheckpoints > 0 ||
                day.xpEarned > 0
        }
        ?.dayKey
}

internal fun continueReadingDayGap(
    currentDayKey: String,
    lastActivityDayKey: String,
    timeZone: TimeZone = TimeZone.getDefault()
): Int? {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
        isLenient = false
        this.timeZone = timeZone
    }
    val currentMillis = runCatching { formatter.parse(currentDayKey)?.time }.getOrNull() ?: return null
    val lastMillis = runCatching { formatter.parse(lastActivityDayKey)?.time }.getOrNull() ?: return null
    val dayGap = ((currentMillis - lastMillis) / 86_400_000L).toInt()
    return dayGap.takeIf { it >= 0 }
}

internal fun continueReturnTitle(language: String, daysAway: Int): String = when (language) {
    "en" -> "Back after $daysAway day${if (daysAway == 1) "" else "s"}"
    "ja" -> "${daysAway} 日ぶりに戻る"
    "zh" -> "离开 ${daysAway} 天后回来"
    "ko" -> "${daysAway}일 만에 돌아옴"
    else -> "Возвращение через ${daysAway} дн."
}

internal fun continueReturnHint(
    language: String,
    targetTitle: String,
    daysAway: Int,
    usesCheckpoint: Boolean,
    showMascot: Boolean
): String = when (language) {
    "en" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic kept the last checkpoint in \"$targetTitle\" warm while you were away for $daysAway days."
        } else {
            "Mr.Comic kept \"$targetTitle\" ready while you were away for $daysAway days."
        }
    } else {
        if (usesCheckpoint) {
            "\"$targetTitle\" is ready to resume from the last checkpoint after a ${daysAway}-day pause."
        } else {
            "\"$targetTitle\" is ready to resume after a ${daysAway}-day pause."
        }
    }
    "ja" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic は ${daysAway} 日の不在のあいだ、「$targetTitle」の最後の区切りを保っていました。"
        } else {
            "Mr.Comic は ${daysAway} 日の不在のあいだ、「$targetTitle」をそのまま待機させていました。"
        }
    } else {
        if (usesCheckpoint) {
            "「$targetTitle」は ${daysAway} 日の間をあけても、最後の区切りからそのまま再開できます。"
        } else {
            "「$targetTitle」は ${daysAway} 日あいても、そのまま再開できる状態です。"
        }
    }
    "zh" -> if (showMascot) {
        if (usesCheckpoint) {
            "这 ${daysAway} 天里，Mr.Comic 一直替你保留着《$targetTitle》的上一个节点。"
        } else {
            "这 ${daysAway} 天里，Mr.Comic 一直把《$targetTitle》留在可继续的位置。"
        }
    } else {
        if (usesCheckpoint) {
            "《$targetTitle》可以在停了 ${daysAway} 天之后，直接从上一个节点继续。"
        } else {
            "《$targetTitle》在停了 ${daysAway} 天之后，仍然可以直接继续。"
        }
    }
    "ko" -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic 이 ${daysAway}일 동안 \"$targetTitle\" 의 마지막 체크포인트를 그대로 지켜 두었습니다."
        } else {
            "Mr.Comic 이 ${daysAway}일 동안 \"$targetTitle\" 을 바로 이어 읽을 수 있게 붙들고 있었습니다."
        }
    } else {
        if (usesCheckpoint) {
            "\"$targetTitle\" 은 ${daysAway}일 쉬어도 마지막 체크포인트에서 바로 다시 이어갈 수 있습니다."
        } else {
            "\"$targetTitle\" 은 ${daysAway}일 쉬어도 바로 다시 이어갈 수 있습니다."
        }
    }
    else -> if (showMascot) {
        if (usesCheckpoint) {
            "Mr.Comic держал последнюю точку в «$targetTitle», пока чтение стояло ${daysAway} дн."
        } else {
            "Mr.Comic сохранил живой маршрут к «$targetTitle», пока чтение стояло ${daysAway} дн."
        }
    } else {
        if (usesCheckpoint) {
            "«$targetTitle» готов продолжиться с последней точки после паузы в ${daysAway} дн."
        } else {
            "«$targetTitle» готов снова продолжиться после паузы в ${daysAway} дн."
        }
    }
}

internal fun continueReturnSupportText(
    language: String,
    tone: ContinueReturnSupportTone,
    goalState: DailyReadingGoalState
): String = when (tone) {
    ContinueReturnSupportTone.QUIET -> when (language) {
        "en" -> "Quiet return: just pick the trail back up without extra mascot prompting."
        "ja" -> "静かな復帰です。余計な演出なしで、そのまま読書の流れに戻れます。"
        "zh" -> "这是一次安静的回归，不需要额外提示，直接把阅读线接上就好。"
        "ko" -> "조용한 복귀입니다. 추가 연출 없이 읽기 흐름만 다시 이어가면 됩니다."
        else -> "Тихое возвращение: просто подхвати маршрут обратно без лишних подсказок."
    }
    ContinueReturnSupportTone.WEEKLY -> when (language) {
        "en" -> "This return feeds the weekly plan right away: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} pages."
        "ja" -> "この復帰はそのまま今週の計画につながります: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}ページ。"
        "zh" -> "这次回来会直接继续周计划：${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} 页。"
        "ko" -> "이번 복귀는 곧바로 이번 주 계획으로 이어집니다: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}페이지."
        else -> "Это возвращение сразу идёт в недельный план: ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} стр."
    }
    ContinueReturnSupportTone.STREAK_LIVE -> when (language) {
        "en" -> "The streak is still alive, so the safest return is through the same reading route."
        "ja" -> "ストリークはまだ生きています。いちばん安全なのは同じ読書ルートに戻ることです。"
        "zh" -> "连读还活着，所以最稳妥的回归方式就是接回同一条阅读路线。"
        "ko" -> "스트릭은 아직 살아 있습니다. 가장 안전한 복귀는 같은 읽기 경로로 돌아가는 것입니다."
        else -> "Серия ещё жива, так что самый безопасный возврат — через тот же маршрут чтения."
    }
    ContinueReturnSupportTone.GRACE_SPENT -> when (language) {
        "en" -> "Grace is already spent this week, so this return keeps the rhythm alive without a harsh reset."
        "ja" -> "今週の猶予はもう使っています。だからこの復帰はリズムを切らさず、強いリセットも避けます。"
        "zh" -> "本周宽限已经用掉了，所以这次回归最好稳稳接上节奏，不要硬性重置。"
        "ko" -> "이번 주 완충일은 이미 사용되었습니다. 그래서 이번 복귀는 리듬을 끊지 않는 쪽이 가장 안전합니다."
        else -> "Запасной день на этой неделе уже потрачен, так что этот возврат лучше держать мягким, без жёсткого сброса ритма."
    }
    ContinueReturnSupportTone.WEEKLY_DONE -> when (language) {
        "en" -> "The weekly plan is already safe, so this return can stay calm and low-pressure."
        "ja" -> "今週の計画はもう安全圏です。この復帰は落ち着いて、圧をかけずに続けられます。"
        "zh" -> "本周计划已经安全完成了，这次回来可以很平静，不需要额外压力。"
        "ko" -> "이번 주 계획은 이미 안전합니다. 이번 복귀는 차분하고 부담 없이 이어가면 됩니다."
        else -> "Недельный план уже в безопасности, так что это возвращение можно держать спокойным и без давления."
    }
}

private fun currentContinueDayKey(
    timeZone: TimeZone = TimeZone.getDefault()
): String = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
    this.timeZone = timeZone
}.format(Date())
