package com.example.feature.library

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.RadioButtonUnchecked
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MascotStage
import com.example.core.domain.analytics.MrComicMascotMood
import com.example.feature.library.components.AchievementId
import com.example.feature.library.components.AchievementQuestFeedbackTone
import com.example.feature.library.components.AchievementQuestTransition
import com.example.feature.library.components.LibraryAchievement

/**
 * Mr.Comic mascot localization, quest logic, and discovery helpers.
 *
 * Extracted from LibraryScreen to reduce its size.
 * Pure functions (except two @Composable color lookups).
 */

internal fun mrComicMoodIcon(kind: MrComicMascotMood): ImageVector = when (kind) {
    MrComicMascotMood.STANDBY -> Icons.Default.RadioButtonUnchecked
    MrComicMascotMood.LOCKED_IN -> Icons.AutoMirrored.Filled.MenuBook
    MrComicMascotMood.RHYTHM_LOCKED -> Icons.Default.TaskAlt
    MrComicMascotMood.BETWEEN_ARCS -> Icons.Default.CheckCircle
    MrComicMascotMood.ARCHIVIST -> Icons.Default.Edit
    MrComicMascotMood.SHOWCASE -> Icons.Default.CheckCircle
    MrComicMascotMood.SETTLING_IN -> Icons.Default.BookmarkBorder
}

internal fun mrComicNextUnlockTitle(language: String): String = when (language) {
    "en" -> "Next unlock"
    "ja" -> "次の解除"
    "zh" -> "下一个解锁"
    "ko" -> "다음 해제"
    else -> "Следующее открытие"
}

internal fun mrComicNextUnlockText(language: String, achievement: LibraryAchievement): String {
    val progress = if (achievement.progressCurrent != null && achievement.progressTarget != null) {
        "${achievement.progressCurrent}/${achievement.progressTarget}"
    } else {
        ""
    }
    return when (language) {
        "en" -> "${achievement.title} · $progress"
        "ja" -> "${achievement.title} ・ $progress"
        "zh" -> "${achievement.title} · $progress"
        "ko" -> "${achievement.title} · $progress"
        else -> "${achievement.title} · $progress"
    }
}

internal fun resolveMrComicStableDiscoveryAction(
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?,
    rememberedAchievementId: String?,
    rememberedActionName: String?
): MrComicDiscoveryAction {
    val proposed = mrComicDiscoveryHintAction(
        achievement = achievement,
        hasRecent = hasRecent,
        preferredSeriesName = preferredSeriesName,
        preferredCollectionQuery = preferredCollectionQuery
    )
    val rememberedAction = rememberedActionName
        ?.trim()
        ?.takeIf { it.isNotEmpty() && rememberedAchievementId == achievement.id.name }
        ?.let { runCatching { MrComicDiscoveryAction.valueOf(it) }.getOrNull() }
        ?: return proposed

    if (rememberedAction == proposed) return proposed
    if (!mrComicDiscoveryActionStillValid(
            action = rememberedAction,
            achievement = achievement,
            hasRecent = hasRecent,
            preferredSeriesName = preferredSeriesName,
            preferredCollectionQuery = preferredCollectionQuery
        )
    ) {
        return proposed
    }
    if (rememberedAction == MrComicDiscoveryAction.OPEN_FILES && proposed != MrComicDiscoveryAction.OPEN_FILES) {
        return proposed
    }
    return rememberedAction
}

internal fun mrComicDiscoveryActionStillValid(
    action: MrComicDiscoveryAction,
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?
): Boolean = when (achievement.id) {
    AchievementId.MARATHON -> when (action) {
        MrComicDiscoveryAction.OPEN_SERIES -> !preferredSeriesName.isNullOrBlank()
        MrComicDiscoveryAction.OPEN_RECENT -> hasRecent
        MrComicDiscoveryAction.OPEN_FILES -> true
        MrComicDiscoveryAction.OPEN_COLLECTION -> false
    }
    AchievementId.FIRST_COMPLETE,
    AchievementId.BOOKMARKER -> when (action) {
        MrComicDiscoveryAction.OPEN_RECENT -> hasRecent
        MrComicDiscoveryAction.OPEN_FILES -> true
        else -> false
    }
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> when (action) {
        MrComicDiscoveryAction.OPEN_COLLECTION -> !preferredCollectionQuery.isNullOrBlank()
        MrComicDiscoveryAction.OPEN_FILES -> true
        else -> false
    }
    else -> action == MrComicDiscoveryAction.OPEN_FILES
}

internal fun mrComicDiscoveryHintAction(
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?
): MrComicDiscoveryAction = when (achievement.id) {
    AchievementId.MARATHON -> when {
        !preferredSeriesName.isNullOrBlank() -> MrComicDiscoveryAction.OPEN_SERIES
        hasRecent -> MrComicDiscoveryAction.OPEN_RECENT
        else -> MrComicDiscoveryAction.OPEN_FILES
    }
    AchievementId.FIRST_COMPLETE,
    AchievementId.BOOKMARKER -> if (hasRecent) MrComicDiscoveryAction.OPEN_RECENT else MrComicDiscoveryAction.OPEN_FILES
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> if (!preferredCollectionQuery.isNullOrBlank()) {
        MrComicDiscoveryAction.OPEN_COLLECTION
    } else {
        MrComicDiscoveryAction.OPEN_FILES
    }
    else -> MrComicDiscoveryAction.OPEN_FILES
}

