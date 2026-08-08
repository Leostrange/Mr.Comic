package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchive
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.feature.library.components.AchievementStrings

internal fun shouldShowMrComicProgressStageArchive(archive: MascotStageArchive): Boolean =
    archive.entries.size > 1

internal fun mrComicAchievementStrings(strings: AppStrings): AchievementStrings = AchievementStrings(
    achFirstBook = strings.achFirstBook,
    achFirstBookDesc = strings.achFirstBookDesc,
    achReader = strings.achReader,
    achReaderDesc = strings.achReaderDesc,
    achCollector = strings.achCollector,
    achCollectorDesc = strings.achCollectorDesc,
    achFirstComplete = strings.achFirstComplete,
    achFirstCompleteDesc = strings.achFirstCompleteDesc,
    achMarathon = strings.achMarathon,
    achMarathonDesc = strings.achMarathonDesc,
    achAuthorFan = strings.achAuthorFan,
    achAuthorFanDesc = strings.achAuthorFanDesc,
    achGenreGourmet = strings.achGenreGourmet,
    achGenreGourmetDesc = strings.achGenreGourmetDesc,
    achBookmarker = strings.achBookmarker,
    achBookmarkerDesc = strings.achBookmarkerDesc,
    achSecretCat = strings.achSecretCat,
    achSecretCatDesc = strings.achSecretCatDesc,
    achSecretHint = strings.achSecretHint
)

internal fun summarizeMrComicProgressHistory(
    days: List<DailyReadingCalendarDay>
): MrComicProgressHistorySummary = MrComicProgressHistorySummary(
    pagesRead = days.sumOf { it.pagesRead },
    xpEarned = days.sumOf { it.xpEarned },
    minutesRead = days.sumOf { it.minutesRead },
    completedCheckpoints = days.sumOf { it.completedCheckpoints },
    activeDays = days.count { day ->
        day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
    }
)

internal fun hasMrComicMeaningfulHistory(
    summary: MrComicProgressHistorySummary
): Boolean = summary.pagesRead > 0 ||
    summary.xpEarned > 0 ||
    summary.minutesRead > 0 ||
    summary.completedCheckpoints > 0 ||
    summary.activeDays > 0

internal fun mrComicProgressHistoryRangeLabel(
    language: String,
    range: MrComicProgressHistoryRange
): String = when (range) {
    MrComicProgressHistoryRange.LAST_7 -> when (language) {
        "ja" -> "直近7日"
        "zh" -> "近 7 天"
        "ko" -> "최근 7일"
        "ru" -> "Последние 7 дней"
        else -> "Last 7 days"
    }
    MrComicProgressHistoryRange.LAST_30 -> when (language) {
        "ja" -> "直近30日"
        "zh" -> "近 30 天"
        "ko" -> "최근 30일"
        "ru" -> "Последние 30 дней"
        else -> "Last 30 days"
    }
    MrComicProgressHistoryRange.ALL -> when (language) {
        "ja" -> "全履歴"
        "zh" -> "全部历史"
        "ko" -> "전체 기록"
        "ru" -> "Вся история"
        else -> "All history"
    }
}

internal fun mrComicProgressRecentEmptyText(
    language: String,
    genericEmpty: String,
    totalTitles: Int,
    searchActive: Boolean
): String = when (mrComicProgressRecentEmptyState(totalTitles, searchActive)) {
    MrComicProgressRecentEmptyState.EMPTY_LIBRARY -> when (language) {
        "en" -> "No titles in the library yet. Add a file or folder to start Mr.Comic progress."
        "ja" -> "ライブラリにはまだタイトルがありません。ファイルかフォルダを追加すると、Mr.Comic の進捗が始まります。"
        "zh" -> "书库里还没有条目。添加文件或文件夹后，Mr.Comic 的进度才会开始。"
        "ko" -> "라이브러리에 아직 타이틀이 없습니다. 파일이나 폴더를 추가하면 Mr.Comic 진행이 시작됩니다."
        else -> "В библиотеке пока нет тайтлов. Добавь файл или папку, чтобы прогресс Mr.Comic начал жить."
    }
    MrComicProgressRecentEmptyState.SEARCH_RESULTS -> when (language) {
        "en" -> "No recent reading trail inside the current search results."
        "ja" -> "現在の検索結果の中には最近の読書トレイルがありません。"
        "zh" -> "当前搜索结果里没有最近阅读轨迹。"
        "ko" -> "현재 검색 결과 안에는 최근 읽기 흔적이 없습니다."
        else -> "В текущих результатах поиска нет недавнего следа чтения."
    }
    MrComicProgressRecentEmptyState.GENERIC -> genericEmpty
}

internal fun mrComicProgressSearchContextTitle(language: String): String = when (language) {
    "en" -> "Search is still active"
    "ja" -> "検索はまだ有効です"
    "zh" -> "搜索仍在生效"
    "ko" -> "검색이 아직 켜져 있습니다"
    else -> "Поиск всё ещё активен"
}

internal fun mrComicProgressSearchContextText(language: String): String = when (language) {
    "en" -> "This profile stays global so stage, XP and the next unlock do not drift with the current search slice."
    "ja" -> "このプロフィールは全体ビューのままです。現在の検索結果によって段階、XP、次の解除がぶれないようにしています。"
    "zh" -> "这个档案保持全局视图，这样阶段、XP 和下一项解锁不会跟着当前搜索结果漂移。"
    "ko" -> "이 프로필은 전역 뷰를 유지합니다. 그래서 현재 검색 결과에 따라 단계, XP, 다음 해금이 흔들리지 않습니다."
    else -> "Этот профиль остаётся глобальным, чтобы этап, XP и следующее открытие не плавали вместе с текущим поисковым срезом."
}
