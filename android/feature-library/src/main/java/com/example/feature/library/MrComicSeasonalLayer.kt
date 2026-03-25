package com.example.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.Icon
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

private const val MR_COMIC_SEASON_WINDOW_DAYS = 28
private const val MR_COMIC_SEASON_ACTIVE_DAYS_TARGET = 4
private const val MR_COMIC_SEASON_CHECKPOINT_TARGET = 2
private const val MR_COMIC_SEASON_MINUTES_TARGET = 90

internal enum class MrComicSeasonTheme {
    SPRING,
    SUMMER,
    AUTUMN,
    WINTER
}

internal enum class MrComicSeasonRoute {
    COLLECTION,
    SERIES,
    FILES
}

internal data class MrComicSeasonSnapshot(
    val theme: MrComicSeasonTheme,
    val windowDays: Int,
    val activeDays: Int,
    val activeDaysTarget: Int,
    val checkpoints: Int,
    val checkpointsTarget: Int,
    val minutesRead: Int,
    val minutesTarget: Int,
    val completedSteps: Int,
    val totalSteps: Int,
    val progressFraction: Float,
    val route: MrComicSeasonRoute,
    val collectionQuery: String? = null
)

internal fun resolveMrComicSeasonSnapshot(
    goalState: DailyReadingGoalState,
    preferredCollectionQuery: String?,
    preferredSeriesName: String?,
    nowMillis: Long = System.currentTimeMillis()
): MrComicSeasonSnapshot {
    val seasonWindow = resolveMrComicSeasonWindow(
        goalState = goalState,
        nowMillis = nowMillis,
        windowDays = MR_COMIC_SEASON_WINDOW_DAYS
    )
    val activeDays = seasonWindow.count { day ->
        day.pagesRead > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
    }
    val checkpoints = seasonWindow.sumOf { it.completedCheckpoints.coerceAtLeast(0) }
    val minutesRead = seasonWindow.sumOf { it.minutesRead.coerceAtLeast(0) }
    val completedSteps = listOf(
        activeDays >= MR_COMIC_SEASON_ACTIVE_DAYS_TARGET,
        checkpoints >= MR_COMIC_SEASON_CHECKPOINT_TARGET,
        minutesRead >= MR_COMIC_SEASON_MINUTES_TARGET
    ).count { it }
    val progressFraction = listOf(
        activeDays.toFloat() / MR_COMIC_SEASON_ACTIVE_DAYS_TARGET.toFloat(),
        checkpoints.toFloat() / MR_COMIC_SEASON_CHECKPOINT_TARGET.toFloat(),
        minutesRead.toFloat() / MR_COMIC_SEASON_MINUTES_TARGET.toFloat()
    ).sum()
        .div(3f)
        .coerceIn(0f, 1f)
    return MrComicSeasonSnapshot(
        theme = resolveMrComicSeasonTheme(nowMillis),
        windowDays = MR_COMIC_SEASON_WINDOW_DAYS,
        activeDays = activeDays,
        activeDaysTarget = MR_COMIC_SEASON_ACTIVE_DAYS_TARGET,
        checkpoints = checkpoints,
        checkpointsTarget = MR_COMIC_SEASON_CHECKPOINT_TARGET,
        minutesRead = minutesRead,
        minutesTarget = MR_COMIC_SEASON_MINUTES_TARGET,
        completedSteps = completedSteps,
        totalSteps = 3,
        progressFraction = progressFraction,
        route = resolveMrComicSeasonRoute(
            preferredCollectionQuery = preferredCollectionQuery,
            preferredSeriesName = preferredSeriesName
        ),
        collectionQuery = preferredCollectionQuery?.trim()?.takeIf { it.isNotBlank() }
    )
}

