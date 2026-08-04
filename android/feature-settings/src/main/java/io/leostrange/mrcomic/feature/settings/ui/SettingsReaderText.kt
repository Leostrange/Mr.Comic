// Phase S1 (2026-08-03): reader i18n texts from SettingsScreen.kt.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style

/* ──── EyeRestSettingsText ──── */
internal data class EyeRestSettingsText(
    val cardTitle: String,
    val enabledTitle: String,
    val enabledSubtitle: String,
    val intervalLabel: String,
    val hint: String,
    val minutesSuffix: String,
    val snoozePreset: String
)


/* ──── ReadingGoalSettingsText ──── */
internal data class ReadingGoalSettingsText(
    val cardTitle: String,
    val enabledTitle: String,
    val enabledSubtitle: String,
    val targetLabel: String,
    val progressLabel: (Int, Int) -> String,
    val weeklyProgressLabel: (Int, Int, Int) -> String,
    val calendarLabel: (Int, Int) -> String,
    val completedHint: String,
    val pagesSuffix: String
)


/* ──── CoverTitleSettingsText ──── */
internal data class CoverTitleSettingsText(
    val title: String,
    val subtitle: String
)


/* ──── StreakPolicySettingsText ──── */
internal data class StreakPolicySettingsText(
    val title: String,
    val enabledTitle: String,
    val enabledSubtitle: String,
    val graceTitle: String,
    val graceSubtitle: String,
    val summary: String
)


/* ──── ReaderSettingsMapText ──── */
internal data class ReaderSettingsMapText(
    val overviewTitle: String,
    val overviewDescription: String,
    val areasTitle: String,
    val textAppearanceTitle: String,
    val textAppearanceDescription: String,
    val pageLayoutTitle: String,
    val pageLayoutDescription: String,
    val headersTitle: String,
    val headersDescription: String,
    val pagingTitle: String,
    val pagingDescription: String,
    val behaviorTitle: String,
    val behaviorDescription: String
)


/* ──── ReaderStyleSettingsText ──── */
internal data class ReaderStyleSettingsText(
    val cardTitle: String,
    val cardHint: String,
    val quickPresetsTitle: String,
    val colorSchemeTitle: String,
    val importPresetLabel: String,
    val exportPresetLabel: String,
    val savedStylesTitle: String,
    val savedStylesHint: String,
    val savedStyleSlotPrefix: String,
    val savedStyleSave: String,
    val savedStyleApply: String,
    val savedStyleClear: String,
    val savedStyleRename: String,
    val savedStyleRenameTitle: String,
    val savedStyleNameLabel: String,
    val savedStyleRenameHint: String,
    val savedStyleRenameConfirm: String,
    val savedStyleRenameCancel: String,
    val savedStyleEmpty: String,
    val fontTitle: String,
    val importFontLabel: String,
    val fontSizeTitle: String,
    val lineHeightTitle: String,
    val letterSpacingTitle: String,
    val wordSpacingTitle: String,
    val paragraphSpacingTitle: String,
    val alignmentTitle: String,
    val boldTitle: String,
    val resetLabel: String,
    val day: String,
    val sepia: String,
    val night: String,
    val justify: String,
    val left: String,
    val right: String,
    val center: String
)


/* ──── streakPolicyProgressText ──── */
internal fun streakPolicyProgressText(
    language: String,
    currentStreak: Int,
    bestStreak: Int,
    graceDaysRemainingThisWeek: Int
): String = when (language) {
    "en" -> "Current: $currentStreak · Best: $bestStreak · Grace left: $graceDaysRemainingThisWeek"
    "ja" -> "現在: $currentStreak ・ ベスト: $bestStreak ・ 残り猶予: $graceDaysRemainingThisWeek"
    "zh" -> "当前：$currentStreak · 最佳：$bestStreak · 本周剩余宽限：$graceDaysRemainingThisWeek"
    "ko" -> "현재: $currentStreak · 최고: $bestStreak · 남은 유예: $graceDaysRemainingThisWeek"
    else -> "Сейчас: $currentStreak · Лучший: $bestStreak · Запас на неделю: $graceDaysRemainingThisWeek"
}