internal fun mrComicQuestType(
    achievement: LibraryAchievement,
    hintAction: MrComicDiscoveryAction
): MrComicQuestType = when (achievement.id) {
    AchievementId.FIRST_BOOK,
    AchievementId.READER,
    AchievementId.COLLECTOR -> MrComicQuestType.START_TITLE
    AchievementId.FIRST_COMPLETE -> MrComicQuestType.FINISH_TITLE
    AchievementId.MARATHON -> if (hintAction == MrComicDiscoveryAction.OPEN_SERIES) {
        MrComicQuestType.FINISH_SERIES
    } else {
        MrComicQuestType.FINISH_TITLE
    }
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> MrComicQuestType.READ_COLLECTION
    AchievementId.BOOKMARKER -> MrComicQuestType.PIN_ROUTE
    AchievementId.SECRET_CAT -> MrComicQuestType.FIND_SECRET
}

internal fun mrComicQuestPriorityReason(
    achievement: LibraryAchievement,
    hintAction: MrComicDiscoveryAction,
    goalState: DailyReadingGoalState,
    hasRecent: Boolean
): MrComicQuestPriorityReason = when {
    goalState.enabled && goalState.isWeeklyPlanCompleted -> MrComicQuestPriorityReason.WEEKLY_RELAXED
    hintAction == MrComicDiscoveryAction.OPEN_SERIES -> MrComicQuestPriorityReason.SERIES_FOCUS
    hintAction == MrComicDiscoveryAction.OPEN_COLLECTION -> MrComicQuestPriorityReason.COLLECTION_PULL
    goalState.enabled && goalState.streakEnabled && goalState.currentStreak > 0 && hintAction == MrComicDiscoveryAction.OPEN_RECENT ->
        MrComicQuestPriorityReason.STREAK_SUPPORT
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted ->
        MrComicQuestPriorityReason.WEEKLY_PUSH
    goalState.enabled && !goalState.isCompleted && hintAction == MrComicDiscoveryAction.OPEN_RECENT && hasRecent ->
        MrComicQuestPriorityReason.LIVE_ROUTE
    goalState.enabled && !goalState.isCompleted ->
        MrComicQuestPriorityReason.DAILY_PUSH
    achievement.id in setOf(AchievementId.FIRST_BOOK, AchievementId.READER, AchievementId.COLLECTOR) ->
        MrComicQuestPriorityReason.SHELF_BUILD
    else -> MrComicQuestPriorityReason.ACHIEVEMENT_FOCUS
}

internal fun mrComicDiscoveryHintText(
    language: String,
    achievement: LibraryAchievement,
    questType: MrComicQuestType,
    collectionQuery: String?
): String {
    val remaining = achievement.remainingSteps ?: 0
    return when (achievement.id) {
        AchievementId.FIRST_BOOK,
        AchievementId.READER,
        AchievementId.COLLECTOR -> when (language) {
            "en" -> "Best route now: bring ${remaining} more title(s) onto the shelf from Files."
            "ja" -> "いまの近道: Files からあと ${remaining} 作品を棚に追加する。"
            "zh" -> "当前最短路线：从 Files 再加入 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: Files 에서 작품 ${remaining}개를 더 선반에 올리기."
            else -> "Лучший ход сейчас: добавить через Files ещё ${remaining} тайтл(ов) на полку."
        }
        AchievementId.FIRST_COMPLETE,
        AchievementId.MARATHON -> when {
            questType == MrComicQuestType.FINISH_SERIES -> when (language) {
                "en" -> "Best route now: close ${remaining} more title(s) inside the active series lane."
                "ja" -> "いまの近道: 動いているシリーズの流れの中で、あと ${remaining} 作品を読み切る。"
                "zh" -> "当前最短路线：沿着活跃系列这条线，再读完 ${remaining} 个作品。"
                "ko" -> "지금 가장 빠른 길: 살아 있는 시리즈 흐름 안에서 작품 ${remaining}개를 더 끝내기."
                else -> "Лучший ход сейчас: закрыть ещё ${remaining} тайтл(ов) внутри активной серии."
            }
            else -> when (language) {
            "en" -> "Best route now: finish ${remaining} more title(s) from your current reading trail."
            "ja" -> "いまの近道: 現在の読書ルートからあと ${remaining} 作品を読み切る。"
            "zh" -> "当前最短路线：从当前阅读轨迹里再读完 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: 지금 읽는 흐름에서 작품 ${remaining}개를 더 끝내기."
            else -> "Лучший ход сейчас: дочитать по текущему следу чтения ещё ${remaining} тайтл(ов)."
        }
        }
        AchievementId.AUTHOR_FAN -> when (language) {
            "en" -> "Best route now: keep one author collection warm for ${remaining} more title(s)${collectionQuery?.let { " in \"$it\"" }.orEmpty()}."
            "ja" -> "いまの近道: ${collectionQuery?.let { "「$it」" } ?: "ひとつの作者コレクション"} を軸に、あと ${remaining} 冊続ける。"
            "zh" -> "当前最短路线：围绕 ${collectionQuery?.let { "\u201c$it\u201d" } ?: "同一作者集合"} 再连续读 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: ${collectionQuery?.let { "\"$it\"" } ?: "한 작가 컬렉션"} 을 중심으로 작품 ${remaining}개를 더 이어 읽기."
            else -> "Лучший ход сейчас: держаться одной авторской подборки${collectionQuery?.let { " «$it»" }.orEmpty()} и добрать ещё ${remaining} тайтл(ов)."
        }
        AchievementId.GENRE_GOURMET -> when (language) {
            "en" -> "Best route now: open a genre collection${collectionQuery?.let { " \"$it\"" }.orEmpty()} and widen the shelf by ${remaining} more tag(s)."
            "ja" -> "いまの近道: ${collectionQuery?.let { "「$it」" } ?: "ジャンルコレクション"} を開き、棚の幅をあと ${remaining} 段広げる。"
            "zh" -> "当前最短路线：打开 ${collectionQuery?.let { "\u201c$it\u201d" } ?: "题材集合"}，再把书架的题材拓宽 ${remaining} 个标签。"
            "ko" -> "지금 가장 빠른 길: ${collectionQuery?.let { "\"$it\"" } ?: "장르 컬렉션"} 을 열고 선반의 폭을 태그 ${remaining}개만큼 더 넓히기."
            else -> "Лучший ход сейчас: открыть жанровую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и расширить полку ещё на ${remaining} тег(ов)."
        }
        AchievementId.BOOKMARKER -> when (language) {
            "en" -> "Best route now: pin one active favorite to turn it into a bookmark."
            "ja" -> "いまの近道: 読んでいる作品をひとつブックマークに留める。"
            "zh" -> "当前最短路线：把一个正在读的作品固定成书签。"
            "ko" -> "지금 가장 빠른 길: 읽는 작품 하나를 북마크로 고정하기."
            else -> "Лучший ход сейчас: закрепить один активный тайтл в закладках."
        }
        AchievementId.SECRET_CAT -> when (language) {
            "en" -> "A hidden route is still waiting."
            "ja" -> "まだ隠れたルートが残っています。"
            "zh" -> "还有一条隐藏路线在等你。"
            "ko" -> "아직 숨겨진 길이 남아 있습니다."
            else -> "Где-то ещё остался скрытый путь."
        }
    }
}

