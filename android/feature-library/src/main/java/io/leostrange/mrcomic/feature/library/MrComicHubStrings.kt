package io.leostrange.mrcomic.feature.library

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale

/**
 * Mr.Comic hub, calendar, quick actions, and presence localization.
 *
 * Extracted from LibraryScreen to reduce its size.
 * Pure functions (except two @Composable color lookups).
 */

internal fun mrComicHubSubtitle(
    language: String,
    unlockedCount: Int,
    totalCount: Int,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "Mr.Comic is reading the current search slice. Visible unlocks: $unlockedCount of $totalCount."
        "ja" -> "Mr.Comic は現在の検索結果だけを見ています。表示中の解除: $unlockedCount / $totalCount。"
        "zh" -> "Mr.Comic 现在只在看当前搜索切片。当前可见解锁：$unlockedCount / $totalCount。"
        "ko" -> "Mr.Comic 은 지금 현재 검색 결과만 보고 있습니다. 현재 보이는 해제: $unlockedCount / $totalCount."
        else -> "Mr.Comic сейчас смотрит только на текущий поисковый срез. Видимых открытий: $unlockedCount из $totalCount."
    }
} else {
    when (language) {
        "en" -> "Your achievement shelf and mascot corner. Unlocked: $unlockedCount of $totalCount."
        "ja" -> "実績の棚とマスコットのコーナーです。解除済み: $unlockedCount / $totalCount。"
        "zh" -> "这里是你的成就陈列架和吉祥物角落。已解锁：$unlockedCount / $totalCount。"
        "ko" -> "업적 진열대와 마스코트 코너입니다. 해제: $unlockedCount / $totalCount."
        else -> "Здесь живут достижения и уголок Mr.Comic. Открыто: $unlockedCount из $totalCount."
    }
}

internal fun resolveMrComicHubAchievements(
    achievements: List<LibraryAchievement>,
    nextAchievement: LibraryAchievement?,
    maxItems: Int = 4
): List<LibraryAchievement> {
    val ordered = buildList {
        nextAchievement?.let(::add)
        achievements
            .filter { achievement -> achievement.id != nextAchievement?.id }
            .sortedWith(
                compareByDescending<LibraryAchievement> { it.isUnlocked }
                    .thenByDescending { it.progressFraction }
                    .thenBy { it.remainingSteps ?: Int.MAX_VALUE }
            )
            .forEach(::add)
    }
    return ordered.take(maxItems)
}

internal fun mrComicPresenceTitle(language: String): String = when (language) {
    "en" -> "Mr.Comic status"
    "ja" -> "Mr.Comic ステータス"
    "zh" -> "Mr.Comic 状态"
    "ko" -> "Mr.Comic 상태"
    else -> "Статус Mr.Comic"
}