/* ──── readerSettingsMapText ──── */
internal fun readerSettingsMapText(language: String): ReaderSettingsMapText = when (language) {
    "en" -> ReaderSettingsMapText(
        overviewTitle = "Reading sections",
        overviewDescription = "Keep reading settings compact: text appearance, page layout, headers, paging, and behavior each live on their own page.",
        areasTitle = "Reading sections",
        textAppearanceTitle = "Text appearance",
        textAppearanceDescription = "Font, spacing, alignment, color scheme, and text preview for EPUB and FB2.",
        pageLayoutTitle = "Page layout",
        pageLayoutDescription = "Reading mode, structure, and the way text or pages are arranged before interaction.",
        headersTitle = "Headers and footers",
        headersDescription = "Header and footer slots, spacing, and a live compact preview for calm reading mode.",
        pagingTitle = "Paging",
        pagingDescription = "Tap zones, paging behavior, animation, and sound in one compact editor.",
        behaviorTitle = "Behavior",
        behaviorDescription = "Screen session rules, selection tools, rest reminders, and calm reading rhythm."
    )
    "ja" -> ReaderSettingsMapText(
        overviewTitle = "読書セクション",
        overviewDescription = "読書設定をテキスト外観、ページ構成、ヘッダー、ページ送り、挙動に分けてコンパクトに保ちます。",
        areasTitle = "読書セクション",
        textAppearanceTitle = "テキストの外観",
        textAppearanceDescription = "EPUB / FB2 のフォント、間隔、配置、配色、テキストプレビュー。",
        pageLayoutTitle = "ページ構成",
        pageLayoutDescription = "読書モードやページ構造など、操作前の読み方の土台を整えます。",
        headersTitle = "ヘッダーとフッター",
        headersDescription = "静かな読書モード用のヘッダー/フッタースロット、余白、ライブプレビュー。",
        pagingTitle = "ページ送り",
        pagingDescription = "タップゾーン、ページ送りの挙動、アニメーション、効果音をまとめて編集します。",
        behaviorTitle = "挙動",
        behaviorDescription = "画面セッション、選択ツール、休憩リマインダー、穏やかな読書リズム。"
    )
    "zh" -> ReaderSettingsMapText(
        overviewTitle = "阅读分区",
        overviewDescription = "把阅读设置拆成文本外观、页面布局、页眉页脚、翻页和行为，让结构更清晰。",
        areasTitle = "阅读分区",
        textAppearanceTitle = "文本外观",
        textAppearanceDescription = "EPUB / FB2 的字体、间距、对齐、配色和文本预览。",
        pageLayoutTitle = "页面布局",
        pageLayoutDescription = "阅读模式、页面结构，以及交互之前的阅读组织方式。",
        headersTitle = "页眉与页脚",
        headersDescription = "安静阅读模式下的页眉页脚槽位、边距和实时紧凑预览。",
        pagingTitle = "翻页",
        pagingDescription = "在一个紧凑编辑器里设置点击区域、翻页行为、动画和声音。",
        behaviorTitle = "行为",
        behaviorDescription = "屏幕会话、划词工具、休息提醒与平稳的阅读节奏。"
    )
    "ko" -> ReaderSettingsMapText(
        overviewTitle = "읽기 섹션",
        overviewDescription = "읽기 설정을 텍스트 외형, 페이지 레이아웃, 헤더/푸터, 페이지 넘김, 동작으로 나눠 더 차분하게 구성합니다.",
        areasTitle = "읽기 섹션",
        textAppearanceTitle = "텍스트 외형",
        textAppearanceDescription = "EPUB / FB2용 글꼴, 간격, 정렬, 색상, 텍스트 미리보기.",
        pageLayoutTitle = "페이지 레이아웃",
        pageLayoutDescription = "읽기 모드와 페이지 구조처럼 상호작용 전의 읽기 기반을 다룹니다.",
        headersTitle = "헤더와 푸터",
        headersDescription = "차분한 읽기 모드를 위한 헤더·푸터 슬롯, 여백, 라이브 미리보기.",
        pagingTitle = "페이지 넘김",
        pagingDescription = "탭 영역, 넘김 동작, 애니메이션, 사운드를 한 화면에서 조정합니다.",
        behaviorTitle = "동작",
        behaviorDescription = "화면 세션, 선택 도구, 휴식 알림, 차분한 읽기 리듬."
    )
    else -> ReaderSettingsMapText(
        overviewTitle = "Разделы чтения",
        overviewDescription = "Соберите настройки чтения в понятные страницы: внешний вид текста, макет страницы, колонтитулы, листание и поведение.",
        areasTitle = "Разделы чтения",
        textAppearanceTitle = "Внешний вид текста",
        textAppearanceDescription = "Шрифт, интервалы, выравнивание, цветовая схема и компактный preview для EPUB и FB2.",
        pageLayoutTitle = "Макет страницы",
        pageLayoutDescription = "Режим чтения, структура страницы и то, как текст или страницы собраны до взаимодействия.",
        headersTitle = "Колонтитулы",
        headersDescription = "Слоты верхнего и нижнего колонтитула, поля и живой компактный preview для спокойного режима чтения.",
        pagingTitle = "Листание",
        pagingDescription = "Зоны нажатия, поведение листания, анимация и звук в одном компактном редакторе.",
        behaviorTitle = "Поведение",
        behaviorDescription = "Экран чтения, поведение выделения, напоминания о паузах и спокойный ритм чтения."
    )
}

