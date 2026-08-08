package io.leostrange.mrcomic.core.domain.analytics
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState

import io.leostrange.mrcomic.core.model.Comic

enum class MrComicMascotContext {
    HOME,
    LIBRARY,
    PROGRESS,
    RETURN,
    LEVEL_UP,
    IDLE
}

enum class MrComicMascotMood {
    STANDBY,
    LOCKED_IN,
    RHYTHM_LOCKED,
    BETWEEN_ARCS,
    ARCHIVIST,
    SHOWCASE,
    SETTLING_IN
}

data class MrComicMascotState(
    val stage: MascotStage = MascotStage.CHILD,
    val context: MrComicMascotContext = MrComicMascotContext.IDLE,
    val mood: MrComicMascotMood = MrComicMascotMood.STANDBY,
    val hasLibraryContent: Boolean = false,
    val hasActiveRead: Boolean = false,
    val hasLockedRhythm: Boolean = false,
    val hasArchiveTrail: Boolean = false,
    val hasAchievementShelf: Boolean = false
)

fun resolveMrComicMascotState(
    context: MrComicMascotContext,
    progress: MascotProgressState,
    totalTitles: Int,
    completedTitles: Int,
    bookmarkedTitles: Int = 0,
    quotesCount: Int = 0,
    unlockedCount: Int = 0,
    totalCount: Int = 0,
    secretUnlocked: Boolean = false,
    goalState: DailyReadingGoalState = DailyReadingGoalState(),
    recentComic: Comic? = null,
    acknowledgedStageName: String? = null,
    previewEnabled: Boolean = true
): MrComicMascotState {
    val hasActiveRead = recentComic?.readingProgress?.let { it in 0.05f..0.98f } == true
    val hasArchiveTrail = bookmarkedTitles >= 2 || quotesCount >= 3
    val hasAchievementShelf = secretUnlocked || (totalCount > 0 && unlockedCount * 2 >= totalCount)
    val hasLockedRhythm = goalState.enabled &&
        (goalState.isWeeklyPlanCompleted || (goalState.streakEnabled && goalState.currentStreak >= 3))
    val resolvedContext = resolveMrComicMascotContext(
        baseContext = context,
        currentStage = progress.stage,
        acknowledgedStageName = acknowledgedStageName,
        previewEnabled = previewEnabled,
        hasLibraryContent = totalTitles > 0,
        hasActiveRead = hasActiveRead
    )
    val mood = when {
        totalTitles == 0 -> MrComicMascotMood.STANDBY
        hasActiveRead -> MrComicMascotMood.LOCKED_IN
        hasLockedRhythm -> MrComicMascotMood.RHYTHM_LOCKED
        completedTitles == totalTitles && totalTitles > 0 -> MrComicMascotMood.BETWEEN_ARCS
        hasArchiveTrail -> MrComicMascotMood.ARCHIVIST
        hasAchievementShelf -> MrComicMascotMood.SHOWCASE
        else -> MrComicMascotMood.SETTLING_IN
    }
    return MrComicMascotState(
        stage = progress.stage,
        context = resolvedContext,
        mood = mood,
        hasLibraryContent = totalTitles > 0,
        hasActiveRead = hasActiveRead,
        hasLockedRhythm = hasLockedRhythm,
        hasArchiveTrail = hasArchiveTrail,
        hasAchievementShelf = hasAchievementShelf
    )
}

fun resolveMrComicMascotContext(
    baseContext: MrComicMascotContext,
    currentStage: MascotStage,
    acknowledgedStageName: String?,
    previewEnabled: Boolean,
    hasLibraryContent: Boolean,
    hasActiveRead: Boolean
): MrComicMascotContext = when {
    resolveMascotStagePreview(
        currentStage = currentStage,
        acknowledgedStageName = acknowledgedStageName,
        enabled = previewEnabled
    ) != null -> MrComicMascotContext.LEVEL_UP
    !hasLibraryContent -> MrComicMascotContext.IDLE
    baseContext == MrComicMascotContext.HOME && !hasActiveRead -> MrComicMascotContext.RETURN
    else -> baseContext
}