internal fun mrComicPresenceText(
    language: String,
    totalTitles: Int,
    completedTitles: Int,
    quotesCount: Int,
    secretUnlocked: Boolean,
    goalState: DailyReadingGoalState,
    recentComic: Comic?
): String = when {
    totalTitles == 0 -> when (language) {
        "en" -> "Bring a few titles and this corner will turn into a proper reading hub."
        "ja" -> "作品が増えると、このコーナーはちゃんとした読書ハブになります。"
        "zh" -> "再添几部作品，这个角落就会变成真正的阅读中心。"
        "ko" -> "작품이 몇 권 더 모이면 이 코너가 제대로 된 읽기 허브가 됩니다."
        else -> "Добавь несколько тайтлов, и этот уголок превратится в полноценный читательский центр."
    }
    recentComic != null && recentComic.readingProgress in 0.05f..0.98f -> when (language) {
        "en" -> "You are mid-run on \"${recentComic.title}\". The shelf is already warmed up for the next session."
        "ja" -> "「${recentComic.title}」を読み進めています。次の読書セッションの準備はできています。"
        "zh" -> "你还在读《${recentComic.title}》，书架已经为下一次阅读准备好了。"
        "ko" -> "\"${recentComic.title}\" 을 계속 읽는 중입니다. 다음 세션을 위해 선반이 이미 준비되어 있습니다."
        else -> "Ты сейчас в середине «${recentComic.title}». Полка уже готова к следующей сессии."
    }
    completedTitles == totalTitles && totalTitles > 0 -> when (language) {
        "en" -> "Current shelf cleared. Time to pick the next title for Mr.Comic."
        "ja" -> "今の棚は読み切りました。次の作品を選ぶ番です。"
        "zh" -> "当前书架已经清空，该给 Mr.Comic 挑下一部作品了。"
        "ko" -> "현재 선반은 모두 읽었습니다. 이제 다음 작품을 고를 차례입니다."
        else -> "Текущая полка уже дочитана. Пора выбрать Mr.Comic следующий тайтл."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted -> when (language) {
        "en" -> "This week's plan is already secured, so Mr.Comic can keep the shelf calm instead of chasing urgency."
        "ja" -> "今週の計画はもう確保されています。Mr.Comic は急がず、落ち着いた棚の流れを保てます。"
        "zh" -> "这周计划已经稳住了，所以 Mr.Comic 不用追着紧迫感跑，只要把书架节奏托稳。"
        "ko" -> "이번 주 계획이 이미 확보돼서, Mr.Comic 은 급하게 밀지 않고 선반의 리듬을 차분히 유지할 수 있습니다."
        else -> "План на неделю уже зафиксирован, и Mr.Comic может держать полку спокойно, без гонки за срочностью."
    }
    goalState.streakEnabled && goalState.currentStreak >= 3 -> when (language) {
        "en" -> "The reading streak is holding, and Mr.Comic already feels that the shelf has a dependable rhythm."
        "ja" -> "読書の連なりが続いていて、Mr.Comic も棚に安定したリズムを感じています。"
        "zh" -> "阅读连贯性已经稳住了，Mr.Comic 也感觉这座书架开始有了稳定节奏。"
        "ko" -> "읽기 흐름이 이어지고 있어서, Mr.Comic 도 이 선반에 안정적인 리듬이 생겼다고 느끼고 있습니다."
        else -> "Читательская серия держится, и Mr.Comic уже чувствует, что у этой полки появился надёжный ритм."
    }
    secretUnlocked -> when (language) {
        "en" -> "Secret found. Mr.Comic noticed that you pay attention to the shelf."
        "ja" -> "隠し要素を見つけました。Mr.Comic はちゃんと気づいています。"
        "zh" -> "隐藏内容已经找到了。Mr.Comic 注意到你一直在认真照看这座书架。"
        "ko" -> "숨은 요소를 찾았습니다. Mr.Comic 이 선반을 꼼꼼히 보는 걸 알고 있습니다."
        else -> "Секрет найден. Mr.Comic заметил, что ты внимательно следишь за полкой."
    }
    quotesCount >= 3 -> when (language) {
        "en" -> "Your quote stash is growing. This hub is starting to feel lived-in."
        "ja" -> "引用コレクションが増えています。このハブらしさが出てきました。"
        "zh" -> "你的摘录正在变多，这个阅读中心已经开始有自己的气质了。"
        "ko" -> "문구 보관함이 자라고 있습니다. 이 허브가 점점 자기 색을 갖기 시작했습니다."
        else -> "Запас цитат растёт. Этот центр уже начинает чувствоваться живым."
    }
    else -> when (language) {
        "en" -> "The shelf is ready. A few more reading sessions will give Mr.Comic more to work with."
        "ja" -> "棚の準備はできています。あと数回読めば、Mr.Comic に見せるものが増えてきます。"
        "zh" -> "书架已经准备好了，再读几次，Mr.Comic 就会有更多内容可整理。"
        "ko" -> "선반은 준비됐습니다. 몇 번만 더 읽으면 Mr.Comic 이 다룰 내용이 더 많아집니다."
        else -> "Полка готова. Ещё несколько сессий чтения, и у Mr.Comic будет больше материала для этого центра."
    }
}

internal fun mrComicReadingRhythmText(
    language: String,
    goalState: DailyReadingGoalState
): String? = when {
    !goalState.enabled -> null
    goalState.isWeeklyPlanCompleted -> when (language) {
        "en" -> "Weekly plan ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} · goal days ${goalState.completedDaysThisWeek}/7"
        "ja" -> "今週 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}ページ ・ 達成日 ${goalState.completedDaysThisWeek}/7"
        "zh" -> "本周 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} 页 · 达标日 ${goalState.completedDaysThisWeek}/7"
        "ko" -> "이번 주 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}페이지 · 목표일 ${goalState.completedDaysThisWeek}/7"
        else -> "Неделя ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} стр. · дней с целью ${goalState.completedDaysThisWeek}/7"
    }
    goalState.streakEnabled && goalState.currentStreak > 0 -> when (language) {
        "en" -> "Soft streak ${goalState.currentStreak} · grace left ${goalState.graceDaysRemainingThisWeek}/1"
        "ja" -> "ソフトストリーク ${goalState.currentStreak} ・ 残り猶予 ${goalState.graceDaysRemainingThisWeek}/1"
        "zh" -> "柔性连读 ${goalState.currentStreak} · 本周宽限剩余 ${goalState.graceDaysRemainingThisWeek}/1"
        "ko" -> "소프트 스트릭 ${goalState.currentStreak} · 이번 주 완충일 ${goalState.graceDaysRemainingThisWeek}/1"
        else -> "Мягкая серия ${goalState.currentStreak} · запасной день на неделе ${goalState.graceDaysRemainingThisWeek}/1"
    }
    goalState.pagesReadToday > 0 || goalState.pagesReadThisWeek > 0 -> when (language) {
        "en" -> "Today ${goalState.pagesReadToday}/${goalState.targetPages} · week ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "ja" -> "今日 ${goalState.pagesReadToday}/${goalState.targetPages} ・ 今週 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "zh" -> "今日 ${goalState.pagesReadToday}/${goalState.targetPages} · 本周 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "ko" -> "오늘 ${goalState.pagesReadToday}/${goalState.targetPages} · 이번 주 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        else -> "Сегодня ${goalState.pagesReadToday}/${goalState.targetPages} · неделя ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
    }
    else -> when (language) {
        "en" -> "Weekly rhythm is ready as soon as the next reading session starts."
        "ja" -> "次の読書セッションが始まれば、週間リズムも動き出します。"
        "zh" -> "下一次阅读一开始，本周节奏就会启动。"
        "ko" -> "다음 읽기 세션이 시작되면 주간 리듬도 바로 움직입니다."
        else -> "Как только начнётся следующая сессия, недельный ритм тоже включится."
    }
}

internal fun mrComicReadingCalendarTitle(language: String): String = when (language) {
    "en" -> "Reading rhythm"
    "ja" -> "読書リズム"
    "zh" -> "阅读节奏"
    "ko" -> "읽기 리듬"
    else -> "Ритм чтения"
}

internal fun mrComicReadingCalendarSummaryText(
    language: String,
    activeDays: Int,
    goalDays: Int
): String = when (language) {
    "en" -> "$activeDays of 7 days had reading · goal days: $goalDays"
    "ja" -> "7日間で読んだ日: $activeDays ・ 目標達成日: $goalDays"
    "zh" -> "最近 7 天有 $activeDays 天在读 · 达标日：$goalDays"
    "ko" -> "최근 7일 중 읽은 날 ${activeDays}일 · 목표일 ${goalDays}일"
    else -> "За 7 дней чтение было в ${activeDays} днях · дней с целью: ${goalDays}"
}


internal fun mrComicReadingCalendarTone(goalState: DailyReadingGoalState): MrComicReadingCalendarTone = when {
    goalState.isWeeklyPlanCompleted -> MrComicReadingCalendarTone.WEEKLY_DONE
    goalState.isCompleted -> MrComicReadingCalendarTone.DAILY_DONE
    goalState.streakEnabled && goalState.currentStreak > 0 -> MrComicReadingCalendarTone.STREAK
    goalState.pagesReadToday > 0 || goalState.pagesReadThisWeek > 0 -> MrComicReadingCalendarTone.IN_MOTION
    else -> MrComicReadingCalendarTone.READY
}

@Composable
internal fun mrComicReadingCalendarToneContainerColor(
    tone: MrComicReadingCalendarTone
): Color = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
    MrComicReadingCalendarTone.DAILY_DONE -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
    MrComicReadingCalendarTone.STREAK -> MaterialTheme.colorScheme.tertiary.copy(alpha = 0.16f)
    MrComicReadingCalendarTone.IN_MOTION -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.1f)
    MrComicReadingCalendarTone.READY -> MaterialTheme.colorScheme.surfaceContainerHigh
}

