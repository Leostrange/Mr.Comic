package io.leostrange.mrcomic.ui

data class ContinueScreenText(
    val title: String,
    val introWithLibrary: String,
    val introEmptyLibrary: String,
    val mascotTitle: String,
    val progressTitle: String,
    val progressNeutralHint: String,
    val mascotEmptyLibraryHint: String,
    val mascotIdleHint: String,
    val mascotActiveHint: (Int) -> String,
    val checkpointRecap: (String, String, Int) -> String,
    val checkpointUpdatedAt: (String) -> String,
    val checkpointDismiss: String,
    val dailyGoalProgress: (Int, Int) -> String,
    val dailyGoalCompleted: (Int) -> String,
    val dailyGoalRemaining: (Int) -> String,
    val weeklyPlanProgress: (Int, Int) -> String,
    val weeklyPlanCompletedDays: (Int) -> String,
    val weeklyPlanCompleted: (Int) -> String,
    val weeklyPlanRemaining: (Int, Int) -> String,
    val readingCalendarTitle: String,
    val readingCalendarSummary: (Int, Int) -> String,
    val openProgressProfile: String,
    val currentlyReading: String,
    val inProgressCount: (Int) -> String,
    val emptyLibraryTitle: String,
    val emptyLibraryHint: String,
    val openLibrary: String,
    val emptyReadingTitle: String,
    val emptyReadingHint: String,
    val continueReading: String,
    val pageProgress: (Int, Int) -> String,
    val progressRead: (Int) -> String
)

data class AppIconScreenText(
    val title: String,
    val back: String,
    val personalizationTitle: String,
    val personalizationHint: String,
    val restartHint: String,
    val selected: String,
    val applyFailed: String,
    val applyFailedWithDetail: (String) -> String
)

data class CrashReportText(
    val previousCrash: String,
    val shareLog: String,
    val continueAction: String,
    val shareChooserTitle: String,
    val shareSubject: String
)