fun mrComicMascotMoodLabel(language: String, mood: MrComicMascotMood): String = when (mood) {
    MrComicMascotMood.STANDBY -> when (language) {
        "en" -> "Standby"
        "ja" -> "待機中"
        "zh" -> "待命中"
        "ko" -> "대기 중"
        else -> "В ожидании"
    }
    MrComicMascotMood.LOCKED_IN -> when (language) {
        "en" -> "Locked in"
        "ja" -> "集中中"
        "zh" -> "已进入状态"
        "ko" -> "집중 모드"
        else -> "В темпе"
    }
    MrComicMascotMood.RHYTHM_LOCKED -> when (language) {
        "en" -> "Rhythm locked"
        "ja" -> "リズム定着"
        "zh" -> "节奏已锁定"
        "ko" -> "리듬 고정"
        else -> "Ритм пойман"
    }
    MrComicMascotMood.BETWEEN_ARCS -> when (language) {
        "en" -> "Between arcs"
        "ja" -> "次の章へ"
        "zh" -> "准备下一段"
        "ko" -> "다음 아크 준비"
        else -> "Между арками"
    }
    MrComicMascotMood.ARCHIVIST -> when (language) {
        "en" -> "Archivist"
        "ja" -> "アーカイブ中"
        "zh" -> "整理档案中"
        "ko" -> "아카이브 중"
        else -> "Архивариус"
    }
    MrComicMascotMood.SHOWCASE -> when (language) {
        "en" -> "Showcase mode"
        "ja" -> "ショーケース"
        "zh" -> "展示模式"
        "ko" -> "전시 모드"
        else -> "Витрина"
    }
    MrComicMascotMood.SETTLING_IN -> when (language) {
        "en" -> "Settling in"
        "ja" -> "馴染み中"
        "zh" -> "逐渐适应"
        "ko" -> "적응 중"
        else -> "Осваивается"
    }
}

fun mrComicMascotMoodHeadline(
    language: String,
    mood: MrComicMascotMood,
    recentTitle: String?
): String = when (mood) {
    MrComicMascotMood.STANDBY -> when (language) {
        "en" -> "Mr.Comic is still laying out the shelf and waiting for the first real title."
        "ja" -> "Mr.Comic は棚を整えながら、最初の作品を待っています。"
        "zh" -> "Mr.Comic 还在整理书架，等第一部真正的作品进来。"
        "ko" -> "Mr.Comic 이 선반을 정리하면서 첫 작품을 기다리고 있습니다."
        else -> "Mr.Comic пока только раскладывает полку и ждёт первый настоящий тайтл."
    }
    MrComicMascotMood.LOCKED_IN -> {
        val safeTitle = recentTitle?.takeIf { it.isNotBlank() } ?: "..."
        when (language) {
            "en" -> "His attention is fixed on \"$safeTitle\". The current run is still alive."
            "ja" -> "いまの主役は「$safeTitle」です。読書の流れはまだ続いています。"
            "zh" -> "他现在盯着《$safeTitle》，这一轮阅读还在继续。"
            "ko" -> "\"$safeTitle\" 에 시선이 고정돼 있습니다. 이번 읽기 흐름은 아직 살아 있습니다."
            else -> "Сейчас всё внимание у него на «$safeTitle». Этот заход по чтению ещё жив."
        }
    }
    MrComicMascotMood.RHYTHM_LOCKED -> when (language) {
        "en" -> "The reading week already has shape, and Mr.Comic is keeping that pace steady."
        "ja" -> "今週の読書リズムはもう形になっています。Mr.Comic はその流れを安定して保っています。"
        "zh" -> "这周的阅读节奏已经成型，Mr.Comic 正在把它稳稳托住。"
        "ko" -> "이번 주 읽기 리듬이 이미 잡혔고, Mr.Comic 이 그 흐름을 안정적으로 붙들고 있습니다."
        else -> "Читательская неделя уже набрала форму, и Mr.Comic удерживает этот темп ровным."
    }
    MrComicMascotMood.BETWEEN_ARCS -> when (language) {
        "en" -> "The current shelf is cleared, so Mr.Comic is already scouting the next title."
        "ja" -> "今の棚は読み切りました。Mr.Comic はもう次の作品を探しています。"
        "zh" -> "当前这排作品已经读完了，Mr.Comic 已经在找下一部。"
        "ko" -> "지금 선반은 모두 읽었습니다. Mr.Comic 이 다음 작품을 찾고 있습니다."
        else -> "Текущая полка уже закрыта, и Mr.Comic присматривает следующий тайтл."
    }
    MrComicMascotMood.ARCHIVIST -> when (language) {
        "en" -> "Bookmarks and quotes are already forming a reading trail that Mr.Comic can work with."
        "ja" -> "ブックマークと引用が積み上がり、Mr.Comic の読書マップができ始めています。"
        "zh" -> "书签和摘录已经开始组成一条可追踪的阅读轨迹。"
        "ko" -> "북마크와 문구가 쌓이면서 Mr.Comic 이 따라갈 읽기 궤적이 생기고 있습니다."
        else -> "Закладки и цитаты уже складываются в читательский след, с которым Mr.Comic может работать."
    }
    MrComicMascotMood.SHOWCASE -> when (language) {
        "en" -> "The achievement shelf already has enough weight for Mr.Comic to treat it like a proper display."
        "ja" -> "実績の棚に厚みが出てきて、Mr.Comic も本格的な展示のように扱っています。"
        "zh" -> "成就陈列架已经有分量了，Mr.Comic 也开始把这里当成正式展示区。"
        "ko" -> "업적 선반에 제법 무게가 생겨서 Mr.Comic 도 여길 제대로 된 전시 공간처럼 다루고 있습니다."
        else -> "Полка достижений уже набрала вес, и Mr.Comic начинает относиться к ней как к настоящей витрине."
    }
    MrComicMascotMood.SETTLING_IN -> when (language) {
        "en" -> "Mr.Comic is learning the shape of your library and adjusting to your reading pace."
        "ja" -> "Mr.Comic はライブラリの輪郭を覚えながら、読書のテンポに合わせ始めています。"
        "zh" -> "Mr.Comic 正在熟悉你的书库节奏，并慢慢贴合你的阅读方式。"
        "ko" -> "Mr.Comic 이 라이브러리의 결을 익히면서 읽기 리듬에 맞춰 가고 있습니다."
        else -> "Mr.Comic привыкает к библиотеке и постепенно подстраивается под твой темп чтения."
    }
}