internal fun resolveMrComicSeasonWindow(
    goalState: DailyReadingGoalState,
    nowMillis: Long,
    windowDays: Int
): List<DailyReadingCalendarDay> {
    val normalizedWindowDays = windowDays.coerceAtLeast(1)
    val startKey = mrComicSeasonDayKey(nowMillis = nowMillis, dayOffset = -(normalizedWindowDays - 1))
    val endKey = mrComicSeasonDayKey(nowMillis = nowMillis, dayOffset = 0)
    return (goalState.historyActivity + goalState.recentActivity)
        .groupBy { it.dayKey }
        .map { (dayKey, values) ->
            DailyReadingCalendarDay(
                dayKey = dayKey,
                pagesRead = values.sumOf { it.pagesRead.coerceAtLeast(0) },
                goalCompleted = values.any { it.goalCompleted },
                minutesRead = values.sumOf { it.minutesRead.coerceAtLeast(0) },
                completedCheckpoints = values.sumOf { it.completedCheckpoints.coerceAtLeast(0) },
                xpEarned = values.sumOf { it.xpEarned.coerceAtLeast(0) }
            )
        }
        .filter { day -> day.dayKey in startKey..endKey }
        .sortedByDescending { it.dayKey }
}

internal fun shouldShowMrComicSeasonCard(
    totalTitles: Int
): Boolean = totalTitles > 0

internal fun shouldShowMrComicSeasonAction(
    searchActive: Boolean
): Boolean = !searchActive

private fun resolveMrComicSeasonRoute(
    preferredCollectionQuery: String?,
    preferredSeriesName: String?
): MrComicSeasonRoute = when {
    !preferredCollectionQuery.isNullOrBlank() -> MrComicSeasonRoute.COLLECTION
    !preferredSeriesName.isNullOrBlank() -> MrComicSeasonRoute.SERIES
    else -> MrComicSeasonRoute.FILES
}

private fun resolveMrComicSeasonTheme(nowMillis: Long): MrComicSeasonTheme {
    val month = Calendar.getInstance().apply { timeInMillis = nowMillis }.get(Calendar.MONTH)
    return when (month) {
        Calendar.MARCH, Calendar.APRIL, Calendar.MAY -> MrComicSeasonTheme.SPRING
        Calendar.JUNE, Calendar.JULY, Calendar.AUGUST -> MrComicSeasonTheme.SUMMER
        Calendar.SEPTEMBER, Calendar.OCTOBER, Calendar.NOVEMBER -> MrComicSeasonTheme.AUTUMN
        else -> MrComicSeasonTheme.WINTER
    }
}

private fun mrComicSeasonDayKey(nowMillis: Long, dayOffset: Int): String {
    val calendar = Calendar.getInstance().apply {
        timeInMillis = nowMillis
        add(Calendar.DAY_OF_YEAR, dayOffset)
    }
    return SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date(calendar.timeInMillis))
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun MrComicSeasonCard(
    appLanguage: String,
    season: MrComicSeasonSnapshot,
    searchActive: Boolean,
    onOpenFiles: () -> Unit,
    onOpenSeries: () -> Unit,
    onOpenCollection: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val canOpenAction = shouldShowMrComicSeasonAction(searchActive)
    Surface(
        modifier = modifier.padding(horizontal = 16.dp),
        shape = androidx.compose.foundation.shape.RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Surface(
                    shape = androidx.compose.foundation.shape.CircleShape,
                    color = MaterialTheme.colorScheme.tertiary.copy(alpha = 0.14f)
                ) {
                    Icon(
                        imageVector = Icons.Default.DateRange,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.tertiary,
                        modifier = Modifier.padding(10.dp)
                    )
                }
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = mrComicSeasonTitle(appLanguage, season.theme),
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.tertiary,
                        fontWeight = FontWeight.SemiBold
                    )
                    Text(
                        text = if (searchActive) {
                            mrComicSeasonSearchText(appLanguage)
                        } else {
                            mrComicSeasonSummaryText(appLanguage, season)
                        },
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Surface(
                    shape = androidx.compose.foundation.shape.RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.tertiary.copy(alpha = 0.14f)
                ) {
                    Text(
                        text = mrComicSeasonWindowLabel(appLanguage, season.windowDays),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.tertiary,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                    )
                }
            }

            LinearProgressIndicator(
                progress = { season.progressFraction },
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(androidx.compose.foundation.shape.RoundedCornerShape(999.dp)),
                color = MaterialTheme.colorScheme.tertiary,
                trackColor = MaterialTheme.colorScheme.tertiary.copy(alpha = 0.16f)
            )

            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicSeasonStepChip(
                    icon = Icons.Default.LocalFireDepartment,
                    text = mrComicSeasonActiveDaysText(
                        language = appLanguage,
                        current = season.activeDays,
                        target = season.activeDaysTarget
                    )
                )
                MrComicSeasonStepChip(
                    icon = Icons.Default.TaskAlt,
                    text = mrComicSeasonCheckpointText(
                        language = appLanguage,
                        current = season.checkpoints,
                        target = season.checkpointsTarget
                    )
                )
                MrComicSeasonStepChip(
                    icon = Icons.Default.Schedule,
                    text = mrComicSeasonMinutesText(
                        language = appLanguage,
                        current = season.minutesRead,
                        target = season.minutesTarget
                    )
                )
            }

            if (canOpenAction) {
                TextButton(
                    onClick = {
                        when (season.route) {
                            MrComicSeasonRoute.COLLECTION -> {
                                season.collectionQuery?.let(onOpenCollection) ?: onOpenFiles()
                            }
                            MrComicSeasonRoute.SERIES -> onOpenSeries()
                            MrComicSeasonRoute.FILES -> onOpenFiles()
                        }
                    },
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text(mrComicSeasonActionLabel(appLanguage, season.route))
                }
            }
        }
    }
}