internal fun mrComicQuestPriorityReasonText(
    language: String,
    reason: MrComicQuestPriorityReason,
    goalState: DailyReadingGoalState
): String = when (reason) {
    MrComicQuestPriorityReason.LIVE_ROUTE -> when (language) {
        "en" -> "Why now: the active reading trail is still warm, so this quest can move with today's live route."
        "ja" -> "いまこれが前に出る理由: 読書トレイルがまだ温かく、このクエストは今日の流れと一緒に進められます。"
        "zh" -> "现在它排在前面的原因：活跃阅读路线还热着，这个任务可以顺着今天的阅读轨迹一起推进。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 읽기 흔적이 아직 살아 있어서 오늘의 실제 경로와 함께 밀 수 있습니다."
        else -> "Почему сейчас: активный читательский след ещё тёплый, и этот квест можно двигать прямо по живому маршруту чтения."
    }
    MrComicQuestPriorityReason.DAILY_PUSH -> when (language) {
        "en" -> "Why now: today's goal still needs pages, so this quest is the cleanest way to feed the daily rhythm."
        "ja" -> "いまこれが前に出る理由: 今日の目標にはまだページが必要で、このクエストがいちばん素直に日々のリズムを進めます。"
        "zh" -> "现在它排在前面的原因：今天的目标还需要页数，这条任务线是最顺手的日节奏推进方式。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 오늘 목표에 아직 페이지가 더 필요해서, 이 경로가 데일리 리듬을 가장 자연스럽게 밀어 줍니다."
        else -> "Почему сейчас: дневной цели ещё нужны страницы, и этот квест сейчас лучше всего кормит ежедневный ритм."
    }
    MrComicQuestPriorityReason.WEEKLY_PUSH -> when (language) {
        "en" -> "Why now: today's goal is already safe, so this quest is the best place to keep feeding the weekly plan."
        "ja" -> "いまこれが前に出る理由: 今日の目標はもう安全圏なので、このクエストが週間プランを進めるいちばん自然な場所です。"
        "zh" -> "现在它排在前面的原因：今天的目标已经稳住了，这条任务线最适合继续给周计划加速。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 오늘 목표는 이미 확보돼 있어서, 이제 이 경로가 주간 계획을 가장 자연스럽게 밀어 줍니다."
        else -> "Почему сейчас: цель на сегодня уже безопасна, и именно этот квест сейчас лучше всего тянет недельный план."
    }
    MrComicQuestPriorityReason.STREAK_SUPPORT -> when (language) {
        "en" -> "Why now: the streak is alive, so Mr.Comic keeps a quest that supports the same return path."
        "ja" -> "いまこれが前に出る理由: ストリークが続いているので、Mr.Comic は同じ戻り道を支えるクエストを前に置きます。"
        "zh" -> "现在它排在前面的原因：连读还活着，所以 Mr.Comic 会优先保留能支撑同一路径的任务。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 스트릭이 살아 있어서, Mr.Comic 이 같은 복귀 경로를 지켜 주는 퀘스트를 먼저 둡니다."
        else -> "Почему сейчас: серия жива, и Mr.Comic держит впереди квест, который поддерживает тот же маршрут возврата."
    }
    MrComicQuestPriorityReason.WEEKLY_RELAXED -> when (language) {
        "en" -> "Why now: the weekly plan is already closed, so Mr.Comic can push a calmer quest instead of pure urgency."
        "ja" -> "いまこれが前に出る理由: 週間プランはもう閉じているので、Mr.Comic は急ぎではなく、より静かなクエストを前に出せます。"
        "zh" -> "现在它排在前面的原因：周计划已经完成，所以 Mr.Comic 可以把更平静的任务推到前面，而不是继续追紧迫感。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 주간 계획이 이미 닫혀 있어서, Mr.Comic 이 이제는 더 차분한 퀘스트를 앞세울 수 있습니다."
        else -> "Почему сейчас: недельный план уже закрыт, и Mr.Comic может выдвинуть вперёд более спокойный квест, а не новую срочность."
    }
    MrComicQuestPriorityReason.SERIES_FOCUS -> when (language) {
        "en" -> "Why now: the active series is already visible, so Mr.Comic can turn one line into a cleaner completion arc."
        "ja" -> "いまこれが前に出る理由: 動いているシリーズが見えているので、Mr.Comic は一本の流れをそのまま読了アークへ変えられます。"
        "zh" -> "现在它排在前面的原因：活跃系列已经成形了，所以 Mr.Comic 可以把这条线顺势推进成一段完整完读。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 살아 있는 시리즈가 보여서, Mr.Comic 이 한 줄기를 더 깔끔한 완독 흐름으로 바꿀 수 있습니다."
        else -> "Почему сейчас: активная серия уже видна, и Mr.Comic может превратить одну живую линию в более чистую дугу дочитывания."
    }
    MrComicQuestPriorityReason.COLLECTION_PULL -> when (language) {
        "en" -> "Why now: a focused collection is already on the shelf, so this quest can guide you through a narrower, cleaner slice."
        "ja" -> "いまこれが前に出る理由: すでにまとまったコレクションが棚に見えていて、このクエストはもっと細くて明快な断面へ案内できます。"
        "zh" -> "现在它排在前面的原因：书架上已经有一组聚焦过的集合，这条任务可以把你带进更窄、更干净的一段路线。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 이미 모여 있는 컬렉션이 있어서, 이 퀘스트가 더 좁고 깔끔한 슬라이스로 안내할 수 있습니다."
        else -> "Почему сейчас: на полке уже есть собранная подборка, и этот квест ведёт в более узкий и чистый срез."
    }
    MrComicQuestPriorityReason.SHELF_BUILD -> when (language) {
        "en" -> "Why now: the shelf still needs weight, so this unlock grows the foundation Mr.Comic works from."
        "ja" -> "いまこれが前に出る理由: 棚にはまだ厚みが必要で、この解除が Mr.Comic の土台を育てます。"
        "zh" -> "现在它排在前面的原因：书架还需要厚度，这个解锁会直接增强 Mr.Comic 工作的基础。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 선반에 아직 무게가 더 필요해서, 이 해제가 Mr.Comic 이 움직일 기반을 키워 줍니다."
        else -> "Почему сейчас: полке ещё нужен вес, и это открытие укрепляет базу, от которой работает Mr.Comic."
    }
    MrComicQuestPriorityReason.ACHIEVEMENT_FOCUS -> when (language) {
        "en" -> "Why now: this unlock is simply the closest visible win on the shelf right now."
        "ja" -> "いまこれが前に出る理由: いま棚の上でいちばん近い、見えている達成だからです。"
        "zh" -> "现在它排在前面的原因：它就是当前书架上最近、最看得见的一个可达成目标。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 지금 선반에서 가장 가깝고 눈에 보이는 다음 승리이기 때문입니다."
        else -> "Почему сейчас: это просто самая близкая и видимая победа на полке в текущий момент."
    }
}