/* ──── readerStyleSettingsText ──── */
internal fun readerStyleSettingsText(language: String): ReaderStyleSettingsText = when (language) {
    "en" -> ReaderStyleSettingsText(
        cardTitle = "Text reader style",
        cardHint = "These controls change the default typography for EPUB and FB2 reading.",
        quickPresetsTitle = "Quick text presets",
        colorSchemeTitle = "Color scheme",
        importPresetLabel = "Import style JSON",
        exportPresetLabel = "Export current style",
        savedStylesTitle = "Saved reading styles",
        savedStylesHint = "Save your custom text styles here and switch between them quickly.",
        savedStyleSlotPrefix = "Style",
        savedStyleSave = "Save current style",
        savedStyleApply = "Apply style",
        savedStyleClear = "Delete style",
        savedStyleRename = "Rename",
        savedStyleRenameTitle = "Rename saved style",
        savedStyleNameLabel = "Style name",
        savedStyleRenameHint = "Leave it empty to use the automatic style name.",
        savedStyleRenameConfirm = "Save",
        savedStyleRenameCancel = "Cancel",
        savedStyleEmpty = "Empty style",
        fontTitle = "Font family",
        importFontLabel = "Import font",
        fontSizeTitle = "Font size",
        lineHeightTitle = "Line height",
        letterSpacingTitle = "Letter spacing",
        wordSpacingTitle = "Word spacing",
        paragraphSpacingTitle = "Paragraph spacing",
        alignmentTitle = "Text alignment",
        boldTitle = "Bold text",
        resetLabel = "Reset text style",
        day = "Day",
        sepia = "Sepia",
        night = "Night",
        justify = "Justify",
        left = "Left",
        right = "Right",
        center = "Center"
    )
    "ja" -> ReaderStyleSettingsText(
        cardTitle = "テキスト読書スタイル",
        cardHint = "ここで EPUB と FB2 の既定タイポグラフィを調整します。",
        quickPresetsTitle = "テキストプリセット",
        colorSchemeTitle = "配色",
        importPresetLabel = "スタイル JSON を読み込む",
        exportPresetLabel = "現在のスタイルを書き出す",
        savedStylesTitle = "保存した読書スタイル",
        savedStylesHint = "カスタムの文字スタイルを保存して、すばやく切り替えられます。",
        savedStyleSlotPrefix = "スタイル",
        savedStyleSave = "現在のスタイルを保存",
        savedStyleApply = "適用",
        savedStyleClear = "削除",
        savedStyleRename = "名前",
        savedStyleRenameTitle = "保存スタイルの名前",
        savedStyleNameLabel = "スタイル名",
        savedStyleRenameHint = "空欄にすると自動名を使います。",
        savedStyleRenameConfirm = "保存",
        savedStyleRenameCancel = "キャンセル",
        savedStyleEmpty = "空のスタイル",
        fontTitle = "フォント",
        importFontLabel = "フォントを追加",
        fontSizeTitle = "文字サイズ",
        lineHeightTitle = "行間",
        letterSpacingTitle = "字間",
        wordSpacingTitle = "単語間隔",
        paragraphSpacingTitle = "段落間隔",
        alignmentTitle = "配置",
        boldTitle = "太字",
        resetLabel = "テキスト設定を初期化",
        day = "昼",
        sepia = "セピア",
        night = "夜",
        justify = "両端",
        left = "左",
        right = "右",
        center = "中央"
    )
    "zh" -> ReaderStyleSettingsText(
        cardTitle = "文本阅读样式",
        cardHint = "这里会修改 EPUB 和 FB2 的默认排版。",
        quickPresetsTitle = "文本预设",
        colorSchemeTitle = "配色方案",
        importPresetLabel = "导入样式 JSON",
        exportPresetLabel = "导出当前样式",
        savedStylesTitle = "已保存的阅读样式",
        savedStylesHint = "保存你自己的文本样式并快速切换。",
        savedStyleSlotPrefix = "样式",
        savedStyleSave = "保存当前样式",
        savedStyleApply = "应用样式",
        savedStyleClear = "删除样式",
        savedStyleRename = "重命名",
        savedStyleRenameTitle = "重命名已保存样式",
        savedStyleNameLabel = "样式名称",
        savedStyleRenameHint = "留空会使用自动名称。",
        savedStyleRenameConfirm = "保存",
        savedStyleRenameCancel = "取消",
        savedStyleEmpty = "空样式",
        fontTitle = "字体",
        importFontLabel = "导入字体",
        fontSizeTitle = "字号",
        lineHeightTitle = "行距",
        letterSpacingTitle = "字距",
        wordSpacingTitle = "词距",
        paragraphSpacingTitle = "段距",
        alignmentTitle = "对齐方式",
        boldTitle = "粗体",
        resetLabel = "重置文本样式",
        day = "日间",
        sepia = "棕褐",
        night = "夜间",
        justify = "两端",
        left = "左对齐",
        right = "右对齐",
        center = "居中"
    )
    "ko" -> ReaderStyleSettingsText(
        cardTitle = "텍스트 읽기 스타일",
        cardHint = "여기서 EPUB와 FB2의 기본 타이포그래피를 조정합니다.",
        quickPresetsTitle = "텍스트 프리셋",
        colorSchemeTitle = "색상",
        importPresetLabel = "스타일 JSON 가져오기",
        exportPresetLabel = "현재 스타일 내보내기",
        savedStylesTitle = "저장된 읽기 스타일",
        savedStylesHint = "사용자 텍스트 스타일을 저장하고 빠르게 전환할 수 있습니다.",
        savedStyleSlotPrefix = "스타일",
        savedStyleSave = "현재 스타일 저장",
        savedStyleApply = "적용",
        savedStyleClear = "삭제",
        savedStyleRename = "이름",
        savedStyleRenameTitle = "저장된 스타일 이름",
        savedStyleNameLabel = "스타일 이름",
        savedStyleRenameHint = "비워 두면 자동 이름을 사용합니다.",
        savedStyleRenameConfirm = "저장",
        savedStyleRenameCancel = "취소",
        savedStyleEmpty = "빈 스타일",
        fontTitle = "글꼴",
        importFontLabel = "글꼴 가져오기",
        fontSizeTitle = "글자 크기",
        lineHeightTitle = "줄 간격",
        letterSpacingTitle = "자간",
        wordSpacingTitle = "단어 간격",
        paragraphSpacingTitle = "문단 간격",
        alignmentTitle = "정렬",
        boldTitle = "굵은 글자",
        resetLabel = "텍스트 스타일 초기화",
        day = "낮",
        sepia = "세피아",
        night = "밤",
        justify = "양쪽 맞춤",
        left = "왼쪽",
        right = "오른쪽",
        center = "가운데"
    )
    else -> ReaderStyleSettingsText(
        cardTitle = "Стиль текстового чтения",
        cardHint = "Здесь меняется типографика по умолчанию для EPUB и FB2.",
        quickPresetsTitle = "Быстрые текстовые пресеты",
        colorSchemeTitle = "Цветовая схема",
        importPresetLabel = "Импортировать стиль JSON",
        exportPresetLabel = "Экспортировать текущий стиль",
        savedStylesTitle = "Сохранённые стили чтения",
        savedStylesHint = "Сохраняйте свои текстовые стили и быстро переключайтесь между ними.",
        savedStyleSlotPrefix = "Стиль",
        savedStyleSave = "Сохранить текущий стиль",
        savedStyleApply = "Применить стиль",
        savedStyleClear = "Удалить стиль",
        savedStyleRename = "Переименовать",
        savedStyleRenameTitle = "Имя сохранённого стиля",
        savedStyleNameLabel = "Название стиля",
        savedStyleRenameHint = "Оставь пустым, чтобы использовать автоматическое имя.",
        savedStyleRenameConfirm = "Сохранить",
        savedStyleRenameCancel = "Отмена",
        savedStyleEmpty = "Пустой стиль",
        fontTitle = "Шрифт",
        importFontLabel = "Импортировать шрифт",
        fontSizeTitle = "Размер шрифта",
        lineHeightTitle = "Межстрочный интервал",
        letterSpacingTitle = "Межбуквенный интервал",
        wordSpacingTitle = "Межсловный интервал",
        paragraphSpacingTitle = "Интервал между абзацами",
        alignmentTitle = "Выравнивание текста",
        boldTitle = "Полужирный текст",
        resetLabel = "Сбросить стиль текста",
        day = "День",
        sepia = "Сепия",
        night = "Ночь",
        justify = "По ширине",
        left = "Влево",
        right = "Вправо",
        center = "По центру"
    )
}