@Composable
private fun MrComicSeasonStepChip(
    icon: ImageVector,
    text: String
) {
    Surface(
        shape = androidx.compose.foundation.shape.RoundedCornerShape(999.dp),
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.68f)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
            horizontalArrangement = Arrangement.spacedBy(6.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(0.dp)
            )
            Text(
                text = text,
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

private fun mrComicSeasonTitle(
    language: String,
    theme: MrComicSeasonTheme
): String = when (language) {
    "en" -> when (theme) {
        MrComicSeasonTheme.SPRING -> "Spring arc"
        MrComicSeasonTheme.SUMMER -> "Summer arc"
        MrComicSeasonTheme.AUTUMN -> "Autumn arc"
        MrComicSeasonTheme.WINTER -> "Winter arc"
    }
    "ja" -> when (theme) {
        MrComicSeasonTheme.SPRING -> "春のアーク"
        MrComicSeasonTheme.SUMMER -> "夏のアーク"
        MrComicSeasonTheme.AUTUMN -> "秋のアーク"
        MrComicSeasonTheme.WINTER -> "冬のアーク"
    }
    "zh" -> when (theme) {
        MrComicSeasonTheme.SPRING -> "春季篇章"
        MrComicSeasonTheme.SUMMER -> "夏季篇章"
        MrComicSeasonTheme.AUTUMN -> "秋季篇章"
        MrComicSeasonTheme.WINTER -> "冬季篇章"
    }
    "ko" -> when (theme) {
        MrComicSeasonTheme.SPRING -> "봄 아크"
        MrComicSeasonTheme.SUMMER -> "여름 아크"
        MrComicSeasonTheme.AUTUMN -> "가을 아크"
        MrComicSeasonTheme.WINTER -> "겨울 아크"
    }
    else -> when (theme) {
        MrComicSeasonTheme.SPRING -> "Весенний цикл"
        MrComicSeasonTheme.SUMMER -> "Летний цикл"
        MrComicSeasonTheme.AUTUMN -> "Осенний цикл"
        MrComicSeasonTheme.WINTER -> "Зимний цикл"
    }
}

private fun mrComicSeasonWindowLabel(
    language: String,
    windowDays: Int
): String = when (language) {
    "en" -> "$windowDays days"
    "ja" -> "${windowDays}日"
    "zh" -> "${windowDays}天"
    "ko" -> "${windowDays}일"
    else -> "$windowDays дней"
}

private fun mrComicSeasonSummaryText(
    language: String,
    season: MrComicSeasonSnapshot
): String = when (language) {
    "en" -> "${season.completedSteps}/${season.totalSteps} seasonal marks closed. The route stays tied to your current shelf, not a grind loop."
    "ja" -> "季節マークは ${season.completedSteps}/${season.totalSteps} 完了。今の本棚の流れに沿って静かに進みます。"
    "zh" -> "季节进度已完成 ${season.completedSteps}/${season.totalSteps} 项，路线会跟着你当前书架走，不做刷量。"
    "ko" -> "시즌 마크 ${season.completedSteps}/${season.totalSteps} 완료. 현재 서가 흐름을 따라가며 과한 반복을 만들지 않습니다."
    else -> "Сезонных шагов закрыто ${season.completedSteps}/${season.totalSteps}. Маршрут идёт от текущей полки, без фарма ради фарма."
}

private fun mrComicSeasonSearchText(language: String): String = when (language) {
    "en" -> "Search stays in focus now. The seasonal route will wait quietly until the search is cleared."
    "ja" -> "いまは検索結果を優先します。季節ルートは検索を閉じたあと静かに続きます。"
    "zh" -> "当前先以搜索结果为主，季节路线会安静地等到搜索结束。"
    "ko" -> "지금은 검색 결과를 우선합니다. 시즌 루트는 검색을 지운 뒤 조용히 이어집니다."
    else -> "Сейчас в фокусе поиск. Сезонный маршрут спокойно дождётся, когда поиск будет очищен."
}

private fun mrComicSeasonActionLabel(
    language: String,
    route: MrComicSeasonRoute
): String = when (language) {
    "en" -> when (route) {
        MrComicSeasonRoute.COLLECTION -> "Open seasonal shelf"
        MrComicSeasonRoute.SERIES -> "Open series"
        MrComicSeasonRoute.FILES -> "Open library"
    }
    "ja" -> when (route) {
        MrComicSeasonRoute.COLLECTION -> "季節の棚を開く"
        MrComicSeasonRoute.SERIES -> "シリーズを開く"
        MrComicSeasonRoute.FILES -> "ライブラリを開く"
    }
    "zh" -> when (route) {
        MrComicSeasonRoute.COLLECTION -> "打开季节书架"
        MrComicSeasonRoute.SERIES -> "打开系列"
        MrComicSeasonRoute.FILES -> "打开书库"
    }
    "ko" -> when (route) {
        MrComicSeasonRoute.COLLECTION -> "시즌 서가 열기"
        MrComicSeasonRoute.SERIES -> "시리즈 열기"
        MrComicSeasonRoute.FILES -> "라이브러리 열기"
    }
    else -> when (route) {
        MrComicSeasonRoute.COLLECTION -> "Открыть сезонную подборку"
        MrComicSeasonRoute.SERIES -> "Открыть серию"
        MrComicSeasonRoute.FILES -> "Открыть библиотеку"
    }
}

private fun mrComicSeasonActiveDaysText(
    language: String,
    current: Int,
    target: Int
): String = when (language) {
    "en" -> "Days $current/$target"
    "ja" -> "日数 $current/$target"
    "zh" -> "天数 $current/$target"
    "ko" -> "일수 $current/$target"
    else -> "Дни $current/$target"
}

private fun mrComicSeasonCheckpointText(
    language: String,
    current: Int,
    target: Int
): String = when (language) {
    "en" -> "Checkpoints $current/$target"
    "ja" -> "節目 $current/$target"
    "zh" -> "节点 $current/$target"
    "ko" -> "체크포인트 $current/$target"
    else -> "Чекпойнты $current/$target"
}

private fun mrComicSeasonMinutesText(
    language: String,
    current: Int,
    target: Int
): String = when (language) {
    "en" -> "Minutes $current/$target"
    "ja" -> "分 $current/$target"
    "zh" -> "分钟 $current/$target"
    "ko" -> "분 $current/$target"
    else -> "Минуты $current/$target"
}
