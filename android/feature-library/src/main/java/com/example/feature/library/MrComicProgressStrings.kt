package com.example.feature.library

import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.model.Comic
import com.example.core.model.displayReadingProgress
import java.text.SimpleDateFormat
import java.util.GregorianCalendar
import java.util.Locale
import java.util.TimeZone

/**
 * Mr.Comic progress screen data classes, localization, and helper logic.
 *
 * Extracted from MrComicProgressScreen to reduce its size.
 */

internal data class MrComicProgressText(
    val title: String,
    val summaryTitle: String,
    val summaryBody: (String, Int, Int, Int) -> String,
    val achievementsProgressTitle: String,
    val achievementsUnlocked: (Int, Int) -> String,
    val achievementsInProgress: (Int) -> String,
    val achievementsSecretUnlocked: String,
    val achievementsVisibleComplete: String,
    val nextUnlockTitle: String,
    val noNextUnlock: String,
    val rhythmTitle: String,
    val rhythmDisabled: String,
    val recentTitle: String,
    val recentEmpty: String,
    val openRecent: String,
    val goalPages: (Int, Int) -> String,
    val weekPages: (Int, Int, Int) -> String,
    val historyTitle: String,
    val historyEmpty: String,
    val historyWindow: (String, Int, Int) -> String,
    val historyPages: (Int) -> String,
    val historyXp: (Int) -> String,
    val historyMinutes: (Int) -> String,
    val historyCheckpoints: (Int) -> String,
    val historyActiveDays: (Int, Int) -> String,
    val highlightsTitle: String,
    val highlightsCompletedTitles: String,
    val highlightsCompletedTitlesValue: (Int) -> String,
    val highlightsBestStreak: String,
    val highlightsBestStreakValue: (Int) -> String,
    val highlightsBestWeek: String,
    val highlightsBestWeekValue: (Int) -> String,
    val highlightsBestWeekSupporting: (Int) -> String,
    val highlightsBestWeekEmpty: String,
    val historyRangeWeek: String,
    val historyRangeMonth: String,
    val historyRangeAll: String,
    val streakGraceTitle: String,
    val streakGraceDisabled: String,
    val streakGraceIdle: String,
    val streakGraceLive: String,
    val bestStreak: (Int) -> String,
    val streakGoalDays: (Int) -> String,
    val graceOff: String,
    val graceReady: String,
    val graceSpent: String,
    val streak: (Int) -> String,
    val grace: (Int) -> String,
    val pagesRead: (Int) -> String,
    val completedTitles: (Int) -> String
)

internal enum class MrComicProgressHistoryRange {
    LAST_7,
    LAST_30,
    ALL
}

internal data class MrComicProgressHistorySummary(
    val pagesRead: Int,
    val xpEarned: Int,
    val minutesRead: Int,
    val completedCheckpoints: Int,
    val activeDays: Int
)

internal data class MrComicProgressBestWeekSummary(
    val weekKey: String,
    val pagesRead: Int,
    val activeDays: Int,
    val completedCheckpoints: Int
)

internal enum class MrComicProgressStreakGraceState {
    DISABLED,
    IDLE,
    LIVE
}

internal enum class MrComicProgressRecentEmptyState {
    EMPTY_LIBRARY,
    SEARCH_RESULTS,
    GENERIC
}