internal fun mrComicQuestLineTitle(language: String): String = when (language) {
    "en" -> "Quest line"
    "ja" -> "クエストライン"
    "zh" -> "任务路线"
    "ko" -> "퀘스트 라인"
    else -> "Линия квеста"
}

@Composable
internal fun mrComicQuestFeedbackContainerColor(tone: AchievementQuestFeedbackTone): Color = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.62f)
    AchievementQuestFeedbackTone.SWITCHED -> MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.52f)
    AchievementQuestFeedbackTone.CLEARED -> MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.82f)
}

@Composable
internal fun mrComicQuestFeedbackAccentColor(tone: AchievementQuestFeedbackTone): Color = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> MaterialTheme.colorScheme.tertiary
    AchievementQuestFeedbackTone.SWITCHED -> MaterialTheme.colorScheme.secondary
    AchievementQuestFeedbackTone.CLEARED -> MaterialTheme.colorScheme.primary
}

internal fun mrComicQuestFeedbackIcon(tone: AchievementQuestFeedbackTone): ImageVector = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> Icons.Default.CheckCircle
    AchievementQuestFeedbackTone.SWITCHED -> Icons.Default.Tune
    AchievementQuestFeedbackTone.CLEARED -> Icons.Default.RadioButtonUnchecked
}