/* ──── coverTitleSettingsText ──── */
internal fun coverTitleSettingsText(language: String): CoverTitleSettingsText = when (language) {
    "en" -> CoverTitleSettingsText(
        title = "Show titles on covers",
        subtitle = "Keep the name as a compact caption on grid covers instead of a full overlay."
    )
    "ja" -> CoverTitleSettingsText(
        title = "表紙にタイトルを表示",
        subtitle = "グリッド表示では、全面オーバーレイではなく小さなキャプションとしてタイトルを表示します。"
    )
    "zh" -> CoverTitleSettingsText(
        title = "在封面上显示标题",
        subtitle = "网格视图中以紧凑标题条显示名称，不再整块覆盖封面。"
    )
    "ko" -> CoverTitleSettingsText(
        title = "표지에 제목 표시",
        subtitle = "그리드 표지에서 제목을 전체 오버레이 대신 작은 캡션으로만 표시합니다."
    )
    else -> CoverTitleSettingsText(
        title = "Показывать названия на обложках",
        subtitle = "В режиме сетки название остаётся компактной подписью и больше не перекрывает обложку целиком."
    )
}

/* ──── readingGoalSettingsText ──── */
internal fun readingGoalSettingsText(language: String): ReadingGoalSettingsText = when (language) {
    "en" -> ReadingGoalSettingsText(
        cardTitle = "Reading goal",
        enabledTitle = "Use a daily reading goal",
        enabledSubtitle = "Tracks gentle daily pace from saved reading progress without nudging or streak pressure.",
        targetLabel = "Target",
        progressLabel = { progress, target -> "Today: $progress / $target pages" },
        weeklyProgressLabel = { progress, target, days -> "This week: $progress / $target pages · Goal days: $days/7" },
        calendarLabel = { activeDays, goalDays -> "Recent rhythm: $activeDays of 7 days active · goal days $goalDays" },
        completedHint = "Today's goal is already complete.",
        pagesSuffix = "pages"
    )
    "ja" -> ReadingGoalSettingsText(
        cardTitle = "読書目標",
        enabledTitle = "1日の読書目標を使う",
        enabledSubtitle = "保存された読書進捗から、プレッシャーのない穏やかな日次ペースだけを記録します。",
        targetLabel = "目標",
        progressLabel = { progress, target -> "今日: ${progress} / ${target}ページ" },
        weeklyProgressLabel = { progress, target, days -> "今週: ${progress} / ${target}ページ ・ 目標達成日 ${days}/7" },
        calendarLabel = { activeDays, goalDays -> "最近7日: 読んだ日 $activeDays ・ 目標達成日 $goalDays" },
        completedHint = "今日の目標は達成済みです。",
        pagesSuffix = "ページ"
    )
    "zh" -> ReadingGoalSettingsText(
        cardTitle = "阅读目标",
        enabledTitle = "启用每日阅读目标",
        enabledSubtitle = "只根据已保存的阅读进度记录温和的每日节奏，不制造打卡压力。",
        targetLabel = "目标",
        progressLabel = { progress, target -> "今天：$progress / $target 页" },
        weeklyProgressLabel = { progress, target, days -> "本周：$progress / $target 页 · 达标日：$days/7" },
        calendarLabel = { activeDays, goalDays -> "最近 7 天：阅读日 $activeDays · 达标日 $goalDays" },
        completedHint = "今天的目标已经完成。",
        pagesSuffix = "页"
    )
    "ko" -> ReadingGoalSettingsText(
        cardTitle = "읽기 목표",
        enabledTitle = "일일 읽기 목표 사용",
        enabledSubtitle = "저장된 읽기 진행도를 기준으로만 부드러운 하루 페이스를 기록하며, 압박감 있는 스트릭은 만들지 않습니다.",
        targetLabel = "목표",
        progressLabel = { progress, target -> "오늘: ${progress} / ${target}페이지" },
        weeklyProgressLabel = { progress, target, days -> "이번 주: ${progress} / ${target}페이지 · 목표일 ${days}/7" },
        calendarLabel = { activeDays, goalDays -> "최근 7일: 읽은 날 ${activeDays}일 · 목표일 ${goalDays}일" },
        completedHint = "오늘 목표를 이미 달성했습니다.",
        pagesSuffix = "페이지"
    )
    else -> ReadingGoalSettingsText(
        cardTitle = "Цель чтения",
        enabledTitle = "Использовать дневную цель чтения",
        enabledSubtitle = "Считает спокойный дневной темп по сохранённому прогрессу чтения, без давления и без стриков.",
        targetLabel = "Цель",
        progressLabel = { progress, target -> "Сегодня: $progress / $target стр." },
        weeklyProgressLabel = { progress, target, days -> "На неделе: $progress / $target стр. · дней с целью: $days/7" },
        calendarLabel = { activeDays, goalDays -> "Последние 7 дней: чтение было в $activeDays · дней с целью $goalDays" },
        completedHint = "Цель на сегодня уже выполнена.",
        pagesSuffix = "стр."
    )
}