fun continueScreenText(language: String): ContinueScreenText = when (language) {
    "en" -> ContinueScreenText(
        title = "Continue",
        introWithLibrary = "Only what you're reading right now lives here: a quiet continue screen without extra shelves or storefront noise.",
        introEmptyLibrary = "Start with your first book or comic and build a calm library around reading.",
        mascotTitle = "Mr.Comic is nearby",
        progressTitle = "Progress is nearby",
        progressNeutralHint = "Reading progress, stage and rhythm stay here without mascot prompts.",
        mascotEmptyLibraryHint = "Add your first title and Mr.Comic will keep progress and milestones gentle and out of the way.",
        mascotIdleHint = "When you return to reading, Mr.Comic will highlight natural checkpoints instead of interrupting every session.",
        mascotActiveHint = { count -> "You already have $count title${if (count == 1) "" else "s"} in progress. Mr.Comic only reacts to meaningful reading milestones." },
        checkpointRecap = { comicTitle, chapterTitle, page -> "Last checkpoint · $comicTitle · $chapterTitle · page $page" },
        checkpointUpdatedAt = { timestamp -> "Updated $timestamp" },
        checkpointDismiss = "Dismiss",
        dailyGoalProgress = { progress, target -> "Today · $progress/$target pages" },
        dailyGoalCompleted = { target -> "Daily goal reached · $target pages" },
        dailyGoalRemaining = { remaining -> "$remaining pages left for today" },
        weeklyPlanProgress = { progress, target -> "This week · $progress/$target pages" },
        weeklyPlanCompletedDays = { days -> "$days of 7 goal days already locked in" },
        weeklyPlanCompleted = { target -> "Weekly plan reached · $target pages" },
        weeklyPlanRemaining = { remaining, days -> "$remaining pages left this week · goal days: $days/7" },
        readingCalendarTitle = "Reading rhythm",
        readingCalendarSummary = { activeDays, goalDays -> "$activeDays of 7 days had reading · goal days: $goalDays" },
        openProgressProfile = "Open profile",
        currentlyReading = "Reading now",
        inProgressCount = { count -> if (count == 1) "1 in progress" else "$count in progress" },
        emptyLibraryTitle = "Your library is still empty",
        emptyLibraryHint = "Open the library to add CBZ, CBR, PDF, EPUB, or FB2 files and come right back to reading.",
        openLibrary = "Open library",
        emptyReadingTitle = "Nothing is being read right now",
        emptyReadingHint = "This screen only shows titles with unfinished reading progress.",
        continueReading = "Continue reading",
        pageProgress = { page, percent -> "Page $page · $percent%" },
        progressRead = { percent -> "$percent% read" }
    )
    "ja" -> ContinueScreenText(
        title = "続きを読む",
        introWithLibrary = "ここには今読んでいる作品だけを表示します。余計な棚やショーケースのない、静かな続き読み画面です。",
        introEmptyLibrary = "最初の一冊から始めて、読書のための落ち着いたライブラリを作りましょう。",
        mascotTitle = "Mr.Comic がそばにいます",
        progressTitle = "進捗はここにあります",
        progressNeutralHint = "読書の進捗、段階、リズムは、マスコットの演出なしでここにまとまります。",
        mascotEmptyLibraryHint = "最初の作品を追加すると、Mr.Comic が静かに進捗と節目を見守ります。",
        mascotIdleHint = "読書に戻ったときだけ、Mr.Comic が自然な区切りをそっと知らせます。",
        mascotActiveHint = { count -> "現在 $count 件が進行中です。Mr.Comic は意味のある節目にだけ反応します。" },
        checkpointRecap = { comicTitle, chapterTitle, page -> "最後の区切り · $comicTitle · $chapterTitle · ${page}ページ" },
        checkpointUpdatedAt = { timestamp -> "更新 $timestamp" },
        checkpointDismiss = "閉じる",
        dailyGoalProgress = { progress, target -> "今日 · ${progress}/${target}ページ" },
        dailyGoalCompleted = { target -> "今日の目標を達成 · ${target}ページ" },
        dailyGoalRemaining = { remaining -> "あと ${remaining}ページ" },
        weeklyPlanProgress = { progress, target -> "今週 · ${progress}/${target}ページ" },
        weeklyPlanCompletedDays = { days -> "目標達成日は 7 日中 $days 日" },
        weeklyPlanCompleted = { target -> "今週の計画を達成 · ${target}ページ" },
        weeklyPlanRemaining = { remaining, days -> "今週あと ${remaining}ページ ・ 達成日は $days/7" },
        readingCalendarTitle = "読書リズム",
        readingCalendarSummary = { activeDays, goalDays -> "7日間で読んだ日: $activeDays ・ 目標達成日: $goalDays" },
        openProgressProfile = "プロフィールを開く",
        currentlyReading = "いま読んでいるもの",
        inProgressCount = { count -> "進行中 $count 件" },
        emptyLibraryTitle = "ライブラリはまだ空です",
        emptyLibraryHint = "ライブラリを開いて CBZ、CBR、PDF、EPUB、FB2 を追加すると、すぐここから続きを読むことができます。",
        openLibrary = "ライブラリを開く",
        emptyReadingTitle = "いま読んでいる作品はありません",
        emptyReadingHint = "この画面には、まだ読み終えていない作品だけが表示されます。",
        continueReading = "続きを読む",
        pageProgress = { page, percent -> "$page ページ · $percent%" },
        progressRead = { percent -> "$percent% 読了" }
    )
    "zh" -> ContinueScreenText(
        title = "继续",
        introWithLibrary = "这里仅显示你当前正在阅读的内容：没有多余书架和展示的安静继续阅读页。",
        introEmptyLibrary = "从第一本书或漫画开始，慢慢建立一个适合阅读的安静书库。",
        mascotTitle = "Mr.Comic 在旁边",
        progressTitle = "进度就在这里",
        progressNeutralHint = "阅读进度、阶段和节奏会留在这里，不带任何吉祥物提示。",
        mascotEmptyLibraryHint = "添加第一本作品后，Mr.Comic 会以轻量的方式记录进度和里程碑。",
        mascotIdleHint = "等你再次开始阅读时，Mr.Comic 只会在自然节点轻轻提示。",
        mascotActiveHint = { count -> "目前有 $count 个进行中的作品。Mr.Comic 只会在真正的阅读里程碑出现。" },
        checkpointRecap = { comicTitle, chapterTitle, page -> "上次节点 · $comicTitle · $chapterTitle · 第 $page 页" },
        checkpointUpdatedAt = { timestamp -> "更新于 $timestamp" },
        checkpointDismiss = "关闭",
        dailyGoalProgress = { progress, target -> "今天 · $progress/$target 页" },
        dailyGoalCompleted = { target -> "今日目标已完成 · $target 页" },
        dailyGoalRemaining = { remaining -> "今天还差 $remaining 页" },
        weeklyPlanProgress = { progress, target -> "本周 · $progress/$target 页" },
        weeklyPlanCompletedDays = { days -> "本周已完成目标日：$days/7" },
        weeklyPlanCompleted = { target -> "本周计划已完成 · $target 页" },
        weeklyPlanRemaining = { remaining, days -> "本周还差 $remaining 页 · 目标日：$days/7" },
        readingCalendarTitle = "阅读节奏",
        readingCalendarSummary = { activeDays, goalDays -> "最近 7 天有 $activeDays 天在读 · 达标日：$goalDays" },
        openProgressProfile = "打开档案",
        currentlyReading = "正在阅读",
        inProgressCount = { count -> "进行中 $count 本" },
        emptyLibraryTitle = "你的书库还是空的",
        emptyLibraryHint = "打开书库并添加 CBZ、CBR、PDF、EPUB 或 FB2 文件，然后就能马上回到阅读。",
        openLibrary = "打开书库",
        emptyReadingTitle = "当前没有正在阅读的内容",
        emptyReadingHint = "这个页面只显示阅读进度尚未完成的作品。",
        continueReading = "继续阅读",
        pageProgress = { page, percent -> "第 $page 页 · $percent%" },
        progressRead = { percent -> "已读 $percent%" }
    )
    "ko" -> ContinueScreenText(
        title = "계속",
        introWithLibrary = "여기에는 지금 읽고 있는 작품만 표시됩니다. 불필요한 선반과 전시 없이 조용하게 이어 읽는 화면입니다.",
        introEmptyLibrary = "첫 책이나 코믹부터 시작해서 읽기에 집중되는 차분한 라이브러리를 만들어 보세요.",
        mascotTitle = "Mr.Comic 이 곁에 있어요",
        progressTitle = "진행은 여기 있어요",
        progressNeutralHint = "읽기 진행도, 단계, 리듬은 마스코트 연출 없이 여기서 차분하게 유지됩니다.",
        mascotEmptyLibraryHint = "첫 작품을 추가하면 Mr.Comic 이 조용하게 진행도와 체크포인트를 챙겨 줍니다.",
        mascotIdleHint = "다시 읽기 시작할 때만 Mr.Comic 이 자연스러운 읽기 구간을 부드럽게 알려 줍니다.",
        mascotActiveHint = { count -> "현재 ${count}개가 진행 중입니다. Mr.Comic 은 의미 있는 읽기 이정표에만 반응합니다." },
        checkpointRecap = { comicTitle, chapterTitle, page -> "최근 체크포인트 · $comicTitle · $chapterTitle · ${page}쪽" },
        checkpointUpdatedAt = { timestamp -> "${timestamp}에 업데이트" },
        checkpointDismiss = "닫기",
        dailyGoalProgress = { progress, target -> "오늘 · ${progress}/${target}페이지" },
        dailyGoalCompleted = { target -> "오늘 목표 달성 · ${target}페이지" },
        dailyGoalRemaining = { remaining -> "오늘 ${remaining}페이지 남음" },
        weeklyPlanProgress = { progress, target -> "이번 주 · ${progress}/${target}페이지" },
        weeklyPlanCompletedDays = { days -> "목표 달성일 ${days}/7일" },
        weeklyPlanCompleted = { target -> "이번 주 계획 달성 · ${target}페이지" },
        weeklyPlanRemaining = { remaining, days -> "이번 주 ${remaining}페이지 남음 · 목표일 ${days}/7" },
        readingCalendarTitle = "읽기 리듬",
        readingCalendarSummary = { activeDays, goalDays -> "최근 7일 중 읽은 날 ${activeDays}일 · 목표일 ${goalDays}일" },
        openProgressProfile = "프로필 열기",
        currentlyReading = "지금 읽는 중",
        inProgressCount = { count -> "진행 중 ${count}개" },
        emptyLibraryTitle = "라이브러리가 아직 비어 있습니다",
        emptyLibraryHint = "라이브러리를 열어 CBZ, CBR, PDF, EPUB, FB2 파일을 추가하면 바로 여기서 다시 읽을 수 있습니다.",
        openLibrary = "라이브러리 열기",
        emptyReadingTitle = "현재 읽는 작품이 없습니다",
        emptyReadingHint = "이 화면에는 읽기 진행이 끝나지 않은 작품만 표시됩니다.",
        continueReading = "계속 읽기",
        pageProgress = { page, percent -> "${page}페이지 · $percent%" },
        progressRead = { percent -> "$percent% 읽음" }
    )
    else -> ContinueScreenText(
        title = "Продолжить",
        introWithLibrary = "Здесь только то, что вы читаете сейчас: продолжение без лишних полок и витрин.",
        introEmptyLibrary = "Начни с первого комикса и собери спокойную библиотеку для чтения.",
        mascotTitle = "Mr.Comic рядом",
        progressTitle = "Прогресс рядом",
        progressNeutralHint = "Прогресс чтения, стадия и ритм остаются здесь без маскот-подсказок.",
        mascotEmptyLibraryHint = "Добавь первый тайтл, и Mr.Comic будет тихо отмечать прогресс и естественные вехи чтения.",
        mascotIdleHint = "Когда вернёшься к чтению, Mr.Comic подскажет только важные точки прогресса, без лишнего шума.",
        mascotActiveHint = { count -> "Сейчас в процессе $count. Mr.Comic реагирует только на осмысленные вехи чтения." },
        checkpointRecap = { comicTitle, chapterTitle, page -> "Последняя точка · $comicTitle · $chapterTitle · стр. $page" },
        checkpointUpdatedAt = { timestamp -> "Обновлено $timestamp" },
        checkpointDismiss = "Скрыть",
        dailyGoalProgress = { progress, target -> "Сегодня · $progress/$target стр." },
        dailyGoalCompleted = { target -> "Цель на сегодня выполнена · $target стр." },
        dailyGoalRemaining = { remaining -> "До цели сегодня осталось $remaining стр." },
        weeklyPlanProgress = { progress, target -> "На этой неделе · $progress/$target стр." },
        weeklyPlanCompletedDays = { days -> "Дней с выполненной целью: $days/7" },
        weeklyPlanCompleted = { target -> "Недельный план выполнен · $target стр." },
        weeklyPlanRemaining = { remaining, days -> "До плана недели осталось $remaining стр. · дней с целью: $days/7" },
        readingCalendarTitle = "Ритм чтения",
        readingCalendarSummary = { activeDays, goalDays -> "За 7 дней чтение было в ${activeDays} днях · дней с целью: ${goalDays}" },
        openProgressProfile = "Открыть профиль",
        currentlyReading = "Сейчас читаете",
        inProgressCount = { count ->
            when {
                count % 10 == 1 && count % 100 != 11 -> "$count в процессе"
                count % 10 in 2..4 && count % 100 !in 12..14 -> "$count в процессе"
                else -> "$count в процессе"
            }
        },
        emptyLibraryTitle = "Библиотека ещё пуста",
        emptyLibraryHint = "Перейди в библиотеку, чтобы добавить CBZ, CBR, PDF, EPUB или FB2 и сразу вернуться к чтению.",
        openLibrary = "Открыть библиотеку",
        emptyReadingTitle = "Сейчас ничего не читается",
        emptyReadingHint = "На этом экране появляются только тайтлы с незавершённым прогрессом чтения.",
        continueReading = "Продолжить чтение",
        pageProgress = { page, percent -> "Страница $page · $percent%" },
        progressRead = { percent -> "$percent% прочитано" }
    )
}