@Composable
internal fun mrComicReadingCalendarToneContentColor(
    tone: MrComicReadingCalendarTone
): Color = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> MaterialTheme.colorScheme.primary
    MrComicReadingCalendarTone.DAILY_DONE -> MaterialTheme.colorScheme.secondary
    MrComicReadingCalendarTone.STREAK -> MaterialTheme.colorScheme.tertiary
    MrComicReadingCalendarTone.IN_MOTION -> MaterialTheme.colorScheme.secondary
    MrComicReadingCalendarTone.READY -> MaterialTheme.colorScheme.onSurfaceVariant
}

internal fun mrComicReadingCalendarToneLabel(
    language: String,
    tone: MrComicReadingCalendarTone
): String = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> when (language) {
        "en" -> "Week locked"
        "ja" -> "今週達成"
        "zh" -> "本周已锁定"
        "ko" -> "이번 주 확보"
        else -> "Неделя закрыта"
    }
    MrComicReadingCalendarTone.DAILY_DONE -> when (language) {
        "en" -> "Today safe"
        "ja" -> "今日達成"
        "zh" -> "今日稳住"
        "ko" -> "오늘 확보"
        else -> "День закрыт"
    }
    MrComicReadingCalendarTone.STREAK -> when (language) {
        "en" -> "Streak alive"
        "ja" -> "連続中"
        "zh" -> "连读进行中"
        "ko" -> "스트릭 유지"
        else -> "Серия жива"
    }
    MrComicReadingCalendarTone.IN_MOTION -> when (language) {
        "en" -> "In motion"
        "ja" -> "進行中"
        "zh" -> "已启动"
        "ko" -> "움직이는 중"
        else -> "В движении"
    }
    MrComicReadingCalendarTone.READY -> when (language) {
        "en" -> "Ready"
        "ja" -> "準備完了"
        "zh" -> "待开始"
        "ko" -> "준비됨"
        else -> "Готово"
    }
}

internal fun mrComicReadingCalendarStateText(
    language: String,
    tone: MrComicReadingCalendarTone,
    goalState: DailyReadingGoalState
): String = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> when (language) {
        "en" -> "The week is already secured, so the calendar can stay calm instead of chasing pages."
        "ja" -> "今週はもう確保されています。カレンダーはページを追わず、落ち着いていられます。"
        "zh" -> "这周已经稳住了，所以日历现在不用再追页数，只要保持节奏。"
        "ko" -> "이번 주는 이미 확보돼서, 이제 캘린더는 페이지를 쫓지 않고 리듬만 차분히 유지하면 됩니다."
        else -> "Эта неделя уже зафиксирована, и календарь может держаться спокойно, без погони за страницами."
    }
    MrComicReadingCalendarTone.DAILY_DONE -> when (language) {
        "en" -> "Today's goal is already closed. Any extra reading now goes straight into the weekly plan."
        "ja" -> "今日の目標はもう閉じています。この先の読書はそのまま週間プランに流れます。"
        "zh" -> "今天的目标已经完成，接下来的阅读会直接流入本周计划。"
        "ko" -> "오늘 목표는 이미 닫혔습니다. 이제부터의 읽기는 그대로 주간 계획으로 이어집니다."
        else -> "Цель на сегодня уже закрыта, и любое следующее чтение сразу идёт в недельный план."
    }
    MrComicReadingCalendarTone.STREAK -> when (language) {
        "en" -> "The streak is alive. One more soft reading touch is enough to keep the chain warm."
        "ja" -> "ストリークは続いています。やわらかな一回の読書で、この連なりを保てます。"
        "zh" -> "连读还活着，再来一次轻量阅读就足够把这条链保持温热。"
        "ko" -> "스트릭은 살아 있습니다. 가볍게 한 번 더 읽어 주면 이 흐름을 계속 따뜻하게 유지할 수 있습니다."
        else -> "Серия жива: одного мягкого возвращения к чтению достаточно, чтобы не рвать эту цепочку."
    }
    MrComicReadingCalendarTone.IN_MOTION -> when (language) {
        "en" -> "Today's rhythm is already moving. The calendar now just needs one more honest reading push."
        "ja" -> "今日のリズムはもう動いています。あとはもう一回、素直な読書を足すだけです。"
        "zh" -> "今天的节奏已经启动了，现在只差再补上一段正常阅读。"
        "ko" -> "오늘의 리듬은 이미 움직이고 있습니다. 이제 한 번만 더 자연스럽게 읽으면 됩니다."
        else -> "Сегодняшний ритм уже завёлся. Теперь календарю нужен ещё один честный шаг чтения."
    }
    MrComicReadingCalendarTone.READY -> when (language) {
        "en" -> "The week is ready to start. The first short session will wake up the whole strip."
        "ja" -> "今週の準備はできています。最初の短いセッションがこのリズム全体を動かします。"
        "zh" -> "这一周已经准备好了，第一小段阅读就会把整条节奏带起来。"
        "ko" -> "이번 주는 이미 준비돼 있습니다. 첫 짧은 세션이 이 리듬 스트립 전체를 깨울 겁니다."
        else -> "Неделя готова к старту. Первая короткая сессия сразу оживит всю эту полоску."
    }
}