internal fun mrComicQuestFeedbackToneLabel(
    language: String,
    tone: AchievementQuestFeedbackTone
): String = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "Reward locked in"
        "ja" -> "達成が固定されました"
        "zh" -> "奖励已锁定"
        "ko" -> "보상이 고정됨"
        else -> "Награда закреплена"
    }
    AchievementQuestFeedbackTone.SWITCHED -> when (language) {
        "en" -> "Shelf rebalanced"
        "ja" -> "棚の重心が更新されました"
        "zh" -> "书架重心已更新"
        "ko" -> "선반 우선순위 갱신"
        else -> "Баланс полки обновлён"
    }
    AchievementQuestFeedbackTone.CLEARED -> when (language) {
        "en" -> "Old route cleared"
        "ja" -> "前の導線を整理しました"
        "zh" -> "旧路线已清空"
        "ko" -> "이전 경로 정리됨"
        else -> "Старый маршрут снят"
    }
}

internal fun mrComicQuestFeedbackTitle(
    language: String,
    feedback: AchievementQuestTransition
): String = when (feedback.tone) {
    AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "Quest completed"
        "ja" -> "クエスト完了"
        "zh" -> "任务完成"
        "ko" -> "퀘스트 완료"
        else -> "Квест завершён"
    }
    AchievementQuestFeedbackTone.SWITCHED -> when (language) {
        "en" -> "Quest rerouted"
        "ja" -> "クエスト更新"
        "zh" -> "任务更新"
        "ko" -> "퀘스트 업데이트"
        else -> "Квест обновлён"
    }
    AchievementQuestFeedbackTone.CLEARED -> when (language) {
        "en" -> "Quest cleared"
        "ja" -> "クエスト整理"
        "zh" -> "任务清空"
        "ko" -> "퀘스트 정리"
        else -> "Квест очищен"
    }
}

internal fun mrComicQuestFeedbackText(
    language: String,
    feedback: AchievementQuestTransition
): String = when {
    feedback.tone == AchievementQuestFeedbackTone.COMPLETED && feedback.nextTitle != null -> when (language) {
        "en" -> "\"${feedback.previousTitle}\" is done. Mr.Comic now points the route toward \"${feedback.nextTitle}\"."
        "ja" -> "「${feedback.previousTitle}」は完了しました。Mr.Comic は次の導線を「${feedback.nextTitle}」へ向けています。"
        "zh" -> "\u201c${feedback.previousTitle}\u201d 已完成。Mr.Comic 现在把路线指向 \u201c${feedback.nextTitle}\u201d。"
        "ko" -> "\"${feedback.previousTitle}\" 퀘스트가 끝났습니다. 이제 Mr.Comic 이 \"${feedback.nextTitle}\" 쪽으로 길을 돌립니다."
        else -> "«${feedback.previousTitle}» закрыт. Теперь Mr.Comic ведёт маршрут к «${feedback.nextTitle}»."
    }
    feedback.tone == AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "\"${feedback.previousTitle}\" was the last visible route on the shelf."
        "ja" -> "「${feedback.previousTitle}」は棚の最後の見えているルートでした。"
        "zh" -> "\u201c${feedback.previousTitle}\u201d 是书架上最后一条可见路线。"
        "ko" -> "\"${feedback.previousTitle}\" 가 선반에 남아 있던 마지막 보이는 경로였습니다."
        else -> "«${feedback.previousTitle}» был последним видимым маршрутом на полке."
    }
    feedback.tone == AchievementQuestFeedbackTone.SWITCHED && feedback.nextTitle != null -> when (language) {
        "en" -> "The shelf shifted, so Mr.Comic now prioritizes \"${feedback.nextTitle}\" instead of \"${feedback.previousTitle}\"."
        "ja" -> "棚のバランスが変わったため、Mr.Comic は「${feedback.previousTitle}」より「${feedback.nextTitle}」を先に案内します。"
        "zh" -> "书架的重心变了，所以 Mr.Comic 现在会优先引导你去 \u201c${feedback.nextTitle}\u201d，而不是 \u201c${feedback.previousTitle}\u201d。"
        "ko" -> "선반의 무게중심이 바뀌어서, Mr.Comic 이 이제 \"${feedback.previousTitle}\" 대신 \"${feedback.nextTitle}\" 을 먼저 밀어 줍니다."
        else -> "Баланс полки сместился, и теперь Mr.Comic выдвигает «${feedback.nextTitle}» раньше, чем «${feedback.previousTitle}»."
    }
    else -> when (language) {
        "en" -> "The shelf shifted, and Mr.Comic has cleared the old route for now."
        "ja" -> "棚のバランスが変わり、Mr.Comic はいったん前の導線を片づけました。"
        "zh" -> "书架的重心变了，Mr.Comic 暂时把旧路线收了起来。"
        "ko" -> "선반의 무게중심이 바뀌어서, Mr.Comic 이 일단 예전 경로를 접어 두었습니다."
        else -> "Баланс полки сместился, и Mr.Comic пока убрал старый маршрут."
    }
}