internal fun mrComicProgressText(language: String): MrComicProgressText = when (language) {
    "en" -> MrComicProgressText(
        title = "Progress & Profile",
        summaryTitle = "Mr.Comic growth",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · achievements $unlocked/$total" },
        achievementsProgressTitle = "Achievements progress",
        achievementsUnlocked = { unlocked, total -> "Unlocked $unlocked / $total" },
        achievementsInProgress = { pending -> "$pending still in progress" },
        achievementsSecretUnlocked = "Secret unlocked",
        achievementsVisibleComplete = "The visible achievement set is complete. Secret unlocks stay outside the public next target.",
        nextUnlockTitle = "Next unlock",
        noNextUnlock = "Every visible achievement is already unlocked.",
        rhythmTitle = "Reading rhythm",
        rhythmDisabled = "Daily goal is off right now. Turn it on in settings if you want a calmer reading rhythm layer here.",
        recentTitle = "Recent reading",
        recentEmpty = "No recent reading trail yet.",
        openRecent = "Open",
        goalPages = { read, target -> "Today $read / $target pages" },
        weekPages = { read, target, days -> "Week $read / $target · goal days $days" },
        historyTitle = "Reading history",
        historyEmpty = "No recorded reading activity yet.",
        historyWindow = { range, activeDays, totalDays -> "$range · active days $activeDays of $totalDays" },
        historyPages = { pages -> "$pages pages" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes min" },
        historyCheckpoints = { checkpoints -> "$checkpoints checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays active" },
        highlightsTitle = "Best so far",
        highlightsCompletedTitles = "Completed titles",
        highlightsCompletedTitlesValue = { titles -> "$titles titles" },
        highlightsBestStreak = "Best streak",
        highlightsBestStreakValue = { days -> "$days days" },
        highlightsBestWeek = "Best week",
        highlightsBestWeekValue = { pages -> "$pages pages" },
        highlightsBestWeekSupporting = { activeDays -> "$activeDays active days" },
        highlightsBestWeekEmpty = "No week yet",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "All",
        streakGraceTitle = "Streak & grace",
        streakGraceDisabled = "Soft streak is off right now, so this section stays separate but idle until the goal layer comes back.",
        streakGraceIdle = "No live streak yet. The next reading day will start a new return chain.",
        streakGraceLive = "This chain stays separate from raw page history, so streak and grace remain easy to scan.",
        bestStreak = { days -> "Best $days" },
        streakGoalDays = { days -> "Goal days $days / 7" },
        graceOff = "Grace off",
        graceReady = "Grace ready",
        graceSpent = "Grace spent this week",
        streak = { days -> "Streak $days" },
        grace = { left -> "Grace left $left" },
        pagesRead = { pages -> "$pages pages read" },
        completedTitles = { titles -> "$titles titles completed" }
    )
    "ja" -> MrComicProgressText(
        title = "進捗とプロフィール",
        summaryTitle = "Mr.Comic の成長",
        summaryBody = { stage, xp, unlocked, total -> "$stage ・ $xp XP ・ 実績 $unlocked/$total" },
        achievementsProgressTitle = "実績の進捗",
        achievementsUnlocked = { unlocked, total -> "解除 $unlocked / $total" },
        achievementsInProgress = { pending -> "進行中 $pending 件" },
        achievementsSecretUnlocked = "シークレット解除済み",
        achievementsVisibleComplete = "見えている実績セットは完了です。シークレットは公開の次目標には出しません。",
        nextUnlockTitle = "次の解除",
        noNextUnlock = "表示中の実績はすべて解除済みです。",
        rhythmTitle = "読書リズム",
        rhythmDisabled = "いまはデイリー目標がオフです。ここで穏やかなリズムを見たいなら設定で有効化できます。",
        recentTitle = "最近の読書",
        recentEmpty = "まだ最近の読書トレイルはありません。",
        openRecent = "開く",
        goalPages = { read, target -> "今日 ${read} / ${target}ページ" },
        weekPages = { read, target, days -> "今週 ${read} / ${target} ・ 目標日 $days" },
        historyTitle = "読書ヒストリー",
        historyEmpty = "まだ記録された読書アクティビティはありません。",
        historyWindow = { range, activeDays, totalDays -> "$range ・ アクティブ日 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages ページ" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 分" },
        historyCheckpoints = { checkpoints -> "チェックポイント $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays / $totalDays アクティブ" },
        highlightsTitle = "これまでのハイライト",
        highlightsCompletedTitles = "完了作品",
        highlightsCompletedTitlesValue = { titles -> "$titles 作品" },
        highlightsBestStreak = "最高ストリーク",
        highlightsBestStreakValue = { days -> "$days 日" },
        highlightsBestWeek = "最高の週",
        highlightsBestWeekValue = { pages -> "$pages ページ" },
        highlightsBestWeekSupporting = { activeDays -> "アクティブ日 $activeDays" },
        highlightsBestWeekEmpty = "まだ週データなし",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "全期間",
        streakGraceTitle = "ストリークと猶予",
        streakGraceDisabled = "いまはソフトストリークがオフです。この区画は分けたまま、目標レイヤーが戻るまで静かに待機します。",
        streakGraceIdle = "まだ生きているストリークはありません。次の読書日から新しい戻りの連なりが始まります。",
        streakGraceLive = "この連なりは生のページ履歴とは分けてあるので、ストリークと猶予を素早く確認できます。",
        bestStreak = { days -> "ベスト $days" },
        streakGoalDays = { days -> "目標日 $days / 7" },
        graceOff = "猶予オフ",
        graceReady = "猶予あり",
        graceSpent = "今週の猶予を使用済み",
        streak = { days -> "連続 $days 日" },
        grace = { left -> "猶予あと $left" },
        pagesRead = { pages -> "$pages ページ読了" },
        completedTitles = { titles -> "$titles 作品完了" }
    )
    "zh" -> MrComicProgressText(
        title = "进度与档案",
        summaryTitle = "Mr.Comic 成长",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · 成就 $unlocked/$total" },
        achievementsProgressTitle = "成就进度",
        achievementsUnlocked = { unlocked, total -> "已解锁 $unlocked / $total" },
        achievementsInProgress = { pending -> "仍在推进 $pending 项" },
        achievementsSecretUnlocked = "隐藏成就已解锁",
        achievementsVisibleComplete = "当前可见成就集已经完成。隐藏成就不会作为公开的下一目标。",
        nextUnlockTitle = "下一项解锁",
        noNextUnlock = "当前可见成就已经全部解锁。",
        rhythmTitle = "阅读节奏",
        rhythmDisabled = "当前每日目标已关闭。如果想在这里看到更温和的阅读节奏，可以去设置里打开它。",
        recentTitle = "最近阅读",
        recentEmpty = "还没有最近阅读轨迹。",
        openRecent = "打开",
        goalPages = { read, target -> "今天 $read / $target 页" },
        weekPages = { read, target, days -> "本周 $read / $target · 达标日 $days" },
        historyTitle = "阅读历史",
        historyEmpty = "还没有记录到阅读活动。",
        historyWindow = { range, activeDays, totalDays -> "$range · 活跃日 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages 页" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 分钟" },
        historyCheckpoints = { checkpoints -> "$checkpoints 个检查点" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays 活跃" },
        highlightsTitle = "阶段亮点",
        highlightsCompletedTitles = "完成作品",
        highlightsCompletedTitlesValue = { titles -> "$titles 部" },
        highlightsBestStreak = "最佳连读",
        highlightsBestStreakValue = { days -> "$days 天" },
        highlightsBestWeek = "最佳一周",
        highlightsBestWeekValue = { pages -> "$pages 页" },
        highlightsBestWeekSupporting = { activeDays -> "$activeDays 个活跃日" },
        highlightsBestWeekEmpty = "还没有周数据",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "全部",
        streakGraceTitle = "连读与宽限",
        streakGraceDisabled = "柔性连读当前关闭，所以这个区块会继续独立显示，但会保持静止直到目标层重新开启。",
        streakGraceIdle = "现在还没有活跃连读。下一次跨天阅读就会重新拉起这条返回链。",
        streakGraceLive = "这条连读链和原始页数历史分开显示，所以连续阅读和宽限状态更容易单独看清。",
        bestStreak = { days -> "最佳 $days" },
        streakGoalDays = { days -> "达标日 $days / 7" },
        graceOff = "宽限关闭",
        graceReady = "宽限可用",
        graceSpent = "本周宽限已用",
        streak = { days -> "连续 $days 天" },
        grace = { left -> "剩余宽限 $left" },
        pagesRead = { pages -> "已读 $pages 页" },
        completedTitles = { titles -> "完成 $titles 部作品" }
    )
    "ko" -> MrComicProgressText(
        title = "진행 상황과 프로필",
        summaryTitle = "Mr.Comic 성장",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · 업적 $unlocked/$total" },
        achievementsProgressTitle = "업적 진행",
        achievementsUnlocked = { unlocked, total -> "해금 $unlocked / $total" },
        achievementsInProgress = { pending -> "진행 중 ${pending}개" },
        achievementsSecretUnlocked = "시크릿 해금됨",
        achievementsVisibleComplete = "보이는 업적 세트는 완료되었습니다. 시크릿 업적은 공개 다음 목표로 올리지 않습니다.",
        nextUnlockTitle = "다음 해금",
        noNextUnlock = "보이는 업적은 모두 이미 해금되었습니다.",
        rhythmTitle = "읽기 리듬",
        rhythmDisabled = "지금은 일일 목표가 꺼져 있습니다. 여기서 더 부드러운 읽기 리듬을 보려면 설정에서 켤 수 있습니다.",
        recentTitle = "최근 읽기",
        recentEmpty = "아직 최근 읽기 흔적이 없습니다.",
        openRecent = "열기",
        goalPages = { read, target -> "오늘 ${read} / ${target}페이지" },
        weekPages = { read, target, days -> "이번 주 ${read} / ${target} · 목표일 $days" },
        historyTitle = "읽기 기록",
        historyEmpty = "아직 기록된 읽기 활동이 없습니다.",
        historyWindow = { range, activeDays, totalDays -> "$range · 활동일 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages 페이지" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 분" },
        historyCheckpoints = { checkpoints -> "체크포인트 $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays 활동" },
        highlightsTitle = "누적 하이라이트",
        highlightsCompletedTitles = "완료 작품",
        highlightsCompletedTitlesValue = { titles -> "$titles 작품" },
        highlightsBestStreak = "최고 스트릭",
        highlightsBestStreakValue = { days -> "${days}일" },
        highlightsBestWeek = "최고의 주간",
        highlightsBestWeekValue = { pages -> "$pages 페이지" },
        highlightsBestWeekSupporting = { activeDays -> "활동일 $activeDays" },
        highlightsBestWeekEmpty = "아직 주간 데이터 없음",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "전체",
        streakGraceTitle = "스트릭과 완충일",
        streakGraceDisabled = "소프트 스트릭이 지금 꺼져 있어서, 이 구역은 분리된 채 목표 레이어가 돌아올 때까지 조용히 대기합니다.",
        streakGraceIdle = "아직 살아 있는 스트릭은 없습니다. 다음 읽기 날이 오면 새 복귀 흐름이 시작됩니다.",
        streakGraceLive = "이 흐름은 순수 페이지 기록과 분리되어 있어서 스트릭과 완충일 상태를 더 쉽게 읽을 수 있습니다.",
        bestStreak = { days -> "최고 $days" },
        streakGoalDays = { days -> "목표일 $days / 7" },
        graceOff = "완충일 꺼짐",
        graceReady = "완충일 준비됨",
        graceSpent = "이번 주 완충일 사용됨",
        streak = { days -> "연속 ${days}일" },
        grace = { left -> "유예 $left 남음" },
        pagesRead = { pages -> "$pages 페이지 읽음" },
        completedTitles = { titles -> "$titles 작품 완료" }
    )
    else -> MrComicProgressText(
        title = "Прогресс и профиль",
        summaryTitle = "Рост Mr.Comic",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · достижений $unlocked/$total" },
        achievementsProgressTitle = "Прогресс достижений",
        achievementsUnlocked = { unlocked, total -> "Открыто $unlocked / $total" },
        achievementsInProgress = { pending -> "В процессе ещё $pending" },
        achievementsSecretUnlocked = "Секрет открыт",
        achievementsVisibleComplete = "Видимый набор достижений уже закрыт. Секретные не становятся публичной следующей целью.",
        nextUnlockTitle = "Следующее открытие",
        noNextUnlock = "Все видимые достижения уже открыты.",
        rhythmTitle = "Ритм чтения",
        rhythmDisabled = "Дневная цель сейчас выключена. Если нужен спокойный слой ритма и здесь, его можно включить в настройках.",
        recentTitle = "Недавнее чтение",
        recentEmpty = "Пока нет живого следа недавнего чтения.",
        openRecent = "Открыть",
        goalPages = { read, target -> "Сегодня $read / $target стр." },
        weekPages = { read, target, days -> "Неделя $read / $target · дней с целью $days" },
        historyTitle = "История чтения",
        historyEmpty = "Пока нет записанной активности чтения.",
        historyWindow = { range, activeDays, totalDays -> "$range · активных дней $activeDays из $totalDays" },
        historyPages = { pages -> "$pages стр." },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes мин" },
        historyCheckpoints = { checkpoints -> "точек прогресса $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays активных" },
        highlightsTitle = "Лучшее за всё время",
        highlightsCompletedTitles = "Завершённые тайтлы",
        highlightsCompletedTitlesValue = { titles -> "$titles тайтлов" },
        highlightsBestStreak = "Лучший стрик",
        highlightsBestStreakValue = { days -> "$days дней" },
        highlightsBestWeek = "Лучшая неделя",
        highlightsBestWeekValue = { pages -> "$pages стр." },
        highlightsBestWeekSupporting = { activeDays -> "Активных дней $activeDays" },
        highlightsBestWeekEmpty = "Пока нет живой недели",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "Всё",
        streakGraceTitle = "Серия и запасной день",
        streakGraceDisabled = "Мягкая серия сейчас выключена, поэтому этот блок остаётся отдельно, но спокойно ждёт возвращения слоя целей.",
        streakGraceIdle = "Живой серии пока нет. Следующий день чтения поднимет новую цепочку возврата.",
        streakGraceLive = "Эта цепочка вынесена отдельно от сырой истории страниц, чтобы серию и запасной день было проще считывать отдельно.",
        bestStreak = { days -> "Лучшее $days" },
        streakGoalDays = { days -> "Дней с целью $days / 7" },
        graceOff = "Запасной день выкл.",
        graceReady = "Запасной день готов",
        graceSpent = "Запасной день уже потрачен на этой неделе",
        streak = { days -> "Стрик $days" },
        grace = { left -> "Запасных дней осталось $left" },
        pagesRead = { pages -> "Прочитано $pages стр." },
        completedTitles = { titles -> "Завершено $titles тайтлов" }
    )
}

internal fun mrComicRecentProgressText(language: String, comic: Comic): String {
    val percent = (comic.displayReadingProgress() * 100).toInt()
    return when (language) {
        "en" -> "Page ${comic.currentPage + 1} · $percent%"
        "ja" -> "${comic.currentPage + 1} ページ ・ $percent%"
        "zh" -> "第 ${comic.currentPage + 1} 页 · $percent%"
        "ko" -> "${comic.currentPage + 1}페이지 · $percent%"
        else -> "Страница ${comic.currentPage + 1} · $percent%"
    }
}

internal fun mrComicActivityDayLabel(language: String, dayKey: String): String {
    val day = dayKey.takeLast(2).toIntOrNull() ?: return dayKey.takeLast(2)
    return when (language) {
        "en" -> day.toString()
        "ja" -> "${day}日"
        "zh" -> "${day}日"
        "ko" -> "${day}일"
        else -> day.toString()
    }
}

internal fun shouldShowMrComicRhythmStreak(goalState: DailyReadingGoalState): Boolean =
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0

internal fun shouldShowMrComicRhythmGrace(goalState: DailyReadingGoalState): Boolean =
    shouldShowMrComicRhythmStreak(goalState) && goalState.graceEnabled

internal fun shouldShowMrComicProgressSearchContext(searchActive: Boolean): Boolean = searchActive

internal fun mrComicProgressRecentEmptyState(
    totalTitles: Int,
    searchActive: Boolean
): MrComicProgressRecentEmptyState = when {
    totalTitles <= 0 -> MrComicProgressRecentEmptyState.EMPTY_LIBRARY
    searchActive -> MrComicProgressRecentEmptyState.SEARCH_RESULTS
    else -> MrComicProgressRecentEmptyState.GENERIC
}

internal fun shouldShowMrComicStreakGracePills(goalState: DailyReadingGoalState): Boolean =
    goalState.enabled && goalState.streakEnabled

internal fun mrComicProgressStreakDays(
    goalState: DailyReadingGoalState
): List<DailyReadingCalendarDay> = goalState.recentActivity.takeLast(7)

internal fun shouldShowMrComicProgressHighlights(
    completedTitles: Int,
    bestStreak: Int,
    bestWeek: MrComicProgressBestWeekSummary?
): Boolean = completedTitles > 0 || bestStreak > 0 || bestWeek != null

internal fun mrComicProgressWeekKey(dayKey: String): String? {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
        isLenient = false
        timeZone = TimeZone.getTimeZone("UTC")
    }
    val parsedDate = formatter.parse(dayKey) ?: return null
    val calendar = GregorianCalendar(TimeZone.getTimeZone("UTC"), Locale.US).apply {
        firstDayOfWeek = java.util.Calendar.MONDAY
        minimalDaysInFirstWeek = 4
        time = parsedDate
    }
    return String.format(Locale.US, "%04d-W%02d", calendar.weekYear, calendar.get(java.util.Calendar.WEEK_OF_YEAR))
}

internal fun resolveMrComicProgressBestWeek(
    historyActivity: List<DailyReadingCalendarDay>,
    recentActivity: List<DailyReadingCalendarDay>
): MrComicProgressBestWeekSummary? {
    val sourceDays = historyActivity.ifEmpty { recentActivity }
    if (sourceDays.isEmpty()) return null

    return sourceDays
        .mapNotNull { day ->
            mrComicProgressWeekKey(day.dayKey)?.let { weekKey -> weekKey to day }
        }
        .groupBy(keySelector = { it.first }, valueTransform = { it.second })
        .map { (weekKey, weekDays) ->
            MrComicProgressBestWeekSummary(
                weekKey = weekKey,
                pagesRead = weekDays.sumOf { it.pagesRead },
                activeDays = weekDays.count { day ->
                    day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
                },
                completedCheckpoints = weekDays.sumOf { it.completedCheckpoints }
            )
        }
        .filter { summary ->
            summary.pagesRead > 0 || summary.activeDays > 0 || summary.completedCheckpoints > 0
        }
        .maxWithOrNull(
            compareBy<MrComicProgressBestWeekSummary>(
                { it.pagesRead },
                { it.activeDays },
                { it.completedCheckpoints },
                { it.weekKey }
            )
        )
}

internal fun isMrComicGraceSpentThisWeek(
    goalState: DailyReadingGoalState
): Boolean = goalState.enabled &&
    goalState.streakEnabled &&
    goalState.graceEnabled &&
    goalState.graceDaysRemainingThisWeek == 0

internal fun mrComicProgressStreakGraceStatusText(
    text: MrComicProgressText,
    goalState: DailyReadingGoalState
): String = when {
    !goalState.enabled -> text.streakGraceDisabled
    !goalState.streakEnabled -> text.streakGraceDisabled
    goalState.currentStreak > 0 -> text.streakGraceLive
    else -> text.streakGraceIdle
}

internal fun mrComicProgressHistoryDays(
    goalState: DailyReadingGoalState,
    range: MrComicProgressHistoryRange
): List<DailyReadingCalendarDay> = when (range) {
    MrComicProgressHistoryRange.LAST_7 -> goalState.recentActivity.ifEmpty {
        goalState.historyActivity.takeLast(7)
    }
    MrComicProgressHistoryRange.LAST_30 -> goalState.historyActivity.takeLast(30).ifEmpty {
        goalState.recentActivity
    }
    MrComicProgressHistoryRange.ALL -> goalState.historyActivity.ifEmpty {
        goalState.recentActivity
    }
}