/* ──── eyeRestSettingsText ──── */
internal fun eyeRestSettingsText(language: String): EyeRestSettingsText = when (language) {
    "en" -> EyeRestSettingsText(
        cardTitle = "Eye rest",
        enabledTitle = "Remind me to rest my eyes",
        enabledSubtitle = "Shows a soft reminder while reading so you can look away from the screen.",
        intervalLabel = "Reminder interval",
        hint = "A small break every 20-30 minutes helps reduce eye strain.",
        minutesSuffix = "min",
        snoozePreset = "Snooze 5 min"
    )
    "ja" -> EyeRestSettingsText(
        cardTitle = "目の休憩",
        enabledTitle = "目を休めるリマインダー",
        enabledSubtitle = "読書中にやさしい通知を出して、画面から目を離す時間を作ります。",
        intervalLabel = "通知間隔",
        hint = "20〜30分ごとに短い休憩を入れると目の負担を減らせます。",
        minutesSuffix = "分",
        snoozePreset = "5分後に再通知"
    )
    "zh" -> EyeRestSettingsText(
        cardTitle = "护眼提醒",
        enabledTitle = "提醒我让眼睛休息",
        enabledSubtitle = "阅读时弹出柔和提醒，让你暂时把视线移开屏幕。",
        intervalLabel = "提醒间隔",
        hint = "每 20 到 30 分钟休息一下，有助于减轻眼疲劳。",
        minutesSuffix = "分钟",
        snoozePreset = "5 分钟后再提醒"
    )
    "ko" -> EyeRestSettingsText(
        cardTitle = "눈 휴식",
        enabledTitle = "눈 휴식 알림",
        enabledSubtitle = "읽는 동안 부드러운 알림을 띄워 화면에서 잠깐 시선을 떼게 합니다.",
        intervalLabel = "알림 간격",
        hint = "20~30분마다 짧게 쉬면 눈의 피로를 줄이는 데 도움이 됩니다.",
        minutesSuffix = "분",
        snoozePreset = "5분 후 다시"
    )
    else -> EyeRestSettingsText(
        cardTitle = "Отдых для глаз",
        enabledTitle = "Напоминать отдыхать глазам",
        enabledSubtitle = "Во время чтения приложение мягко напомнит отвести взгляд от экрана.",
        intervalLabel = "Интервал напоминания",
        hint = "Небольшой перерыв каждые 20-30 минут снижает нагрузку на глаза.",
        minutesSuffix = "мин",
        snoozePreset = "Отложить на 5 мин"
    )
}