internal fun mrComicReadingCalendarDayLabel(
    dayKey: String,
    appLanguage: String
): String {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    formatter.isLenient = false
    val date = runCatching { formatter.parse(dayKey) }.getOrNull() ?: return dayKey.takeLast(2)
    val calendar = Calendar.getInstance().apply { time = date }
    return when (appLanguage) {
        "ja" -> arrayOf("日", "月", "火", "水", "木", "金", "土")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "zh" -> arrayOf("日", "一", "二", "三", "四", "五", "六")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "ko" -> arrayOf("일", "월", "화", "수", "목", "금", "토")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "en" -> arrayOf("S", "M", "T", "W", "T", "F", "S")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        else -> arrayOf("Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
    }
}

internal fun mrComicReadingCalendarDayNumber(dayKey: String): String {
    return dayKey.takeLast(2).trimStart('0').ifBlank { "0" }
}

internal fun mrComicSearchContextTitle(language: String): String = when (language) {
    "en" -> "Search slice"
    "ja" -> "検索中の棚"
    "zh" -> "搜索切片"
    "ko" -> "검색 중인 선반"
    else -> "Срез поиска"
}

internal fun mrComicSearchContextText(language: String): String = when (language) {
    "en" -> "Mr.Comic is looking only at the current search results. Clear the query to get the full library mood."
    "ja" -> "Mr.Comic は現在の検索結果だけを見ています。クエリを消すとライブラリ全体の状態に戻ります。"
    "zh" -> "Mr.Comic 现在只在看当前搜索结果。清除查询后才会回到整座书库的状态。"
    "ko" -> "Mr.Comic 은 지금 현재 검색 결과만 보고 있습니다. 검색어를 지우면 전체 라이브러리 상태로 돌아갑니다."
    else -> "Mr.Comic сейчас смотрит только на текущую поисковую выборку. Очисти запрос, чтобы вернуться к состоянию всей библиотеки."
}

internal fun mrComicSearchNextStepText(language: String): String = when (language) {
    "en" -> "Next step: clear the search to see Mr.Comic's full shelf context again."
    "ja" -> "次の一歩: 検索をクリアして、Mr.Comic の全体コンテキストに戻ります。"
    "zh" -> "下一步：清除搜索，重新查看 Mr.Comic 的完整书架上下文。"
    "ko" -> "다음 단계: 검색을 지우고 Mr.Comic 의 전체 선반 컨텍스트로 돌아갑니다."
    else -> "Следующий шаг: очисти поиск, чтобы снова увидеть полный контекст полки Mr.Comic."
}

internal fun mrComicSearchSummaryCaption(language: String): String = when (language) {
    "en" -> "Current search snapshot"
    "ja" -> "現在の検索スナップショット"
    "zh" -> "当前搜索快照"
    "ko" -> "현재 검색 스냅샷"
    else -> "Текущий срез поиска"
}

internal fun mrComicAnalyticsTitle(language: String): String = when (language) {
    "en" -> "Analytics"
    "ja" -> "分析"
    "zh" -> "统计"
    "ko" -> "분석"
    else -> "Аналитика"
}

internal fun mrComicAnalyticsSummaryText(
    language: String,
    goalState: DailyReadingGoalState
): String = mrComicReadingRhythmText(language, goalState) ?: when (language) {
    "en" -> "The summary will become richer after the next reading session."
    "ja" -> "次の読書セッションから、このサマリーはもっと育っていきます。"
    "zh" -> "下一次阅读之后，这里的统计会更丰富。"
    "ko" -> "다음 읽기 세션이 지나면 이 요약이 더 풍성해집니다."
    else -> "После следующей сессии чтения эта сводка станет богаче."
}

internal fun mrComicSectionHintText(language: String): String = when (language) {
    "en" -> "This hub now keeps mascot context and progress summary together. Future companion features can grow here without crowding the main library."
    "ja" -> "このハブにマスコットまわりと進捗サマリーを集約しました。今後の companion 機能もメインのライブラリを圧迫せず、ここで拡張できます。"
    "zh" -> "这个中心现在集中展示吉祥物区域和阅读摘要。后续陪伴功能也可以继续放在这里，而不挤占主书库。"
    "ko" -> "이 허브에는 마스코트 영역과 진행 요약이 함께 모입니다. 앞으로의 companion 기능도 메인 라이브러리를 어지럽히지 않고 여기서 확장할 수 있습니다."
    else -> "Этот hub теперь собирает место для маскота и сводку по чтению. Дальше companion-фичи можно наращивать здесь, не перегружая основную библиотеку."
}

internal fun mrComicProgressEntryHintText(language: String): String = when (language) {
    "en" -> "Open the full progress profile to see Mr.Comic growth, reading rhythm, recent trail and the next unlock together."
    "ja" -> "フルの進捗プロフィールを開くと、Mr.Comic の成長、読書リズム、最近のトレイル、次の解除をまとめて見られます。"
    "zh" -> "打开完整进度档案后，可以一起查看 Mr.Comic 的成长、阅读节奏、最近轨迹和下一项解锁。"
    "ko" -> "전체 진행 프로필을 열면 Mr.Comic 성장, 읽기 리듬, 최근 흔적, 다음 해금을 한곳에서 볼 수 있습니다."
    else -> "Открой полный профиль прогресса: там вместе живут рост Mr.Comic, ритм чтения, недавний след и следующее открытие."
}

internal fun mrComicProgressEntryCtaLabel(language: String): String = when (language) {
    "en" -> "Open progress"
    "ja" -> "進捗を開く"
    "zh" -> "打开进度"
    "ko" -> "진행 열기"
    else -> "Открыть прогресс"
}

internal fun mrComicQuickActionsTitle(language: String): String = when (language) {
    "en" -> "Quick actions"
    "ja" -> "クイックアクション"
    "zh" -> "快捷操作"
    "ko" -> "빠른 동작"
    else -> "Быстрые действия"
}

internal fun mrComicPrimaryQuickAction(
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState
): MrComicQuickAction = when {
    totalTitles == 0 -> MrComicQuickAction.FILES
    goalState.enabled &&
        !goalState.isCompleted &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    goalState.enabled &&
        goalState.isCompleted &&
        !goalState.isWeeklyPlanCompleted &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    goalState.enabled &&
        goalState.isWeeklyPlanCompleted &&
        quotesCount > 0 -> MrComicQuickAction.QUOTES
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    bookmarkedTitles <= 0 && quotesCount <= 0 -> MrComicQuickAction.FILES
    bookmarkedTitles >= quotesCount -> MrComicQuickAction.BOOKMARKS
    else -> MrComicQuickAction.QUOTES
}

internal fun mrComicNextStepRoute(
    hasRecent: Boolean,
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState
): MrComicNextStepRoute = when {
    totalTitles == 0 -> MrComicNextStepRoute.FILES
    hasRecent -> MrComicNextStepRoute.RECENT
    else -> when (mrComicPrimaryQuickAction(totalTitles, bookmarkedTitles, quotesCount, goalState)) {
        MrComicQuickAction.FILES -> MrComicNextStepRoute.FILES
        MrComicQuickAction.BOOKMARKS -> if (bookmarkedTitles > 0) {
            MrComicNextStepRoute.BOOKMARKS
        } else if (quotesCount > 0) {
            MrComicNextStepRoute.QUOTES
        } else {
            MrComicNextStepRoute.FILES
        }
        MrComicQuickAction.QUOTES -> if (quotesCount > 0) {
            MrComicNextStepRoute.QUOTES
        } else if (bookmarkedTitles > 0) {
            MrComicNextStepRoute.BOOKMARKS
        } else {
            MrComicNextStepRoute.FILES
        }
    }
}

internal fun mrComicQuickActionHandler(
    action: MrComicQuickAction,
    onOpenFiles: () -> Unit,
    onOpenBookmarks: () -> Unit,
    onOpenQuotes: () -> Unit
): () -> Unit = when (action) {
    MrComicQuickAction.FILES -> onOpenFiles
    MrComicQuickAction.BOOKMARKS -> onOpenBookmarks
    MrComicQuickAction.QUOTES -> onOpenQuotes
}

internal fun mrComicQuickActionIcon(action: MrComicQuickAction): ImageVector = when (action) {
    MrComicQuickAction.FILES -> Icons.AutoMirrored.Filled.InsertDriveFile
    MrComicQuickAction.BOOKMARKS -> Icons.Default.Bookmark
    MrComicQuickAction.QUOTES -> Icons.AutoMirrored.Filled.MenuBook
}

internal fun mrComicQuickActionLabel(
    action: MrComicQuickAction,
    filesLabel: String,
    bookmarksLabel: String,
    quotesLabel: String,
    bookmarkedTitles: Int,
    quotesCount: Int
): String = when (action) {
    MrComicQuickAction.FILES -> filesLabel
    MrComicQuickAction.BOOKMARKS -> "$bookmarksLabel · $bookmarkedTitles"
    MrComicQuickAction.QUOTES -> "$quotesLabel · $quotesCount"
}

internal fun mrComicQuickActionsText(
    language: String,
    searchActive: Boolean,
    hasRecent: Boolean,
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState,
    primaryAction: MrComicQuickAction
): String = when {
    searchActive -> when (language) {
        "en" -> "The current search slice is active. Jump to the right section without leaving this hub."
        "ja" -> "現在は検索中のスライスです。このハブから必要なセクションへすぐ移動できます。"
        "zh" -> "当前正在查看搜索切片。可以直接从这里跳到需要的分区。"
        "ko" -> "현재는 검색 중인 슬라이스입니다. 이 허브에서 바로 필요한 섹션으로 이동할 수 있습니다."
        else -> "Сейчас открыт поисковый срез. Отсюда можно сразу перейти в нужный раздел."
    }
    totalTitles == 0 -> when (language) {
        "en" -> "Start with Files. As soon as the shelf appears, Mr.Comic will have somewhere to guide you next."
        "ja" -> "まずはファイルから始めましょう。棚ができれば、Mr.Comic も次の導線を作れます。"
        "zh" -> "先从文件区开始。书架一出现，Mr.Comic 就能继续为你指路。"
        "ko" -> "먼저 파일에서 시작하세요. 선반이 생기면 Mr.Comic 도 다음 동선을 잡을 수 있습니다."
        else -> "Начни с раздела файлов. Как только появится полка, Mr.Comic сможет вести дальше."
    }
    goalState.enabled &&
        !goalState.isCompleted &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "Today's goal is still open, so Mr.Comic lifts the fastest saved return route through bookmarks."
        "ja" -> "今日の目標はまだ開いているので、Mr.Comic はブックマークから最短の戻り道を前に出します。"
        "zh" -> "今天的目标还没收口，所以 Mr.Comic 会先把书签里的最快回跳路线顶上来。"
        "ko" -> "오늘 목표가 아직 열려 있어서, Mr.Comic 이 북마크 쪽의 가장 빠른 복귀 경로를 먼저 올립니다."
        else -> "Дневная цель ещё открыта, поэтому Mr.Comic поднимает самый быстрый путь возврата через закладки."
    }
    goalState.enabled &&
        goalState.isCompleted &&
        !goalState.isWeeklyPlanCompleted &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "Today's goal is already safe, so bookmarks become the easiest way to carry the same rhythm into the weekly plan."
        "ja" -> "今日の目標はもう安全圏なので、同じリズムを週間プランへ運ぶ最短ルートはブックマークです。"
        "zh" -> "今天的目标已经稳住了，书签就成了把同样节奏继续推向周计划的最省力路线。"
        "ko" -> "오늘 목표는 이미 확보됐으니, 같은 리듬을 주간 계획으로 이어 가는 가장 쉬운 길은 북마크입니다."
        else -> "Дневная цель уже закрыта, и закладки становятся самым лёгким способом протянуть тот же ритм в недельный план."
    }
    goalState.enabled &&
        goalState.isWeeklyPlanCompleted &&
        primaryAction == MrComicQuickAction.QUOTES &&
        quotesCount > 0 -> when (language) {
        "en" -> "The weekly plan is already closed, so Mr.Comic can move the warmer quote route to the front."
        "ja" -> "週間プランはもう閉じているので、Mr.Comic はより柔らかい引用ルートを前に出せます。"
        "zh" -> "周计划已经完成，所以 Mr.Comic 可以把更柔和的摘录路线提到前面。"
        "ko" -> "주간 계획이 이미 닫혀 있어서, Mr.Comic 이 더 부드러운 문구 경로를 앞으로 올릴 수 있습니다."
        else -> "Недельный план уже закрыт, и Mr.Comic может выдвинуть вперёд более мягкий маршрут через цитаты."
    }
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "The streak is alive, so bookmarks stay first as the cleanest way to keep the reading chain unbroken."
        "ja" -> "ストリークが続いているので、読書の連なりを切らさない最短ルートとしてブックマークが先頭に残ります。"
        "zh" -> "连读还在继续，所以书签会留在最前面，作为不断链的最干净入口。"
        "ko" -> "스트릭이 살아 있어서, 읽기 흐름을 끊지 않는 가장 깔끔한 입구로 북마크가 앞에 남습니다."
        else -> "Серия держится, поэтому закладки остаются первыми как самый чистый способ не рвать цепочку чтения."
    }
    primaryAction == MrComicQuickAction.BOOKMARKS && bookmarkedTitles > 0 -> when (language) {
        "en" -> "Bookmarks already hold your strongest saved route. Mr.Comic brings that path forward first."
        "ja" -> "いま一番強い保存ルートはブックマークです。Mr.Comic はまずそこを前に出します。"
        "zh" -> "书签已经是现在最稳的回跳路线，所以 Mr.Comic 先把它放在前面。"
        "ko" -> "지금 가장 탄탄한 저장 경로는 북마크입니다. Mr.Comic 이 먼저 그 길을 앞으로 올립니다."
        else -> "Сейчас самый живой сохранённый маршрут лежит в закладках, поэтому Mr.Comic выдвигает его первым."
    }
    primaryAction == MrComicQuickAction.QUOTES && quotesCount > 0 -> when (language) {
        "en" -> "Quotes already form the warmer detour. Mr.Comic promotes them before the colder routes."
        "ja" -> "引用はもう温かい寄り道になっています。Mr.Comic は冷えたルートより先にそこを出します。"
        "zh" -> "摘录已经形成更热的回跳路径，所以 Mr.Comic 会先把它提到前面。"
        "ko" -> "문구는 이미 더 따뜻한 우회 경로가 됐습니다. Mr.Comic 이 그 길을 먼저 내세웁니다."
        else -> "Цитаты уже стали тёплым обходным маршрутом, и Mr.Comic поднимает их выше холодных путей."
    }
    hasRecent -> when (language) {
        "en" -> "Recent reading is already pinned above. This panel now pushes whichever side route is actually alive."
        "ja" -> "最近の読書はすでに上に固定されています。このパネルでは、本当に生きている寄り道だけを前に出します。"
        "zh" -> "最近阅读已经固定在上面。这里会优先推真正还活着的侧路线。"
        "ko" -> "최근 읽기는 위에 고정돼 있습니다. 이 패널은 실제로 살아 있는 사이드 경로만 앞으로 밀어 줍니다."
        else -> "Последнее чтение уже закреплено выше. Здесь вперёд выдвигается только тот боковой маршрут, который реально жив."
    }
    else -> when (language) {
        "en" -> "There is no active reading trail right now. Mr.Comic pushes the next strongest route instead of treating every door the same."
        "ja" -> "今はアクティブな読書トレイルがありません。Mr.Comic は全部の入口を同じにせず、次に強いルートを前に出します。"
        "zh" -> "现在没有活跃的阅读轨迹。Mr.Comic 不再把每个入口都看成一样，而是优先推出更强的路线。"
        "ko" -> "지금은 활성 읽기 흔적이 없습니다. Mr.Comic 은 모든 문을 똑같이 두지 않고 더 강한 다음 경로를 먼저 올립니다."
        else -> "Сейчас нет активного читательского следа. Mr.Comic больше не делает все двери одинаковыми и выдвигает более сильный следующий маршрут."
    }
}