fun appIconScreenText(language: String): AppIconScreenText = when (language) {
    "en" -> AppIconScreenText(
        title = "App icon",
        back = "Back",
        personalizationTitle = "Personalization",
        personalizationHint = "Choose a launcher icon. The app will restart automatically.",
        restartHint = "When you pick an icon, the app will restart automatically.",
        selected = "Selected",
        applyFailed = "Could not apply the icon. Please try again.",
        applyFailedWithDetail = { detail -> "Error: $detail" }
    )
    "ja" -> AppIconScreenText(
        title = "アプリアイコン",
        back = "戻る",
        personalizationTitle = "パーソナライズ",
        personalizationHint = "ランチャー用のアイコンを選択してください。アプリは自動的に再起動します。",
        restartHint = "アイコンを選ぶと、アプリは自動的に再起動します。",
        selected = "選択中",
        applyFailed = "アイコンを適用できませんでした。もう一度お試しください。",
        applyFailedWithDetail = { detail -> "エラー: $detail" }
    )
    "zh" -> AppIconScreenText(
        title = "应用图标",
        back = "返回",
        personalizationTitle = "个性化",
        personalizationHint = "选择一个启动器图标。应用会自动重启。",
        restartHint = "选择图标后，应用会自动重启。",
        selected = "已选择",
        applyFailed = "无法应用图标，请再试一次。",
        applyFailedWithDetail = { detail -> "错误：$detail" }
    )
    "ko" -> AppIconScreenText(
        title = "앱 아이콘",
        back = "뒤로",
        personalizationTitle = "개인화",
        personalizationHint = "런처 아이콘을 선택하세요. 앱이 자동으로 다시 시작됩니다.",
        restartHint = "아이콘을 선택하면 앱이 자동으로 다시 시작됩니다.",
        selected = "선택됨",
        applyFailed = "아이콘을 적용하지 못했습니다. 다시 시도해 주세요.",
        applyFailedWithDetail = { detail -> "오류: $detail" }
    )
    else -> AppIconScreenText(
        title = "Иконка приложения",
        back = "Назад",
        personalizationTitle = "Персонализация",
        personalizationHint = "Выберите иконку для лаунчера. Приложение перезапустится автоматически.",
        restartHint = "При выборе иконки приложение перезапустится автоматически.",
        selected = "Выбрано",
        applyFailed = "Не удалось применить иконку. Попробуйте ещё раз.",
        applyFailedWithDetail = { detail -> "Ошибка: $detail" }
    )
}