internal fun mrComicQuestFeedbackReasonText(
    language: String,
    tone: AchievementQuestFeedbackTone,
    reason: MrComicQuestPriorityReason,
    goalState: DailyReadingGoalState
): String {
    val reasonText = mrComicQuestPriorityReasonText(
        language = language,
        reason = reason,
        goalState = goalState
    )
    return when (tone) {
        AchievementQuestFeedbackTone.COMPLETED -> when (language) {
            "en" -> "Why this route rose: ${reasonText.removePrefix("Why now: ")}"
            "ja" -> "この新しいルートが上がった理由: ${reasonText.removePrefix("いまこれが前に出る理由: ")}"
            "zh" -> "这条新路线升上来的原因：${reasonText.removePrefix("现在它排在前面的原因：")}"
            "ko" -> "이 새 경로가 올라온 이유: ${reasonText.removePrefix("지금 이 퀘스트가 앞에 오는 이유: ")}"
            else -> "Почему поднялся новый маршрут: ${reasonText.removePrefix("Почему сейчас: ")}"
        }
        AchievementQuestFeedbackTone.SWITCHED -> when (language) {
            "en" -> "Why the shelf rerouted: ${reasonText.removePrefix("Why now: ")}"
            "ja" -> "棚の重心が切り替わった理由: ${reasonText.removePrefix("いまこれが前に出る理由: ")}"
            "zh" -> "书架重心换到这里的原因：${reasonText.removePrefix("现在它排在前面的原因：")}"
            "ko" -> "선반 우선순위가 바뀐 이유: ${reasonText.removePrefix("지금 이 퀘스트가 앞에 오는 이유: ")}"
            else -> "Почему полка перекинула маршрут сюда: ${reasonText.removePrefix("Почему сейчас: ")}"
        }
        AchievementQuestFeedbackTone.CLEARED -> reasonText
    }
}

internal fun mrComicStagePreviewSearchText(language: String): String = when (language) {
    "en" -> "Search is still in focus, so Mr.Comic keeps this new stage gentle until you finish the current slice."
    "ja" -> "いまは検索が主役なので、Mr.Comic はこの新しいステージを現在の絞り込みが終わるまで静かに保っています。"
    "zh" -> "当前仍以搜索为主，所以 Mr.Comic 会先轻轻记住这个新阶段，等你看完这一组结果。"
    "ko" -> "지금은 검색이 중심이라서, Mr.Comic 이 이 새 단계를 현재 결과를 다 볼 때까지 조용히 붙들고 있습니다."
    else -> "Сейчас в фокусе поиск, поэтому Mr.Comic держит новую стадию спокойно и не перетягивает внимание с текущего среза."
}

internal fun mrComicQuestFeedbackSearchText(language: String): String = when (language) {
    "en" -> "Search is active now, so Mr.Comic keeps the current results in focus before pushing the next route."
    "ja" -> "いまは検索がアクティブなので、Mr.Comic は次の導線を強く押す前に現在の結果を優先しています。"
    "zh" -> "当前搜索仍在进行，所以 Mr.Comic 会先让你专注这组结果，再推进下一条路线。"
    "ko" -> "지금은 검색이 활성화되어 있어서, Mr.Comic 이 다음 경로를 밀기 전에 현재 결과에 먼저 집중합니다."
    else -> "Сейчас активен поиск, поэтому Mr.Comic сначала держит фокус на текущей выдаче, а уже потом толкает новый маршрут."
}

internal fun mrComicQuestFeedbackActionLabel(
    language: String,
    tone: AchievementQuestFeedbackTone,
    action: MrComicDiscoveryAction
): String {
    val routeLabel = mrComicDiscoveryActionLabel(language, action)
    return when (tone) {
        AchievementQuestFeedbackTone.COMPLETED -> when (language) {
            "en" -> "Follow new route: $routeLabel"
            "ja" -> "新しい導線へ: $routeLabel"
            "zh" -> "沿着新路线前进：$routeLabel"
            "ko" -> "새 경로로 이어가기: $routeLabel"
            else -> "Перейти на новый маршрут: $routeLabel"
        }
        AchievementQuestFeedbackTone.SWITCHED -> when (language) {
            "en" -> "Take updated route: $routeLabel"
            "ja" -> "更新された導線へ: $routeLabel"
            "zh" -> "走更新后的路线：$routeLabel"
            "ko" -> "업데이트된 경로로 이동: $routeLabel"
            else -> "Перейти на обновлённый маршрут: $routeLabel"
        }
        AchievementQuestFeedbackTone.CLEARED -> routeLabel
    }
}