fun mrComicMascotFocusText(language: String, mood: MrComicMascotMood): String = when (mood) {
    MrComicMascotMood.STANDBY -> when (language) {
        "en" -> "Focus: bring the first titles onto the shelf."
        "ja" -> "フォーカス: 最初の作品を棚に並べる。"
        "zh" -> "当前重点：把第一批作品放上书架。"
        "ko" -> "집중 포인트: 첫 작품들을 선반에 올리기."
        else -> "Фокус: поставить на полку первые тайтлы."
    }
    MrComicMascotMood.LOCKED_IN -> when (language) {
        "en" -> "Focus: keep the route back to your latest session open."
        "ja" -> "フォーカス: 最新の読書セッションへ戻る導線を保つ。"
        "zh" -> "当前重点：保持回到最近阅读的位置。"
        "ko" -> "집중 포인트: 최근 읽던 세션으로 돌아가는 길 유지하기."
        else -> "Фокус: держать открытым путь к последней сессии."
    }
    MrComicMascotMood.RHYTHM_LOCKED -> when (language) {
        "en" -> "Focus: keep the weekly pace calm and consistent."
        "ja" -> "フォーカス: 週のリズムを穏やかに崩さず保つ。"
        "zh" -> "当前重点：平稳维持这周的阅读节奏。"
        "ko" -> "집중 포인트: 주간 리듬을 차분하고 꾸준하게 유지하기."
        else -> "Фокус: спокойно и ровно держать недельный темп."
    }
    MrComicMascotMood.BETWEEN_ARCS -> when (language) {
        "en" -> "Focus: line up the next title without losing the reading habit."
        "ja" -> "フォーカス: 読書習慣を切らさず、次の作品を並べる。"
        "zh" -> "当前重点：不断掉阅读习惯地接上下一部。"
        "ko" -> "집중 포인트: 읽기 흐름을 끊지 않고 다음 작품으로 잇기."
        else -> "Фокус: подхватить следующий тайтл, не теряя привычку читать."
    }
    MrComicMascotMood.ARCHIVIST -> when (language) {
        "en" -> "Focus: keep the bookmark and quote trail useful."
        "ja" -> "フォーカス: ブックマークと引用の導線を使いやすく保つ。"
        "zh" -> "当前重点：让书签和摘录继续形成有用的轨迹。"
        "ko" -> "집중 포인트: 북마크와 문구 경로를 계속 쓸모 있게 유지하기."
        else -> "Фокус: держать полезным след из закладок и цитат."
    }
    MrComicMascotMood.SHOWCASE -> when (language) {
        "en" -> "Focus: turn progress into a shelf worth revisiting."
        "ja" -> "フォーカス: 成長を何度も見返したくなる棚にする。"
        "zh" -> "当前重点：把进度变成值得回看的陈列架。"
        "ko" -> "집중 포인트: 성장을 다시 보고 싶은 선반으로 만들기."
        else -> "Фокус: превращать прогресс в полку, к которой хочется возвращаться."
    }
    MrComicMascotMood.SETTLING_IN -> when (language) {
        "en" -> "Focus: let the reading pattern become clear before pushing harder."
        "ja" -> "フォーカス: 急がず、まずは読書パターンをはっきりさせる。"
        "zh" -> "当前重点：先让阅读节奏成型，不着急加压。"
        "ko" -> "집중 포인트: 서두르지 말고 먼저 읽기 패턴을 또렷하게 만들기."
        else -> "Фокус: сначала дать читательскому ритму проявиться, без лишнего нажима."
    }
}