fun crashReportText(language: String): CrashReportText = when (language) {
    "en" -> CrashReportText(
        previousCrash = "Previous crash",
        shareLog = "Share log",
        continueAction = "Continue",
        shareChooserTitle = "Share log",
        shareSubject = "Mr.Comic Crash Report"
    )
    "ja" -> CrashReportText(
        previousCrash = "前回のクラッシュ",
        shareLog = "ログを共有",
        continueAction = "続行",
        shareChooserTitle = "ログを共有",
        shareSubject = "Mr.Comic Crash Report"
    )
    "zh" -> CrashReportText(
        previousCrash = "上一次崩溃",
        shareLog = "分享日志",
        continueAction = "继续",
        shareChooserTitle = "分享日志",
        shareSubject = "Mr.Comic Crash Report"
    )
    "ko" -> CrashReportText(
        previousCrash = "이전 크래시",
        shareLog = "로그 공유",
        continueAction = "계속",
        shareChooserTitle = "로그 공유",
        shareSubject = "Mr.Comic Crash Report"
    )
    else -> CrashReportText(
        previousCrash = "Предыдущий краш",
        shareLog = "Поделиться",
        continueAction = "Продолжить",
        shareChooserTitle = "Поделиться логом",
        shareSubject = "Mr.Comic Crash Report"
    )
}