internal fun mrComicQuestAnchorText(
    language: String,
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    hintAction: MrComicDiscoveryAction,
    collectionQuery: String?
): String = when (achievement.id) {
    AchievementId.FIRST_COMPLETE,
    AchievementId.MARATHON -> when {
        hintAction == MrComicDiscoveryAction.OPEN_SERIES -> when (language) {
            "en" -> "Anchor: open the series shelf and keep moving along one line until the next finish."
            "ja" -> "導線: シリーズの棚を開き、ひとつの流れを次の読了まで押し進める。"
            "zh" -> "锚点：打开系列书架，沿着同一条线一直推到下一次读完。"
            "ko" -> "앵커: 시리즈 선반을 열고 한 줄기를 다음 완독까지 계속 밀고 가기."
            else -> "Якорь: открой серию и двигай одну линию до следующего дочитывания."
        }
        hasRecent && hintAction == MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
            "en" -> "Anchor: reopen the current trail and carry that title to the next finish."
            "ja" -> "導線: いまの読書トレイルを開き直し、その作品を次の読了まで運ぶ。"
            "zh" -> "锚点：重新打开当前阅读轨迹，把这部作品带到下一次读完。"
            "ko" -> "앵커: 현재 읽기 흔적을 다시 열고 그 작품을 다음 완독까지 끌고 가기."
            else -> "Якорь: вернись в текущий след чтения и доведи этот тайтл до следующего финиша."
        }
        else -> when (language) {
            "en" -> "Anchor: pick one live title from Files first, then keep the route warm to the finish."
            "ja" -> "導線: まず Files から動いている作品をひとつ選び、そのまま読了まで温度を保つ。"
            "zh" -> "锚点：先从 Files 里挑一部活跃作品，再把这条路线一直保温到读完。"
            "ko" -> "앵커: 먼저 Files 에서 살아 있는 작품 하나를 고른 뒤, 그 경로를 완독까지 식히지 않기."
            else -> "Якорь: сначала подхвати живой тайтл из Files и потом не давай маршруту остыть до финиша."
        }
    }
    AchievementId.BOOKMARKER -> when {
        hasRecent && hintAction == MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
            "en" -> "Anchor: open the current run and pin it the moment it feels worth saving."
            "ja" -> "導線: 今のランを開き、残したくなった瞬間にブックマークへ留める。"
            "zh" -> "锚点：打开当前阅读，在想留下来的那一刻把它钉成书签。"
            "ko" -> "앵커: 현재 읽기를 열고 남겨 둘 가치가 생기는 순간 바로 북마크로 고정하기."
            else -> "Якорь: открой текущее чтение и закрепи его в тот момент, когда захочется сохранить точку."
        }
        else -> when (language) {
            "en" -> "Anchor: start one live route from Files first, then turn it into a bookmark."
            "ja" -> "導線: まず Files からひとつ動くルートを作り、それをブックマークに変える。"
            "zh" -> "锚点：先从 Files 开出一条活路线，再把它变成书签。"
            "ko" -> "앵커: 먼저 Files 에서 살아 있는 경로 하나를 시작한 뒤 그것을 북마크로 바꾸기."
            else -> "Якорь: сначала заведи живой маршрут через Files, а затем преврати его в закладку."
        }
    }
    AchievementId.AUTHOR_FAN -> when (language) {
        "en" -> "Anchor: open${collectionQuery?.let { " \"$it\"" } ?: " one author collection"} and keep that author in rotation before branching wider."
        "ja" -> "導線: ${collectionQuery?.let { "「$it」" } ?: "ひとつの作者コレクション"} を開き、その流れを保ってから外へ広げる。"
        "zh" -> "锚点：先打开 ${collectionQuery?.let { "\u201c$it\u201d" } ?: "一个作者集合"}，把这条作者线稳住，再往外扩。"
        "ko" -> "앵커: ${collectionQuery?.let { "\"$it\"" } ?: "한 작가 컬렉션"} 을 열고 그 흐름을 붙든 뒤 바깥으로 넓히기."
        else -> "Якорь: сначала открой авторскую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и удержи эту линию, а уже потом расширяй полку."
    }
    AchievementId.GENRE_GOURMET -> when (language) {
        "en" -> "Anchor: open${collectionQuery?.let { " \"$it\"" } ?: " a genre collection"} and widen the shelf on purpose instead of circling the same tags."
        "ja" -> "導線: ${collectionQuery?.let { "「$it」" } ?: "ジャンルコレクション"} を開き、同じタグを回らず意図して幅を広げる。"
        "zh" -> "锚点：先打开 ${collectionQuery?.let { "\u201c$it\u201d" } ?: "题材集合"}，别总绕着同一批标签转，而是主动扩开书架。"
        "ko" -> "앵커: ${collectionQuery?.let { "\"$it\"" } ?: "장르 컬렉션"} 을 열고 같은 태그만 맴돌지 말고 의도적으로 폭을 넓히기."
        else -> "Якорь: открой жанровую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и специально расширяй полку, а не ходи по кругу тех же тегов."
    }
    else -> when (language) {
        "en" -> "Anchor: use Files as the cleanest route and let the shelf grow in one place."
        "ja" -> "導線: いちばん素直な入口として Files を使い、棚を一か所で育てる。"
        "zh" -> "锚点：把 Files 当成最干净的入口，让书架在一个地方长起来。"
        "ko" -> "앵커: 가장 깔끔한 입구인 Files 를 써서 선반을 한곳에서 키우기."
        else -> "Якорь: используй Files как самый чистый вход и наращивай полку из одной точки."
    }
}