/* ──── readerModeLabel ──── */
internal fun readerModeLabel(strings: AppStrings, mode: ReadingMode): String = when (mode) {
    ReadingMode.PAGE_LTR -> strings.readingModeLtr
    ReadingMode.PAGE_RTL -> strings.readingModeRtl
    ReadingMode.WEBTOON -> strings.readingModeWebtoon
    ReadingMode.DUAL_PAGE -> when (strings.languageCode) {
        "en" -> "Dual page"
        "ja" -> "見開き"
        "zh" -> "双页"
        "ko" -> "양면"
        else -> "Разворот"
    }
}

/* ──── readerModeSettingsLabel ──── */
internal fun readerModeSettingsLabel(language: String, mode: ReadingMode): String = when (mode) {
    ReadingMode.PAGE_LTR -> when (language) {
        "en" -> "Pages: forward"
        "ja" -> "ページ: 右へ進む"
        "zh" -> "分页：向前"
        "ko" -> "페이지: 앞으로"
        else -> "Страницы: вперёд"
    }
    ReadingMode.PAGE_RTL -> when (language) {
        "en" -> "Pages: backward"
        "ja" -> "ページ: 左へ進む"
        "zh" -> "分页：向后"
        "ko" -> "페이지: 뒤로"
        else -> "Страницы: назад"
    }
    ReadingMode.WEBTOON -> when (language) {
        "en" -> "Vertical strip"
        "ja" -> "縦スクロール"
        "zh" -> "纵向长条"
        "ko" -> "세로 스트립"
        else -> "Вертикальная лента"
    }
    ReadingMode.DUAL_PAGE -> when (language) {
        "en" -> "Dual page"
        "ja" -> "見開き"
        "zh" -> "双页"
        "ko" -> "양면"
        else -> "Разворот"
    }
}