fun appLoadErrorTitle(language: String): String = when (language) {
    "en" -> "Loading error"
    "ja" -> "読み込みエラー"
    "zh" -> "加载错误"
    "ko" -> "로드 오류"
    else -> "Ошибка загрузки"
}

fun appLoadErrorFallback(language: String): String = when (language) {
    "en" -> "Unknown error"
    "ja" -> "不明なエラー"
    "zh" -> "未知错误"
    "ko" -> "알 수 없는 오류"
    else -> "Неизвестная ошибка"
}

fun appIconName(iconId: String, language: String): String = when (iconId) {
    "icon_1" -> when (language) {
        "en" -> "Classic"
        "ja" -> "クラシック"
        "zh" -> "经典"
        "ko" -> "클래식"
        else -> "Классическая"
    }
    "icon_2" -> when (language) {
        "en" -> "Dark"
        "ja" -> "ダーク"
        "zh" -> "深色"
        "ko" -> "다크"
        else -> "Тёмная"
    }
    "icon_3" -> when (language) {
        "en" -> "Bright"
        "ja" -> "ブライト"
        "zh" -> "明亮"
        "ko" -> "밝은"
        else -> "Яркая"
    }
    "icon_4" -> when (language) {
        "en" -> "Minimal"
        "ja" -> "ミニマル"
        "zh" -> "极简"
        "ko" -> "미니멀"
        else -> "Минимализм"
    }
    "icon_5" -> when (language) {
        "en" -> "Retro"
        "ja" -> "レトロ"
        "zh" -> "复古"
        "ko" -> "레트로"
        else -> "Ретро"
    }
    "icon_6" -> when (language) {
        "en" -> "Neon"
        "ja" -> "ネオン"
        "zh" -> "霓虹"
        "ko" -> "네온"
        else -> "Неон"
    }
    "icon_7" -> when (language) {
        "en" -> "Premium"
        "ja" -> "プレミアム"
        "zh" -> "高级"
        "ko" -> "프리미엄"
        else -> "Премиум"
    }
    else -> iconId
}