fun mrComicMascotContextLabel(language: String, context: MrComicMascotContext): String = when (context) {
    MrComicMascotContext.HOME -> when (language) {
        "en" -> "Home"
        "ja" -> "ホーム"
        "zh" -> "主页"
        "ko" -> "홈"
        else -> "Домой"
    }
    MrComicMascotContext.LIBRARY -> when (language) {
        "en" -> "Library"
        "ja" -> "ライブラリ"
        "zh" -> "书库"
        "ko" -> "라이브러리"
        else -> "Библиотека"
    }
    MrComicMascotContext.PROGRESS -> when (language) {
        "en" -> "Progress"
        "ja" -> "進捗"
        "zh" -> "进度"
        "ko" -> "진행도"
        else -> "Прогресс"
    }
    MrComicMascotContext.RETURN -> when (language) {
        "en" -> "Return"
        "ja" -> "復帰"
        "zh" -> "回归"
        "ko" -> "복귀"
        else -> "Возврат"
    }
    MrComicMascotContext.LEVEL_UP -> when (language) {
        "en" -> "Level up"
        "ja" -> "成長"
        "zh" -> "升级"
        "ko" -> "성장"
        else -> "Рост"
    }
    MrComicMascotContext.IDLE -> when (language) {
        "en" -> "Idle"
        "ja" -> "待機"
        "zh" -> "待机"
        "ko" -> "대기"
        else -> "Пауза"
    }
}

fun mrComicMascotContextText(language: String, context: MrComicMascotContext): String = when (context) {
    MrComicMascotContext.HOME -> when (language) {
        "en" -> "Mr.Comic is holding the main reading route in view."
        "ja" -> "Mr.Comic はメインの読書ルートを見失わないようにしています。"
        "zh" -> "Mr.Comic 正在把主阅读路线稳稳放在前面。"
        "ko" -> "Mr.Comic 이 메인 읽기 경로를 계속 눈앞에 두고 있습니다."
        else -> "Mr.Comic держит в фокусе главный маршрут чтения."
    }
    MrComicMascotContext.LIBRARY -> when (language) {
        "en" -> "Mr.Comic is shaping the library hub around your current reading state."
        "ja" -> "Mr.Comic は今の読書状態に合わせてライブラリのハブを整えています。"
        "zh" -> "Mr.Comic 正在按你当前的阅读状态整理书库中枢。"
        "ko" -> "Mr.Comic 이 지금의 읽기 상태에 맞춰 라이브러리 허브를 정리하고 있습니다."
        else -> "Mr.Comic подстраивает библиотечный хаб под текущее состояние чтения."
    }
    MrComicMascotContext.PROGRESS -> when (language) {
        "en" -> "This view keeps Mr.Comic focused on long-term growth instead of the next immediate route."
        "ja" -> "この画面では、Mr.Comic は次の一歩よりも長期の成長に目を向けています。"
        "zh" -> "在这个页面里，Mr.Comic 看的不是下一步，而是更长线的成长轨迹。"
        "ko" -> "이 화면에서 Mr.Comic 은 다음 한 걸음보다 장기 성장에 집중합니다."
        else -> "Здесь Mr.Comic смотрит не на следующий маршрут, а на длинную линию роста."
    }
    MrComicMascotContext.RETURN -> when (language) {
        "en" -> "Mr.Comic is keeping a gentle return path warm for the next reading session."
        "ja" -> "Mr.Comic は次の読書セッションへ戻る穏やかな道を温かく保っています。"
        "zh" -> "Mr.Comic 正在为下一次阅读保留一条温和的回归路线。"
        "ko" -> "Mr.Comic 이 다음 읽기 세션으로 돌아올 부드러운 경로를 따뜻하게 유지하고 있습니다."
        else -> "Mr.Comic держит тёплый и спокойный путь возврата к следующей сессии."
    }
    MrComicMascotContext.LEVEL_UP -> when (language) {
        "en" -> "Mr.Comic is briefly in growth mode while the new stage settles in."
        "ja" -> "新しい段階が定着するまで、Mr.Comic は短く成長モードに入っています。"
        "zh" -> "在新阶段落稳之前，Mr.Comic 会短暂进入成长模式。"
        "ko" -> "새 단계가 자리잡는 동안 Mr.Comic 이 잠시 성장 모드에 들어가 있습니다."
        else -> "Пока новая стадия закрепляется, Mr.Comic ненадолго переходит в режим роста."
    }
    MrComicMascotContext.IDLE -> when (language) {
        "en" -> "Mr.Comic is idle for now and waiting for the next real reading signal."
        "ja" -> "今は待機中で、次の本当の読書シグナルを待っています。"
        "zh" -> "Mr.Comic 现在处于待机状态，等下一次真正的阅读信号。"
        "ko" -> "Mr.Comic 이 잠시 대기하면서 다음 실제 읽기 신호를 기다리고 있습니다."
        else -> "Сейчас Mr.Comic в спокойной паузе и ждёт следующий настоящий сигнал чтения."
    }
}