internal fun mrComicDiscoveryActionLabel(language: String, action: MrComicDiscoveryAction): String = when (action) {
    MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
        "en" -> "Open current trail"
        "ja" -> "いまの読書を開く"
        "zh" -> "打开当前阅读"
        "ko" -> "현재 읽기 열기"
        else -> "Открыть текущее чтение"
    }
    MrComicDiscoveryAction.OPEN_FILES -> when (language) {
        "en" -> "Open Files"
        "ja" -> "Files を開く"
        "zh" -> "打开 Files"
        "ko" -> "Files 열기"
        else -> "Открыть Files"
    }
    MrComicDiscoveryAction.OPEN_SERIES -> when (language) {
        "en" -> "Open series"
        "ja" -> "シリーズを開く"
        "zh" -> "打开系列"
        "ko" -> "시리즈 열기"
        else -> "Открыть серию"
    }
    MrComicDiscoveryAction.OPEN_COLLECTION -> when (language) {
        "en" -> "Open collection"
        "ja" -> "コレクションを開く"
        "zh" -> "打开集合"
        "ko" -> "컬렉션 열기"
        else -> "Открыть подборку"
    }
}

internal fun mrComicQuestTypeLabel(language: String, questType: MrComicQuestType): String = when (questType) {
    MrComicQuestType.START_TITLE -> when (language) {
        "en" -> "Start title"
        "ja" -> "作品を始める"
        "zh" -> "开始作品"
        "ko" -> "작품 시작"
        else -> "Начать тайтл"
    }
    MrComicQuestType.FINISH_TITLE -> when (language) {
        "en" -> "Finish title"
        "ja" -> "作品を読み切る"
        "zh" -> "读完作品"
        "ko" -> "작품 완독"
        else -> "Дочитать тайтл"
    }
    MrComicQuestType.FINISH_SERIES -> when (language) {
        "en" -> "Finish series"
        "ja" -> "シリーズを進める"
        "zh" -> "推进系列"
        "ko" -> "시리즈 진행"
        else -> "Довести серию"
    }
    MrComicQuestType.READ_COLLECTION -> when (language) {
        "en" -> "Read collection"
        "ja" -> "コレクションを読む"
        "zh" -> "阅读集合"
        "ko" -> "컬렉션 읽기"
        else -> "Читать подборку"
    }
    MrComicQuestType.PIN_ROUTE -> when (language) {
        "en" -> "Pin route"
        "ja" -> "ルートを留める"
        "zh" -> "固定路线"
        "ko" -> "경로 고정"
        else -> "Закрепить маршрут"
    }
    MrComicQuestType.FIND_SECRET -> when (language) {
        "en" -> "Find secret"
        "ja" -> "秘密を探す"
        "zh" -> "寻找秘密"
        "ko" -> "비밀 찾기"
        else -> "Найти секрет"
    }
}

internal fun resolveMrComicCollectionQuery(
    achievementId: AchievementId?,
    rawAuthors: List<String?>,
    rawGenres: List<String?>
): String? = when (achievementId) {
    AchievementId.AUTHOR_FAN -> mrComicTopAuthorQuery(rawAuthors)
    AchievementId.GENRE_GOURMET -> mrComicTopGenreQuery(rawGenres)
    else -> null
}

private fun mrComicTopAuthorQuery(rawAuthors: List<String?>): String? =
    rawAuthors
        .mapNotNull { it?.trim()?.takeIf(String::isNotBlank) }
        .groupingBy { it }
        .eachCount()
        .maxByOrNull { it.value }
        ?.key

private fun mrComicTopGenreQuery(rawGenres: List<String?>): String? =
    rawGenres
        .flatMap { raw ->
            raw.orEmpty()
                .split(",", ";", "/")
                .map { it.trim() }
                .filter { it.isNotBlank() }
        }
        .groupingBy { it.lowercase() }
        .eachCount()
        .maxByOrNull { it.value }
        ?.key
        ?.replaceFirstChar { char -> if (char.isLowerCase()) char.titlecase() else char.toString() }

internal fun mrComicStagePreviewTitle(language: String): String = when (language) {
    "en" -> "New stage"
    "ja" -> "新しい段階"
    "zh" -> "新阶段"
    "ko" -> "새 단계"
    else -> "Новый этап"
}

internal fun mrComicStagePreviewCompactText(
    language: String,
    stage: MascotStage
): String {
    val label = mrComicSharedStageLabel(language, stage)
    return when (language) {
        "en" -> "$label is unlocked and safely waiting here."
        "ja" -> "${label} が開いていて、ここで静かに待っています。"
        "zh" -> "$label 已解锁，会安静地在这里等你。"
        "ko" -> "$label 단계가 열렸고, 여기서 조용히 기다리고 있습니다."
        else -> "Этап \"$label\" уже открыт и спокойно ждёт здесь."
    }
}

internal fun mrComicStagePreviewText(
    language: String,
    stage: MascotStage,
    progress: MascotProgressState
): String {
    val label = mrComicSharedStageLabel(language, stage)
    return when (language) {
        "en" -> "Mr.Comic reached $label with ${progress.xp} XP."
        "ja" -> "Mr.Comic は ${label} に到達しました。XP は ${progress.xp} です。"
        "zh" -> "Mr.Comic 已达到 $label，当前 ${progress.xp} XP。"
        "ko" -> "Mr.Comic 이 $label 단계에 도달했습니다. 현재 ${progress.xp} XP입니다."
        else -> "Mr.Comic достиг стадии \"$label\". Сейчас ${progress.xp} XP."
    }
}