internal fun mrComicOpenFilesLabel(language: String): String = when (language) {
    "en" -> "Files"
    "ja" -> "ファイル"
    "zh" -> "文件"
    "ko" -> "파일"
    else -> "Файлы"
}

internal fun mrComicRecentLabel(
    language: String,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "Last read in results"
        "ja" -> "検索結果内の最近読んだ作品"
        "zh" -> "结果中的最近阅读"
        "ko" -> "검색 결과 안의 최근 읽기"
        else -> "Последнее чтение в результатах"
    }
} else {
    when (language) {
        "en" -> "Last read"
        "ja" -> "最近読んだ作品"
        "zh" -> "最近阅读"
        "ko" -> "최근 읽은 작품"
        else -> "Последнее чтение"
    }
}

internal fun mrComicOpenRecentLabel(language: String): String = when (language) {
    "en" -> "Open"
    "ja" -> "開く"
    "zh" -> "打开"
    "ko" -> "열기"
    else -> "Открыть"
}

internal fun mrComicEmptyRecentText(
    language: String,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "There is no recent reading trail inside the current results. Clear the search to return to the full trail."
        "ja" -> "現在の検索結果には最近の読書トレイルがありません。検索をクリアすると全体のトレイルに戻ります。"
        "zh" -> "当前搜索结果里没有最近阅读轨迹。清除搜索后会回到完整轨迹。"
        "ko" -> "현재 검색 결과 안에는 최근 읽기 흔적이 없습니다. 검색을 지우면 전체 읽기 흔적으로 돌아갑니다."
        else -> "В текущих результатах нет недавнего чтения. Очисти поиск, чтобы вернуться к полному читательскому следу."
    }
} else {
    when (language) {
        "en" -> "As soon as you read something, Mr.Comic will keep your latest title here for a quick return."
        "ja" -> "何か読み始めると、Mr.Comic が最新の作品をここに置いてすぐ戻れるようにします。"
        "zh" -> "开始阅读后，Mr.Comic 会把你最近的作品放在这里，方便快速返回。"
        "ko" -> "읽기 시작하면 Mr.Comic 이 최근 작품을 여기에 두고 바로 돌아갈 수 있게 합니다."
        else -> "Как только появится чтение, Mr.Comic будет держать здесь последний тайтл для быстрого возврата."
    }
}