fun appIconDescription(iconId: String, language: String): String = when (iconId) {
    "icon_1" -> when (language) {
        "en" -> "Default app icon"
        "ja" -> "標準のアプリアイコン"
        "zh" -> "默认应用图标"
        "ko" -> "기본 앱 아이콘"
        else -> "Стандартная иконка приложения"
    }
    "icon_2" -> when (language) {
        "en" -> "Dark variant for AMOLED displays"
        "ja" -> "AMOLED ディスプレイ向けのダーク版"
        "zh" -> "适用于 AMOLED 屏幕的深色版本"
        "ko" -> "AMOLED 디스플레이용 다크 버전"
        else -> "Тёмный вариант для AMOLED-дисплеев"
    }
    "icon_3" -> when (language) {
        "en" -> "Bright icon with vivid colors"
        "ja" -> "鮮やかな配色の明るいアイコン"
        "zh" -> "配色鲜艳的明亮图标"
        "ko" -> "선명한 색상의 밝은 아이콘"
        else -> "Яркая иконка с насыщенными цветами"
    }
    "icon_4" -> when (language) {
        "en" -> "Minimalist design"
        "ja" -> "ミニマルなデザイン"
        "zh" -> "极简设计"
        "ko" -> "미니멀한 디자인"
        else -> "Минималистичный дизайн"
    }
    "icon_5" -> when (language) {
        "en" -> "Retro comic style"
        "ja" -> "レトロなコミック風"
        "zh" -> "复古漫画风格"
        "ko" -> "레트로 코믹 스타일"
        else -> "Ретро стиль комиксов"
    }
    "icon_6" -> when (language) {
        "en" -> "Neon effect"
        "ja" -> "ネオン風エフェクト"
        "zh" -> "霓虹效果"
        "ko" -> "네온 효과"
        else -> "Неоновый эффект"
    }
    "icon_7" -> when (language) {
        "en" -> "Premium design with gold accents"
        "ja" -> "ゴールドのアクセントを持つプレミアムデザイン"
        "zh" -> "带有金色点缀的高级设计"
        "ko" -> "골드 포인트의 프리미엄 디자인"
        else -> "Премиум дизайн с золотыми акцентами"
    }
    else -> iconId
}