/* ──── readerSectionSummaryItems ──── */
internal fun readerSectionSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    strings.readerReadingPresets to readingPresetQuickLabel(strings, ReadingPreset.fromStored(uiState.readerPreset)),
    strings.readingModeCard to readerModeLabel(strings, uiState.readingMode),
    strings.readerTextStyle to "${uiState.textFontFamily} · ${readerTextSchemeLabel(uiState.appLanguage, uiState.textColorScheme)}",
    strings.readerScreenCard to "${
        if (uiState.brightness < 0f) strings.themeSystem else "${(uiState.brightness * 100).toInt()}%"
    } · ${compactToggleLabel(strings.languageCode, uiState.readerImmersiveMode)}",
    readingGoalSettingsText(strings.languageCode).cardTitle to if (uiState.dailyReadingGoalEnabled) {
        "${uiState.dailyReadingGoalProgressPages}/${uiState.dailyReadingGoalTargetPages}"
    } else {
        compactToggleLabel(strings.languageCode, false)
    }
)

/* ──── streakPolicySettingsText ──── */
internal fun streakPolicySettingsText(language: String): StreakPolicySettingsText = when (language) {
    "en" -> StreakPolicySettingsText(
        title = "Soft streak",
        enabledTitle = "Use a soft streak",
        enabledSubtitle = "Keeps a calm rhythm by counting only goal-complete days.",
        graceTitle = "Allow one grace day per week",
        graceSubtitle = "One skipped day can be forgiven each week without resetting the streak.",
        summary = "No pressure, no punishment, just a gentle weekly rhythm."
    )
    "ja" -> StreakPolicySettingsText(
        title = "やさしい連続記録",
        enabledTitle = "やさしい連続記録を使う",
        enabledSubtitle = "目標を達成した日だけを数えて、穏やかなリズムを保ちます。",
        graceTitle = "週に1日の猶予を使う",
        graceSubtitle = "週に1日は、連続記録を壊さずに見逃せます。",
        summary = "プレッシャーなしで、穏やかな週単位のリズムを保ちます。"
    )
    "zh" -> StreakPolicySettingsText(
        title = "轻量连读",
        enabledTitle = "使用轻量连读",
        enabledSubtitle = "只统计达成目标的日期，保持平静节奏。",
        graceTitle = "每周允许一天宽限",
        graceSubtitle = "每周可以跳过一天而不重置连读。",
        summary = "没有压力，没有惩罚，只保留温和的周节奏。"
    )
    "ko" -> StreakPolicySettingsText(
        title = "부드러운 스트릭",
        enabledTitle = "부드러운 스트릭 사용",
        enabledSubtitle = "목표를 달성한 날만 세어서 차분한 리듬을 유지합니다.",
        graceTitle = "주당 1회 유예일 허용",
        graceSubtitle = "매주 하루는 스트릭을 초기화하지 않고 건너뛸 수 있습니다.",
        summary = "압박감 없이, 부드러운 주간 리듬만 유지합니다."
    )
    else -> StreakPolicySettingsText(
        title = "Мягкий стрик",
        enabledTitle = "Использовать мягкий стрик",
        enabledSubtitle = "Считает только дни, когда цель выполнена, и держит спокойный ритм.",
        graceTitle = "Разрешить один день запаса в неделю",
        graceSubtitle = "Один пропуск в неделю не сбрасывает стрик.",
        summary = "Без давления и наказаний, только мягкий недельный ритм."
    )
}