internal fun mrComicNextStepText(
    language: String,
    hasRecent: Boolean,
    bookmarkedTitles: Int,
    quotesCount: Int,
    totalTitles: Int,
    goalState: DailyReadingGoalState
): String {
    val route = mrComicNextStepRoute(
        hasRecent = hasRecent,
        totalTitles = totalTitles,
        bookmarkedTitles = bookmarkedTitles,
        quotesCount = quotesCount,
        goalState = goalState
    )
    return when {
    totalTitles == 0 -> when (language) {
        "en" -> "Next step: add your first titles and the hub will start filling up."
        "ja" -> "次の一歩: 最初の作品を追加すると、このハブが動き始めます。"
        "zh" -> "下一步：先添加几部作品，这个中心就会开始充实起来。"
        "ko" -> "다음 단계: 첫 작품들을 추가하면 이 허브가 살아나기 시작합니다."
        else -> "Следующий шаг: добавь первые тайтлы, и этот центр начнёт оживать."
    }
    goalState.enabled && !goalState.isCompleted && goalState.pagesReadToday > 0 && hasRecent -> when (language) {
        "en" -> "Next step: return to your latest title and close the remaining ${goalState.remainingPages} pages for today."
        "ja" -> "次の一歩: 最新の作品に戻って、今日の残り ${goalState.remainingPages} ページを閉じましょう。"
        "zh" -> "下一步：回到最近的作品，把今天还剩的 ${goalState.remainingPages} 页补完。"
        "ko" -> "다음 단계: 최근 작품으로 돌아가 오늘 남은 ${goalState.remainingPages}페이지를 채우기."
        else -> "Следующий шаг: вернись к последнему тайтлу и закрой оставшиеся на сегодня ${goalState.remainingPages} стр."
    }
    goalState.enabled && !goalState.isCompleted && hasRecent -> when (language) {
        "en" -> "Next step: start today's pace from your latest title and warm up the daily goal."
        "ja" -> "次の一歩: 最新の作品から今日のペースを始めて、デイリー目標を温めましょう。"
        "zh" -> "下一步：从最近的作品开始今天的节奏，把每日目标先热起来。"
        "ko" -> "다음 단계: 최근 작품에서 오늘의 리듬을 시작하고 데일리 목표를 데우기."
        else -> "Следующий шаг: начни сегодняшний темп с последнего тайтла и разогрей дневную цель."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && hasRecent -> when (language) {
        "en" -> "Next step: today's goal is already safe, so carry the same route toward the weekly plan."
        "ja" -> "次の一歩: 今日の目標はもう安全圏です。同じルートで週間プランへ進めます。"
        "zh" -> "下一步：今天的目标已经稳住了，可以沿着同一路线继续推周计划。"
        "ko" -> "다음 단계: 오늘 목표는 이미 안전하니, 같은 경로로 주간 계획까지 밀어 갈 수 있습니다."
        else -> "Следующий шаг: дневная цель уже в безопасности, и этим же маршрутом можно дотянуться до недельного плана."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && hasRecent -> when (language) {
        "en" -> "Next step: the weekly plan is closed, so just keep a calm return path to your latest title."
        "ja" -> "次の一歩: 週間プランは閉じています。あとは最新の作品へ穏やかに戻るだけです。"
        "zh" -> "下一步：周计划已经完成，现在只要保留一条平稳回到最近作品的路径就够了。"
        "ko" -> "다음 단계: 주간 계획은 이미 끝났으니, 이제 최근 작품으로 차분히 돌아가는 길만 유지하면 됩니다."
        else -> "Следующий шаг: недельный план уже закрыт, так что достаточно просто держать спокойный путь к последнему тайтлу."
    }
    goalState.enabled && goalState.streakEnabled && goalState.currentStreak > 0 && bookmarkedTitles > 0 -> when (language) {
        "en" -> "Next step: keep the soft streak alive through one of your saved bookmarks."
        "ja" -> "次の一歩: 保存したブックマークのどれかから、やわらかいストリークをつなぎましょう。"
        "zh" -> "下一步：从已保存的书签里接上一条路线，把柔性连读继续下去。"
        "ko" -> "다음 단계: 저장한 북마크 중 하나로 소프트 스트릭을 이어가기."
        else -> "Следующий шаг: поддержи мягкую серию через один из сохранённых маршрутов в закладках."
    }
    goalState.enabled && !goalState.isCompleted && goalState.pagesReadToday > 0 && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and close the remaining ${goalState.remainingPages} pages for today from a saved route."
        "ja" -> "次の一歩: ブックマークを開いて、保存したルートから今日の残り ${goalState.remainingPages} ページを閉じましょう。"
        "zh" -> "下一步：打开书签，从保存的路线补完今天还剩的 ${goalState.remainingPages} 页。"
        "ko" -> "다음 단계: 북마크를 열고 저장한 경로에서 오늘 남은 ${goalState.remainingPages}페이지를 채우기."
        else -> "Следующий шаг: открой закладки и закрой оставшиеся на сегодня ${goalState.remainingPages} стр. через сохранённый маршрут."
    }
    goalState.enabled && !goalState.isCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and warm up today's goal from the strongest saved route."
        "ja" -> "次の一歩: ブックマークを開いて、一番しっかり残っているルートから今日の目標を温めましょう。"
        "zh" -> "下一步：打开书签，从最稳的保存路线把今天的目标先热起来。"
        "ko" -> "다음 단계: 북마크를 열고 가장 탄탄한 저장 경로에서 오늘 목표를 데우기."
        else -> "Следующий шаг: открой закладки и разогрей цель на сегодня от самого живого сохранённого маршрута."
    }
    goalState.enabled && !goalState.isCompleted && route == MrComicNextStepRoute.FILES -> when (language) {
        "en" -> "Next step: open Files and start today's rhythm from the next title on the shelf."
        "ja" -> "次の一歩: ファイルを開いて、棚の次の作品から今日のリズムを始めましょう。"
        "zh" -> "下一步：打开文件区，从书架上的下一部作品把今天的节奏启动起来。"
        "ko" -> "다음 단계: 파일을 열고 선반의 다음 작품에서 오늘 리듬을 시작하기."
        else -> "Следующий шаг: открой файлы и начни сегодняшний ритм со следующего тайтла на полке."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and carry the weekly plan forward through a saved route."
        "ja" -> "次の一歩: ブックマークを開いて、保存したルートのまま週間プランを進めましょう。"
        "zh" -> "下一步：打开书签，沿着保存的路线继续把周计划往前推。"
        "ko" -> "다음 단계: 북마크를 열고 저장된 경로로 주간 계획을 계속 밀어 가기."
        else -> "Следующий шаг: открой закладки и протяни недельный план дальше по сохранённому маршруту."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.FILES -> when (language) {
        "en" -> "Next step: open Files and feed the weekly plan with the next title on the shelf."
        "ja" -> "次の一歩: ファイルを開いて、棚の次の作品で週間プランを進めましょう。"
        "zh" -> "下一步：打开文件区，用书架上的下一部作品继续喂给周计划。"
        "ko" -> "다음 단계: 파일을 열고 선반의 다음 작품으로 주간 계획을 이어 가기."
        else -> "Следующий шаг: открой файлы и корми недельный план следующим тайтлом на полке."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.QUOTES -> when (language) {
        "en" -> "Next step: revisit saved quotes and keep the return path warm without adding urgency."
        "ja" -> "次の一歩: 保存した引用を見返して、急がずに戻り道だけを温かく保ちましょう。"
        "zh" -> "下一步：回看保存的摘录，安静地保留回到故事的那条路，不再增加紧迫感。"
        "ko" -> "다음 단계: 저장된 문구를 다시 보며 조급함 없이 돌아가는 길만 따뜻하게 유지하기."
        else -> "Следующий шаг: пересмотри сохранённые цитаты и просто держи тёплый путь возврата, без новой срочности."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and keep a calm return route alive after the weekly plan."
        "ja" -> "次の一歩: ブックマークを開いて、週間プランの後も穏やかな戻り道を保ちましょう。"
        "zh" -> "下一步：打开书签，在周计划完成后继续保留一条平静的回跳路线。"
        "ko" -> "다음 단계: 북마크를 열고 주간 계획 이후에도 차분한 복귀 경로를 유지하기."
        else -> "Следующий шаг: открой закладки и оставь спокойный маршрут возврата живым уже после недельного плана."
    }
    route == MrComicNextStepRoute.RECENT -> when (language) {
        "en" -> "Next step: continue your latest title from the reading trail below."
        "ja" -> "次の一歩: 下の読書トレイルから最新の作品に戻れます。"
        "zh" -> "下一步：可以从下面的阅读轨迹继续最近的作品。"
        "ko" -> "다음 단계: 아래 읽기 흔적에서 최근 작품을 이어갈 수 있습니다."
        else -> "Следующий шаг: можно вернуться к последнему тайтлу через блок чтения ниже."
    }
    route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and pick up one of your saved titles."
        "ja" -> "次の一歩: ブックマークを開いて、残しておいた作品を続けましょう。"
        "zh" -> "下一步：打开书签，从已保存的作品里继续一部。"
        "ko" -> "다음 단계: 북마크를 열고 저장해 둔 작품 중 하나를 이어가 보세요."
        else -> "Следующий шаг: открой закладки и подхвати один из сохранённых тайтлов."
    }
    route == MrComicNextStepRoute.QUOTES -> when (language) {
        "en" -> "Next step: revisit saved quotes and jump back into a story from there."
        "ja" -> "次の一歩: 保存した引用を見返して、そこから物語に戻れます。"
        "zh" -> "下一步：先看看保存的摘录，再从那里回到故事里。"
        "ko" -> "다음 단계: 저장한 문구를 둘러보고 거기서 다시 이야기로 돌아갈 수 있습니다."
        else -> "Следующий шаг: можно открыть цитаты и вернуться в историю через сохранённые фрагменты."
    }
    else -> when (language) {
        "en" -> "Next step: browse your files and choose what Mr.Comic should track next."
        "ja" -> "次の一歩: ファイルを開いて、次に追いかける作品を選びましょう。"
        "zh" -> "下一步：去文件区挑一本，让 Mr.Comic 继续帮你跟进。"
        "ko" -> "다음 단계: 파일 섹션에서 다음에 따라갈 작품을 골라 보세요."
        else -> "Следующий шаг: загляни в файлы и выбери, что Mr.Comic будет сопровождать дальше."
    }
}
}


internal fun mrComicMetricLabel(
    language: String,
    metric: MrComicMetric,
    searchActive: Boolean
): String = when (metric) {
    MrComicMetric.TITLES -> when (language) {
        "en" -> if (searchActive) "Results" else "Titles"
        "ja" -> if (searchActive) "検索結果" else "タイトル"
        "zh" -> if (searchActive) "结果" else "条目"
        "ko" -> if (searchActive) "검색 결과" else "타이틀"
        else -> if (searchActive) "Результаты" else "Тайтлы"
    }
    MrComicMetric.COMPLETED -> when (language) {
        "en" -> "Completed"
        "ja" -> "読了"
        "zh" -> "读完"
        "ko" -> "완독"
        else -> "Прочитано"
    }
    MrComicMetric.BOOKMARKS -> when (language) {
        "en" -> "Bookmarks"
        "ja" -> "ブックマーク"
        "zh" -> "书签"
        "ko" -> "북마크"
        else -> "Закладки"
    }
    MrComicMetric.QUOTES -> when (language) {
        "en" -> "Quotes"
        "ja" -> "引用"
        "zh" -> "摘录"
        "ko" -> "문구"
        else -> "Цитаты"
    }
}

internal fun mrComicLibraryFootnote(
    language: String,
    authorCount: Int,
    genreCount: Int,
    secretUnlocked: Boolean,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "$authorCount authors and $genreCount genres in the current search slice."
        "ja" -> "現在の検索では著者 $authorCount 人、ジャンル $genreCount 種が見えています。"
        "zh" -> "当前搜索切片里可见作者 $authorCount 位、题材 $genreCount 类。"
        "ko" -> "현재 검색 슬라이스에는 작가 ${authorCount}명, 장르 ${genreCount}개가 보입니다."
        else -> "В текущем поисковом срезе видно $authorCount авторов и $genreCount жанров."
    }
} else when (language) {
    "en" -> {
        val secretText = if (secretUnlocked) "Secret reward unlocked." else "One secret reward is still hidden."
        "$authorCount authors, $genreCount genres. $secretText"
    }
    "ja" -> {
        val secretText = if (secretUnlocked) "隠し報酬は解除済みです。" else "まだ隠し報酬がひとつ残っています。"
        "著者 $authorCount 人、ジャンル $genreCount 種。$secretText"
    }
    "zh" -> {
        val secretText = if (secretUnlocked) "隐藏奖励已解锁。" else "还有一个隐藏奖励尚未发现。"
        "作者 $authorCount 位，题材 $genreCount 类。$secretText"
    }
    "ko" -> {
        val secretText = if (secretUnlocked) "숨은 보상을 이미 해금했습니다." else "아직 숨은 보상 하나가 남아 있습니다."
        "작가 ${authorCount}명, 장르 ${genreCount}개. $secretText"
    }
    else -> {
        val secretText = if (secretUnlocked) "Секретная награда уже открыта." else "Одна секретная награда ещё спрятана."
        "$authorCount авторов, $genreCount жанров. $secretText"
    }
}
