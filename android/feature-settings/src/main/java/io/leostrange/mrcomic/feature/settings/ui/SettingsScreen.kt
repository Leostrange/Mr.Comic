@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Intent
import android.net.Uri
import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.Sort
import androidx.compose.material.icons.automirrored.filled.TextSnippet
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlin.math.roundToInt
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.resolveReaderTapZoneLayout
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicLibraryPresetCard
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSwitchRow
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.LibraryShelfBar
import io.leostrange.mrcomic.core.ui.library.LibraryThemePresetSnapshot
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.RootChromePillShape
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.library.libraryCardElevation
import io.leostrange.mrcomic.core.ui.library.parseLibraryThemePreset
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropStrength
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropVeil
import io.leostrange.mrcomic.core.ui.library.rootChromeIconContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContentColor
import io.leostrange.mrcomic.core.ui.library.rootChromeTextFieldColors
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.ocrSourceLanguageOptions
import io.leostrange.mrcomic.core.ui.locale.translationLanguageOptions
import io.leostrange.mrcomic.core.ui.sound.UIFeedback
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor
import io.leostrange.mrcomic.core.ui.theme.previewColors
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.settings.R as SettingsR
import io.leostrange.mrcomic.feature.reader.ui.ReaderTextFontCatalog
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopup
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopupConfig
import java.util.Locale
import kotlinx.coroutines.launch

// ──────────── Navigation model ────────────

private const val SETTINGS_READER_MIN_TOOLBAR_OPACITY = 0.72f

private fun nextSettingsUiEventToken(currentToken: Int): Int =
    if (currentToken == Int.MAX_VALUE) 1 else currentToken + 1

private data class MainMenuText(
    val searchPlaceholder: String,
    val leadTitle: String,
    val leadDescription: String,
    val sectionsTitle: String,
    val quickReadingTitle: String,
    val quickReadingDescription: String,
    val ocrEnabled: String,
    val ocrEnable: String,
    val readerLeadTitle: String,
    val readerLeadDescription: String,
    val quickBlocksTitle: String,
    val surfaceCardsLabel: String
)

private data class SettingsMainMenuSectionItem(
    val section: SettingsSection,
    val title: String,
    val description: String,
    val summary: String? = null
)

private data class EyeRestSettingsText(
    val cardTitle: String,
    val enabledTitle: String,
    val enabledSubtitle: String,
    val intervalLabel: String,
    val hint: String,
    val minutesSuffix: String,
    val snoozePreset: String
)

private fun mainMenuText(language: String): MainMenuText = when (language) {
    "en" -> MainMenuText(
        searchPlaceholder = "Search settings",
        leadTitle = "Command center",
        leadDescription = "Start with quick reading controls, then move into the compact sections for appearance, reader, and library.",
        sectionsTitle = "Sections",
        quickReadingTitle = "Reading essentials",
        quickReadingDescription = "Quick access to reading presets, brightness, and OCR without digging through deeper sections.",
        ocrEnabled = "OCR enabled",
        ocrEnable = "Enable OCR",
        readerLeadTitle = "Reading settings",
        readerLeadDescription = "Keep reading calm and modular: text appearance, page layout, headers, paging, and behavior each live on their own page.",
        quickBlocksTitle = "Quick blocks",
        surfaceCardsLabel = "Surfaces and cards"
    )
    "ja" -> MainMenuText(
        searchPlaceholder = "設定を検索",
        leadTitle = "コマンドセンター",
        leadDescription = "最初に読書用のクイック設定をまとめ、その下に外観・リーダー・ライブラリのコンパクトなセクションを配置します。",
        sectionsTitle = "セクション",
        quickReadingTitle = "読書の基本",
        quickReadingDescription = "深い設定に入らなくても、読書プリセット、明るさ、OCR にすばやくアクセスできます。",
        ocrEnabled = "OCR オン",
        ocrEnable = "OCR を有効化",
        readerLeadTitle = "読書設定",
        readerLeadDescription = "読書設定をテキスト外観、ページ構成、ヘッダー、ページ送り、挙動の各ページに整理して、落ち着いた構成にします。",
        quickBlocksTitle = "クイックブロック",
        surfaceCardsLabel = "サーフェスとカード"
    )
    "zh" -> MainMenuText(
        searchPlaceholder = "搜索设置",
        leadTitle = "控制中心",
        leadDescription = "先放置阅读快捷控制，再进入外观、阅读器和书库这些紧凑分区。",
        sectionsTitle = "分区",
        quickReadingTitle = "阅读核心",
        quickReadingDescription = "无需进入更深层页面，也能快速调整阅读预设、亮度和 OCR。",
        ocrEnabled = "OCR 已开启",
        ocrEnable = "开启 OCR",
        readerLeadTitle = "阅读设置",
        readerLeadDescription = "把阅读设置整理成独立页面：文本外观、页面布局、页眉页脚、翻页和行为。",
        quickBlocksTitle = "快速分组",
        surfaceCardsLabel = "表层与卡片"
    )
    "ko" -> MainMenuText(
        searchPlaceholder = "설정 검색",
        leadTitle = "커맨드 센터",
        leadDescription = "먼저 빠른 읽기 조절을 두고, 아래에서 외형, 리더, 라이브러리 섹션을 간결하게 조정합니다.",
        sectionsTitle = "섹션",
        quickReadingTitle = "읽기 핵심",
        quickReadingDescription = "깊은 메뉴로 들어가지 않고도 읽기 프리셋, 밝기, OCR에 빠르게 접근합니다.",
        ocrEnabled = "OCR 켜짐",
        ocrEnable = "OCR 켜기",
        readerLeadTitle = "읽기 설정",
        readerLeadDescription = "읽기 설정을 텍스트 외형, 페이지 레이아웃, 헤더·푸터, 페이지 넘김, 동작으로 나눠 차분하게 정리합니다.",
        quickBlocksTitle = "빠른 블록",
        surfaceCardsLabel = "표면과 카드"
    )
    else -> MainMenuText(
        searchPlaceholder = "Поиск по настройкам",
        leadTitle = "Командный центр",
        leadDescription = "Сначала быстрые настройки чтения, ниже компактные разделы по внешнему виду, ридеру и библиотеке.",
        sectionsTitle = "Разделы",
        quickReadingTitle = "Главное для чтения",
        quickReadingDescription = "Быстрый доступ к пресетам чтения, яркости и OCR без захода в глубокие секции.",
        ocrEnabled = "OCR включён",
        ocrEnable = "Включить OCR",
        readerLeadTitle = "Чтение",
        readerLeadDescription = "Раздел чтения теперь собран из отдельных страниц: внешний вид текста, макет страницы, колонтитулы, листание и поведение.",
        quickBlocksTitle = "Быстрые блоки",
        surfaceCardsLabel = "Поверхности и карточки"
    )
}

private data class ReadingGoalSettingsText(
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

private data class CoverTitleSettingsText(
    val title: String,
    val subtitle: String
)

private data class StreakPolicySettingsText(
    val title: String,
    val enabledTitle: String,
    val enabledSubtitle: String,
    val graceTitle: String,
    val graceSubtitle: String,
    val summary: String
)

private data class ReaderSettingsMapText(
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

private data class ReaderStyleSettingsText(
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

private data class TranslationSettingsMapText(
    val overviewTitle: String,
    val overviewDescription: String,
    val areasTitle: String,
    val languagesTitle: String,
    val languagesDescription: String,
    val ocrTitle: String,
    val ocrDescription: String,
    val overlayTitle: String,
    val overlayDescription: String,
    val servicesTitle: String,
    val servicesDescription: String
)

private data class TranslationServicesGatewayText(
    val previewSubtitle: String,
    val ownershipTitle: String,
    val ownershipBody: String,
    val readAloudHint: String,
    val openButtonLabel: String
)

private data class ServiceSectionText(
    val title: String,
    val description: String,
    val leadTitle: String,
    val leadDescription: String,
    val statusTitle: String,
    val statusBody: String,
    val roadmapTitle: String,
    val roadmapItems: List<String>
)

private data class AiServicesOverviewText(
    val machineTranslationTitle: String,
    val machineTranslationHint: String,
    val localExplainTitle: String,
    val localExplainHint: String,
    val advancedExplainTitle: String,
    val advancedExplainHint: String,
    val summaryTitle: String,
    val summaryHint: String,
    val ocrTitle: String,
    val ocrHint: String,
    val providersTitle: String,
    val providersHint: String,
    val routeLabel: String,
    val statusLabel: String,
    val providerLabel: String,
    val expandedExplainLabel: String,
    val localProviderValue: String,
    val configuredValue: String,
    val notConnectedValue: String,
    val localFirstStatus: String,
    val onlineReadyStatus: String,
    val onlineNeedsNetworkStatus: String,
    val offlineStatus: String,
    val offlineReadyStatus: String,
    val offlineModelMissingStatus: String,
    val offlineModelNeedsNetworkStatus: String,
    val offlinePairUnsupportedStatus: String,
    val onlineUnavailableStatus: String,
    val translationDisabledStatus: String,
    val localExplainStatus: String,
    val advancedExplainDisabledStatus: String,
    val extendedExplainWaitingStatus: String,
    val summaryUnavailableStatus: String,
    val providersReadyStatus: String,
    val providersNeedNetworkStatus: String,
    val providersNeedValidationStatus: String,
    val providersUnavailableStatus: String
)

private data class SettingsSectionSummaryText(
    val title: String,
    val hint: String
)

private fun streakPolicyProgressText(
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

private fun readerSettingsMapText(language: String): ReaderSettingsMapText = when (language) {
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

private fun readerStyleSettingsText(language: String): ReaderStyleSettingsText = when (language) {
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

// Font strings and chrome slot picker title extracted to SettingsFontStrings.kt

private fun translationSettingsMapText(language: String): TranslationSettingsMapText = when (language) {
    "en" -> TranslationSettingsMapText(
        overviewTitle = "Translation areas",
        overviewDescription = "Keep user translation behavior, OCR input, overlay, and service controls in separate layers.",
        areasTitle = "Translation areas",
        languagesTitle = "Behavior & languages",
        languagesDescription = "Translation mode, source language, and target language.",
        ocrTitle = "OCR input",
        ocrDescription = "OCR source language and comic filters for dialogue and SFX.",
        overlayTitle = "Overlay",
        overlayDescription = "Overlay opacity, font scale, and presentation style.",
        servicesTitle = "Services",
        servicesDescription = "Transport, Explain, and provider routes now live in AI Services."
    )
    "ja" -> TranslationSettingsMapText(
        overviewTitle = "翻訳エリア",
        overviewDescription = "翻訳の挙動、OCR 入力、オーバーレイ、サービス制御を別々の層に整理します。",
        areasTitle = "翻訳エリア",
        languagesTitle = "挙動と言語",
        languagesDescription = "翻訳モード、原文言語、翻訳先言語。",
        ocrTitle = "OCR 入力",
        ocrDescription = "OCR の入力言語と、セリフや効果音のフィルター。",
        overlayTitle = "オーバーレイ",
        overlayDescription = "不透明度、フォント倍率、表示スタイル。",
        servicesTitle = "サービス",
        servicesDescription = "転送方式、Explain、provider 経路は AI Services に集約されました。"
    )
    "zh" -> TranslationSettingsMapText(
        overviewTitle = "翻译区域",
        overviewDescription = "把翻译行为、OCR 输入、覆盖层和服务控制分开，避免混在一起。",
        areasTitle = "翻译区域",
        languagesTitle = "行为与语言",
        languagesDescription = "翻译模式、源语言和目标语言。",
        ocrTitle = "OCR 输入",
        ocrDescription = "OCR 识别语言，以及对白和拟声词过滤。",
        overlayTitle = "覆盖层",
        overlayDescription = "透明度、字体缩放和显示样式。",
        servicesTitle = "服务",
        servicesDescription = "传输、Explain 和 provider 路径现在集中在 AI Services。"
    )
    "ko" -> TranslationSettingsMapText(
        overviewTitle = "번역 영역",
        overviewDescription = "번역 동작, OCR 입력, 오버레이, 서비스 제어를 분리해 구조를 더 명확하게 유지합니다.",
        areasTitle = "번역 영역",
        languagesTitle = "동작과 언어",
        languagesDescription = "번역 모드, 원문 언어, 대상 언어.",
        ocrTitle = "OCR 입력",
        ocrDescription = "OCR 입력 언어와 말풍선/SFX 필터.",
        overlayTitle = "오버레이",
        overlayDescription = "투명도, 글꼴 비율, 표시 스타일.",
        servicesTitle = "서비스",
        servicesDescription = "전송, Explain, provider 경로는 이제 AI Services에 모였습니다."
    )
    else -> TranslationSettingsMapText(
        overviewTitle = "Зоны перевода",
        overviewDescription = "Разнесите поведение перевода, OCR-ввод, оверлей и сервисные переключатели по разным слоям.",
        areasTitle = "Зоны перевода",
        languagesTitle = "Поведение и языки",
        languagesDescription = "Режим перевода, язык источника и язык результата.",
        ocrTitle = "OCR-ввод",
        ocrDescription = "Язык OCR и фильтры для реплик и звуковых эффектов.",
        overlayTitle = "Оверлей",
        overlayDescription = "Прозрачность, масштаб шрифта и стиль показа.",
        servicesTitle = "Сервисы",
        servicesDescription = "Транспорт, Explain и маршруты провайдеров теперь собраны в AI Services."
    )
}

private fun translationServicesGatewayText(
    language: String,
    aiServicesTitle: String,
    readAloudTitle: String
): TranslationServicesGatewayText = when (language) {
    "en" -> TranslationServicesGatewayText(
        previewSubtitle = "Service-level controls now live in $aiServicesTitle.",
        ownershipTitle = "Where service controls live now",
        ownershipBody = "Translation keeps languages, OCR behavior, and overlay presentation here. Transport, Explain, summary, and provider-level routing now open through $aiServicesTitle.",
        readAloudHint = "Voice defaults and TTS-provider controls live in $readAloudTitle.",
        openButtonLabel = "Open $aiServicesTitle"
    )
    "ja" -> TranslationServicesGatewayText(
        previewSubtitle = "サービスレベルの設定は $aiServicesTitle に移動しました。",
        ownershipTitle = "サービス設定の配置",
        ownershipBody = "翻訳には言語、OCR挙動、オーバーレイ表示を残します。転送方式、Explain、summary、provider レベルの経路は $aiServicesTitle から開きます。",
        readAloudHint = "音声の既定値と TTS provider の設定は $readAloudTitle にあります。",
        openButtonLabel = "$aiServicesTitle を開く"
    )
    "zh" -> TranslationServicesGatewayText(
        previewSubtitle = "服务级控制现在统一放到 $aiServicesTitle。",
        ownershipTitle = "服务控制现在放在哪里",
        ownershipBody = "翻译这里保留语言、OCR 行为和覆盖层展示。传输、Explain、摘要以及 provider 级路由现在都从 $aiServicesTitle 打开。",
        readAloudHint = "语音默认值和 TTS provider 控制位于 $readAloudTitle。",
        openButtonLabel = "打开 $aiServicesTitle"
    )
    "ko" -> TranslationServicesGatewayText(
        previewSubtitle = "서비스 레벨 제어는 이제 $aiServicesTitle 에 모였습니다.",
        ownershipTitle = "서비스 제어 위치",
        ownershipBody = "번역에는 언어, OCR 동작, 오버레이 표시만 남깁니다. 전송, Explain, summary, provider 레벨 경로는 이제 $aiServicesTitle 에서 엽니다.",
        readAloudHint = "음성 기본값과 TTS provider 제어는 $readAloudTitle 에 있습니다.",
        openButtonLabel = "$aiServicesTitle 열기"
    )
    else -> TranslationServicesGatewayText(
        previewSubtitle = "Сервисные настройки теперь вынесены в $aiServicesTitle.",
        ownershipTitle = "Где теперь живут сервисные настройки",
        ownershipBody = "В переводе остаются языки, OCR и способ показа. Транспорт, Explain, summary и маршруты внешних провайдеров теперь открываются через $aiServicesTitle.",
        readAloudHint = "Голоса по умолчанию и TTS-провайдеры вынесены в $readAloudTitle.",
        openButtonLabel = "Открыть $aiServicesTitle"
    )
}

private fun aiServicesSectionText(language: String): ServiceSectionText = when (language) {
    "en" -> ServiceSectionText(
        title = "AI Services",
        description = "Transport, explain, and future provider-level controls.",
        leadTitle = "AI service layer",
        leadDescription = "Keep provider and transport logic separate from user-facing translation behavior.",
        statusTitle = "Current status",
        statusBody = "This section currently owns transport preference and explain service behavior. Provider selection can land here later without crowding OCR.",
        roadmapTitle = "Next service surfaces",
        roadmapItems = listOf(
            "Provider selection and status",
            "Summary and explain service controls",
            "Usage and rate limits"
        )
    )
    "ja" -> ServiceSectionText(
        title = "AI サービス",
        description = "転送方式、Explain、将来のプロバイダ設定。",
        leadTitle = "AI サービス層",
        leadDescription = "ユーザー向けの翻訳挙動と、プロバイダや転送方式の設定を分離します。",
        statusTitle = "現在の状態",
        statusBody = "このセクションは、転送方式の優先度と Explain サービスの挙動を担当します。今後のプロバイダ選択もここに追加できます。",
        roadmapTitle = "次のサービス面",
        roadmapItems = listOf(
            "プロバイダ選択と状態",
            "要約と Explain のサービス設定",
            "利用量とレート制限"
        )
    )
    "zh" -> ServiceSectionText(
        title = "AI 服务",
        description = "传输、Explain，以及未来的 provider 级控制。",
        leadTitle = "AI 服务层",
        leadDescription = "把用户可见的翻译行为和 provider/transport 逻辑拆开。",
        statusTitle = "当前状态",
        statusBody = "这里现在负责传输偏好和 Explain 行为。以后 provider 选择也应放在这里，而不是挤进 OCR。",
        roadmapTitle = "下一步服务面",
        roadmapItems = listOf(
            "Provider 选择与状态",
            "摘要与 Explain 服务控制",
            "使用量与速率限制"
        )
    )
    "ko" -> ServiceSectionText(
        title = "AI 서비스",
        description = "전송 방식, Explain, 그리고 향후 provider 레벨 제어.",
        leadTitle = "AI 서비스 레이어",
        leadDescription = "사용자 번역 동작과 provider/transport 로직을 분리합니다.",
        statusTitle = "현재 상태",
        statusBody = "이 섹션은 현재 전송 선호도와 Explain 동작을 담당합니다. 이후 provider 선택도 여기로 들어올 수 있습니다.",
        roadmapTitle = "다음 서비스 영역",
        roadmapItems = listOf(
            "Provider 선택과 상태",
            "요약 및 Explain 서비스 제어",
            "사용량과 레이트 제한"
        )
    )
    else -> ServiceSectionText(
        title = "AI Services",
        description = "Транспорт, Explain и будущие сервисные настройки провайдеров.",
        leadTitle = "Слой AI-сервисов",
        leadDescription = "Отделяет пользовательское поведение перевода от логики провайдеров и транспорта.",
        statusTitle = "Текущий статус",
        statusBody = "Сейчас здесь живут приоритет транспорта и поведение Explain. Позже сюда же можно вынести выбор провайдера, не перегружая OCR.",
        roadmapTitle = "Следующие сервисные блоки",
        roadmapItems = listOf(
            "Выбор провайдера и его статус",
            "Настройки summary и Explain",
            "Лимиты использования и rate limits"
        )
    )
}

private fun readAloudSectionText(language: String): ServiceSectionText = when (language) {
    "en" -> ServiceSectionText(
        title = "Read Aloud",
        description = "TTS engine, voice, playback, and accessibility controls.",
        leadTitle = "Read aloud / TTS",
        leadDescription = "A separate home for voice reading so it does not get buried inside reader behavior or translation.",
        statusTitle = "Default behavior",
        statusBody = "These defaults apply in the reader services tab for text books. Voice reading stays close to reading instead of living as a hidden global feature.",
        roadmapTitle = "Next improvements",
        roadmapItems = listOf(
            "Background playback and media session controls",
            "Resume from the paused phrase instead of the current chunk start",
            "Accessibility polish and optional headphone actions"
        )
    )
    "ja" -> ServiceSectionText(
        title = "読み上げ",
        description = "TTS エンジン、音声、再生、アクセシビリティ設定。",
        leadTitle = "読み上げ / TTS",
        leadDescription = "音声読書を、リーダー挙動や翻訳の奥に埋もれさせないための専用ホームです。",
        statusTitle = "既定の挙動",
        statusBody = "ここで設定した既定値は、テキスト本のリーダー内サービス欄にそのまま反映されます。読み上げを隠れた全体設定にしません。",
        roadmapTitle = "次の改善",
        roadmapItems = listOf(
            "バックグラウンド再生とメディア操作",
            "チャンク先頭ではなく一時停止位置からの再開",
            "アクセシビリティ調整とヘッドホン操作"
        )
    )
    "zh" -> ServiceSectionText(
        title = "朗读",
        description = "TTS 引擎、声音、播放和无障碍控制。",
        leadTitle = "朗读 / TTS",
        leadDescription = "给语音阅读一个独立入口，不再埋在阅读器行为或翻译设置里。",
        statusTitle = "默认行为",
        statusBody = "这里的默认值会直接应用到文本书阅读器里的服务面板，让朗读紧贴阅读流程，而不是藏在全局设置里。",
        roadmapTitle = "后续增强",
        roadmapItems = listOf(
            "后台播放与媒体控制",
            "从暂停位置继续，而不是从当前片段开头重放",
            "无障碍细化与耳机按键操作"
        )
    )
    "ko" -> ServiceSectionText(
        title = "읽어주기",
        description = "TTS 엔진, 음성, 재생, 접근성 제어.",
        leadTitle = "읽어주기 / TTS",
        leadDescription = "음성 읽기를 리더 동작이나 번역 설정 아래에 묻지 않도록 별도 홈을 둡니다.",
        statusTitle = "기본 동작",
        statusBody = "여기서 고른 기본값은 텍스트 책 리더의 서비스 탭에 그대로 적용됩니다. 읽어주기를 숨어 있는 전역 기능으로 두지 않습니다.",
        roadmapTitle = "다음 개선",
        roadmapItems = listOf(
            "백그라운드 재생과 미디어 컨트롤",
            "현재 청크 처음이 아니라 일시정지 지점에서 다시 시작",
            "접근성 다듬기와 헤드폰 동작"
        )
    )
    else -> ServiceSectionText(
        title = "Чтение голосом",
        description = "TTS-движок, голос, воспроизведение и accessibility-настройки.",
        leadTitle = "Чтение голосом / TTS",
        leadDescription = "Отдельный дом для голосового чтения, чтобы оно не терялось внутри ридера или перевода.",
        statusTitle = "Поведение по умолчанию",
        statusBody = "Эти значения сразу применяются в сервисной вкладке ридера для текстовых книг. Озвучивание остаётся рядом с чтением, а не прячется в глубокой глобальной настройке.",
        roadmapTitle = "Следующие улучшения",
        roadmapItems = listOf(
            "Фоновое воспроизведение и media controls",
            "Продолжение с точки паузы, а не с начала фрагмента",
            "Accessibility-полировка и действия с гарнитуры"
        )
    )
}

private fun coverTitleSettingsText(language: String): CoverTitleSettingsText = when (language) {
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

private fun readingGoalSettingsText(language: String): ReadingGoalSettingsText = when (language) {
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

private fun eyeRestSettingsText(language: String): EyeRestSettingsText = when (language) {
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

private data class TranslationSectionText(
    val title: String,
    val description: String,
    val translationBehaviorCard: String,
    val sourceLanguageCard: String,
    val sourceLanguageHint: String,
    val targetLanguageCard: String,
    val targetLanguageHint: String,
    val transportCard: String,
    val transportHint: String,
    val explainCard: String,
    val explainTitle: String,
    val explainSubtitle: String,
    val autoSource: String,
    val appLanguageTarget: String,
    val transportAuto: String,
    val transportOffline: String,
    val transportOnline: String,
    val explainComingSoon: String,
    val comicFiltersCard: String,
    val comicFiltersHint: String,
    val dialoguesOnlyTitle: String,
    val dialoguesOnlySubtitle: String,
    val includeSfxTitle: String,
    val includeSfxSubtitle: String,
    val overlayCard: String,
    val overlayHint: String,
    val overlayOpacityTitle: String,
    val overlayFontScaleTitle: String,
    val overlayStyleTitle: String,
    val overlayStyleAuto: String,
    val overlayStyleLight: String,
    val overlayStyleDark: String
)

private fun translationSectionText(language: String): TranslationSectionText = when (language) {
    "en" -> TranslationSectionText(
        title = "Translation & OCR",
        description = "Translation behavior, OCR language, and future explain options live here in one compact section.",
        translationBehaviorCard = "Translation behavior",
        sourceLanguageCard = "Source language",
        sourceLanguageHint = "Auto works well for most text books. Switch manually if a book mixes languages badly.",
        targetLanguageCard = "Target language",
        targetLanguageHint = "App language follows the current UI language automatically.",
        transportCard = "Translation transport",
        transportHint = "Auto prefers local models first, then tries the network path if it becomes available.",
        explainCard = "Explain options",
        explainTitle = "Use expanded explain when available",
        explainSubtitle = "Local explanations for words and phrases already work. Keep this on if you also want richer contextual explain once an advanced provider is connected.",
        autoSource = "Auto",
        appLanguageTarget = "App language",
        transportAuto = "Auto",
        transportOffline = "Offline",
        transportOnline = "Online",
        explainComingSoon = "Local explain already works. This toggle is reserved for richer explain when an advanced provider is connected.",
        comicFiltersCard = "Comic OCR filters",
        comicFiltersHint = "These filters affect automatic page translation. Manual tap-to-translate stays available for every block.",
        dialoguesOnlyTitle = "Prefer dialogue blocks only",
        dialoguesOnlySubtitle = "Skips narration boxes during page-wide translation, but keeps uncertain blocks so we do not lose likely speech.",
        includeSfxTitle = "Include SFX blocks",
        includeSfxSubtitle = "When disabled, sound effects stay visible in OCR results but are skipped during automatic page translation.",
        overlayCard = "Comic overlay",
        overlayHint = "Tune how translated text sits on top of the page without changing the original image.",
        overlayOpacityTitle = "Overlay opacity",
        overlayFontScaleTitle = "Overlay font size",
        overlayStyleTitle = "Overlay style",
        overlayStyleAuto = "Auto theme",
        overlayStyleLight = "Light",
        overlayStyleDark = "Dark"
    )
    "ja" -> TranslationSectionText(
        title = "翻訳とOCR",
        description = "翻訳の動作、OCR 言語、今後の解説機能を、このセクションにまとめています。",
        translationBehaviorCard = "翻訳の動作",
        sourceLanguageCard = "原文の言語",
        sourceLanguageHint = "通常は自動判定で十分です。混在テキストで崩れる場合のみ手動にします。",
        targetLanguageCard = "翻訳先の言語",
        targetLanguageHint = "アプリ言語を選ぶと、現在の UI 言語に自動追従します。",
        transportCard = "翻訳経路",
        transportHint = "自動では、まずローカルモデルを優先し、必要なら将来のオンライン経路を試します。",
        explainCard = "解説オプション",
        explainTitle = "拡張解説が使えるときに有効化する",
        explainSubtitle = "単語やフレーズのローカル解説はすでに使えます。今後より高度な解説サービスが使えるようになったときも文脈解説を使いたいならオンにしておきます。",
        autoSource = "自動",
        appLanguageTarget = "アプリ言語",
        transportAuto = "自動",
        transportOffline = "オフライン",
        transportOnline = "オンライン",
        explainComingSoon = "ローカル解説はすでに使えます。このトグルは今後の高度な解説サービス用に残しています。",
        comicFiltersCard = "コミックOCRフィルター",
        comicFiltersHint = "これらのフィルターはページ全体の自動翻訳にだけ影響します。手動のブロック翻訳は常に使えます。",
        dialoguesOnlyTitle = "セリフ中心で翻訳する",
        dialoguesOnlySubtitle = "ページ全体の翻訳ではナレーション枠を外しつつ、判定が曖昧なブロックは会話候補として残します。",
        includeSfxTitle = "SFX ブロックを含める",
        includeSfxSubtitle = "オフにすると OCR 結果には表示されますが、ページ全体の自動翻訳では効果音を飛ばします。",
        overlayCard = "コミックオーバーレイ",
        overlayHint = "原画像は変えずに、翻訳テキストの重なり方だけを調整します。",
        overlayOpacityTitle = "オーバーレイの濃さ",
        overlayFontScaleTitle = "オーバーレイ文字サイズ",
        overlayStyleTitle = "オーバーレイの見た目",
        overlayStyleAuto = "テーマに合わせる",
        overlayStyleLight = "ライト",
        overlayStyleDark = "ダーク"
    )
    "zh" -> TranslationSectionText(
        title = "翻译与 OCR",
        description = "这里集中放置翻译行为、OCR 语言，以及后续的解释层开关。",
        translationBehaviorCard = "翻译行为",
        sourceLanguageCard = "源语言",
        sourceLanguageHint = "大多数文本书用自动即可；只有语言混杂明显时再手动指定。",
        targetLanguageCard = "目标语言",
        targetLanguageHint = "选择应用语言后，会自动跟随当前界面语言。",
        transportCard = "翻译通道",
        transportHint = "自动模式会先尝试本地模型，之后再走未来可用的在线路径。",
        explainCard = "解释选项",
        explainTitle = "可用时启用扩展解释",
        explainSubtitle = "单词和短语的本地解释已经可用。如果以后接入更强的解释服务，还想继续获得更丰富的上下文解释，就保持开启。",
        autoSource = "自动",
        appLanguageTarget = "应用语言",
        transportAuto = "自动",
        transportOffline = "离线",
        transportOnline = "在线",
        explainComingSoon = "本地解释已经可用。这个开关主要为未来更强的解释服务预留。",
        comicFiltersCard = "漫画 OCR 过滤",
        comicFiltersHint = "这些过滤只影响整页自动翻译。手动点按单个文本块仍然始终可用。",
        dialoguesOnlyTitle = "优先只翻译对话块",
        dialoguesOnlySubtitle = "整页翻译时跳过旁白框，但会保留不确定块，避免错过可能的对白。",
        includeSfxTitle = "包含 SFX 块",
        includeSfxSubtitle = "关闭后，拟声词仍会出现在 OCR 结果里，但整页自动翻译会跳过它们。",
        overlayCard = "漫画叠层",
        overlayHint = "只调整翻译文本叠在页面上的方式，不改动原图。",
        overlayOpacityTitle = "叠层不透明度",
        overlayFontScaleTitle = "叠层字号",
        overlayStyleTitle = "叠层风格",
        overlayStyleAuto = "跟随主题",
        overlayStyleLight = "浅色",
        overlayStyleDark = "深色"
    )
    "ko" -> TranslationSectionText(
        title = "번역과 OCR",
        description = "번역 동작, OCR 언어, 이후 설명 레이어 설정을 이 섹션에 모았습니다.",
        translationBehaviorCard = "번역 동작",
        sourceLanguageCard = "원문 언어",
        sourceLanguageHint = "대부분의 텍스트 책은 자동으로 충분하며, 언어가 섞여 있을 때만 수동으로 고릅니다.",
        targetLanguageCard = "대상 언어",
        targetLanguageHint = "앱 언어를 고르면 현재 UI 언어를 따라갑니다.",
        transportCard = "번역 경로",
        transportHint = "자동은 먼저 로컬 모델을 우선하고, 이후 가능해지면 온라인 경로를 시도합니다.",
        explainCard = "설명 옵션",
        explainTitle = "확장 설명이 가능할 때 사용",
        explainSubtitle = "단어와 구문에 대한 로컬 설명은 이미 동작합니다. 나중에 더 강한 설명 서비스가 연결될 때도 풍부한 문맥 설명을 원하면 켜 두세요.",
        autoSource = "자동",
        appLanguageTarget = "앱 언어",
        transportAuto = "자동",
        transportOffline = "오프라인",
        transportOnline = "온라인",
        explainComingSoon = "로컬 설명은 이미 동작합니다. 이 토글은 앞으로의 확장 설명 서비스용입니다.",
        comicFiltersCard = "코믹 OCR 필터",
        comicFiltersHint = "이 필터는 페이지 전체 자동 번역에만 적용됩니다. 개별 블록 수동 번역은 계속 사용할 수 있습니다.",
        dialoguesOnlyTitle = "대사 블록 위주로 번역",
        dialoguesOnlySubtitle = "페이지 전체 번역에서 내레이션 상자는 빼되, 확신이 낮은 블록은 대사 후보로 남겨 둡니다.",
        includeSfxTitle = "SFX 블록 포함",
        includeSfxSubtitle = "끄면 OCR 결과에는 보이지만 페이지 전체 자동 번역에서는 효과음을 건너뜁니다.",
        overlayCard = "코믹 오버레이",
        overlayHint = "원본 이미지는 그대로 두고, 번역 텍스트가 페이지 위에 놓이는 방식만 조정합니다.",
        overlayOpacityTitle = "오버레이 불투명도",
        overlayFontScaleTitle = "오버레이 글자 크기",
        overlayStyleTitle = "오버레이 스타일",
        overlayStyleAuto = "테마 자동",
        overlayStyleLight = "라이트",
        overlayStyleDark = "다크"
    )
    else -> TranslationSectionText(
        title = "Перевод и OCR",
        description = "Здесь собраны поведение перевода, язык OCR и будущий слой пояснений, без лишних служебных блоков вокруг.",
        translationBehaviorCard = "Поведение перевода",
        sourceLanguageCard = "Исходный язык",
        sourceLanguageHint = "Для большинства текстовых книг достаточно автоопределения. Ручной выбор нужен только если книга плохо смешивает языки.",
        targetLanguageCard = "Целевой язык",
        targetLanguageHint = "Режим «Язык приложения» автоматически следует за текущим языком интерфейса.",
        transportCard = "Режим перевода",
        transportHint = "Авто сначала пробует локальные модели, а затем использует сетевой путь, если он станет доступен.",
        explainCard = "Параметры пояснений",
        explainTitle = "Использовать расширенные пояснения при доступности",
        explainSubtitle = "Локальные пояснения для слов и фраз уже работают. Оставьте это включённым, если позже захотите и более глубокие контекстные пояснения от расширенного сервиса.",
        autoSource = "Авто",
        appLanguageTarget = "Язык приложения",
        transportAuto = "Авто",
        transportOffline = "Офлайн",
        transportOnline = "Онлайн",
        explainComingSoon = "Локальные пояснения уже работают. Этот тумблер нужен для будущего расширенного сервиса пояснений.",
        comicFiltersCard = "Фильтры OCR-комиксов",
        comicFiltersHint = "Эти фильтры влияют только на автоматический перевод всей страницы. Ручной тап по отдельному блоку остаётся доступным всегда.",
        dialoguesOnlyTitle = "Предпочитать только диалоги",
        dialoguesOnlySubtitle = "При переводе страницы пропускает блоки повествования, но оставляет неопределённые сегменты, чтобы не потерять возможную реплику.",
        includeSfxTitle = "Включать SFX-блоки",
        includeSfxSubtitle = "Если выключено, звукоподражания остаются в OCR-результате, но не переводятся автоматически на всю страницу.",
        overlayCard = "Наложение перевода",
        overlayHint = "Здесь настраивается, как перевод ложится поверх страницы, не меняя оригинальное изображение.",
        overlayOpacityTitle = "Прозрачность наложения",
        overlayFontScaleTitle = "Размер шрифта наложения",
        overlayStyleTitle = "Стиль наложения",
        overlayStyleAuto = "Авто по теме",
        overlayStyleLight = "Светлый",
        overlayStyleDark = "Тёмный"
    )
}

private data class AboutSectionText(
    val title: String,
    val description: String,
    val overviewTitle: String,
    val overviewBody: String,
    val featuresTitle: String,
    val features: List<String>,
    val librariesTitle: String,
    val libraries: List<String>,
    val licensesTitle: String,
    val licenses: List<String>,
    val developerTitle: String,
    val developerName: String,
    val developerRole: String,
    val contactsTitle: String,
    val contactsHint: String
)

private fun aboutSectionText(language: String): AboutSectionText = when (language) {
    "en" -> AboutSectionText(
        title = "About the app",
        description = "What the app does, what it is built with, and how to contact the developer.",
        overviewTitle = "Program description",
        overviewBody = "Mr.Comic is an Android reader for books and comics from a local library. It combines file management, reading modes for graphics and text, OCR and dictionary tools, reading progress, and backup features in one app.",
        featuresTitle = "Key features",
        features = listOf(
            "Local library with files, folders, bookmarks, quotes, and the Mr.Comic tab.",
            "Reader modes for page reading, webtoon scrolling, and text formats with saved progress.",
            "OCR, offline dictionaries, translation, and text explanation tools.",
            "Theme customization, progress export/import, and library access recovery."
        ),
        librariesTitle = "Main libraries",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "Licenses and attribution",
        licenses = listOf(
            "A large part of the AndroidX / Jetpack / Retrofit / OkHttp stack uses Apache 2.0.",
            "Offline FreeDict dictionary data is bundled under CC BY-SA 3.0.",
            "Some third-party components are shipped with separate LGPL / other notice files inside the project.",
            "GPL-based DjVu renderers are not bundled in the current Android build.",
            "Project attribution and license notes are stored in bundled resources and project documentation."
        ),
        developerTitle = "Developer",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "Design, development, and support",
        contactsTitle = "Contacts",
        contactsHint = "Feedback, bug reports, and suggestions:"
    )
    "ja" -> AboutSectionText(
        title = "アプリについて",
        description = "アプリの役割、使用している技術、開発者への連絡先をまとめています。",
        overviewTitle = "プログラム概要",
        overviewBody = "Mr.Comic は、ローカルライブラリの本とコミックを読むための Android リーダーです。ファイル管理、画像とテキストの読書モード、OCR と辞書、読書進捗、バックアップをひとつにまとめています。",
        featuresTitle = "主な機能",
        features = listOf(
            "ファイル、フォルダ、ブックマーク、引用、Mr.Comic タブを備えたローカルライブラリ。",
            "ページ送り、ウェブトゥーン、テキスト形式に対応したリーダーと進捗保存。",
            "OCR、オフライン辞書、翻訳、テキスト解説ツール。",
            "テーマ調整、進捗の書き出し/読み込み、ライブラリアクセスの復旧。"
        ),
        librariesTitle = "主なライブラリ",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt、Room、DataStore、Media3、Coil",
            "ML Kit、Retrofit、OkHttp、Gson、Zip4j、Apache Commons Compress、7-Zip-JBinding、Junrar"
        ),
        licensesTitle = "ライセンスと帰属",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 系の多くは Apache 2.0 を採用しています。",
            "オフライン FreeDict 辞書データは CC BY-SA 3.0 で同梱されています。",
            "一部サードパーティには LGPL などの個別 notice ファイルを別途同梱しています。",
            "GPL ベースの DjVu レンダラーは現在の Android ビルドには含めていません。",
            "帰属情報とライセンス注記は同梱アセットとプロジェクト文書に保存されています。"
        ),
        developerTitle = "開発者",
        developerName = "Leostrange（Соболев Алексей）",
        developerRole = "設計・開発・サポート",
        contactsTitle = "連絡先",
        contactsHint = "感想、バグ報告、提案はこちらへ:"
    )
    "zh" -> AboutSectionText(
        title = "关于应用",
        description = "这里汇总应用用途、技术栈以及开发者联系方式。",
        overviewTitle = "程序说明",
        overviewBody = "Mr.Comic 是一款用于阅读本地书库中图书和漫画的 Android 阅读器。它把文件管理、图像与文本阅读模式、OCR 与词典工具、阅读进度和备份功能集中在一个应用里。",
        featuresTitle = "主要功能",
        features = listOf(
            "本地图书馆：文件、文件夹、书签、摘录和 Mr.Comic 标签页。",
            "支持分页、条漫滚动和文本格式的阅读器，并保存阅读进度。",
            "OCR、离线词典、翻译与文本解释工具。",
            "主题自定义、进度导出/导入，以及图书馆访问修复。"
        ),
        librariesTitle = "主要库",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt、Room、DataStore、Media3、Coil",
            "ML Kit、Retrofit、OkHttp、Gson、Zip4j、Apache Commons Compress、7-Zip-JBinding、Junrar"
        ),
        licensesTitle = "许可证与署名",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 这类主要栈的大部分组件采用 Apache 2.0。",
            "离线 FreeDict 词典数据以 CC BY-SA 3.0 方式提供。",
            "部分第三方组件另附 LGPL 等单独的 notice 文件。",
            "基于 GPL 的 DjVu 渲染器未包含在当前 Android 构建中。",
            "署名信息和许可证说明保存在随包资源与项目文档中。"
        ),
        developerTitle = "开发者",
        developerName = "Leostrange（Соболев Алексей）",
        developerRole = "设计、开发与维护",
        contactsTitle = "联系方式",
        contactsHint = "欢迎发送反馈、问题报告和建议："
    )
    "ko" -> AboutSectionText(
        title = "앱 정보",
        description = "앱의 역할, 사용한 기술, 개발자 연락처를 한곳에 모았습니다.",
        overviewTitle = "프로그램 설명",
        overviewBody = "Mr.Comic 은 로컬 라이브러리의 책과 코믹을 읽기 위한 Android 리더입니다. 파일 관리, 그래픽/텍스트 읽기 모드, OCR과 사전 도구, 읽기 진행도와 백업 기능을 하나의 앱으로 묶었습니다.",
        featuresTitle = "주요 기능",
        features = listOf(
            "파일, 폴더, 북마크, 인용문, Mr.Comic 탭을 갖춘 로컬 라이브러리.",
            "페이지 리딩, 웹툰 스크롤, 텍스트 형식을 지원하는 리더와 진행도 저장.",
            "OCR, 오프라인 사전, 번역, 텍스트 설명 도구.",
            "테마 커스터마이즈, 진행도 내보내기/가져오기, 라이브러리 접근 복구."
        ),
        librariesTitle = "주요 라이브러리",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "라이선스와 고지",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 계열의 큰 축은 Apache 2.0을 사용합니다.",
            "오프라인 FreeDict 사전 데이터는 CC BY-SA 3.0으로 포함됩니다.",
            "일부 서드파티 구성요소는 LGPL 등 별도 notice 파일과 함께 제공됩니다.",
            "GPL 기반 DjVu 렌더러는 현재 Android 빌드에 포함하지 않았습니다.",
            "출처 표기와 라이선스 메모는 번들 자산과 프로젝트 문서에 저장되어 있습니다."
        ),
        developerTitle = "개발자",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "설계, 개발, 유지보수",
        contactsTitle = "연락처",
        contactsHint = "피드백, 버그 제보, 제안:"
    )
    else -> AboutSectionText(
        title = "О приложении",
        description = "Здесь собраны назначение приложения, стек, лицензии и контакты разработчика.",
        overviewTitle = "Описание программы",
        overviewBody = "Mr.Comic — Android-приложение для чтения книг и комиксов из локальной библиотеки. Оно объединяет управление файлами, режимы чтения для графики и текста, OCR и словарные инструменты, прогресс чтения и резервное копирование.",
        featuresTitle = "Основные функции",
        features = listOf(
            "Локальная библиотека: файлы, папки, закладки, цитаты и вкладка Mr.Comic.",
            "Ридер для постраничного чтения, webtoon-режима и текстовых форматов с сохранением прогресса.",
            "OCR, офлайн-словари, перевод и объяснение выделенного текста.",
            "Темы и кастомизация, экспорт/импорт прогресса и восстановление доступа к библиотеке."
        ),
        librariesTitle = "Основные библиотеки",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "Лицензии и атрибуция",
        licenses = listOf(
            "Заметная часть стека AndroidX / Jetpack / Retrofit / OkHttp использует Apache 2.0.",
            "Офлайн-данные FreeDict поставляются по лицензии CC BY-SA 3.0.",
            "Для части сторонних компонентов приложены отдельные notice-файлы с LGPL и другими условиями.",
            "GPL-зависимые DjVu-рендеры в текущую Android-сборку не включены.",
            "Файлы атрибуции и тексты лицензий лежат во встроенных ресурсах и документации проекта."
        ),
        developerTitle = "Разработчик",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "Дизайн, разработка и сопровождение",
        contactsTitle = "Контакты",
        contactsHint = "Для отзывов, баг-репортов и предложений:"
    )
}

private data class LibrarySectionText(
    val leadTitle: String,
    val leadDescription: String,
    val tabLabels: Map<LibrarySettingsTab, String>,
    val tabHints: Map<LibrarySettingsTab, String>,
    val displayCard: String,
    val cardsCard: String,
    val cardDensity: String,
    val coverScale: String,
    val thumbnailShape: String,
    val rectangle: String,
    val square: String,
    val progressTitle: String,
    val progressSubtitle: String,
    val shelvesBackgroundCard: String,
    val previewTitle: String,
    val previewNovel: String,
    val previewGraphic: String,
    val previewFolder: String,
    val canvasMoodCard: String,
    val atmosphereCard: String,
    val shelfStudioCard: String,
    val backgroundStyle: String,
    val backgroundAccent: String,
    val backgroundBlur: String,
    val backgroundVeil: String,
    val panelOpacity: String,
    val shelfStyle: String,
    val shelfDepth: String,
    val cardShadow: String,
    val titleScale: String,
    val titleLines: String,
    val cardStroke: String,
    val cardCornerRadius: String,
    val titlePanelOpacity: String,
    val chooseBackground: String,
    val changeBackground: String,
    val resetBackground: String,
    val selectedBackground: String,
    val selectedBackgroundHint: String,
    val imageBackgroundOption: String,
    val recentStripPosition: String,
    val sortGroupCard: String,
    val sortDefault: String,
    val groupBy: String,
    val groupByLabels: Map<String, String>,
    val savedThemesTitle: String,
    val savedThemesHint: String,
    val savedThemeSlotPrefix: String,
    val savedThemeSave: String,
    val savedThemeApply: String,
    val savedThemeClear: String,
    val savedThemeEmpty: String
)

private data class AppearanceSectionText(
    val leadTitle: String,
    val leadDescription: String,
    val quickBlocksTitle: String,
    val tabLabels: Map<AppearanceSettingsTab, String>,
    val tabHints: Map<AppearanceSettingsTab, String>,
    val sizeShapeTitle: String,
    val accentColorsTitle: String,
    val accentColorsDescription: String,
    val surfacesTitle: String,
    val surfacesDescription: String,
    val paletteResetLabel: String,
    val serviceElementsTitle: String,
    val mascotRecapTitle: String,
    val mascotRecapSubtitle: String,
    val questPromptsTitle: String,
    val questPromptsSubtitle: String
)

private fun librarySectionText(language: String): LibrarySectionText = when (language) {
    "en" -> LibrarySectionText(
        leadTitle = "Library logic",
        leadDescription = "Keep this section for sorting, grouping, and calm collection rules. Visual styling now lives in Appearance.",
        tabLabels = mapOf(
            LibrarySettingsTab.DISPLAY to "Layout",
            LibrarySettingsTab.COVERS to "Covers",
            LibrarySettingsTab.STYLE to "Shelves & background",
            LibrarySettingsTab.SORTING to "Sorting"
        ),
        tabHints = mapOf(
            LibrarySettingsTab.DISPLAY to "Grid/list, columns and tile size.",
            LibrarySettingsTab.COVERS to "Card style, cover scale, thumbnail shape and progress marks.",
            LibrarySettingsTab.STYLE to "Background presets, custom image, shelf and shadow depth.",
            LibrarySettingsTab.SORTING to "Default sorting and grouping mode."
        ),
        displayCard = "Library view",
        cardsCard = "Cards",
        cardDensity = "Card density",
        coverScale = "Cover scale",
        thumbnailShape = "Thumbnail shape",
        rectangle = "Rectangle",
        square = "Square",
        progressTitle = "Show progress on cards",
        progressSubtitle = "Percent and progress indicator on library covers",
        shelvesBackgroundCard = "Shelves & background",
        previewTitle = "Live preview",
        previewNovel = "Novel",
        previewGraphic = "Graphic novel",
        previewFolder = "Folder",
        canvasMoodCard = "Canvas mood",
        atmosphereCard = "Glass & atmosphere",
        shelfStudioCard = "Shelf material",
        backgroundStyle = "Background style",
        backgroundAccent = "Background accent",
        backgroundBlur = "Background blur",
        backgroundVeil = "Image veil",
        panelOpacity = "Menus and panels transparency",
        shelfStyle = "Shelf style",
        shelfDepth = "Shelf depth",
        cardShadow = "Card shadow",
        titleScale = "Title scale",
        titleLines = "Title lines",
        cardStroke = "Card stroke",
        cardCornerRadius = "Card corner radius",
        titlePanelOpacity = "Title panel opacity",
        chooseBackground = "Choose background",
        changeBackground = "Change background",
        resetBackground = "Reset",
        selectedBackground = "Selected image",
        selectedBackgroundHint = "The chosen file is used directly in the library background preview and on the library screen.",
        imageBackgroundOption = "Image",
        recentStripPosition = "Recent strip position",
        sortGroupCard = "Sorting & grouping",
        sortDefault = "Default sorting",
        groupBy = "Group library by",
        groupByLabels = mapOf(
            "NONE" to "None",
            "SERIES" to "Series",
            "FOLDER" to "Folder"
        ),
        savedThemesTitle = "Saved library themes",
        savedThemesHint = "Save up to three custom library looks and switch between them quickly.",
        savedThemeSlotPrefix = "Slot",
        savedThemeSave = "Save theme",
        savedThemeApply = "Apply theme",
        savedThemeClear = "Clear slot",
        savedThemeEmpty = "Empty slot"
    )
    "ja" -> LibrarySectionText(
        leadTitle = "ライブラリのロジック",
        leadDescription = "このセクションは並び順、グループ化、コレクションの基本ルールだけに残します。見た目は「外観」へ移動しました。",
        tabLabels = mapOf(
            LibrarySettingsTab.DISPLAY to "レイアウト",
            LibrarySettingsTab.COVERS to "表紙",
            LibrarySettingsTab.STYLE to "棚と背景",
            LibrarySettingsTab.SORTING to "並び替え"
        ),
        tabHints = mapOf(
            LibrarySettingsTab.DISPLAY to "グリッド/リスト、列数、タイルサイズ。",
            LibrarySettingsTab.COVERS to "カード密度、表紙スケール、形状、進捗表示。",
            LibrarySettingsTab.STYLE to "背景プリセット、画像背景、棚と影の深さ。",
            LibrarySettingsTab.SORTING to "既定の並び順と分類。"
        ),
        displayCard = "ライブラリ表示",
        cardsCard = "カード",
        cardDensity = "カード密度",
        coverScale = "表紙スケール",
        thumbnailShape = "サムネイル形状",
        rectangle = "長方形",
        square = "正方形",
        progressTitle = "カードに進捗を表示",
        progressSubtitle = "表紙に進捗バーと割合を表示します",
        shelvesBackgroundCard = "棚と背景",
        previewTitle = "ライブプレビュー",
        previewNovel = "小説",
        previewGraphic = "グラフィック",
        previewFolder = "フォルダ",
        canvasMoodCard = "キャンバスムード",
        atmosphereCard = "ガラスと空気感",
        shelfStudioCard = "棚マテリアル",
        backgroundStyle = "背景スタイル",
        backgroundAccent = "背景アクセント",
        backgroundBlur = "背景ブラー",
        backgroundVeil = "画像ベール",
        panelOpacity = "メニューとパネルの透明度",
        shelfStyle = "棚スタイル",
        shelfDepth = "棚の奥行き",
        cardShadow = "カードの影",
        titleScale = "タイトル倍率",
        titleLines = "タイトル行数",
        cardStroke = "カード輪郭",
        cardCornerRadius = "カード角丸",
        titlePanelOpacity = "タイトルパネル濃度",
        chooseBackground = "背景を選ぶ",
        changeBackground = "背景を変更",
        resetBackground = "リセット",
        selectedBackground = "選択中の画像",
        selectedBackgroundHint = "選んだファイルはライブラリ背景のプレビューと実際のライブラリ画面でそのまま使われます。",
        imageBackgroundOption = "画像",
        recentStripPosition = "最近読んだ棚の位置",
        sortGroupCard = "並び替えと分類",
        sortDefault = "既定の並び順",
        groupBy = "ライブラリ分類",
        groupByLabels = mapOf(
            "NONE" to "なし",
            "SERIES" to "シリーズ",
            "FOLDER" to "フォルダ"
        ),
        savedThemesTitle = "保存したライブラリテーマ",
        savedThemesHint = "カスタムのライブラリ外観を3つまで保存し、すばやく切り替えられます。",
        savedThemeSlotPrefix = "スロット",
        savedThemeSave = "保存",
        savedThemeApply = "適用",
        savedThemeClear = "スロットをクリア",
        savedThemeEmpty = "空のスロット"
    )
    "zh" -> LibrarySectionText(
        leadTitle = "书库逻辑",
        leadDescription = "这个分区只保留排序、分组和书库规则。视觉样式已经移到“外观”。",
        tabLabels = mapOf(
            LibrarySettingsTab.DISPLAY to "布局",
            LibrarySettingsTab.COVERS to "封面",
            LibrarySettingsTab.STYLE to "书架与背景",
            LibrarySettingsTab.SORTING to "排序"
        ),
        tabHints = mapOf(
            LibrarySettingsTab.DISPLAY to "网格/列表、列数和卡片尺寸。",
            LibrarySettingsTab.COVERS to "卡片密度、封面缩放、形状与进度显示。",
            LibrarySettingsTab.STYLE to "背景预设、图片背景、书架与阴影深度。",
            LibrarySettingsTab.SORTING to "默认排序与分组。"
        ),
        displayCard = "书库视图",
        cardsCard = "卡片",
        cardDensity = "卡片密度",
        coverScale = "封面缩放",
        thumbnailShape = "缩略图形状",
        rectangle = "矩形",
        square = "方形",
        progressTitle = "在卡片上显示进度",
        progressSubtitle = "在封面上显示百分比与进度条",
        shelvesBackgroundCard = "书架与背景",
        previewTitle = "实时预览",
        previewNovel = "文本书",
        previewGraphic = "图像卷",
        previewFolder = "文件夹",
        canvasMoodCard = "背景氛围",
        atmosphereCard = "玻璃与氛围",
        shelfStudioCard = "书架材质",
        backgroundStyle = "背景风格",
        backgroundAccent = "背景强调",
        backgroundBlur = "背景模糊",
        backgroundVeil = "图片遮罩",
        panelOpacity = "菜单与面板透明度",
        shelfStyle = "书架风格",
        shelfDepth = "书架厚度",
        cardShadow = "卡片阴影",
        titleScale = "标题缩放",
        titleLines = "标题行数",
        cardStroke = "卡片描边",
        cardCornerRadius = "卡片圆角",
        titlePanelOpacity = "标题底板透明度",
        chooseBackground = "选择背景",
        changeBackground = "更换背景",
        resetBackground = "重置",
        selectedBackground = "已选图片",
        selectedBackgroundHint = "所选文件会直接用于书库背景预览和实际书库页面。",
        imageBackgroundOption = "图片",
        recentStripPosition = "继续阅读条位置",
        sortGroupCard = "排序与分组",
        sortDefault = "默认排序",
        groupBy = "书库分组方式",
        groupByLabels = mapOf(
            "NONE" to "不分组",
            "SERIES" to "按系列",
            "FOLDER" to "按文件夹"
        ),
        savedThemesTitle = "已保存的书库主题",
        savedThemesHint = "最多保存三个自定义书库外观，并在它们之间快速切换。",
        savedThemeSlotPrefix = "槽位",
        savedThemeSave = "保存主题",
        savedThemeApply = "应用主题",
        savedThemeClear = "清空槽位",
        savedThemeEmpty = "空槽位"
    )
    "ko" -> LibrarySectionText(
        leadTitle = "라이브러리 로직",
        leadDescription = "이 섹션은 정렬, 그룹화, 컬렉션 규칙만 담당합니다. 시각 스타일은 이제 ‘외형’에 있습니다.",
        tabLabels = mapOf(
            LibrarySettingsTab.DISPLAY to "레이아웃",
            LibrarySettingsTab.COVERS to "표지",
            LibrarySettingsTab.STYLE to "선반·배경",
            LibrarySettingsTab.SORTING to "정렬"
        ),
        tabHints = mapOf(
            LibrarySettingsTab.DISPLAY to "그리드/목록, 열 수, 타일 크기.",
            LibrarySettingsTab.COVERS to "카드 밀도, 표지 스케일, 형태, 진행률 표시.",
            LibrarySettingsTab.STYLE to "배경 프리셋, 이미지 배경, 선반/그림자 깊이.",
            LibrarySettingsTab.SORTING to "기본 정렬과 분류."
        ),
        displayCard = "라이브러리 보기",
        cardsCard = "카드",
        cardDensity = "카드 밀도",
        coverScale = "표지 스케일",
        thumbnailShape = "썸네일 형태",
        rectangle = "직사각형",
        square = "정사각형",
        progressTitle = "카드에 진행률 표시",
        progressSubtitle = "표지에 퍼센트와 진행 바를 표시합니다",
        shelvesBackgroundCard = "선반과 배경",
        previewTitle = "실시간 미리보기",
        previewNovel = "텍스트 책",
        previewGraphic = "그래픽 노블",
        previewFolder = "폴더",
        canvasMoodCard = "캔버스 무드",
        atmosphereCard = "글래스와 분위기",
        shelfStudioCard = "선반 재질",
        backgroundStyle = "배경 스타일",
        backgroundAccent = "배경 강도",
        backgroundBlur = "배경 블러",
        backgroundVeil = "이미지 베일",
        panelOpacity = "메뉴와 패널 투명도",
        shelfStyle = "선반 스타일",
        shelfDepth = "선반 깊이",
        cardShadow = "카드 그림자",
        titleScale = "제목 크기",
        titleLines = "제목 줄 수",
        cardStroke = "카드 외곽선",
        cardCornerRadius = "카드 모서리 둥글기",
        titlePanelOpacity = "제목 패널 농도",
        chooseBackground = "배경 선택",
        changeBackground = "배경 변경",
        resetBackground = "초기화",
        selectedBackground = "선택된 이미지",
        selectedBackgroundHint = "선택한 파일이 라이브러리 배경 미리보기와 실제 라이브러리 화면에 그대로 사용됩니다.",
        imageBackgroundOption = "이미지",
        recentStripPosition = "최근 읽기 선반 위치",
        sortGroupCard = "정렬과 분류",
        sortDefault = "기본 정렬",
        groupBy = "라이브러리 분류",
        groupByLabels = mapOf(
            "NONE" to "없음",
            "SERIES" to "시리즈",
            "FOLDER" to "폴더"
        ),
        savedThemesTitle = "저장된 라이브러리 테마",
        savedThemesHint = "커스텀 라이브러리 룩을 최대 세 개 저장하고 빠르게 전환할 수 있습니다.",
        savedThemeSlotPrefix = "슬롯",
        savedThemeSave = "저장",
        savedThemeApply = "적용",
        savedThemeClear = "슬롯 비우기",
        savedThemeEmpty = "빈 슬롯"
    )
    else -> LibrarySectionText(
        leadTitle = "Логика библиотеки",
        leadDescription = "Этот раздел отвечает только за сортировку, группировку и правила коллекции. Визуальное оформление библиотеки теперь находится в «Оформлении».",
        tabLabels = mapOf(
            LibrarySettingsTab.DISPLAY to "Вид",
            LibrarySettingsTab.COVERS to "Обложки",
            LibrarySettingsTab.STYLE to "Полки и фон",
            LibrarySettingsTab.SORTING to "Сортировка"
        ),
        tabHints = mapOf(
            LibrarySettingsTab.DISPLAY to "Сетка/список, колонки и размер карточек.",
            LibrarySettingsTab.COVERS to "Стиль карточек, масштаб, форма миниатюр и прогресс.",
            LibrarySettingsTab.STYLE to "Фон, изображение, глубина полок и тени.",
            LibrarySettingsTab.SORTING to "Сортировка по умолчанию и режим разделения."
        ),
        displayCard = "Вид библиотеки",
        cardsCard = "Карточки",
        cardDensity = "Плотность карточек",
        coverScale = "Масштаб обложек",
        thumbnailShape = "Форма миниатюр",
        rectangle = "Прямоугольник",
        square = "Квадрат",
        progressTitle = "Показывать прогресс на карточках",
        progressSubtitle = "Проценты и индикатор прогресса на обложках библиотеки",
        shelvesBackgroundCard = "Полки и фон",
        previewTitle = "Живой предпросмотр",
        previewNovel = "Книга",
        previewGraphic = "Графический том",
        previewFolder = "Папка",
        canvasMoodCard = "Характер холста",
        atmosphereCard = "Стекло и атмосфера",
        shelfStudioCard = "Материал полок",
        backgroundStyle = "Стиль фона",
        backgroundAccent = "Акцент фона библиотеки",
        backgroundBlur = "Блюр фона",
        backgroundVeil = "Вуаль поверх изображения",
        panelOpacity = "Прозрачность меню и панелей",
        shelfStyle = "Стиль полок",
        shelfDepth = "Глубина полок",
        cardShadow = "Тень карточек",
        titleScale = "Масштаб заголовка",
        titleLines = "Строк заголовка",
        cardStroke = "Контур карточки",
        cardCornerRadius = "Скругление карточек",
        titlePanelOpacity = "Плотность плашки заголовка",
        chooseBackground = "Выбрать фон",
        changeBackground = "Сменить фон",
        resetBackground = "Сбросить",
        selectedBackground = "Выбранное изображение",
        selectedBackgroundHint = "Файл используется напрямую в предпросмотре фона и на экране библиотеки.",
        imageBackgroundOption = "Изображение",
        recentStripPosition = "Положение полки «Недавно читаемые»",
        sortGroupCard = "Сортировка и разделение",
        sortDefault = "Сортировка по умолчанию",
        groupBy = "Разделение библиотеки",
        groupByLabels = mapOf(
            "NONE" to "Нет",
            "SERIES" to "По серии",
            "FOLDER" to "По папке"
        ),
        savedThemesTitle = "Сохранённые темы библиотеки",
        savedThemesHint = "Сохраняйте до трёх собственных вариантов оформления библиотеки и быстро переключайтесь между ними.",
        savedThemeSlotPrefix = "Слот",
        savedThemeSave = "Сохранить тему",
        savedThemeApply = "Применить тему",
        savedThemeClear = "Очистить слот",
        savedThemeEmpty = "Пустой слот"
    )
}

private fun appearanceSectionText(language: String): AppearanceSectionText = when (language) {
    "en" -> AppearanceSectionText(
        leadTitle = "App appearance",
        leadDescription = "Keep the preview on top, then tune theme, scale, colors and service elements in separate blocks.",
        quickBlocksTitle = "Quick blocks",
        tabLabels = mapOf(
            AppearanceSettingsTab.BASICS to "Basics",
            AppearanceSettingsTab.THEME to "Theme",
            AppearanceSettingsTab.SCALE to "Scale",
            AppearanceSettingsTab.COLORS to "Colors",
            AppearanceSettingsTab.EXTRA to "Extras"
        ),
        tabHints = mapOf(
            AppearanceSettingsTab.BASICS to "Language and global preview.",
            AppearanceSettingsTab.THEME to "Presets, light/dark mode and dynamic colors.",
            AppearanceSettingsTab.SCALE to "Font scale, interface density and corner radius.",
            AppearanceSettingsTab.COLORS to "Accent, background, surfaces and transparency.",
            AppearanceSettingsTab.EXTRA to "UI sounds and service elements."
        ),
        sizeShapeTitle = "Size and shape",
        accentColorsTitle = "Accent and signal colors",
        accentColorsDescription = "Accent affects buttons, active chips, progress indicators and key actions.",
        surfacesTitle = "Background and surfaces",
        surfacesDescription = "Background, cards and overlays are tuned separately so light and dark themes stay coherent.",
        paletteResetLabel = "Reset palette",
        serviceElementsTitle = "Service elements",
        mascotRecapTitle = "Mascot companion surfaces",
        mascotRecapSubtitle = "Shows mascot-style recap cards and hints on Continue, onboarding, and lightweight reading or library surfaces.",
        questPromptsTitle = "Discovery quest prompts",
        questPromptsSubtitle = "Shows Next unlock, quest feedback and discovery prompts inside the Mr.Comic tab."
    )
    "ja" -> AppearanceSectionText(
        leadTitle = "アプリの見た目",
        leadDescription = "プレビューを上に固定し、テーマ・スケール・色・補助要素を個別ブロックで調整します。",
        quickBlocksTitle = "クイックブロック",
        tabLabels = mapOf(
            AppearanceSettingsTab.BASICS to "基本",
            AppearanceSettingsTab.THEME to "テーマ",
            AppearanceSettingsTab.SCALE to "サイズ",
            AppearanceSettingsTab.COLORS to "色",
            AppearanceSettingsTab.EXTRA to "追加"
        ),
        tabHints = mapOf(
            AppearanceSettingsTab.BASICS to "言語と全体プレビュー。",
            AppearanceSettingsTab.THEME to "プリセット、ライト/ダーク、ダイナミックカラー。",
            AppearanceSettingsTab.SCALE to "文字倍率、UI密度、角丸。",
            AppearanceSettingsTab.COLORS to "アクセント、背景、サーフェス、透明度。",
            AppearanceSettingsTab.EXTRA to "UIサウンドと補助要素。"
        ),
        sizeShapeTitle = "サイズと形",
        accentColorsTitle = "アクセントとシグナル色",
        accentColorsDescription = "アクセントはボタン、選択チップ、進捗表示、主要アクションに使われます。",
        surfacesTitle = "背景とサーフェス",
        surfacesDescription = "背景、カード、オーバーレイを分けて調整し、ライト/ダークの整合性を保ちます。",
        paletteResetLabel = "パレットをリセット",
        serviceElementsTitle = "補助要素",
        mascotRecapTitle = "マスコット表示",
        mascotRecapSubtitle = "続きを読む、オンボーディング、軽いリーダー／ライブラリ面でマスコット風の要約やヒントを表示します。",
        questPromptsTitle = "発見クエスト表示",
        questPromptsSubtitle = "Mr.Comic タブ内の次の解除目標、クエスト通知、発見導線を表示します。"
    )
    "zh" -> AppearanceSectionText(
        leadTitle = "应用外观",
        leadDescription = "预览固定在上方，主题、缩放、颜色和服务元素分块调整。",
        quickBlocksTitle = "快速分组",
        tabLabels = mapOf(
            AppearanceSettingsTab.BASICS to "基础",
            AppearanceSettingsTab.THEME to "主题",
            AppearanceSettingsTab.SCALE to "尺寸",
            AppearanceSettingsTab.COLORS to "颜色",
            AppearanceSettingsTab.EXTRA to "附加"
        ),
        tabHints = mapOf(
            AppearanceSettingsTab.BASICS to "语言与整体预览。",
            AppearanceSettingsTab.THEME to "预设、明暗模式和动态配色。",
            AppearanceSettingsTab.SCALE to "字体比例、界面密度与圆角。",
            AppearanceSettingsTab.COLORS to "强调色、背景、表面和透明度。",
            AppearanceSettingsTab.EXTRA to "界面音效与附加元素。"
        ),
        sizeShapeTitle = "尺寸与形状",
        accentColorsTitle = "强调与提示颜色",
        accentColorsDescription = "强调色影响按钮、选中标签、进度指示和主要操作。",
        surfacesTitle = "背景与表面",
        surfacesDescription = "背景、卡片和遮罩分开调整，让亮色和暗色主题保持一致。",
        paletteResetLabel = "重置配色",
        serviceElementsTitle = "附加元素",
        mascotRecapTitle = "Mr.Comic 辅助界面",
        mascotRecapSubtitle = "控制“继续”、引导页以及轻量阅读器/书库界面中的 Mr.Comic 提示与回顾卡片。",
        questPromptsTitle = "发现任务提示",
        questPromptsSubtitle = "控制 Mr.Comic 标签页中的下一个解锁目标、任务反馈和探索提示。"
    )
    "ko" -> AppearanceSectionText(
        leadTitle = "앱 외형",
        leadDescription = "미리보기는 위에 두고, 테마·스케일·색상·보조 요소를 블록별로 조정합니다.",
        quickBlocksTitle = "빠른 블록",
        tabLabels = mapOf(
            AppearanceSettingsTab.BASICS to "기본",
            AppearanceSettingsTab.THEME to "테마",
            AppearanceSettingsTab.SCALE to "크기",
            AppearanceSettingsTab.COLORS to "색상",
            AppearanceSettingsTab.EXTRA to "추가"
        ),
        tabHints = mapOf(
            AppearanceSettingsTab.BASICS to "언어와 전체 미리보기.",
            AppearanceSettingsTab.THEME to "프리셋, 라이트/다크, 동적 색상.",
            AppearanceSettingsTab.SCALE to "글자 크기, UI 밀도, 코너 반경.",
            AppearanceSettingsTab.COLORS to "강조색, 배경, 표면, 투명도.",
            AppearanceSettingsTab.EXTRA to "UI 사운드와 보조 요소."
        ),
        sizeShapeTitle = "크기와 형태",
        accentColorsTitle = "강조 및 상태 색상",
        accentColorsDescription = "강조색은 버튼, 활성 칩, 진행 표시, 핵심 액션에 반영됩니다.",
        surfacesTitle = "배경과 표면",
        surfacesDescription = "배경, 카드, 오버레이를 따로 조정해 라이트/다크가 어긋나지 않게 합니다.",
        paletteResetLabel = "팔레트 초기화",
        serviceElementsTitle = "보조 요소",
        mascotRecapTitle = "마스코트 보조 표면",
        mascotRecapSubtitle = "계속 화면, 온보딩, 그리고 가벼운 리더/라이브러리 표면에 Mr.Comic 힌트와 리캡 카드를 표시합니다.",
        questPromptsTitle = "디스커버리 퀘스트 프롬프트",
        questPromptsSubtitle = "Mr.Comic 탭 안의 다음 해금 목표, 퀘스트 피드백, 탐색 프롬프트를 표시합니다."
    )
    else -> AppearanceSectionText(
        leadTitle = "Внешний вид приложения",
        leadDescription = "Сверху остаётся превью, а ниже отдельно настраиваются тема, масштаб, цвета и служебные элементы.",
        quickBlocksTitle = "Быстрые блоки",
        tabLabels = mapOf(
            AppearanceSettingsTab.BASICS to "Основа",
            AppearanceSettingsTab.THEME to "Тема",
            AppearanceSettingsTab.SCALE to "Размер",
            AppearanceSettingsTab.COLORS to "Цвета",
            AppearanceSettingsTab.EXTRA to "Дополнительно"
        ),
        tabHints = mapOf(
            AppearanceSettingsTab.BASICS to "Язык интерфейса и общее превью.",
            AppearanceSettingsTab.THEME to "Пресеты, светлая/тёмная тема и динамические цвета.",
            AppearanceSettingsTab.SCALE to "Масштаб шрифта, плотность интерфейса и скругления.",
            AppearanceSettingsTab.COLORS to "Акцент, фон, поверхности и прозрачность.",
            AppearanceSettingsTab.EXTRA to "Звуки интерфейса и служебные элементы."
        ),
        sizeShapeTitle = "Размер и форма",
        accentColorsTitle = "Акцент и сигнальные цвета",
        accentColorsDescription = "Акцент влияет на кнопки, активные чипы, индикаторы прогресса и ключевые элементы интерфейса.",
        surfacesTitle = "Фон и поверхности",
        surfacesDescription = "Фон, карточки и наложения настраиваются отдельно, чтобы светлые и тёмные темы не конфликтовали.",
        paletteResetLabel = "Сбросить палитру",
        serviceElementsTitle = "Служебные элементы",
        mascotRecapTitle = "Поверхности с маскотом",
        mascotRecapSubtitle = "Показывает подсказки и рекап в стиле маскота на экране «Продолжить», в онбординге и на лёгких поверхностях ридера и библиотеки.",
        questPromptsTitle = "Подсказки discovery-квестов",
        questPromptsSubtitle = "Показывает «Следующий unlock», quest feedback и discovery-подсказки внутри вкладки Mr.Comic."
    )
}

private fun compactToggleLabel(language: String, enabled: Boolean): String = when (language) {
    "en" -> if (enabled) "On" else "Off"
    "ja" -> if (enabled) "オン" else "オフ"
    "zh" -> if (enabled) "开" else "关"
    "ko" -> if (enabled) "켜짐" else "꺼짐"
    else -> if (enabled) "Вкл" else "Выкл"
}

private fun compactPendingLabel(language: String): String = when (language) {
    "en" -> "Not connected yet"
    "ja" -> "まだ未接続"
    "zh" -> "尚未接入"
    "ko" -> "아직 미연결"
    else -> "Пока не подключено"
}

private fun preloadSummaryLabel(language: String, enabled: Boolean): String = when (language) {
    "en" -> "Preload ${compactToggleLabel(language, enabled)}"
    "ja" -> "先読み ${compactToggleLabel(language, enabled)}"
    "zh" -> "预加载 ${compactToggleLabel(language, enabled)}"
    "ko" -> "프리로드 ${compactToggleLabel(language, enabled)}"
    else -> "Предзагрузка ${compactToggleLabel(language, enabled)}"
}

private fun syncMenuSummary(language: String, autoBackupEnabled: Boolean): String = when (language) {
    "en" -> "Backup ${compactToggleLabel(language, autoBackupEnabled)} · Import · Export"
    "ja" -> "バックアップ ${compactToggleLabel(language, autoBackupEnabled)} ・インポート・エクスポート"
    "zh" -> "备份 ${compactToggleLabel(language, autoBackupEnabled)} · 导入 · 导出"
    "ko" -> "백업 ${compactToggleLabel(language, autoBackupEnabled)} · 가져오기 · 내보내기"
    else -> "Бэкап ${compactToggleLabel(language, autoBackupEnabled)} · Импорт · Экспорт"
}

private fun storageMenuSummary(language: String): String = when (language) {
    "en" -> "Access · Cache"
    "ja" -> "アクセス・キャッシュ"
    "zh" -> "访问 · 缓存"
    "ko" -> "접근 · 캐시"
    else -> "Доступ · Кэш"
}

private fun settingsImportErrorPresentationLabel(
    language: String,
    presentation: String
): String = when (presentation) {
    SettingsImportErrorPresentation.IMAGE -> when (language) {
        "en" -> "Image"
        "ja" -> "画像"
        "zh" -> "图片"
        "ko" -> "이미지"
        else -> "Картинка"
    }
    else -> when (language) {
        "en" -> "Text"
        "ja" -> "テキスト"
        "zh" -> "文本"
        "ko" -> "텍스트"
        else -> "Текст"
    }
}

private fun advancedMenuSummary(
    language: String,
    mascotRecapEnabled: Boolean,
    questPromptsEnabled: Boolean,
    importErrorPresentation: String
): String = when (language) {
    "en" -> "Mascot ${compactToggleLabel(language, mascotRecapEnabled)} · Quests ${compactToggleLabel(language, questPromptsEnabled)} · ${settingsImportErrorPresentationLabel(language, importErrorPresentation)} popups"
    "ja" -> "マスコット ${compactToggleLabel(language, mascotRecapEnabled)} ・クエスト ${compactToggleLabel(language, questPromptsEnabled)} ・${settingsImportErrorPresentationLabel(language, importErrorPresentation)} ポップアップ"
    "zh" -> "吉祥物 ${compactToggleLabel(language, mascotRecapEnabled)} · 任务 ${compactToggleLabel(language, questPromptsEnabled)} · ${settingsImportErrorPresentationLabel(language, importErrorPresentation)} 弹窗"
    "ko" -> "마스코트 ${compactToggleLabel(language, mascotRecapEnabled)} · 퀘스트 ${compactToggleLabel(language, questPromptsEnabled)} · ${settingsImportErrorPresentationLabel(language, importErrorPresentation)} 팝업"
    else -> "Маскот ${compactToggleLabel(language, mascotRecapEnabled)} · Квесты ${compactToggleLabel(language, questPromptsEnabled)} · ${settingsImportErrorPresentationLabel(language, importErrorPresentation)}-всплывашки"
}

private fun aboutMenuSummary(language: String): String = when (language) {
    "en" -> "App · Libraries · Licenses"
    "ja" -> "アプリ・ライブラリ・ライセンス"
    "zh" -> "应用 · 库 · 许可证"
    "ko" -> "앱 · 라이브러리 · 라이선스"
    else -> "Приложение · Библиотеки · Лицензии"
}

private fun syncTransferLabel(language: String): String = when (language) {
    "en" -> "Transfer"
    "ja" -> "移行"
    "zh" -> "传输"
    "ko" -> "전송"
    else -> "Перенос"
}

private fun storageFoldersLabel(language: String): String = when (language) {
    "en" -> "Library folders"
    "ja" -> "フォルダ"
    "zh" -> "书库文件夹"
    "ko" -> "라이브러리 폴더"
    else -> "Папки библиотеки"
}

private fun cacheShortLabel(language: String): String = when (language) {
    "en" -> "Cache"
    "ja" -> "キャッシュ"
    "zh" -> "缓存"
    "ko" -> "캐시"
    else -> "Кэш"
}

private fun aboutCountValue(language: String, count: Int): String = when (language) {
    "en" -> "$count items"
    "ja" -> "${count}件"
    "zh" -> "${count}项"
    "ko" -> "${count}개"
    else -> "$count пункт."
}

private fun settingsSectionSummaryText(language: String): SettingsSectionSummaryText = when (language) {
    "en" -> SettingsSectionSummaryText(
        title = "Current setup",
        hint = "A compact snapshot before the detailed controls."
    )
    "ja" -> SettingsSectionSummaryText(
        title = "現在の構成",
        hint = "詳細な設定に入る前のコンパクトな状態概要です。"
    )
    "zh" -> SettingsSectionSummaryText(
        title = "当前配置",
        hint = "进入详细控制前的紧凑状态摘要。"
    )
    "ko" -> SettingsSectionSummaryText(
        title = "현재 구성",
        hint = "상세 제어 전에 보여주는 간결한 상태 요약입니다."
    )
    else -> SettingsSectionSummaryText(
        title = "Текущая конфигурация",
        hint = "Короткий срез состояния перед подробными настройками."
    )
}

private fun aiServicesOverviewText(language: String): AiServicesOverviewText = when (language) {
    "ja" -> AiServicesOverviewText(
        machineTranslationTitle = "機械翻訳",
        machineTranslationHint = "現在の翻訳ルートと、ローカル優先か外部待ちかをここで確認します。",
        localExplainTitle = "ローカル Explain",
        localExplainHint = "単語や短いフレーズの説明は、外部サービスなしでもローカルで動作します。",
        advancedExplainTitle = "拡張 Explain",
        advancedExplainHint = "長めの文脈解説や外部プロバイダー経由の Explain はこのレイヤーで扱います。",
        summaryTitle = "要約",
        summaryHint = "章や本全体の summary は、実際の外部ルートができた後にここへ入ります。",
        ocrTitle = "OCR サービス",
        ocrHint = "ページOCRの言語と、自動翻訳時のフィルター状況をまとめます。",
        providersTitle = "外部プロバイダー",
        providersHint = "モデル、API キー、RPM のような provider レベル設定はここに集約します。",
        routeLabel = "現在のルート",
        statusLabel = "状態",
        providerLabel = "プロバイダー",
        expandedExplainLabel = "拡張 Explain",
        localProviderValue = "ローカル",
        configuredValue = "設定済み",
        notConnectedValue = "未接続",
        localFirstStatus = "自動ではローカル経路を優先します。",
        onlineReadyStatus = "オンライン翻訳ルートは設定済みで利用できます。",
        onlineNeedsNetworkStatus = "オンライン翻訳ルートは設定済みですが、今はネットワークが必要です。",
        offlineStatus = "オフライン翻訳だけを使います。",
        offlineReadyStatus = "現在の言語ペアはオフラインで利用できます。",
        offlineModelMissingStatus = "現在の言語ペアは対応していますが、オフラインモデルはまだ未インストールです。",
        offlineModelNeedsNetworkStatus = "現在の言語ペアは対応していますが、モデル準備にはネットワークが必要です。",
        offlinePairUnsupportedStatus = "現在の言語ペアはオフライン翻訳に対応していません。",
        onlineUnavailableStatus = "オンライン翻訳プロバイダーはまだ接続されていません。",
        translationDisabledStatus = "翻訳は現在オフです。",
        localExplainStatus = "ローカル Explain だけで動作します。",
        advancedExplainDisabledStatus = "外部プロバイダーが来るまでは拡張 Explain は待機します。",
        extendedExplainWaitingStatus = "外部プロバイダーが来るまではローカル Explain を保ちます。",
        summaryUnavailableStatus = "summary サービスはまだ接続されていません。",
        providersReadyStatus = "少なくとも 1 つの外部ルートは設定済みで利用できます。",
        providersNeedNetworkStatus = "外部ルートは設定済みですが、今はネットワークが必要です。",
        providersNeedValidationStatus = "OpenRouter のキーまたはモデルを確認してください。",
        providersUnavailableStatus = "まだ外部 AI プロバイダーは設定されていません。"
    )
    "zh" -> AiServicesOverviewText(
        machineTranslationTitle = "机器翻译",
        machineTranslationHint = "这里集中说明当前翻译路径，以及它是本地优先还是在等待外部服务。",
        localExplainTitle = "本地 Explain",
        localExplainHint = "单词和短语的解释已经可以在本地运行，不依赖外部服务。",
        advancedExplainTitle = "增强 Explain",
        advancedExplainHint = "更长的上下文解释和外部 provider 支持的 Explain 会放在这一层。",
        summaryTitle = "摘要",
        summaryHint = "章节或整书摘要会在真实外部路径准备好后放到这里。",
        ocrTitle = "OCR 服务",
        ocrHint = "集中显示页面 OCR 语言和自动翻译过滤规则。",
        providersTitle = "外部 Provider",
        providersHint = "模型、API Key、RPM 这类 provider 级设置以后都在这里。",
        routeLabel = "当前路径",
        statusLabel = "状态",
        providerLabel = "Provider",
        expandedExplainLabel = "增强 Explain",
        localProviderValue = "本地",
        configuredValue = "已配置",
        notConnectedValue = "未连接",
        localFirstStatus = "自动模式会优先尝试本地路径。",
        onlineReadyStatus = "在线翻译路线已配置并可直接使用。",
        onlineNeedsNetworkStatus = "在线翻译路线已配置，但当前需要网络连接。",
        offlineStatus = "只使用离线路径。",
        offlineReadyStatus = "当前语言对可直接使用离线翻译。",
        offlineModelMissingStatus = "当前语言对受支持，但离线模型还未安装。",
        offlineModelNeedsNetworkStatus = "当前语言对受支持，但准备离线模型需要网络。",
        offlinePairUnsupportedStatus = "当前语言对不支持离线翻译。",
        onlineUnavailableStatus = "在线翻译 provider 目前还没有接入。",
        translationDisabledStatus = "翻译当前已关闭。",
        localExplainStatus = "仅使用本地 Explain。",
        advancedExplainDisabledStatus = "在外部 provider 接入前，增强 Explain 会保持待机。",
        extendedExplainWaitingStatus = "在外部 provider 接入前仍保持本地 Explain。",
        summaryUnavailableStatus = "摘要服务目前还没有接入。",
        providersReadyStatus = "至少有一个外部路线已配置并可用。",
        providersNeedNetworkStatus = "外部路线已配置，但当前需要网络连接。",
        providersNeedValidationStatus = "请检查 OpenRouter 密钥或模型。",
        providersUnavailableStatus = "当前还没有配置任何外部 AI provider。"
    )
    "ko" -> AiServicesOverviewText(
        machineTranslationTitle = "기계 번역",
        machineTranslationHint = "현재 번역 경로와 로컬 우선 여부, 외부 서비스 대기 여부를 여기서 확인합니다.",
        localExplainTitle = "로컬 Explain",
        localExplainHint = "단어와 짧은 구문 설명은 외부 서비스 없이도 로컬에서 이미 동작합니다.",
        advancedExplainTitle = "확장 Explain",
        advancedExplainHint = "더 긴 문맥 설명과 외부 provider 기반 Explain은 이 레이어에서 다룹니다.",
        summaryTitle = "요약",
        summaryHint = "챕터나 책 요약은 실제 외부 경로가 준비된 뒤 여기에 들어옵니다.",
        ocrTitle = "OCR 서비스",
        ocrHint = "페이지 OCR 언어와 자동 번역 필터 상태를 한곳에서 보여줍니다.",
        providersTitle = "외부 provider",
        providersHint = "모델, API 키, RPM 같은 provider 레벨 설정은 이후 여기에 모입니다.",
        routeLabel = "현재 경로",
        statusLabel = "상태",
        providerLabel = "Provider",
        expandedExplainLabel = "확장 Explain",
        localProviderValue = "로컬",
        configuredValue = "설정됨",
        notConnectedValue = "미연결",
        localFirstStatus = "자동 모드는 로컬 경로를 먼저 시도합니다.",
        onlineReadyStatus = "온라인 번역 경로가 설정되어 바로 사용할 수 있습니다.",
        onlineNeedsNetworkStatus = "온라인 번역 경로가 설정되어 있지만 지금은 네트워크가 필요합니다.",
        offlineStatus = "오프라인 경로만 사용합니다.",
        offlineReadyStatus = "현재 언어 쌍은 오프라인으로 바로 사용할 수 있습니다.",
        offlineModelMissingStatus = "현재 언어 쌍은 지원되지만 오프라인 모델이 아직 설치되지 않았습니다.",
        offlineModelNeedsNetworkStatus = "현재 언어 쌍은 지원되지만 모델 준비에는 네트워크가 필요합니다.",
        offlinePairUnsupportedStatus = "현재 언어 쌍은 오프라인 번역을 지원하지 않습니다.",
        onlineUnavailableStatus = "온라인 번역 provider는 아직 연결되지 않았습니다.",
        translationDisabledStatus = "번역이 현재 꺼져 있습니다.",
        localExplainStatus = "로컬 Explain만 사용합니다.",
        advancedExplainDisabledStatus = "외부 provider가 생기기 전까지 확장 Explain은 대기 상태입니다.",
        extendedExplainWaitingStatus = "외부 provider가 생기기 전까지는 로컬 Explain을 유지합니다.",
        summaryUnavailableStatus = "요약 서비스는 아직 연결되지 않았습니다.",
        providersReadyStatus = "적어도 하나의 외부 경로가 설정되어 바로 사용할 수 있습니다.",
        providersNeedNetworkStatus = "외부 경로는 설정되었지만 지금은 네트워크가 필요합니다.",
        providersNeedValidationStatus = "OpenRouter 키 또는 모델을 확인하세요.",
        providersUnavailableStatus = "아직 설정된 외부 AI provider가 없습니다."
    )
    "ru" -> AiServicesOverviewText(
        machineTranslationTitle = "Машинный перевод",
        machineTranslationHint = "Здесь видно текущий маршрут перевода и то, идёт ли он локально или ждёт внешний сервис.",
        localExplainTitle = "Локальный Explain",
        localExplainHint = "Пояснения для слов и коротких фрагментов уже работают локально, без внешнего сервиса.",
        advancedExplainTitle = "Расширенный Explain",
        advancedExplainHint = "Более глубокие контекстные пояснения и внешний Explain-маршрут будут жить в этом слое.",
        summaryTitle = "Сводка",
        summaryHint = "Сводки по главе или книге появятся здесь только после появления реального внешнего маршрута.",
        ocrTitle = "OCR-сервисы",
        ocrHint = "Здесь собраны язык OCR и фильтры, которые влияют на автоматический перевод страницы.",
        providersTitle = "Внешние провайдеры",
        providersHint = "Модель, API-ключи и RPM для внешних сервисов будут жить здесь, а не в общем переводе.",
        routeLabel = "Текущий маршрут",
        statusLabel = "Статус",
        providerLabel = "Провайдер",
        expandedExplainLabel = "Расширенный Explain",
        localProviderValue = "Локальный",
        configuredValue = "Настроен",
        notConnectedValue = "Не подключён",
        localFirstStatus = "В автоматическом режиме сначала пробуется локальный маршрут.",
        onlineReadyStatus = "Онлайн-маршрут перевода настроен и готов к работе.",
        onlineNeedsNetworkStatus = "Онлайн-маршрут настроен, но сейчас ему нужна сеть.",
        offlineStatus = "Используется только офлайн-маршрут.",
        offlineReadyStatus = "Текущая языковая пара уже готова для офлайн-перевода.",
        offlineModelMissingStatus = "Текущая языковая пара поддерживается, но офлайн-модель ещё не установлена.",
        offlineModelNeedsNetworkStatus = "Текущая языковая пара поддерживается, но для подготовки модели нужна сеть.",
        offlinePairUnsupportedStatus = "Текущая языковая пара не поддерживается офлайн-переводом.",
        onlineUnavailableStatus = "Внешний провайдер онлайн-перевода пока не подключён.",
        translationDisabledStatus = "Перевод сейчас выключен.",
        localExplainStatus = "Работает только локальный Explain.",
        advancedExplainDisabledStatus = "Пока внешний провайдер не подключён, расширенный Explain остаётся в ожидании.",
        extendedExplainWaitingStatus = "До подключения внешнего провайдера останется локальный Explain.",
        summaryUnavailableStatus = "Сервис сводок пока не подключён.",
        providersReadyStatus = "Как минимум один внешний маршрут настроен и готов к работе.",
        providersNeedNetworkStatus = "Внешний маршрут настроен, но сейчас ему нужна сеть.",
        providersNeedValidationStatus = "Проверьте ключ или модель OpenRouter.",
        providersUnavailableStatus = "Внешние AI-провайдеры пока не настроены."
    )
    else -> AiServicesOverviewText(
        machineTranslationTitle = "Machine translation",
        machineTranslationHint = "This card shows the current translation route and whether it stays local or waits for an external service.",
        localExplainTitle = "Local Explain",
        localExplainHint = "Word and short-phrase explanations already work locally without any external service.",
        advancedExplainTitle = "Advanced Explain",
        advancedExplainHint = "Longer contextual explanations and provider-backed Explain should live in this layer.",
        summaryTitle = "Summary",
        summaryHint = "Chapter or book summaries should appear here only after a real external route exists.",
        ocrTitle = "OCR services",
        ocrHint = "Keep OCR language and automatic page-translation filters visible in one place.",
        providersTitle = "External providers",
        providersHint = "Model, API keys, and RPM-level controls should live here instead of inside generic translation settings.",
        routeLabel = "Current route",
        statusLabel = "Status",
        providerLabel = "Provider",
        expandedExplainLabel = "Expanded Explain",
        localProviderValue = "Local",
        configuredValue = "Configured",
        notConnectedValue = "Not connected",
        localFirstStatus = "Auto mode tries the local route first.",
        onlineReadyStatus = "The online translation route is configured and ready.",
        onlineNeedsNetworkStatus = "The online translation route is configured, but it needs network access right now.",
        offlineStatus = "Offline translation is used exclusively.",
        offlineReadyStatus = "The current language pair is ready for offline translation.",
        offlineModelMissingStatus = "The current language pair is supported, but the offline model is not installed yet.",
        offlineModelNeedsNetworkStatus = "The current language pair is supported, but network is needed to prepare the offline model.",
        offlinePairUnsupportedStatus = "The current language pair is not supported for offline translation.",
        onlineUnavailableStatus = "No online translation provider is connected yet.",
        translationDisabledStatus = "Translation is currently off.",
        localExplainStatus = "Local Explain is active on its own.",
        advancedExplainDisabledStatus = "Advanced Explain stays idle until an external provider is connected.",
        extendedExplainWaitingStatus = "Expanded Explain stays local until an external provider is connected.",
        summaryUnavailableStatus = "Summary service is not connected yet.",
        providersReadyStatus = "At least one external route is configured and ready.",
        providersNeedNetworkStatus = "An external route is configured, but it currently needs network access.",
        providersNeedValidationStatus = "Check the OpenRouter key or model.",
        providersUnavailableStatus = "No external AI providers are configured yet."
    )
}

private fun aiMachineTranslationStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsMachineTranslationStatusKind(uiState)) {
        SettingsMachineTranslationStatusKind.DISABLED -> text.translationDisabledStatus
        SettingsMachineTranslationStatusKind.ONLINE_READY -> text.onlineReadyStatus
        SettingsMachineTranslationStatusKind.ONLINE_MISSING -> text.onlineUnavailableStatus
        SettingsMachineTranslationStatusKind.ONLINE_NEEDS_NETWORK -> text.onlineNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.OFFLINE_GENERIC -> text.offlineStatus
        SettingsMachineTranslationStatusKind.OFFLINE_READY -> text.offlineReadyStatus
        SettingsMachineTranslationStatusKind.OFFLINE_MODEL_MISSING -> text.offlineModelMissingStatus
        SettingsMachineTranslationStatusKind.OFFLINE_MODEL_NEEDS_NETWORK -> text.offlineModelNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.OFFLINE_PAIR_UNSUPPORTED -> text.offlinePairUnsupportedStatus
        SettingsMachineTranslationStatusKind.AUTO_LOCAL_FIRST -> text.localFirstStatus
        SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_MISSING -> text.offlineModelMissingStatus
        SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_NEEDS_NETWORK -> text.offlineModelNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.AUTO_PAIR_UNSUPPORTED -> text.offlinePairUnsupportedStatus
    }
}

private fun aiProvidersStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsProvidersStatusKind(uiState)) {
        SettingsProvidersStatusKind.READY -> text.providersReadyStatus
        SettingsProvidersStatusKind.NEEDS_NETWORK -> text.providersNeedNetworkStatus
        SettingsProvidersStatusKind.NEEDS_VALIDATION -> text.providersNeedValidationStatus
        SettingsProvidersStatusKind.NOT_CONFIGURED -> text.providersUnavailableStatus
    }
}

private fun aiProvidersValue(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsProvidersStatusKind(uiState)) {
        SettingsProvidersStatusKind.NOT_CONFIGURED -> text.notConnectedValue
        SettingsProvidersStatusKind.READY,
        SettingsProvidersStatusKind.NEEDS_VALIDATION,
        SettingsProvidersStatusKind.NEEDS_NETWORK -> configuredOnlineProviderLabel(uiState, language)
    }
}

private fun configuredOnlineProviderLabel(
    uiState: SettingsUiState,
    language: String
): String {
    return if (uiState.openRouterApiKey.isBlank()) {
        aiServicesOverviewText(language).configuredValue
    } else {
        "OpenRouter"
    }
}

private fun aiExplainStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return if (uiState.translationExplainEnabled) {
        text.extendedExplainWaitingStatus
    } else {
        text.localExplainStatus
    }
}

private fun aiAdvancedExplainStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return if (uiState.translationExplainEnabled) {
        text.extendedExplainWaitingStatus
    } else {
        text.advancedExplainDisabledStatus
    }
}

private fun appLanguageLabel(strings: AppStrings, code: String): String = when (code) {
    "en" -> strings.langEn
    "ja" -> strings.langJa
    "zh" -> strings.langZh
    "ko" -> strings.langKo
    else -> strings.langRu
}

private fun themePresetLabel(strings: AppStrings, presetName: String): String = when (
    runCatching { ThemePreset.valueOf(presetName) }.getOrDefault(ThemePreset.CUSTOM)
) {
    ThemePreset.PAPER -> strings.themePresetPaper
    ThemePreset.GLASS -> strings.themePresetGlass
    ThemePreset.AMOLED -> strings.themePresetAmoled
    ThemePreset.NEON -> strings.themePresetNeon
    ThemePreset.GRAY -> strings.themePresetGray
    ThemePreset.SEPIA -> strings.themePresetSepia
    ThemePreset.EINK -> strings.themePresetEink
    ThemePreset.CUSTOM -> strings.themePresetCustom
}

private fun readerModeLabel(strings: AppStrings, mode: ReadingMode): String = when (mode) {
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

private fun readerModeSettingsLabel(language: String, mode: ReadingMode): String = when (mode) {
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

private fun translationModeLabel(strings: AppStrings, mode: String): String = when (mode) {
    "OCR" -> strings.transOcr
    "DICTIONARY" -> strings.transDict
    else -> strings.transOff
}

private fun transportLabel(
    language: String,
    transport: String
): String {
    val text = translationSectionText(language)
    return when (transport) {
        TranslationTransportPreference.OFFLINE.name -> text.transportOffline
        TranslationTransportPreference.ONLINE.name -> text.transportOnline
        else -> text.transportAuto
    }
}

private fun translationEndpointLabel(
    language: String,
    code: String,
    isTarget: Boolean
): String {
    val text = translationSectionText(language)
    return when {
        !isTarget && code == "AUTO" -> text.autoSource
        isTarget && code == "APP" -> text.appLanguageTarget
        else -> translationLanguageOptions(language).firstOrNull { it.first == code }?.second ?: code
    }
}

private data class SettingsSectionMeta(
    val title: String,
    val description: String
)

private fun settingsSectionMeta(
    section: SettingsSection,
    language: String,
    strings: AppStrings
): SettingsSectionMeta = when (section) {
    SettingsSection.APPEARANCE -> SettingsSectionMeta(strings.sectionAppearance, strings.sectionAppearanceDesc)
    SettingsSection.READER -> SettingsSectionMeta(strings.sectionReader, strings.sectionReaderDesc)
    SettingsSection.LIBRARY -> SettingsSectionMeta(strings.sectionLibrary, strings.sectionLibraryDesc)
    SettingsSection.TRANSLATION -> SettingsSectionMeta(strings.sectionTranslation, strings.sectionTranslationDesc)
    SettingsSection.SYNC -> SettingsSectionMeta(strings.sectionBackup, strings.sectionBackupDesc)
    SettingsSection.ABOUT -> SettingsSectionMeta(strings.sectionAbout, strings.sectionAboutDesc)
    SettingsSection.PERFORMANCE -> when (language) {
        "en" -> SettingsSectionMeta("Performance", "Startup, motion, and visual load tuning for calmer devices.")
        "ja" -> SettingsSectionMeta("パフォーマンス", "起動、動き、重い視覚効果を調整します。")
        "zh" -> SettingsSectionMeta("性能", "启动、动效和视觉负载调优。")
        "ko" -> SettingsSectionMeta("성능", "시작, 모션, 시각 효과 부하를 조정합니다.")
        else -> SettingsSectionMeta("Производительность", "Запуск, анимации и тяжёлые визуальные эффекты.")
    }
    SettingsSection.READ_ALOUD -> when (language) {
        "en" -> SettingsSectionMeta("Audio", "Voice reading, player behavior, page sounds, and system TTS controls.")
        "ja" -> SettingsSectionMeta("音声", "読み上げ、プレイヤー、ページ音、システム TTS。")
        "zh" -> SettingsSectionMeta("音频", "朗读、播放器、翻页声音和系统 TTS。")
        "ko" -> SettingsSectionMeta("오디오", "음성 읽기, 플레이어, 페이지 소리, 시스템 TTS.")
        else -> SettingsSectionMeta("Аудио", "Голосовое чтение, аудиоплеер, звуки и системные TTS-настройки.")
    }
    SettingsSection.AI_SERVICES -> when (language) {
        "en" -> SettingsSectionMeta("AI Services", "Explain, transport, and provider-level AI controls.")
        "ja" -> SettingsSectionMeta("AI サービス", "説明、通信方式、プロバイダー設定。")
        "zh" -> SettingsSectionMeta("AI 服务", "解释、传输和服务提供方设置。")
        "ko" -> SettingsSectionMeta("AI 서비스", "설명, 전송 방식, 제공자 설정.")
        else -> SettingsSectionMeta("Искусственный интеллект", "Explain, транспорт и сервисные AI-настройки.")
    }
    SettingsSection.STORAGE -> when (language) {
        "en" -> SettingsSectionMeta("Storage", "Library access, cache cleanup, and local data care.")
        "ja" -> SettingsSectionMeta("ストレージ", "ライブラリアクセス、キャッシュ整理、ローカルデータ。")
        "zh" -> SettingsSectionMeta("存储", "书库访问、缓存清理和本地数据维护。")
        "ko" -> SettingsSectionMeta("저장소", "라이브러리 접근, 캐시 정리, 로컬 데이터 관리.")
        else -> SettingsSectionMeta("Хранилище", "Доступ к библиотеке, очистка кэша и локальные данные.")
    }
    SettingsSection.ADVANCED -> when (language) {
        "en" -> SettingsSectionMeta("Advanced", "Rare switches, popup behavior, and service-level utilities that stay out of the main flow.")
        "ja" -> SettingsSectionMeta("詳細設定", "通常は使わない切り替え、ポップアップ、サービス設定。")
        "zh" -> SettingsSectionMeta("高级", "低频开关、弹窗行为和服务级工具。")
        "ko" -> SettingsSectionMeta("고급", "드문 옵션, 팝업 동작, 서비스 도구.")
        else -> SettingsSectionMeta("Расширенные", "Редкие переключатели, поведение всплывающих сообщений и служебные параметры вне основного потока.")
    }
}

private fun settingsSectionItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<SettingsMainMenuSectionItem> {
    val translationSource = translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false)
    val translationTarget = translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true)
    return listOf(
        SettingsMainMenuSectionItem(
            section = SettingsSection.APPEARANCE,
            title = settingsSectionMeta(SettingsSection.APPEARANCE, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.APPEARANCE, strings.languageCode, strings).description,
            summary = "${appLanguageLabel(strings, uiState.appLanguage)} · ${themePresetLabel(strings, uiState.themePreset)} · ${settingsLibraryViewLabel(uiState.appLanguage, uiState.libraryViewMode)}"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.READER,
            title = settingsSectionMeta(SettingsSection.READER, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.READER, strings.languageCode, strings).description,
            summary = "${readingPresetQuickLabel(strings, ReadingPreset.fromStored(uiState.readerPreset))} · ${readerModeLabel(strings, uiState.readingMode)} · ${readerTextSchemeLabel(uiState.appLanguage, uiState.textColorScheme)}"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.LIBRARY,
            title = settingsSectionMeta(SettingsSection.LIBRARY, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.LIBRARY, strings.languageCode, strings).description,
            summary = "${librarySortOrderLabel(uiState.librarySortOrder, strings.languageCode)} · ${libraryGroupByLabel(uiState.libraryGroupBy, uiState.appLanguage)}"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.PERFORMANCE,
            title = settingsSectionMeta(SettingsSection.PERFORMANCE, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.PERFORMANCE, strings.languageCode, strings).description,
            summary = "${perfProfileLabel(uiState.perfProfile, strings.languageCode)} · ${preloadSummaryLabel(strings.languageCode, uiState.perfStartupPreloadEnabled)}"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.SYNC,
            title = settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).description,
            summary = syncMenuSummary(strings.languageCode, uiState.autoBackupEnabled)
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.STORAGE,
            title = settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).description,
            summary = storageMenuSummary(strings.languageCode)
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.READ_ALOUD,
            title = settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).description,
            summary = "${readAloudProviderLabel(uiState.readerTtsProvider, strings.languageCode)} · " +
                "${readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode)} · " +
                "${String.format(Locale.US, "%.2f", uiState.readerTtsSpeed)}x · " +
                readAloudSleepTimerLabel(uiState.readerTtsSleepTimerMode, strings.languageCode)
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.TRANSLATION,
            title = settingsSectionMeta(SettingsSection.TRANSLATION, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.TRANSLATION, strings.languageCode, strings).description,
            summary = "${translationModeLabel(strings, uiState.translationMode)} · $translationSource → $translationTarget"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.AI_SERVICES,
            title = settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).description,
            summary = "${transportLabel(strings.languageCode, uiState.translationTransport)} · ${aiServicesOverviewText(strings.languageCode).advancedExplainTitle} ${compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled)}"
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.ADVANCED,
            title = settingsSectionMeta(SettingsSection.ADVANCED, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.ADVANCED, strings.languageCode, strings).description,
            summary = advancedMenuSummary(
                language = strings.languageCode,
                mascotRecapEnabled = uiState.mascotRecapEnabled,
                questPromptsEnabled = uiState.questPromptsEnabled,
                importErrorPresentation = uiState.settingsImportErrorPresentation
            )
        ),
        SettingsMainMenuSectionItem(
            section = SettingsSection.ABOUT,
            title = settingsSectionMeta(SettingsSection.ABOUT, strings.languageCode, strings).title,
            description = settingsSectionMeta(SettingsSection.ABOUT, strings.languageCode, strings).description,
            summary = aboutMenuSummary(strings.languageCode)
        )
    )
}

private fun readerSectionSummaryItems(
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

private fun translationSectionSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    translationSectionText(strings.languageCode).translationBehaviorCard to translationModeLabel(strings, uiState.translationMode),
    translationSectionText(strings.languageCode).sourceLanguageCard to translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false),
    translationSectionText(strings.languageCode).targetLanguageCard to translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true),
    strings.ocrLanguageCard to uiState.ocrLanguage
)

private fun aiServicesSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    aiServicesOverviewText(strings.languageCode).machineTranslationTitle to aiMachineTranslationStatus(uiState, strings.languageCode),
    aiServicesOverviewText(strings.languageCode).advancedExplainTitle to compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled),
    aiServicesOverviewText(strings.languageCode).summaryTitle to aiServicesOverviewText(strings.languageCode).notConnectedValue,
    aiServicesOverviewText(strings.languageCode).providersTitle to aiProvidersStatus(uiState, strings.languageCode)
)

private fun readAloudSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    readAloudProviderTitle(strings.languageCode) to readAloudProviderLabel(uiState.readerTtsProvider, strings.languageCode),
    readAloudVoiceTitle(strings.languageCode) to readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode),
    readAloudPlaybackTitle(strings.languageCode) to
        "${String.format(Locale.US, "%.2f", uiState.readerTtsSpeed)}x · " +
        readAloudPitchLabel(uiState.readerTtsPitch, strings.languageCode),
    readAloudSleepTimerTitle(strings.languageCode) to
        readAloudSleepTimerLabel(uiState.readerTtsSleepTimerMode, strings.languageCode)
)

// Read-aloud strings extracted to SettingsReadAloudStrings.kt

private fun settingsLibraryViewLabel(language: String, mode: String): String = when (mode) {
    "LIST" -> when (language) {
        "en" -> "List"
        "ja" -> "リスト"
        "zh" -> "列表"
        "ko" -> "목록"
        else -> "Список"
    }
    "STRIPS" -> when (language) {
        "en" -> "Shelves"
        "ja" -> "棚"
        "zh" -> "书架"
        "ko" -> "선반"
        else -> "Ленты"
    }
    else -> when (language) {
        "en" -> "Grid"
        "ja" -> "グリッド"
        "zh" -> "网格"
        "ko" -> "그리드"
        else -> "Сетка"
    }
}

private data class PerformanceSettingsText(
    val title: String,
    val hint: String,
    val reducedMotionTitle: String,
    val reducedMotionSubtitle: String,
    val reducedVisualEffectsTitle: String,
    val reducedVisualEffectsSubtitle: String
)

private fun performanceSettingsText(language: String): PerformanceSettingsText = when (language) {
    "en" -> PerformanceSettingsText(
        title = "Performance",
        hint = "Useful on E-Ink devices and weaker phones: calmer motion, lighter effects, and steadier library surfaces.",
        reducedMotionTitle = "Reduce motion",
        reducedMotionSubtitle = "Cuts decorative movement and keeps navigation calmer.",
        reducedVisualEffectsTitle = "Reduce visual effects",
        reducedVisualEffectsSubtitle = "Lowers blur and heavy backdrop effects where the app supports it."
    )
    "ja" -> PerformanceSettingsText(
        title = "パフォーマンス",
        hint = "E-Ink 端末や低速な端末向け。動きを穏やかにし、重い効果を抑えて、ライブラリ表示を安定させます。",
        reducedMotionTitle = "動きを減らす",
        reducedMotionSubtitle = "装飾的な動きを減らし、遷移を落ち着かせます。",
        reducedVisualEffectsTitle = "視覚効果を減らす",
        reducedVisualEffectsSubtitle = "対応している場所で blur や重い backdrop 効果を弱めます。"
    )
    "zh" -> PerformanceSettingsText(
        title = "性能",
        hint = "适合 E-Ink 设备和较弱的手机：减少动画、减轻视觉特效，让书库表面更稳定。",
        reducedMotionTitle = "减少动画",
        reducedMotionSubtitle = "减少装饰性运动，让过渡更安静。",
        reducedVisualEffectsTitle = "减少视觉特效",
        reducedVisualEffectsSubtitle = "在已接入的界面降低模糊和较重的背景特效。"
    )
    "ko" -> PerformanceSettingsText(
        title = "성능",
        hint = "E-Ink 기기나 약한 폰에서 유용합니다. 움직임을 줄이고 효과를 가볍게 해서 라이브러리를 더 안정적으로 보여줍니다.",
        reducedMotionTitle = "모션 줄이기",
        reducedMotionSubtitle = "장식용 움직임을 줄여 전환을 더 차분하게 만듭니다.",
        reducedVisualEffectsTitle = "시각 효과 줄이기",
        reducedVisualEffectsSubtitle = "지원되는 화면에서 blur 와 무거운 backdrop 효과를 줄입니다."
    )
    else -> PerformanceSettingsText(
        title = "Производительность",
        hint = "Полезно на E-Ink и слабых устройствах: меньше движения, легче эффекты и спокойнее поверхности библиотеки.",
        reducedMotionTitle = "Сократить анимации",
        reducedMotionSubtitle = "Убирает лишнее движение и делает переходы спокойнее.",
        reducedVisualEffectsTitle = "Упростить визуальные эффекты",
        reducedVisualEffectsSubtitle = "Уменьшает blur и тяжёлые backdrop-эффекты там, где приложение это поддерживает."
    )
}

private fun appearanceSectionSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    strings.appLanguage to appLanguageLabel(strings, uiState.appLanguage),
    strings.themeCard to "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
    appearanceLibraryVisualsTitle(strings.languageCode) to "${settingsLibraryViewLabel(uiState.appLanguage, uiState.libraryViewMode)} · ${uiState.libraryTileSize} dp · ${compactToggleLabel(strings.languageCode, uiState.libraryShowCoverTitles)}",
    appearanceScaleTitle(strings.languageCode) to "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}",
    appearanceColorsTitle(strings.languageCode) to "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%"
)

private data class AppearanceSettingsNavItem(
    val page: AppearanceSettingsPage,
    val title: String,
    val description: String,
    val summary: String? = null,
    val icon: ImageVector
)

private fun appearancePageNavItems(
    text: AppearanceSectionText,
    language: String
): List<AppearanceSettingsNavItem> = listOf(
    AppearanceSettingsNavItem(
        page = AppearanceSettingsPage.LIBRARY,
        title = appearanceLibraryVisualsTitle(language),
        description = appearanceLibraryVisualsDescription(language),
        summary = when (language) {
            "en" -> "Covers, library view, labels, shelves and background"
            "ja" -> "表紙、ライブラリ表示、ラベル、棚、背景"
            "zh" -> "封面、书库视图、标签、书架与背景"
            "ko" -> "표지, 라이브러리 보기, 라벨, 선반과 배경"
            else -> "Обложки, вид библиотеки, подписи, полки и фон"
        },
        icon = Icons.Default.CollectionsBookmark
    ),
    AppearanceSettingsNavItem(
        page = AppearanceSettingsPage.THEME,
        title = appearanceThemeTitle(language),
        description = text.tabHints[AppearanceSettingsTab.THEME].orEmpty(),
        summary = when (language) {
            "en" -> "Presets, mode, saved themes"
            "ja" -> "プリセット、モード、保存テーマ"
            "zh" -> "预设、模式、保存主题"
            "ko" -> "프리셋, 모드, 저장 테마"
            else -> "Пресеты, режим, сохранённые темы"
        },
        icon = Icons.Default.Palette
    ),
    AppearanceSettingsNavItem(
        page = AppearanceSettingsPage.COLORS,
        title = appearanceColorsTitle(language),
        description = text.tabHints[AppearanceSettingsTab.COLORS].orEmpty(),
        summary = when (language) {
            "en" -> "Accent, surfaces, transparency"
            "ja" -> "アクセント、面、透明度"
            "zh" -> "强调色、表面、透明度"
            "ko" -> "강조색, 표면, 투명도"
            else -> "Акцент, поверхности, прозрачность"
        },
        icon = Icons.Default.ColorLens
    ),
    AppearanceSettingsNavItem(
        page = AppearanceSettingsPage.SCALE,
        title = appearanceScaleTitle(language),
        description = text.tabHints[AppearanceSettingsTab.SCALE].orEmpty(),
        summary = when (language) {
            "en" -> "Font scale, density, corners"
            "ja" -> "文字倍率、密度、角丸"
            "zh" -> "字体缩放、密度、圆角"
            "ko" -> "글꼴 크기, 밀도, 모서리"
            else -> "Шрифт, плотность, скругления"
        },
        icon = Icons.Default.Tune
    )
)

private fun appearancePageTitle(
    page: AppearanceSettingsPage,
    text: AppearanceSectionText,
    language: String
): String = when (page) {
    AppearanceSettingsPage.OVERVIEW -> text.leadTitle
    AppearanceSettingsPage.BASICS -> text.tabLabels[AppearanceSettingsTab.BASICS].orEmpty()
    AppearanceSettingsPage.LIBRARY -> appearanceLibraryVisualsTitle(language)
    AppearanceSettingsPage.THEME_STUDIO -> appearanceThemeStudioTitle(language)
    AppearanceSettingsPage.THEME -> appearanceThemeTitle(language)
    AppearanceSettingsPage.SCALE -> appearanceScaleTitle(language)
    AppearanceSettingsPage.COLORS -> appearanceColorsTitle(language)
    AppearanceSettingsPage.EXTRA -> appearanceExtrasTitle(language)
}

private fun appearancePageDescription(
    page: AppearanceSettingsPage,
    text: AppearanceSectionText,
    language: String
): String = when (page) {
    AppearanceSettingsPage.OVERVIEW -> text.leadDescription
    AppearanceSettingsPage.BASICS -> text.tabHints[AppearanceSettingsTab.BASICS].orEmpty()
    AppearanceSettingsPage.LIBRARY -> appearanceLibraryVisualsDescription(language)
    AppearanceSettingsPage.THEME_STUDIO -> appearanceThemeStudioDescription(language)
    AppearanceSettingsPage.THEME -> when (language) {
        "en" -> "Presets, light and dark modes, dynamic color, and the overall mood of the app."
        "ja" -> "プリセット、ライト/ダーク、ダイナミックカラーなど、アプリ全体の雰囲気をまとめます。"
        "zh" -> "集中放置预设、明暗模式、动态配色与整体氛围。"
        "ko" -> "프리셋, 라이트/다크, 동적 색상처럼 앱 전체 분위기를 다룹니다."
        else -> "Пресеты, светлая и тёмная тема, динамические цвета и общее настроение приложения."
    }
    AppearanceSettingsPage.SCALE -> text.tabHints[AppearanceSettingsTab.SCALE].orEmpty()
    AppearanceSettingsPage.COLORS -> when (language) {
        "en" -> "Accent, background, cards, overlays, and transparency are tuned as one palette layer."
        "ja" -> "アクセント、背景、カード、オーバーレイ、透明度を1つのパレットとして整えます。"
        "zh" -> "把强调色、背景、卡片、遮罩和透明度当作一层调色板来统一调整。"
        "ko" -> "강조색, 배경, 카드, 오버레이, 투명도를 하나의 팔레트 층으로 정리합니다."
        else -> "Акцент, фон, карточки, наложения и прозрачность собраны в один палитровый слой."
    }
    AppearanceSettingsPage.EXTRA -> text.tabHints[AppearanceSettingsTab.EXTRA].orEmpty()
}

// Appearance and library strings extracted to SettingsAppearanceStrings.kt

// ──────────── Root screen ────────────

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onAppIconSettingsClick: () -> Unit,
    onProgressProfileClick: () -> Unit = {},
    onBackClick: (() -> Unit)? = null,
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val latestUiState by rememberUpdatedState(uiState)
    val strings = LocalStrings.current
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var settingsImportErrorPopupToken by rememberSaveable { mutableIntStateOf(0) }
    var fontCatalogVersion by remember { mutableIntStateOf(0) }
    var pendingCustomFontDeletion by rememberSaveable { mutableStateOf<String?>(null) }
    var currentSectionName by rememberSaveable { mutableStateOf<String?>(null) }
    var currentAppearancePageName by rememberSaveable { mutableStateOf(AppearanceSettingsPage.OVERVIEW.name) }
    var currentReaderPageName by rememberSaveable { mutableStateOf(ReaderSettingsPage.OVERVIEW.name) }
    var currentLibraryPageName by rememberSaveable { mutableStateOf(LibrarySettingsPage.OVERVIEW.name) }
    var currentSyncPageName by rememberSaveable { mutableStateOf(SyncSettingsPage.OVERVIEW.name) }
    var currentTranslationPageName by rememberSaveable { mutableStateOf(TranslationSettingsPage.OVERVIEW.name) }
    val currentSection = currentSectionName?.let { runCatching { SettingsSection.valueOf(it) }.getOrNull() }
    val currentAppearancePage = runCatching { AppearanceSettingsPage.valueOf(currentAppearancePageName) }
        .getOrDefault(AppearanceSettingsPage.OVERVIEW)
        .let {
            when (it) {
                AppearanceSettingsPage.BASICS,
                AppearanceSettingsPage.THEME_STUDIO,
                AppearanceSettingsPage.EXTRA -> AppearanceSettingsPage.OVERVIEW
                else -> it
            }
        }
    val currentReaderPage = parseReaderSettingsPage(currentReaderPageName)
    val currentLibraryPage = parseLibrarySettingsPage(currentLibraryPageName)
    val currentSyncPage = parseSyncSettingsPage(currentSyncPageName)
    val currentTranslationPage = runCatching { TranslationSettingsPage.valueOf(currentTranslationPageName) }
        .getOrDefault(TranslationSettingsPage.OVERVIEW)
    val settingsImportErrorPopupConfig = remember(
        uiState.imageMessagePopupPosition,
        uiState.imageMessagePopupFreeMove,
        uiState.imageMessagePopupSizeScale,
        uiState.imageMessagePopupDurationSeconds
    ) {
        ImageMessagePopupConfig(
            position = normalizeSettingsImageMessagePopupPosition(uiState.imageMessagePopupPosition),
            allowFreeMove = uiState.imageMessagePopupFreeMove,
            sizeScale = clampSettingsImageMessagePopupScale(uiState.imageMessagePopupSizeScale),
            durationSeconds = clampSettingsImageMessagePopupDurationSeconds(uiState.imageMessagePopupDurationSeconds)
        )
    }
    val appearanceText = remember(strings.languageCode) { appearanceSectionText(strings.languageCode) }
    val readerMapText = remember(strings.languageCode) { readerSettingsMapText(strings.languageCode) }
    val libraryText = remember(strings.languageCode) { librarySectionText(strings.languageCode) }
    val translationMapText = remember(strings.languageCode) { translationSettingsMapText(strings.languageCode) }
    val aiSectionText = remember(strings.languageCode) { aiServicesSectionText(strings.languageCode) }
    val readAloudText = remember(strings.languageCode) { readAloudSectionText(strings.languageCode) }
    fun showSettingsImportRejection() {
        if (uiState.settingsImportErrorPresentation == SettingsImportErrorPresentation.IMAGE) {
            settingsImportErrorPopupToken = nextSettingsUiEventToken(settingsImportErrorPopupToken)
        } else {
            scope.launch { snackbarHostState.showSnackbar(SETTINGS_IMPORT_REJECTION_MESSAGE) }
        }
    }
    val fontImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedFont = runCatching { ReaderTextFontCatalog.importFont(context, uri) }.getOrNull()
        if (importedFont != null) {
            fontCatalogVersion += 1
            viewModel.setTextFontFamily(importedFont)
            Toast.makeText(context, importedFont, Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Не удалось импортировать шрифт" else "Couldn't import font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    fun deleteImportedFont(fontName: String) {
        val deleted = runCatching { ReaderTextFontCatalog.deleteCustomFont(context, fontName) }
            .getOrDefault(false)
        pendingCustomFontDeletion = null
        if (deleted) {
            fontCatalogVersion += 1
            if (latestUiState.textFontFamily == fontName) {
                viewModel.setTextFontFamily("Georgia")
            }
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Шрифт удалён" else "Font deleted",
                Toast.LENGTH_SHORT
            ).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Не удалось удалить шрифт" else "Couldn't delete font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    val readerStyleImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        scope.launch {
            val importedStyle = runCatching {
                val rawJson = uri.readAcceptedSettingsImportText(context)
                viewModel.importReaderTypographyFromJson(rawJson)
            }.getOrElse { error ->
                if (error.message == SETTINGS_IMPORT_REJECTION_MESSAGE) {
                    showSettingsImportRejection()
                    return@launch
                }
                null
            }
            if (importedStyle != null) {
                Toast.makeText(
                    context,
                    if (strings.languageCode == "ru") "Импортирован стиль: $importedStyle" else "Imported style: $importedStyle",
                    Toast.LENGTH_SHORT
                ).show()
            } else {
                Toast.makeText(
                    context,
                    if (strings.languageCode == "ru") "Не удалось импортировать стиль" else "Couldn't import style",
                    Toast.LENGTH_SHORT
                ).show()
            }
        }
    }
    val readerStyleExportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        scope.launch {
            val exported = runCatching {
                val payload = buildReaderTypographyExportJson(latestUiState)
                context.contentResolver.openOutputStream(uri)?.use { out ->
                    out.write(payload.toByteArray(Charsets.UTF_8))
                } ?: error("No output stream")
            }.isSuccess
            Toast.makeText(
                context,
                when {
                    exported && strings.languageCode == "ru" -> "Стиль экспортирован"
                    exported -> "Style exported"
                    strings.languageCode == "ru" -> "Не удалось экспортировать стиль"
                    else -> "Couldn't export style"
                },
                Toast.LENGTH_SHORT
            ).show()
        }
    }

    fun navigateUp() {
        when {
            currentSection == SettingsSection.APPEARANCE && currentAppearancePage != AppearanceSettingsPage.OVERVIEW ->
                currentAppearancePageName = AppearanceSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.READER && currentReaderPage != ReaderSettingsPage.OVERVIEW ->
                currentReaderPageName = ReaderSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.LIBRARY && currentLibraryPage != LibrarySettingsPage.OVERVIEW ->
                currentLibraryPageName = LibrarySettingsPage.OVERVIEW.name
            currentSection == SettingsSection.SYNC && currentSyncPage != SyncSettingsPage.OVERVIEW ->
                currentSyncPageName = SyncSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.TRANSLATION && currentTranslationPage != TranslationSettingsPage.OVERVIEW ->
                currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
            currentSection != null -> currentSectionName = null
            else -> onBackClick?.invoke()
        }
    }

    BackHandler(enabled = currentSection != null || onBackClick != null) { navigateUp() }

    LaunchedEffect(uiState.cacheMessage, uiState.settingsImportErrorPresentation) {
        val message = uiState.cacheMessage ?: return@LaunchedEffect
        if (
            message == SETTINGS_IMPORT_REJECTION_MESSAGE &&
            uiState.settingsImportErrorPresentation == SettingsImportErrorPresentation.IMAGE
        ) {
            settingsImportErrorPopupToken = nextSettingsUiEventToken(settingsImportErrorPopupToken)
            viewModel.consumeCacheMessage()
            return@LaunchedEffect
        }
        snackbarHostState.showSnackbar(message)
        viewModel.consumeCacheMessage()
    }

    if (settingsImportErrorPopupToken > 0) {
        ImageMessagePopup(
            drawableId = SettingsR.drawable.settings_import_error_popup,
            contentDescription = SETTINGS_IMPORT_REJECTION_MESSAGE,
            config = settingsImportErrorPopupConfig,
            eventToken = settingsImportErrorPopupToken,
            onDismiss = { settingsImportErrorPopupToken = 0 }
        )
    }

    pendingCustomFontDeletion?.let { fontName ->
        AlertDialog(
            onDismissRequest = { pendingCustomFontDeletion = null },
            title = { Text(readerDeleteCustomFontDialogTitle(strings.languageCode)) },
            text = {
                Text(
                    readerDeleteCustomFontDialogMessage(strings.languageCode, fontName),
                    style = MaterialTheme.typography.bodyMedium
                )
            },
            confirmButton = {
                TextButton(onClick = { deleteImportedFont(fontName) }) {
                    Text(readerDeleteCustomFontConfirm(strings.languageCode))
                }
            },
            dismissButton = {
                TextButton(onClick = { pendingCustomFontDeletion = null }) {
                    Text(readerDeleteCustomFontCancel(strings.languageCode))
                }
            }
        )
    }

    val sectionTitle = when (currentSection) {
        SettingsSection.APPEARANCE   -> when (currentAppearancePage) {
            AppearanceSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.APPEARANCE, strings.languageCode, strings).title
            AppearanceSettingsPage.BASICS -> appearanceText.tabLabels[AppearanceSettingsTab.BASICS].orEmpty()
            AppearanceSettingsPage.LIBRARY -> appearanceLibraryVisualsTitle(strings.languageCode)
            AppearanceSettingsPage.THEME_STUDIO -> appearanceThemeStudioTitle(strings.languageCode)
            AppearanceSettingsPage.THEME -> appearanceThemeTitle(strings.languageCode)
            AppearanceSettingsPage.SCALE -> appearanceText.tabLabels[AppearanceSettingsTab.SCALE].orEmpty()
            AppearanceSettingsPage.COLORS -> appearanceColorsTitle(strings.languageCode)
            AppearanceSettingsPage.EXTRA -> appearanceExtrasTitle(strings.languageCode)
        }
            SettingsSection.READER       -> when (currentReaderPage) {
                ReaderSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.READER, strings.languageCode, strings).title
                ReaderSettingsPage.TEXT_APPEARANCE -> readerMapText.textAppearanceTitle
                ReaderSettingsPage.PAGE_LAYOUT -> readerMapText.pageLayoutTitle
                ReaderSettingsPage.HEADERS -> readerMapText.headersTitle
                ReaderSettingsPage.PAGING -> readerMapText.pagingTitle
                ReaderSettingsPage.BEHAVIOR -> readerMapText.behaviorTitle
            }
        SettingsSection.LIBRARY      -> when (currentLibraryPage) {
            LibrarySettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.LIBRARY, strings.languageCode, strings).title
            LibrarySettingsPage.ACCESS -> libraryAccessTitle(strings.languageCode)
            LibrarySettingsPage.CACHE -> libraryCacheTitle(strings.languageCode)
            LibrarySettingsPage.IMPORT_EXPORT -> libraryImportExportTitle(strings.languageCode)
        }
        SettingsSection.PERFORMANCE  -> settingsSectionMeta(SettingsSection.PERFORMANCE, strings.languageCode, strings).title
        SettingsSection.SYNC         -> when (currentSyncPage) {
            SyncSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).title
            SyncSettingsPage.BACKUP -> syncBackupTitle(strings.languageCode)
        }
        SettingsSection.TRANSLATION  -> when (currentTranslationPage) {
            TranslationSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.TRANSLATION, strings.languageCode, strings).title
            TranslationSettingsPage.LANGUAGES -> translationMapText.languagesTitle
            TranslationSettingsPage.OCR -> translationMapText.ocrTitle
            TranslationSettingsPage.OVERLAY -> translationMapText.overlayTitle
            TranslationSettingsPage.SERVICES -> translationMapText.servicesTitle
        }
        SettingsSection.AI_SERVICES  -> settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).title
        SettingsSection.READ_ALOUD   -> settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).title
        SettingsSection.STORAGE      -> settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).title
        SettingsSection.ADVANCED     -> settingsSectionMeta(SettingsSection.ADVANCED, strings.languageCode, strings).title
        SettingsSection.ABOUT        -> settingsSectionMeta(SettingsSection.ABOUT, strings.languageCode, strings).title
        null                         -> strings.settings
    }

    Scaffold(
        containerColor = Color.Transparent,
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            RootChromeTopBarHost {
                TopAppBar(
                    title = { Text(sectionTitle) },
                    colors = rootChromeTopBarColors(),
                    windowInsets = WindowInsets(0, 0, 0, 0),
                    navigationIcon = {
                        if (currentSection != null || onBackClick != null) {
                            MrComicIconButton(
                                onClick = { navigateUp() },
                                variant = MrComicIconButtonVariant.Tonal
                            ) {
                                Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = strings.back)
                            }
                        }
                    }
                )
            }
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            if (currentSection == SettingsSection.LIBRARY) {
                LibraryBackdropLayer(
                    backgroundStyle = uiState.libraryBackgroundStyle,
                    backgroundImageUri = uiState.libraryBackgroundImageUri,
                    colorScheme = MaterialTheme.colorScheme,
                    backdropStrength = rootChromeBackdropStrength(uiState.libraryBackdropStrength),
                    backgroundBlur = uiState.libraryBackgroundBlur,
                    imageVeil = rootChromeBackdropVeil(uiState.libraryBackgroundVeil),
                    modifier = Modifier.fillMaxSize()
                )
            }

            when (currentSection) {
                null -> SettingsMainMenu(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    onSectionClick = {
                        currentSectionName = it.name
                        currentAppearancePageName = AppearanceSettingsPage.OVERVIEW.name
                        currentReaderPageName = ReaderSettingsPage.OVERVIEW.name
                        currentLibraryPageName = LibrarySettingsPage.OVERVIEW.name
                        currentSyncPageName = SyncSettingsPage.OVERVIEW.name
                        currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.APPEARANCE -> AppearanceSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentAppearancePage,
                    onPageChange = { currentAppearancePageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.READER -> ReaderSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentReaderPage,
                    onPageChange = { currentReaderPageName = it.name },
                    fontCatalogVersion = fontCatalogVersion,
                    onImportCustomFont = { fontImportLauncher.launch(arrayOf("*/*")) },
                    onImportReaderStyle = {
                        readerStyleImportLauncher.launch(
                            arrayOf("application/json", "text/*", "application/octet-stream")
                        )
                    },
                    onExportReaderStyle = {
                        readerStyleExportLauncher.launch(readerTypographyExportFileName(uiState))
                    },
                    onDeleteCustomFont = { fontName ->
                        pendingCustomFontDeletion = fontName
                    },
                    onOpenTranslationSettings = {
                        currentSectionName = SettingsSection.TRANSLATION.name
                        currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.LIBRARY -> LibrarySection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentLibraryPage,
                    onImportRejected = ::showSettingsImportRejection,
                    onPageChange = { currentLibraryPageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.PERFORMANCE -> PerformanceSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.TRANSLATION -> TranslationSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentTranslationPage,
                    onPageChange = { currentTranslationPageName = it.name },
                    onOpenAiServices = {
                        currentSectionName = SettingsSection.AI_SERVICES.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.SYNC -> SyncSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentSyncPage,
                    onImportRejected = ::showSettingsImportRejection,
                    onPageChange = { currentSyncPageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.STORAGE -> StorageSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.AI_SERVICES -> AiServicesSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.READ_ALOUD -> ReadAloudSection(
                    uiState = uiState,
                    viewModel = viewModel,
                    strings = strings,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.ADVANCED -> AdvancedSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    onAppIconSettingsClick = onAppIconSettingsClick,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.ABOUT -> AboutSection(
                    strings = strings,
                    modifier = Modifier.padding(padding)
                )
            }
        }
    }
}

private fun streakPolicySettingsText(language: String): StreakPolicySettingsText = when (language) {
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

// ──────────── Main menu ────────────

@Composable
private fun SettingsMainMenu(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onSectionClick: (SettingsSection) -> Unit,
    modifier: Modifier = Modifier
) {
    var query by remember { mutableStateOf("") }
    val menuText = remember(strings.languageCode) { mainMenuText(strings.languageCode) }
    val normalizedQuery = query.trim().lowercase()
    val sectionItems = settingsSectionItems(uiState, strings).filter { item ->
        normalizedQuery.isBlank() ||
            item.title.lowercase().contains(normalizedQuery) ||
            item.description.lowercase().contains(normalizedQuery) ||
            item.summary?.lowercase()?.contains(normalizedQuery) == true
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            OutlinedTextField(
                value = query,
                onValueChange = { query = it },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text(menuText.searchPlaceholder) },
                leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                singleLine = true,
                shape = RootChromePanelShape,
                colors = rootChromeTextFieldColors()
            )
        }
        item {
            SettingsSectionLead(
                title = menuText.leadTitle,
                description = menuText.leadDescription
            )
        }
        item {
            SettingsCard(title = menuText.sectionsTitle) {
                sectionItems.forEachIndexed { index, item ->
                    val section = item.section
                    val icon = when (section) {
                        SettingsSection.APPEARANCE -> Icons.Default.Palette
                        SettingsSection.READER -> Icons.Default.Book
                        SettingsSection.LIBRARY -> Icons.Default.GridView
                        SettingsSection.PERFORMANCE -> Icons.Default.Bolt
                        SettingsSection.SYNC -> Icons.Default.Sync
                        SettingsSection.READ_ALOUD -> Icons.Default.RecordVoiceOver
                        SettingsSection.TRANSLATION -> Icons.Default.Translate
                        SettingsSection.AI_SERVICES -> Icons.Default.Psychology
                        SettingsSection.STORAGE -> Icons.Default.FolderOpen
                        SettingsSection.ADVANCED -> Icons.Default.Tune
                        SettingsSection.ABOUT -> Icons.Default.Info
                    }
                    SettingsNavItem(
                        icon = icon,
                        title = item.title,
                        description = item.description,
                        summary = item.summary,
                        onClick = { onSectionClick(section) }
                    )
                    if (index != sectionItems.lastIndex) {
                        HorizontalDivider(
                            modifier = Modifier.padding(start = 56.dp),
                            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun SettingsNavItem(
    icon: ImageVector,
    title: String,
    description: String? = null,
    summary: String? = null,
    onClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = { UIFeedback.playTransition(); onClick() })
            .padding(vertical = 10.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            color = rootChromeIconContainerColor(MaterialTheme.colorScheme),
            shape = CircleShape
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.padding(10.dp).size(18.dp)
            )
        }
        Column(modifier = Modifier.weight(1f)) {
            Text(title, style = MaterialTheme.typography.titleSmall)
            description?.takeIf { it.isNotBlank() }?.let {
                Spacer(Modifier.height(2.dp))
                Text(
                    it,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            summary?.let {
                Spacer(Modifier.height(6.dp))
                MrComicPill(
                    containerColor = rootChromePillContainerColor(MaterialTheme.colorScheme, selected = true),
                    contentColor = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true),
                    contentPadding = PaddingValues(horizontal = 10.dp, vertical = 5.dp)
                ) {
                    Text(
                        text = it,
                        style = MaterialTheme.typography.labelSmall,
                        color = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true)
                    )
                }
            }
        }
        Icon(
            Icons.Default.ChevronRight,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
private fun SettingsSectionLead(
    title: String,
    description: String,
    modifier: Modifier = Modifier
) {
    MrComicCardSurface(
        modifier = modifier.fillMaxWidth(),
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleMedium)
            Text(
                description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun SettingsCompactSummaryCard(
    title: String,
    hint: String,
    items: List<Pair<String, String>>
) {
    SettingsCard(title = title) {
        Text(
            text = hint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        items.forEachIndexed { index, (label, value) ->
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = label,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.weight(1f)
                )
                MrComicPill(
                    containerColor = rootChromePillContainerColor(MaterialTheme.colorScheme, selected = true),
                    contentColor = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true),
                    contentPadding = PaddingValues(horizontal = 10.dp, vertical = 5.dp)
                ) {
                    Text(
                        text = value,
                        style = MaterialTheme.typography.labelSmall,
                        color = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true)
                    )
                }
            }
            if (index != items.lastIndex) {
                HorizontalDivider(
                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f)
                )
            }
        }
    }
}

private data class SettingsStudioOverviewItem(
    val icon: ImageVector,
    val title: String,
    val description: String,
    val summary: String? = null,
    val onClick: () -> Unit
)

@Composable
private fun SettingsStudioOverviewCard(
    title: String,
    hint: String,
    summaryItems: List<Pair<String, String>>,
    sectionsTitle: String,
    sections: List<SettingsStudioOverviewItem>
) {
    SettingsCard(title = title) {
        Text(
            text = hint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        if (summaryItems.isNotEmpty()) {
            Spacer(Modifier.height(10.dp))
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                summaryItems.forEach { (label, value) ->
                    Surface(
                        shape = RootChromePillShape,
                        color = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
                    ) {
                        Column(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.spacedBy(2.dp)
                        ) {
                            Text(
                                text = label,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                            Text(
                                text = value,
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                        }
                    }
                }
            }
        }
        Spacer(Modifier.height(12.dp))
        Text(
            text = sectionsTitle,
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        sections.forEachIndexed { index, item ->
            SettingsNavItem(
                icon = item.icon,
                title = item.title,
                description = item.description,
                summary = item.summary,
                onClick = item.onClick
            )
            if (index != sections.lastIndex) {
                HorizontalDivider(
                    modifier = Modifier.padding(start = 56.dp),
                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f)
                )
            }
        }
    }
}

// ──────────── Appearance section ────────────

@Composable
private fun AppearanceSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: AppearanceSettingsPage,
    onPageChange: (AppearanceSettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val menuText = remember(uiState.appLanguage) { mainMenuText(uiState.appLanguage) }
    val sectionText = remember(uiState.appLanguage) { appearanceSectionText(uiState.appLanguage) }
    val appThemePresetText = remember(uiState.appLanguage) { appThemePresetText(uiState.appLanguage) }
    val libraryText = remember(uiState.appLanguage) { librarySectionText(uiState.appLanguage) }
    var showBackgroundPicker by rememberSaveable { mutableStateOf(false) }
    var showShelfPicker by rememberSaveable { mutableStateOf(false) }
    val backgroundOptions = listOf(
        "PAPER_GRAIN" to libraryBackgroundStyleLabel("PAPER_GRAIN", uiState.appLanguage),
        "EINK_WASH" to libraryBackgroundStyleLabel("EINK_WASH", uiState.appLanguage),
        "MIDNIGHT_MICA" to libraryBackgroundStyleLabel("MIDNIGHT_MICA", uiState.appLanguage),
        "LIQUID_GLASS" to libraryBackgroundStyleLabel("LIQUID_GLASS", uiState.appLanguage),
        "AURORA_MIST" to libraryBackgroundStyleLabel("AURORA_MIST", uiState.appLanguage),
        "IMAGE" to libraryText.imageBackgroundOption
    )
    val shelfOptions = listOf(
        "NONE" to libraryShelfStyleLabel("NONE", uiState.appLanguage),
        "OAK" to libraryShelfStyleLabel("OAK", uiState.appLanguage),
        "ALUMINUM" to libraryShelfStyleLabel("ALUMINUM", uiState.appLanguage),
        "FLOAT" to libraryShelfStyleLabel("FLOAT", uiState.appLanguage),
        "FROST" to libraryShelfStyleLabel("FROST", uiState.appLanguage)
    )
    val backgroundImageLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        if (uri != null) {
            try {
                context.contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION
                )
            } catch (_: Exception) {
            }
        }
        viewModel.setLibraryBackgroundImageUri(uri?.toString())
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        if (currentPage == AppearanceSettingsPage.THEME ||
            currentPage == AppearanceSettingsPage.SCALE ||
            currentPage == AppearanceSettingsPage.COLORS
        ) {
            stickyHeader(key = "appearance_preview") {
                Box(modifier = Modifier.padding(bottom = 10.dp)) {
                    SettingsCard(title = strings.preview) {
                        ThemePreviewCard(
                            uiState = uiState,
                            strings = strings
                        )
                    }
                }
            }
        }
        if (currentPage == AppearanceSettingsPage.OVERVIEW) {
            item {
                SettingsCard(title = strings.appLanguage) {
                    val langs = listOf(
                        "ru" to strings.langRu,
                        "en" to strings.langEn,
                        "ja" to strings.langJa,
                        "zh" to strings.langZh,
                        "ko" to strings.langKo
                    )
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(langs) { (code, label) ->
                            MrComicFilterChip(
                                selected = uiState.appLanguage == code,
                                onClick = { viewModel.setAppLanguage(code) },
                                label = { Text(label) }
                            )
                        }
                    }
                }
            }
            item {
                val navItems = appearancePageNavItems(sectionText, strings.languageCode)
                SettingsCard(title = sectionText.quickBlocksTitle) {
                    navItems.forEachIndexed { index, item ->
                        SettingsNavItem(
                            icon = item.icon,
                            title = item.title,
                            description = null,
                            onClick = { onPageChange(item.page) }
                        )
                        if (index != navItems.lastIndex) {
                            HorizontalDivider(
                                modifier = Modifier.padding(start = 56.dp),
                                color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                            )
                        }
                    }
                }
            }
        }
        if (currentPage == AppearanceSettingsPage.THEME_STUDIO) {
            item {
                SettingsStudioOverviewCard(
                    title = appearanceThemeStudioTitle(strings.languageCode),
                    hint = appearanceThemeStudioDescription(strings.languageCode),
                    summaryItems = listOf(
                        appearanceThemeTitle(strings.languageCode) to "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
                        appearanceColorsTitle(strings.languageCode) to "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%",
                        appearanceScaleTitle(strings.languageCode) to "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}"
                    ),
                    sectionsTitle = sectionText.quickBlocksTitle,
                    sections = listOf(
                        SettingsStudioOverviewItem(
                            icon = Icons.Default.Palette,
                            title = appearanceThemeTitle(strings.languageCode),
                            description = sectionText.tabHints[AppearanceSettingsTab.THEME].orEmpty(),
                            summary = "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
                            onClick = { onPageChange(AppearanceSettingsPage.THEME) }
                        ),
                        SettingsStudioOverviewItem(
                            icon = Icons.Default.ColorLens,
                            title = appearanceColorsTitle(strings.languageCode),
                            description = sectionText.tabHints[AppearanceSettingsTab.COLORS].orEmpty(),
                            summary = "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%",
                            onClick = { onPageChange(AppearanceSettingsPage.COLORS) }
                        ),
                        SettingsStudioOverviewItem(
                            icon = Icons.Default.Tune,
                            title = appearanceScaleTitle(strings.languageCode),
                            description = sectionText.tabHints[AppearanceSettingsTab.SCALE].orEmpty(),
                            summary = "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}",
                            onClick = { onPageChange(AppearanceSettingsPage.SCALE) }
                        )
                    )
                )
        }
        item {
            val savedAppThemeCount = remember(uiState.appThemePresetSlots) {
                uiState.appThemePresetSlots.count { !it.serialized.isNullOrBlank() }
            }
            SettingsCard(title = "${appThemePresetText.title} ($savedAppThemeCount/${uiState.appThemePresetSlots.size})") {
                LabelText(appThemePresetText.hint)
                val orderedAppThemeSlots = remember(uiState.appThemePresetSlots, uiState.themePreset, uiState.themeMode) {
                    uiState.appThemePresetSlots.sortedWith(
                        compareByDescending<AppThemePresetSlot> { slot ->
                            parseAppThemePreset(slot.serialized)?.matchesAppThemeUiState(uiState) == true
                        }.thenByDescending { slot ->
                            !slot.serialized.isNullOrBlank()
                        }.thenBy { slot ->
                            slot.index
                        }
                    )
                }
                val activeAppThemeSnapshot = orderedAppThemeSlots
                    .mapNotNull { parseAppThemePreset(it.serialized) }
                    .firstOrNull { it.matchesAppThemeUiState(uiState) }
                if (activeAppThemeSnapshot != null) {
                    Spacer(Modifier.height(6.dp))
                    SettingsPreviewBanner(
                        title = "${appThemePresetText.current}: ${themePresetLabel(strings, activeAppThemeSnapshot.themePreset)}",
                        subtitle = themeLabel(
                            strings,
                            runCatching { ThemeMode.valueOf(activeAppThemeSnapshot.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
                        ),
                        details = listOfNotNull(
                            if (activeAppThemeSnapshot.customPrimaryColor != null) strings.colorPrimary else null,
                            if (activeAppThemeSnapshot.customSecondaryColor != null) strings.colorSecondary else null,
                            if (activeAppThemeSnapshot.customBackgroundColor != null) strings.colorBackground else null,
                            if (activeAppThemeSnapshot.customSurfaceColor != null) "surface" else null
                        ).joinToString(" · ").ifBlank { strings.themePresetCustom }
                    )
                }
                FlowRow(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    orderedAppThemeSlots.forEach { slot ->
                        val active = parseAppThemePreset(slot.serialized)?.matchesAppThemeUiState(uiState) == true
                        AppThemePresetCard(
                            slot = slot,
                            strings = strings,
                            text = appThemePresetText,
                            isActive = active,
                            onSave = { viewModel.saveAppThemePreset(slot.index) },
                            onApply = { viewModel.applyAppThemePreset(slot.index) },
                            onClear = { viewModel.clearAppThemePreset(slot.index) }
                        )
                    }
                }
            }
        }
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            LibraryLayoutCard(
                uiState = uiState,
                strings = strings,
                libraryText = libraryText,
                viewModel = viewModel,
                title = appearanceLibraryVisualsTitle(uiState.appLanguage)
            )
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            LibraryCardsStyleCard(
                uiState = uiState,
                strings = strings,
                libraryText = libraryText,
                viewModel = viewModel
            )
        }
        if (currentPage == AppearanceSettingsPage.LIBRARY) item {
            SettingsCard(title = libraryText.shelvesBackgroundCard) {
                SettingsPickerTile(
                    title = libraryText.backgroundStyle,
                    value = backgroundOptions.firstOrNull { it.first == uiState.libraryBackgroundStyle }?.second
                        ?: libraryBackgroundStyleLabel(uiState.libraryBackgroundStyle, uiState.appLanguage),
                    onClick = { showBackgroundPicker = true }
                )
                Spacer(Modifier.height(10.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    MrComicButton(
                        onClick = { backgroundImageLauncher.launch(arrayOf("image/*")) },
                        modifier = Modifier.weight(1f),
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Text(if (uiState.libraryBackgroundImageUri == null) libraryText.chooseBackground else libraryText.changeBackground)
                    }
                    MrComicButton(
                        onClick = { viewModel.setLibraryBackgroundImageUri(null) },
                        modifier = Modifier.weight(1f),
                        enabled = uiState.libraryBackgroundImageUri != null,
                        variant = MrComicButtonVariant.Outlined
                    ) {
                        Text(libraryText.resetBackground)
                    }
                }
                uiState.libraryBackgroundImageUri?.let { backgroundUri ->
                    Spacer(Modifier.height(10.dp))
                    SelectedLibraryBackgroundPreview(
                        imageUri = backgroundUri,
                        title = libraryText.selectedBackground,
                        hint = libraryText.selectedBackgroundHint
                    )
                }
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = libraryText.backgroundAccent,
                    valueLabel = "${(uiState.libraryBackdropStrength * 100).toInt()}%",
                    value = uiState.libraryBackdropStrength,
                    onValueChange = viewModel::setLibraryBackdropStrength,
                    valueRange = 0f..1f,
                    steps = 9
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = libraryText.backgroundBlur,
                    valueLabel = "${(uiState.libraryBackgroundBlur * 100).toInt()}%",
                    value = uiState.libraryBackgroundBlur,
                    onValueChange = viewModel::setLibraryBackgroundBlur,
                    valueRange = 0f..1f,
                    steps = 9
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = libraryText.backgroundVeil,
                    valueLabel = "${(uiState.libraryBackgroundVeil * 100).toInt()}%",
                    value = uiState.libraryBackgroundVeil,
                    onValueChange = viewModel::setLibraryBackgroundVeil,
                    valueRange = 0f..1f,
                    steps = 9
                )
                Spacer(Modifier.height(10.dp))
                SettingsPickerTile(
                    title = libraryText.shelfStyle,
                    value = shelfOptions.firstOrNull { it.first == uiState.libraryShelfStyle }?.second
                        ?: libraryShelfStyleLabel(uiState.libraryShelfStyle, uiState.appLanguage),
                    onClick = { showShelfPicker = true }
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = libraryText.shelfDepth,
                    valueLabel = "${(uiState.libraryShelfDepth * 100).toInt()}%",
                    value = uiState.libraryShelfDepth,
                    onValueChange = viewModel::setLibraryShelfDepth,
                    valueRange = 0f..1f,
                    steps = 9
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.THEME) item {
            SettingsCard(title = strings.themePresets) {
                val activePreset = runCatching {
                    ThemePreset.valueOf(uiState.themePreset)
                }.getOrDefault(ThemePreset.CUSTOM)

                FlowRow(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    listOf(
                        ThemePreset.CUSTOM to strings.themePresetCustom,
                        ThemePreset.PAPER  to strings.themePresetPaper,
                        ThemePreset.GLASS  to strings.themePresetGlass,
                        ThemePreset.AMOLED to strings.themePresetAmoled,
                        ThemePreset.NEON   to strings.themePresetNeon,
                        ThemePreset.GRAY   to strings.themePresetGray,
                        ThemePreset.SEPIA  to strings.themePresetSepia,
                        ThemePreset.EINK   to strings.themePresetEink
                    ).forEach { (preset, label) ->
                        ThemePresetCard(
                            preset = preset,
                            label = label,
                            isSelected = activePreset == preset,
                            onClick = { viewModel.setThemePreset(preset) }
                        )
                    }
                }
            }
        }
        if (currentPage == AppearanceSettingsPage.THEME) item {
            SettingsCard(title = strings.themeCard) {
                val amoledAvailable = uiState.themeMode != ThemeMode.LIGHT
                LabelText(strings.colorTheme)
                ChipRow {
                    ThemeMode.entries.forEach { mode ->
                        MrComicFilterChip(
                            selected = uiState.themeMode == mode,
                            onClick = { viewModel.setThemeMode(mode) },
                            label = { Text(themeLabel(strings, mode)) }
                        )
                    }
                }
                SwitchRow(
                    title = strings.dynamicColor,
                    subtitle = strings.dynamicColorSubtitle,
                    checked = uiState.useDynamicColor,
                    onCheckedChange = viewModel::setUseDynamicColor
                )
                SwitchRow(
                    title = strings.amoledDark,
                    subtitle = if (amoledAvailable) {
                        strings.amoledDarkSubtitle
                    } else {
                        when (strings.languageCode) {
                            "en" -> "Available only when the app uses a dark theme."
                            "ja" -> "アプリがダークテーマのときだけ使えます。"
                            "zh" -> "仅在应用使用深色主题时可用。"
                            "ko" -> "앱이 다크 테마일 때만 사용할 수 있습니다."
                            else -> "Работает только когда приложение использует тёмную тему."
                        }
                    },
                    checked = uiState.useAmoledDark,
                    onCheckedChange = viewModel::setUseAmoledDark,
                    enabled = amoledAvailable
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.SCALE) item {
            SettingsCard(title = sectionText.sizeShapeTitle) {
                LabelText("${strings.fontScale}: ${fontScaleLabel(strings, uiState.uiFontScale)}")
                ChipRow {
                    listOf(
                        0.85f to strings.fontScaleSmall,
                        1.0f  to strings.fontScaleNormal,
                        1.15f to strings.fontScaleLarge,
                        1.3f  to strings.fontScaleXL
                    ).forEach { (scale, label) ->
                        MrComicFilterChip(
                            selected = uiState.uiFontScale == scale,
                            onClick = { viewModel.setUiFontScale(scale) },
                            label = { Text(label) }
                        )
                    }
                }
                Spacer(Modifier.height(4.dp))
                SettingsSliderTile(
                    title = appearanceDensityLabel(uiState.appLanguage),
                    valueLabel = uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale),
                    value = uiState.uiDensityScale,
                    onValueChange = viewModel::setUiDensityScale,
                    valueRange = 0.82f..1.18f,
                    steps = 7
                )
                Spacer(Modifier.height(4.dp))
                SettingsSliderTile(
                    title = strings.cornerRadius,
                    valueLabel = "${uiState.uiCornerRadius} dp",
                    value = uiState.uiCornerRadius.toFloat(),
                    onValueChange = { viewModel.setUiCornerRadius(it.toInt()) },
                    valueRange = 0f..32f,
                    steps = 7
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.COLORS) item {
            SettingsCard(title = sectionText.accentColorsTitle) {
                Text(
                    sectionText.accentColorsDescription,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorPrimary,
                    selectedColor = uiState.customPrimaryColor?.let(::argbLongToThemeColor),
                    onColorSelected = { viewModel.setCustomPrimaryColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorSecondary,
                    selectedColor = uiState.customSecondaryColor?.let(::argbLongToThemeColor),
                    onColorSelected = { viewModel.setCustomSecondaryColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
            }
        }
        if (currentPage == AppearanceSettingsPage.COLORS) item {
            SettingsCard(title = sectionText.surfacesTitle) {
                Text(
                    sectionText.surfacesDescription,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorBackground,
                    selectedColor = uiState.customBackgroundColor?.let(::argbLongToThemeColor),
                    onColorSelected = { viewModel.setCustomBackgroundColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = menuText.surfaceCardsLabel,
                    selectedColor = uiState.customSurfaceColor?.let(::argbLongToThemeColor),
                    onColorSelected = { viewModel.setCustomSurfaceColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                SettingsSliderTile(
                    title = surfaceOpacityLabel(uiState.appLanguage),
                    valueLabel = "${(uiState.surfaceOpacity * 100).toInt()}%",
                    value = uiState.surfaceOpacity,
                    onValueChange = viewModel::setSurfaceOpacity,
                    valueRange = 0.35f..1f,
                    steps = 12
                )
                MrComicButton(
                    onClick = {
                        viewModel.setCustomPrimaryColor(null)
                        viewModel.setCustomSecondaryColor(null)
                        viewModel.setCustomBackgroundColor(null)
                        viewModel.setCustomSurfaceColor(null)
                        viewModel.setSurfaceOpacity(1f)
                    },
                    modifier = Modifier.align(Alignment.End),
                    variant = MrComicButtonVariant.Text
                ) {
                    Text(sectionText.paletteResetLabel)
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
    if (showBackgroundPicker) {
        SettingsPickerDialog(
            title = libraryText.backgroundStyle,
            options = backgroundOptions.map { ReaderPickerOption(it.first, it.second) },
            selectedValue = uiState.libraryBackgroundStyle,
            onDismiss = { showBackgroundPicker = false },
            onSelect = {
                viewModel.setLibraryBackgroundStyle(it)
                showBackgroundPicker = false
            }
        )
    }
    if (showShelfPicker) {
        SettingsPickerDialog(
            title = libraryText.shelfStyle,
            options = shelfOptions.map { ReaderPickerOption(it.first, it.second) },
            selectedValue = uiState.libraryShelfStyle,
            onDismiss = { showShelfPicker = false },
            onSelect = {
                viewModel.setLibraryShelfStyle(it)
                showShelfPicker = false
            }
        )
    }
}

// ──────────── Live preview card ────────────

private fun Color.contentColorForPreview(): Color =
    if (luminance() > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)

@Composable
private fun ThemePreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    val currentScheme = MaterialTheme.colorScheme
    val isDarkPreview = when (uiState.themeMode) {
        ThemeMode.LIGHT -> false
        ThemeMode.DARK -> true
        ThemeMode.SYSTEM,
        ThemeMode.DYNAMIC -> currentScheme.background.luminance() < 0.45f
    }
    val previewBackground = uiState.customBackgroundColor?.let(::argbLongToThemeColor) ?: when {
        uiState.themeMode == ThemeMode.LIGHT -> Color(0xFFF7F3EE)
        uiState.themeMode == ThemeMode.DARK && uiState.useAmoledDark -> Color(0xFF000000)
        uiState.themeMode == ThemeMode.DARK -> Color(0xFF121216)
        uiState.themeMode == ThemeMode.SYSTEM && uiState.useAmoledDark && isDarkPreview -> Color(0xFF000000)
        else -> currentScheme.background
    }
    val previewSurface = uiState.customSurfaceColor?.let(::argbLongToThemeColor) ?: when {
        previewBackground == Color(0xFF000000) -> Color(0xFF0A0A0A)
        isDarkPreview -> Color(0xFF1B1B1F)
        uiState.themeMode == ThemeMode.LIGHT -> Color(0xFFFFFFFF)
        else -> currentScheme.surface.copy(alpha = 1f)
    }
    val previewPrimary = uiState.customPrimaryColor?.let(::argbLongToThemeColor) ?: currentScheme.primary
    val previewSecondary = uiState.customSecondaryColor?.let(::argbLongToThemeColor) ?: currentScheme.secondary
    val previewPrimaryContainer = uiState.customPrimaryColor?.let {
        lerp(previewSurface, previewPrimary, if (isDarkPreview) 0.36f else 0.18f)
    } ?: currentScheme.primaryContainer.copy(alpha = 1f)
    val previewSecondaryContainer = uiState.customSecondaryColor?.let {
        lerp(previewSurface, previewSecondary, if (isDarkPreview) 0.34f else 0.18f)
    } ?: currentScheme.secondaryContainer.copy(alpha = 1f)
    val onPreview = if (previewBackground.luminance() > 0.18f) {
        Color(0xFF000000)
    } else {
        Color(0xFFFFFFFF)
    }
    val onPreviewSurface = previewSurface.contentColorForPreview()
    val mutedPreview = if (previewBackground.luminance() > 0.45f) {
        Color(0xFF6B6259)
    } else {
        Color(0xFFC6C1BC)
    }
    val modeLabel = when (uiState.themeMode) {
        ThemeMode.SYSTEM -> strings.themeSystem
        ThemeMode.LIGHT -> strings.themeLight
        ThemeMode.DARK -> strings.themeDark
        ThemeMode.DYNAMIC -> strings.themeDynamic
    }
    val previewCardShape = RoundedCornerShape(20.dp)

    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .clip(previewCardShape),
        shape = previewCardShape,
        containerColor = previewBackground,
        border = CardDefaults.outlinedCardBorder()
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(MaterialTheme.shapes.large)
                    .background(previewSurface)
                    .padding(horizontal = 10.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Surface(
                    color = previewPrimaryContainer,
                    shape = CircleShape
                ) {
                    Icon(
                        Icons.AutoMirrored.Filled.MenuBook,
                        contentDescription = null,
                        modifier = Modifier.padding(8.dp).size(18.dp),
                        tint = previewPrimary
                    )
                }
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        strings.sectionReader,
                        color = onPreview,
                        style = MaterialTheme.typography.titleSmall
                    )
                    Text(
                        "12 / 18",
                        color = mutedPreview,
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                Surface(
                    color = previewPrimaryContainer,
                    shape = MaterialTheme.shapes.extraLarge
                ) {
                    Text(
                        modeLabel,
                        color = previewPrimary,
                        style = MaterialTheme.typography.labelMedium,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                    )
                }
            }
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(MaterialTheme.shapes.large)
                    .background(previewSurface)
                    .padding(horizontal = 12.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.92f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.18f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.16f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.82f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.14f))
                )
            }
            // surfaceContainer preview — nested card
            val previewSurfaceContainer = lerp(
                previewSurface, if (isDarkPreview) Color.Black else Color.White,
                if (isDarkPreview) 0.4f else 0.2f
            ).let { anchor -> lerp(anchor, previewSurface, if (isDarkPreview) 0.62f else 0.78f) }
            Surface(
                shape = MaterialTheme.shapes.medium,
                color = previewSurfaceContainer
            ) {
                Text(
                    strings.previewCard,
                    style = MaterialTheme.typography.bodySmall,
                    color = onPreviewSurface,
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                )
            }
            // error preview
            val previewError = if (isDarkPreview) Color(0xFFF2B8B5) else Color(0xFFBA1A1A)
            val previewErrorContainer = if (isDarkPreview) Color(0xFF93000A) else Color(0xFFFFDAD6)
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Surface(
                    shape = MaterialTheme.shapes.small,
                    color = previewErrorContainer
                ) {
                    Text(
                        "⚠",
                        style = MaterialTheme.typography.bodySmall,
                        color = previewError,
                        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                    )
                }
            }
            Surface(
                shape = MaterialTheme.shapes.large,
                color = previewSecondaryContainer
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 10.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        Icons.Default.Translate,
                        contentDescription = null,
                        tint = previewPrimary,
                        modifier = Modifier.size(18.dp)
                    )
                    Text(
                        strings.translationCard,
                        color = onPreviewSurface,
                        style = MaterialTheme.typography.bodyMedium,
                        modifier = Modifier.weight(1f)
                    )
                    Surface(
                        color = previewPrimaryContainer,
                        shape = MaterialTheme.shapes.extraLarge
                    ) {
                        Text(
                            "67%",
                            color = previewPrimary,
                            style = MaterialTheme.typography.labelMedium,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                        )
                    }
                }
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Surface(
                    modifier = Modifier.weight(1f),
                    shape = MaterialTheme.shapes.extraLarge,
                    color = previewSurface
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            Icons.Default.BookmarkBorder,
                            contentDescription = null,
                            tint = previewPrimary,
                            modifier = Modifier.size(18.dp)
                        )
                        Text(
                            strings.previewCard,
                            style = MaterialTheme.typography.bodySmall,
                            color = onPreviewSurface
                        )
                    }
                }
                FilledTonalButton(
                    onClick = {},
                    modifier = Modifier.height(36.dp),
                    colors = ButtonDefaults.filledTonalButtonColors(
                        containerColor = previewPrimary,
                        contentColor = if (previewPrimary.luminance() > 0.18f) Color.Black else Color.White
                    )
                ) {
                    Text(strings.previewButton)
                }
            }
        }
    }
}

// ──────────── Theme preset card ────────────

@Composable
private fun ThemePresetCard(
    preset: ThemePreset,
    label: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val preview = preset.previewColors()
    val borderColor = if (isSelected) MaterialTheme.colorScheme.primary else Color.Transparent
    val borderWidth = if (isSelected) 2.dp else 1.dp
    val borderC = if (isSelected) MaterialTheme.colorScheme.primary
    else MaterialTheme.colorScheme.outlineVariant

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(92.dp)
            .clip(MaterialTheme.shapes.medium)
            .clickable(onClick = onClick)
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .clip(MaterialTheme.shapes.medium)
                .background(preview.bg)
                .border(borderWidth, borderC, MaterialTheme.shapes.medium)
        ) {
            // Primary accent bar
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(16.dp)
                    .background(preview.primary)
                    .align(Alignment.TopCenter)
            )
            // Secondary dot
            Box(
                modifier = Modifier
                    .size(18.dp)
                    .clip(CircleShape)
                    .background(preview.secondary)
                    .align(Alignment.BottomEnd)
                    .padding(4.dp)
            )
            if (isSelected) {
                Icon(
                    Icons.Default.CheckCircle,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(20.dp).align(Alignment.Center)
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        Text(
            label,
            style = MaterialTheme.typography.labelSmall,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
            color = if (isSelected) MaterialTheme.colorScheme.primary
            else MaterialTheme.colorScheme.onSurface,
            maxLines = 1
        )
    }
}

// ──────────── Reader section ────────────

@Composable
private fun ReaderSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: ReaderSettingsPage,
    onPageChange: (ReaderSettingsPage) -> Unit,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit = {},
    onImportReaderStyle: () -> Unit = {},
    onExportReaderStyle: () -> Unit = {},
    onDeleteCustomFont: (String) -> Unit = {},
    onOpenTranslationSettings: () -> Unit,
    modifier: Modifier = Modifier
) {
    val eyeRestText = remember(uiState.appLanguage) { eyeRestSettingsText(uiState.appLanguage) }
    val readingGoalText = remember(uiState.appLanguage) { readingGoalSettingsText(uiState.appLanguage) }
    val streakPolicyText = remember(uiState.appLanguage) { streakPolicySettingsText(uiState.appLanguage) }
    val pageText = remember(uiState.appLanguage) { readerSettingsMapText(uiState.appLanguage) }
    val streakProgressText = remember(
        uiState.appLanguage,
        uiState.dailyReadingCurrentStreak,
        uiState.dailyReadingBestStreak,
        uiState.dailyReadingGraceDaysRemainingThisWeek
    ) {
        streakPolicyProgressText(
            language = uiState.appLanguage,
            currentStreak = uiState.dailyReadingCurrentStreak,
            bestStreak = uiState.dailyReadingBestStreak,
            graceDaysRemainingThisWeek = uiState.dailyReadingGraceDaysRemainingThisWeek
        )
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            ReaderSettingsPage.OVERVIEW -> {
                item {
                    val navItems = readerPageNavItems(pageText)
                    SettingsCard(title = pageText.areasTitle) {
                        navItems.forEachIndexed { index, navItem ->
                            SettingsNavItem(
                                icon = navItem.icon,
                                title = navItem.title,
                                description = null,
                                onClick = { onPageChange(navItem.page) }
                            )
                            if (index != navItems.lastIndex) {
                                HorizontalDivider(
                                    modifier = Modifier.padding(start = 56.dp),
                                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                                )
                            }
                        }
                    }
                }
            }
                ReaderSettingsPage.TEXT_APPEARANCE -> {
                item {
                    ReaderTextAppearancePreviewCard(
                        uiState = uiState,
                        strings = strings
                    )
                }
                item {
                    ReaderTextStyleCard(
                        uiState = uiState,
                        strings = strings,
                        styleText = readerStyleSettingsText(uiState.appLanguage),
                        viewModel = viewModel,
                        fontCatalogVersion = fontCatalogVersion,
                        onImportCustomFont = onImportCustomFont,
                        onImportReaderStyle = onImportReaderStyle,
                        onExportReaderStyle = onExportReaderStyle,
                        onDeleteCustomFont = onDeleteCustomFont
                    )
                }
            }
            ReaderSettingsPage.PAGE_LAYOUT -> {
                item {
                    ReaderPageLayoutPreviewCard(uiState = uiState, strings = strings)
                }
                item {
                    ReaderModeCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    ReaderImageLayoutCard(uiState = uiState, language = uiState.appLanguage, viewModel = viewModel)
                }
                item {
                    ReaderLandscapeSpreadCard(uiState = uiState, language = uiState.appLanguage, viewModel = viewModel)
                }
                item {
                    ReaderPreloadCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            ReaderSettingsPage.HEADERS -> {
                stickyHeader(key = "reader_headers_preview") {
                    Box(modifier = Modifier.padding(bottom = 10.dp)) {
                        ReaderHeaderFooterPreviewCard(uiState = uiState, language = uiState.appLanguage)
                    }
                }
                item {
                    ReaderHeaderFooterSettingsCard(
                        uiState = uiState,
                        language = uiState.appLanguage,
                        viewModel = viewModel
                    )
                }
            }
            ReaderSettingsPage.PAGING -> {
                item {
                    ReaderPagingPreviewCard(uiState = uiState, language = uiState.appLanguage)
                }
                item {
                    ReaderPagingSettingsCard(
                        uiState = uiState,
                        language = uiState.appLanguage,
                        viewModel = viewModel
                    )
                }
                item {
                    ReaderEffectsCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            ReaderSettingsPage.BEHAVIOR -> {
                item {
                    ReaderScreenCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    ReaderSelectionBehaviorCard(
                        uiState = uiState,
                        strings = strings,
                        onOpenTranslationSettings = onOpenTranslationSettings
                    )
                }
                item {
                    ReaderWellnessCard(
                        uiState = uiState,
                        eyeRestText = eyeRestText,
                        viewModel = viewModel
                    )
                }
                item {
                    ReaderProgressCard(
                        uiState = uiState,
                        readingGoalText = readingGoalText,
                        streakPolicyText = streakPolicyText,
                        streakProgressText = streakProgressText,
                        viewModel = viewModel
                    )
                }
            }
        }

        item { Spacer(Modifier.height(16.dp)) }
    }
}

private fun parseReaderSettingsPage(raw: String): ReaderSettingsPage = when (raw) {
    "STYLE" -> ReaderSettingsPage.TEXT_APPEARANCE
    "BEHAVIOR" -> ReaderSettingsPage.BEHAVIOR
    "PROGRESS" -> ReaderSettingsPage.BEHAVIOR
    "EFFECTS" -> ReaderSettingsPage.PAGING
    "WELLNESS" -> ReaderSettingsPage.BEHAVIOR
    else -> runCatching { ReaderSettingsPage.valueOf(raw) }.getOrDefault(ReaderSettingsPage.OVERVIEW)
}

private fun parseLibrarySettingsPage(raw: String): LibrarySettingsPage = when (raw) {
    "DISPLAY", "COVERS", "CANVAS", "THEME_STUDIO", "SORTING" -> LibrarySettingsPage.OVERVIEW
    else -> runCatching { LibrarySettingsPage.valueOf(raw) }.getOrDefault(LibrarySettingsPage.OVERVIEW)
}

private fun parseSyncSettingsPage(raw: String): SyncSettingsPage = when (raw) {
    "IMPORT_EXPORT", "BACKUP" -> SyncSettingsPage.BACKUP
    "ACCESS", "CACHE", "STORAGE", "POPUPS" -> SyncSettingsPage.OVERVIEW
    else -> runCatching { SyncSettingsPage.valueOf(raw) }.getOrDefault(SyncSettingsPage.OVERVIEW)
}

@Composable
private fun ReaderTextAppearancePreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    val align = when (uiState.textAlignment) {
        "left" -> Alignment.Start
        "right" -> Alignment.End
        "center" -> Alignment.CenterHorizontally
        else -> Alignment.Start
    }
    SettingsCard(title = strings.preview) {
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            MrComicCardSurface(
                shape = MaterialTheme.shapes.large,
                containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.45f)
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Text(
                        text = strings.readerTextPreviewTitle,
                        style = MaterialTheme.typography.titleMedium.copy(
                            fontWeight = if (uiState.textBold) FontWeight.Bold else FontWeight.SemiBold,
                            fontSize = (uiState.textFontSize + 2).sp
                        )
                    )
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalAlignment = align
                    ) {
                        Text(
                            text = strings.readerTextPreviewDescription,
                            style = MaterialTheme.typography.bodyMedium.copy(
                                fontSize = uiState.textFontSize.sp,
                                lineHeight = (uiState.textFontSize * uiState.textLineHeight).sp,
                                fontWeight = if (uiState.textBold) FontWeight.SemiBold else FontWeight.Normal
                            )
                        )
                    }
                }
            }
            Text(
                text = "${uiState.textFontFamily} · ${readerTextSchemeLabel(strings.languageCode, uiState.textColorScheme)} · ${readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), strings.languageCode)}",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun ReaderPageLayoutPreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    SettingsCard(
        title = when (strings.languageCode) {
            "en" -> "Layout preview"
            "ja" -> "レイアウトのプレビュー"
            "zh" -> "布局预览"
            "ko" -> "레이아웃 미리보기"
            else -> "Предпросмотр макета"
        }
    ) {
        val previewShape = MaterialTheme.shapes.large
        MrComicCardSurface(
            modifier = Modifier
                .fillMaxWidth(),
            shape = previewShape,
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f)
        ) {
            Column(
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        when (uiState.readingMode) {
                            ReadingMode.DUAL_PAGE -> when (strings.languageCode) {
                                "en" -> "Two-page spread"
                                "ja" -> "見開き"
                                "zh" -> "双页展开"
                                "ko" -> "양면 펼침"
                                else -> "Разворот"
                            }
                            else -> readerModeSettingsLabel(strings.languageCode, uiState.readingMode)
                        },
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold
                    )
                    MrComicPill(
                        containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f),
                        contentColor = MaterialTheme.colorScheme.primary,
                        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 5.dp)
                    ) {
                        Text(
                            text = if (uiState.readerLandscapeSpreadEnabled) {
                                when (strings.languageCode) {
                                    "en" -> "Landscape spread on"
                                    "ja" -> "横見開きオン"
                                    "zh" -> "横屏展开开启"
                                    "ko" -> "가로 펼침 켜짐"
                                    else -> "Разворот в ландшафте включён"
                                }
                            } else {
                                when (strings.languageCode) {
                                    "en" -> "Single page only"
                                    "ja" -> "単ページ固定"
                                    "zh" -> "仅单页"
                                    "ko" -> "단일 페이지"
                                    else -> "Только одна страница"
                                }
                            },
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                MrComicProgressLine(
                    progress = { (uiState.readerPreloadPages - 2).toFloat() / 6f },
                    modifier = Modifier.fillMaxWidth(),
                    trackColor = MaterialTheme.colorScheme.surface,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = when (strings.languageCode) {
                        "en" -> "Preload: ${uiState.readerPreloadPages} pages nearby. Text readers stay calm, image readers can open as LTR, RTL, or webtoon."
                        "ja" -> "プリロード: 近傍 ${uiState.readerPreloadPages} ページ。テキストは落ち着いたまま、画像リーダーは LTR / RTL / webtoon を切り替えられます。"
                        "zh" -> "预加载：附近 ${uiState.readerPreloadPages} 页。文本阅读保持稳定，图片阅读可切换 LTR / RTL / webtoon。"
                        "ko" -> "프리로드: 주변 ${uiState.readerPreloadPages} 페이지. 텍스트 리더는 차분하게 유지되고, 이미지 리더는 LTR / RTL / 웹툰을 전환할 수 있습니다."
                        else -> "Прелоад: рядом ${uiState.readerPreloadPages} страниц. Текстовый ридер остаётся спокойным, а графический можно открыть как LTR, RTL или webtoon."
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun ReaderLandscapeSpreadCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(
        title = when (language) {
            "en" -> "Landscape spread"
            "ja" -> "横向き見開き"
            "zh" -> "横屏展开"
            "ko" -> "가로 펼침"
            else -> "Ландшафтный разворот"
        }
    ) {
        SwitchRow(
            title = when (language) {
                "en" -> "Use two-page spread on wide screens"
                "ja" -> "広い画面では見開きを使う"
                "zh" -> "在宽屏上使用双页展开"
                "ko" -> "넓은 화면에서 양면 펼침 사용"
                else -> "Использовать разворот на широком экране"
            },
            subtitle = when (language) {
                "en" -> "Works for image-based page reading. Text books stay portrait and webtoon ignores this."
                "ja" -> "画像ベースのページ読みで使われます。テキストは縦向きのまま、webtoon では無視されます。"
                "zh" -> "仅用于图片型分页阅读。文本书籍保持竖屏，webtoon 会忽略这个开关。"
                "ko" -> "이미지 기반 페이지 읽기에서만 동작합니다. 텍스트 책은 세로 고정이고 웹툰은 이 스위치를 무시합니다."
                else -> "Работает для графического постраничного чтения. Текстовые книги остаются в портрете, а webtoon игнорирует этот переключатель."
            },
            checked = uiState.readerLandscapeSpreadEnabled,
            onCheckedChange = viewModel::setReaderLandscapeSpreadEnabled
        )
    }
}

// ReaderPickerOption extracted to SettingsComponents.kt

private fun readerInfoSlotLabel(language: String, slot: String): String = when (ReaderInfoSlot.fromStored(slot)) {
    ReaderInfoSlot.NONE -> when (language) {
        "en" -> "None"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "Нет"
    }
    ReaderInfoSlot.BOOK_TITLE -> when (language) {
        "en" -> "Book title"
        "ja" -> "本のタイトル"
        "zh" -> "书名"
        "ko" -> "책 제목"
        else -> "Название книги"
    }
    ReaderInfoSlot.CHAPTER_TITLE -> when (language) {
        "en" -> "Chapter title"
        "ja" -> "章タイトル"
        "zh" -> "章节标题"
        "ko" -> "챕터 제목"
        else -> "Название главы"
    }
    ReaderInfoSlot.TIME -> when (language) {
        "en" -> "Time"
        "ja" -> "時刻"
        "zh" -> "时间"
        "ko" -> "시간"
        else -> "Время"
    }
    ReaderInfoSlot.PROGRESS -> when (language) {
        "en" -> "Progress"
        "ja" -> "進捗"
        "zh" -> "进度"
        "ko" -> "진행도"
        else -> "Прогресс"
    }
    ReaderInfoSlot.PAGE -> when (language) {
        "en" -> "Pages"
        "ja" -> "ページ"
        "zh" -> "页数"
        "ko" -> "페이지"
        else -> "Страницы"
    }
}

private fun readerTapZoneActionLabel(language: String, action: String): String = when (ReaderTapZoneAction.fromStored(action)) {
    ReaderTapZoneAction.PREVIOUS_PAGE -> when (language) {
        "en" -> "Back"
        "ja" -> "戻る"
        "zh" -> "返回"
        "ko" -> "뒤로"
        else -> "Назад"
    }
    ReaderTapZoneAction.MENU,
    ReaderTapZoneAction.TOGGLE_UI -> when (language) {
        "en" -> "Menu"
        "ja" -> "メニュー"
        "zh" -> "菜单"
        "ko" -> "메뉴"
        else -> "Меню"
    }
    ReaderTapZoneAction.NEXT_PAGE -> when (language) {
        "en" -> "Forward"
        "ja" -> "進む"
        "zh" -> "前进"
        "ko" -> "앞으로"
        else -> "Вперёд"
    }
    ReaderTapZoneAction.NONE -> when (language) {
        "en" -> "No action"
        "ja" -> "動作なし"
        "zh" -> "无动作"
        "ko" -> "동작 없음"
        else -> "Без действия"
    }
    ReaderTapZoneAction.PREVIOUS_CHAPTER -> when (language) {
        "en" -> "Previous chapter"
        "ja" -> "前の章"
        "zh" -> "上一章"
        "ko" -> "이전 장"
        else -> "Предыдущая глава"
    }
    ReaderTapZoneAction.NEXT_CHAPTER -> when (language) {
        "en" -> "Next chapter"
        "ja" -> "次の章"
        "zh" -> "下一章"
        "ko" -> "다음 장"
        else -> "Следующая глава"
    }
}

private fun readerInfoSlotPreviewValue(language: String, slot: String): String = when (ReaderInfoSlot.fromStored(slot)) {
    ReaderInfoSlot.NONE -> ""
    ReaderInfoSlot.BOOK_TITLE -> if (language == "en") "Book title" else "Название книги"
    ReaderInfoSlot.CHAPTER_TITLE -> if (language == "en") "Chapter 3" else "Глава 3"
    ReaderInfoSlot.TIME -> "12:48"
    ReaderInfoSlot.PROGRESS -> "78%"
    ReaderInfoSlot.PAGE -> "124 / 320"
}

private fun readerHeaderFooterPickerOptions(language: String): List<ReaderPickerOption> = listOf(
    ReaderPickerOption(ReaderInfoSlot.NONE.name, readerInfoSlotLabel(language, ReaderInfoSlot.NONE.name)),
    ReaderPickerOption(ReaderInfoSlot.BOOK_TITLE.name, readerInfoSlotLabel(language, ReaderInfoSlot.BOOK_TITLE.name)),
    ReaderPickerOption(ReaderInfoSlot.CHAPTER_TITLE.name, readerInfoSlotLabel(language, ReaderInfoSlot.CHAPTER_TITLE.name)),
    ReaderPickerOption(ReaderInfoSlot.TIME.name, readerInfoSlotLabel(language, ReaderInfoSlot.TIME.name)),
    ReaderPickerOption(ReaderInfoSlot.PROGRESS.name, readerInfoSlotLabel(language, ReaderInfoSlot.PROGRESS.name)),
    ReaderPickerOption(ReaderInfoSlot.PAGE.name, readerInfoSlotLabel(language, ReaderInfoSlot.PAGE.name))
)

private fun readerTapZonePickerOptions(language: String): List<ReaderPickerOption> = listOf(
    ReaderPickerOption(ReaderTapZoneAction.PREVIOUS_PAGE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.PREVIOUS_PAGE.name)),
    ReaderPickerOption(ReaderTapZoneAction.MENU.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.MENU.name)),
    ReaderPickerOption(ReaderTapZoneAction.NEXT_PAGE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NEXT_PAGE.name)),
    ReaderPickerOption(ReaderTapZoneAction.PREVIOUS_CHAPTER.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.PREVIOUS_CHAPTER.name)),
    ReaderPickerOption(ReaderTapZoneAction.NEXT_CHAPTER.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NEXT_CHAPTER.name)),
    ReaderPickerOption(ReaderTapZoneAction.NONE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NONE.name))
)

@Composable
private fun ReaderHeaderFooterPreviewCard(
    uiState: SettingsUiState,
    language: String
) {
    SettingsCard(
        title = when (language) {
            "en" -> "Compact header and footer preview"
            "ja" -> "ヘッダーとフッターのプレビュー"
            "zh" -> "页眉页脚预览"
            "ko" -> "헤더·푸터 미리보기"
            else -> "Компактный preview колонтитулов"
        }
    ) {
        MrComicCardSurface(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f)
        ) {
            Column(
                modifier = Modifier.padding(
                    start = uiState.readerHeaderFooterLeftPadding.dp,
                    end = uiState.readerHeaderFooterRightPadding.dp,
                    top = uiState.readerHeaderFooterVerticalPadding.dp + 4.dp,
                    bottom = uiState.readerHeaderFooterVerticalPadding.dp + 4.dp
                )
            ) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderLeftSlot),
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderCenterSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderRightSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.End,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                Spacer(Modifier.height(30.dp))
                HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
                Spacer(Modifier.height(10.dp))
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterLeftSlot),
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterCenterSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterRightSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.End,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

@Composable
private fun ReaderHeaderFooterSettingsCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var pickerTarget by rememberSaveable { mutableStateOf<String?>(null) }
    val options = readerHeaderFooterPickerOptions(language)
    SettingsCard(
        title = when (language) {
            "en" -> "Header and footer slots"
            "ja" -> "ヘッダーとフッターのスロット"
            "zh" -> "页眉页脚槽位"
            "ko" -> "헤더·푸터 슬롯"
            else -> "Слоты колонтитулов"
        }
    ) {
        Text(
            when (language) {
                "en" -> "Header"
                "ja" -> "ヘッダー"
                "zh" -> "页眉"
                "ko" -> "헤더"
                else -> "Верхний колонтитул"
            },
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Left"
                "ja" -> "左"
                "zh" -> "左"
                "ko" -> "왼쪽"
                else -> "Слева"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderLeftSlot),
            onClick = { pickerTarget = "header_left" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Center"
                "ja" -> "中央"
                "zh" -> "中间"
                "ko" -> "가운데"
                else -> "По центру"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderCenterSlot),
            onClick = { pickerTarget = "header_center" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Right"
                "ja" -> "右"
                "zh" -> "右"
                "ko" -> "오른쪽"
                else -> "Справа"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderRightSlot),
            onClick = { pickerTarget = "header_right" }
        )
        Spacer(Modifier.height(4.dp))
        Text(
            when (language) {
                "en" -> "Footer"
                "ja" -> "フッター"
                "zh" -> "页脚"
                "ko" -> "푸터"
                else -> "Нижний колонтитул"
            },
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Left"
                "ja" -> "左"
                "zh" -> "左"
                "ko" -> "왼쪽"
                else -> "Слева"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterLeftSlot),
            onClick = { pickerTarget = "footer_left" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Center"
                "ja" -> "中央"
                "zh" -> "中间"
                "ko" -> "가운데"
                else -> "По центру"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterCenterSlot),
            onClick = { pickerTarget = "footer_center" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Right"
                "ja" -> "右"
                "zh" -> "右"
                "ko" -> "오른쪽"
                else -> "Справа"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterRightSlot),
            onClick = { pickerTarget = "footer_right" }
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Font size"
                "ja" -> "文字サイズ"
                "zh" -> "字体大小"
                "ko" -> "글꼴 크기"
                else -> "Размер шрифта"
            },
            valueLabel = "${uiState.readerHeaderFooterFontSize} sp",
            value = uiState.readerHeaderFooterFontSize.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterFontSize(it.toInt()) },
            valueRange = 10f..20f,
            steps = 9
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Vertical padding"
                "ja" -> "上下余白"
                "zh" -> "垂直边距"
                "ko" -> "세로 여백"
                else -> "Вертикальные поля"
            },
            valueLabel = "${uiState.readerHeaderFooterVerticalPadding} dp",
            value = uiState.readerHeaderFooterVerticalPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterVerticalPadding(it.toInt()) },
            valueRange = 4f..20f,
            steps = 7
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Left inset"
                "ja" -> "左余白"
                "zh" -> "左边距"
                "ko" -> "왼쪽 여백"
                else -> "Левое поле"
            },
            valueLabel = "${uiState.readerHeaderFooterLeftPadding} dp",
            value = uiState.readerHeaderFooterLeftPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterLeftPadding(it.toInt()) },
            valueRange = 8f..32f,
            steps = 11
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Right inset"
                "ja" -> "右余白"
                "zh" -> "右边距"
                "ko" -> "오른쪽 여백"
                else -> "Правое поле"
            },
            valueLabel = "${uiState.readerHeaderFooterRightPadding} dp",
            value = uiState.readerHeaderFooterRightPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterRightPadding(it.toInt()) },
            valueRange = 8f..32f,
            steps = 11
        )
    }

    pickerTarget?.let { target ->
        SettingsPickerDialog(
            title = readerChromeSlotPickerTitle(language, target),
            options = options,
            selectedValue = when (target) {
                "header_left" -> uiState.readerHeaderLeftSlot
                "header_center" -> uiState.readerHeaderCenterSlot
                "header_right" -> uiState.readerHeaderRightSlot
                "footer_left" -> uiState.readerFooterLeftSlot
                "footer_center" -> uiState.readerFooterCenterSlot
                else -> uiState.readerFooterRightSlot
            },
            onDismiss = { pickerTarget = null },
            onSelect = { selected ->
                when (target) {
                    "header_left" -> viewModel.setReaderHeaderSlot("LEFT", selected)
                    "header_center" -> viewModel.setReaderHeaderSlot("CENTER", selected)
                    "header_right" -> viewModel.setReaderHeaderSlot("RIGHT", selected)
                    "footer_left" -> viewModel.setReaderFooterSlot("LEFT", selected)
                    "footer_center" -> viewModel.setReaderFooterSlot("CENTER", selected)
                    else -> viewModel.setReaderFooterSlot("RIGHT", selected)
                }
                pickerTarget = null
            }
        )
    }
}

@Composable
private fun ReaderPagingPreviewCard(
    uiState: SettingsUiState,
    language: String
) {
    val layout = resolveReaderTapZoneLayout(
        mode = ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode),
        readingMode = uiState.readingMode,
        swapped = uiState.readerTapZoneSwap,
        leftAction = uiState.readerTapZoneLeftAction,
        centerAction = uiState.readerTapZoneCenterAction,
        rightAction = uiState.readerTapZoneRightAction
    )
    SettingsCard(
        title = when (language) {
            "en" -> "Tap zones preview"
            "ja" -> "タップゾーンのプレビュー"
            "zh" -> "点击区域预览"
            "ko" -> "탭 영역 미리보기"
            else -> "Preview зон листания"
        }
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .height(120.dp)
                .clip(MaterialTheme.shapes.large)
                .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f))
        ) {
            listOf(
                readerTapZoneActionLabel(language, layout.left.name),
                readerTapZoneActionLabel(language, layout.center.name),
                readerTapZoneActionLabel(language, layout.right.name)
            ).forEachIndexed { index, label ->
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .background(
                            if (index == 1) MaterialTheme.colorScheme.primary.copy(alpha = 0.10f) else Color.Transparent
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        style = MaterialTheme.typography.labelLarge,
                        color = if (index == 1) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                    )
                }
                if (index != 2) {
                    VerticalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
                }
            }
        }
    }
}

@Composable
private fun ReaderPagingSettingsCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var pickerTarget by rememberSaveable { mutableStateOf<String?>(null) }
    SettingsCard(
        title = when (language) {
            "en" -> "Tap zones and interaction"
            "ja" -> "タップゾーンと操作"
            "zh" -> "点击区域与交互"
            "ko" -> "탭 영역과 상호작용"
            else -> "Зоны нажатия и взаимодействие"
        }
    ) {
        ChipRow {
            listOf(
                ReaderTapZoneMode.SIMPLE to when (language) {
                    "en" -> "Simple"
                    "ja" -> "シンプル"
                    "zh" -> "简单"
                    "ko" -> "단순"
                    else -> "Простой"
                },
                ReaderTapZoneMode.CUSTOM to when (language) {
                    "en" -> "Custom"
                    "ja" -> "カスタム"
                    "zh" -> "自定义"
                    "ko" -> "사용자 지정"
                    else -> "Настраиваемый"
                }
            ).forEach { (mode, label) ->
                MrComicFilterChip(
                    selected = ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode) == mode,
                    onClick = { viewModel.setReaderTapZoneMode(mode.name) },
                    label = { Text(label) }
                )
            }
        }
        SwitchRow(
            title = when (language) {
                "en" -> "Swap page zones"
                "ja" -> "ページ送りゾーンを入れ替える"
                "zh" -> "交换翻页区域"
                "ko" -> "페이지 넘김 영역 바꾸기"
                else -> "Поменять области перелистывания"
            },
            subtitle = when (language) {
                "en" -> "Useful when you want left and right paging behavior inverted in the simple layout."
                "ja" -> "シンプル構成で左右のページ送りを入れ替えたいときに使います。"
                "zh" -> "当你想在简单布局里反转左右翻页逻辑时使用。"
                "ko" -> "단순 레이아웃에서 좌우 페이지 넘김 방향을 바꾸고 싶을 때 사용합니다."
                else -> "Полезно, если в простой схеме хочется инвертировать левую и правую зону перелистывания."
            },
            checked = uiState.readerTapZoneSwap,
            onCheckedChange = viewModel::setReaderTapZoneSwap
        )
        SwitchRow(
            title = when (language) {
                "en" -> "Volume buttons paging"
                "ja" -> "音量ボタンでページ送り"
                "zh" -> "使用音量键翻页"
                "ko" -> "볼륨 버튼으로 넘기기"
                else -> "Листание кнопками громкости"
            },
            subtitle = when (language) {
                "en" -> "Volume up goes to the previous page, volume down goes forward."
                "ja" -> "音量アップで前のページ、音量ダウンで次のページに進みます。"
                "zh" -> "音量加返回上一页，音量减进入下一页。"
                "ko" -> "볼륨 업은 이전 페이지, 볼륨 다운은 다음 페이지로 이동합니다."
                else -> "Кнопка громкости вверх ведёт на предыдущую страницу, вниз — на следующую."
            },
            checked = uiState.readerVolumeKeysPaging,
            onCheckedChange = viewModel::setReaderVolumeKeysPaging
        )
        if (ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode) == ReaderTapZoneMode.CUSTOM) {
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Left zone"
                    "ja" -> "左ゾーン"
                    "zh" -> "左侧区域"
                    "ko" -> "왼쪽 영역"
                    else -> "Левая зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneLeftAction),
                onClick = { pickerTarget = "left" }
            )
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Center zone"
                    "ja" -> "中央ゾーン"
                    "zh" -> "中间区域"
                    "ko" -> "가운데 영역"
                    else -> "Центральная зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneCenterAction),
                onClick = { pickerTarget = "center" }
            )
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Right zone"
                    "ja" -> "右ゾーン"
                    "zh" -> "右侧区域"
                    "ko" -> "오른쪽 영역"
                    else -> "Правая зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneRightAction),
                onClick = { pickerTarget = "right" }
            )
        }
    }

    pickerTarget?.let { target ->
        SettingsPickerDialog(
            title = when (target) {
                "left" -> if (language == "en") "Left zone action" else "Действие левой зоны"
                "center" -> if (language == "en") "Center zone action" else "Действие центральной зоны"
                else -> if (language == "en") "Right zone action" else "Действие правой зоны"
            },
            options = readerTapZonePickerOptions(language),
            selectedValue = when (target) {
                "left" -> uiState.readerTapZoneLeftAction
                "center" -> uiState.readerTapZoneCenterAction
                else -> uiState.readerTapZoneRightAction
            },
            onDismiss = { pickerTarget = null },
            onSelect = { selected ->
                viewModel.setReaderTapZoneAction(target.uppercase(), selected)
                pickerTarget = null
            }
        )
    }
}

private fun pageTitleForReader(
    page: ReaderSettingsPage,
    text: ReaderSettingsMapText
): String = when (page) {
    ReaderSettingsPage.OVERVIEW -> text.overviewTitle
    ReaderSettingsPage.TEXT_APPEARANCE -> text.textAppearanceTitle
    ReaderSettingsPage.PAGE_LAYOUT -> text.pageLayoutTitle
    ReaderSettingsPage.HEADERS -> text.headersTitle
    ReaderSettingsPage.PAGING -> text.pagingTitle
    ReaderSettingsPage.BEHAVIOR -> text.behaviorTitle
}

private fun pageDescriptionForReader(
    page: ReaderSettingsPage,
    text: ReaderSettingsMapText
): String = when (page) {
    ReaderSettingsPage.OVERVIEW -> text.overviewDescription
    ReaderSettingsPage.TEXT_APPEARANCE -> text.textAppearanceDescription
    ReaderSettingsPage.PAGE_LAYOUT -> text.pageLayoutDescription
    ReaderSettingsPage.HEADERS -> text.headersDescription
    ReaderSettingsPage.PAGING -> text.pagingDescription
    ReaderSettingsPage.BEHAVIOR -> text.behaviorDescription
}

private fun readerPageNavItems(
    text: ReaderSettingsMapText
): List<ReaderSettingsNavItem> = listOf(
    ReaderSettingsNavItem(
        page = ReaderSettingsPage.TEXT_APPEARANCE,
        title = text.textAppearanceTitle,
        description = text.textAppearanceDescription,
        icon = Icons.Default.FormatSize
    ),
    ReaderSettingsNavItem(
        page = ReaderSettingsPage.PAGE_LAYOUT,
        title = text.pageLayoutTitle,
        description = text.pageLayoutDescription,
        icon = Icons.AutoMirrored.Filled.ViewList
    ),
    ReaderSettingsNavItem(
        page = ReaderSettingsPage.HEADERS,
        title = text.headersTitle,
        description = text.headersDescription,
        icon = Icons.AutoMirrored.Filled.TextSnippet
    ),
    ReaderSettingsNavItem(
        page = ReaderSettingsPage.PAGING,
        title = text.pagingTitle,
        description = text.pagingDescription,
        icon = Icons.Default.TouchApp
    ),
    ReaderSettingsNavItem(
        page = ReaderSettingsPage.BEHAVIOR,
        title = text.behaviorTitle,
        description = text.behaviorDescription,
        icon = Icons.Default.Tune
    )
)

private data class ReaderSettingsNavItem(
    val page: ReaderSettingsPage,
    val title: String,
    val description: String,
    val icon: ImageVector
)

@Composable
private fun ReaderPresetsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.readerPresetsCard) {
        val activePreset = ReadingPreset.fromStored(uiState.readerPreset)
        val presets = listOf(
            ReadingPreset.CUSTOM to strings.readerPresetCustom,
        ) + io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().map { preset ->
            preset to readingPresetQuickLabel(strings, preset)
        }
        ChipRow {
            presets.forEach { (preset, label) ->
                MrComicFilterChip(
                    selected = activePreset == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        if (activePreset != ReadingPreset.CUSTOM) {
            val style = activePreset.style()
            Spacer(Modifier.height(4.dp))
            Text(
                when (style.pageAnimation) {
                    "FADE" -> strings.animFade
                    "NONE" -> strings.animNone
                    else -> strings.animSlide
                },
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
    }
}

@Composable
private fun ReaderModeCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.readingModeCard) {
        ChipRow {
            MrComicFilterChip(
                selected = uiState.readingMode == ReadingMode.PAGE_LTR,
                onClick = { viewModel.setReadingMode(ReadingMode.PAGE_LTR) },
                label = { Text(readerModeSettingsLabel(strings.languageCode, ReadingMode.PAGE_LTR)) }
            )
            MrComicFilterChip(
                selected = uiState.readingMode == ReadingMode.PAGE_RTL,
                onClick = { viewModel.setReadingMode(ReadingMode.PAGE_RTL) },
                label = { Text(readerModeSettingsLabel(strings.languageCode, ReadingMode.PAGE_RTL)) }
            )
            MrComicFilterChip(
                selected = uiState.readingMode == ReadingMode.WEBTOON,
                onClick = { viewModel.setReadingMode(ReadingMode.WEBTOON) },
                label = { Text(readerModeSettingsLabel(strings.languageCode, ReadingMode.WEBTOON)) }
            )
        }
    }
}

@Composable
private fun ReaderImageLayoutCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = readerImageLayoutCardTitle(language)) {
        Text(
            readerImageLayoutCardHint(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText(readerImageScaleModeTitle(language))
        ChipRow {
            ReaderImageScaleMode.entries.forEach { mode ->
                MrComicFilterChip(
                    selected = uiState.readerImageScaleMode == mode.storedValue,
                    onClick = { viewModel.setReaderImageScaleMode(mode.storedValue) },
                    label = { Text(readerImageScaleModeLabel(mode, language)) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = readerMarginCropHorizontalTitle(language),
            valueLabel = readerMarginCropPercentLabel(uiState.readerImageMarginCropHorizontal),
            value = uiState.readerImageMarginCropHorizontal,
            onValueChange = viewModel::setReaderImageMarginCropHorizontal,
            valueRange = 0f..0.22f,
            steps = 10
        )
        Spacer(Modifier.height(8.dp))
        SettingsSliderTile(
            title = readerMarginCropVerticalTitle(language),
            valueLabel = readerMarginCropPercentLabel(uiState.readerImageMarginCropVertical),
            value = uiState.readerImageMarginCropVertical,
            onValueChange = viewModel::setReaderImageMarginCropVertical,
            valueRange = 0f..0.22f,
            steps = 10
        )
    }
}

private fun readerImageLayoutCardTitle(language: String): String = when (language) {
    "en" -> "Image layout"
    "ja" -> "画像レイアウト"
    "zh" -> "图像布局"
    "ko" -> "이미지 레이아웃"
    else -> "Макет изображения"
}

private fun readerImageLayoutCardHint(language: String): String = when (language) {
    "en" -> "Controls how PDF and DjVu pages fit the screen and how aggressively outer margins are cropped."
    "ja" -> "PDF と DjVu のページを画面にどう合わせるか、外側の余白をどこまで切り詰めるかを調整します。"
    "zh" -> "控制 PDF 和 DjVu 页面如何贴合屏幕，以及裁掉多少外边距。"
    "ko" -> "PDF와 DjVu 페이지를 화면에 맞추는 방식과 바깥 여백을 얼마나 자를지 조절합니다."
    else -> "Управляет тем, как страницы PDF и DjVu вписываются в экран и насколько сильно обрезаются внешние поля."
}

private fun readerImageScaleModeTitle(language: String): String = when (language) {
    "en" -> "Scale mode"
    "ja" -> "拡大モード"
    "zh" -> "缩放模式"
    "ko" -> "확대 모드"
    else -> "Режим масштаба"
}

private fun readerImageScaleModeLabel(mode: ReaderImageScaleMode, language: String): String = when (mode) {
    ReaderImageScaleMode.FIT_WIDTH -> when (language) {
        "en" -> "Fit width"
        "ja" -> "幅に合わせる"
        "zh" -> "适合宽度"
        "ko" -> "너비 맞춤"
        else -> "По ширине"
    }
    ReaderImageScaleMode.FIT_HEIGHT -> when (language) {
        "en" -> "Fit height"
        "ja" -> "高さに合わせる"
        "zh" -> "适合高度"
        "ko" -> "높이 맞춤"
        else -> "По высоте"
    }
    ReaderImageScaleMode.REAL_SIZE -> when (language) {
        "en" -> "Real size"
        "ja" -> "実寸"
        "zh" -> "实际大小"
        "ko" -> "실제 크기"
        else -> "Реальный размер"
    }
}

private fun readerMarginCropHorizontalTitle(language: String): String = when (language) {
    "en" -> "Horizontal crop"
    "ja" -> "左右のトリミング"
    "zh" -> "水平裁边"
    "ko" -> "가로 여백 자르기"
    else -> "Обрезка по горизонтали"
}

private fun readerMarginCropVerticalTitle(language: String): String = when (language) {
    "en" -> "Vertical crop"
    "ja" -> "上下のトリミング"
    "zh" -> "垂直裁边"
    "ko" -> "세로 여백 자르기"
    else -> "Обрезка по вертикали"
}

private fun readerMarginCropPercentLabel(value: Float): String =
    "${(value.coerceIn(0f, 0.22f) * 100f).roundToInt()}%"

@Composable
private fun ReaderScreenCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val behaviorText = remember(strings.languageCode) { readerBehaviorText(strings.languageCode) }
    val sliderValue = if (uiState.brightness < 0f) 0f else uiState.brightness.coerceIn(0.05f, 1f)
    SettingsCard(title = strings.readerScreenCard) {
        SettingsSliderTile(
            title = strings.brightnessLabel,
            valueLabel = if (uiState.brightness < 0f) strings.themeSystem else "${(sliderValue * 100).toInt()}%",
            value = sliderValue,
            onValueChange = viewModel::setBrightness,
            valueRange = 0f..1f
        )
        Spacer(Modifier.height(4.dp))
        LabelText(
            "${behaviorText.screenTimeoutTitle}: " +
                readerScreenTimeoutLabel(uiState.readerScreenTimeoutMode, strings.languageCode)
        )
        ChipRow {
            ReaderScreenTimeoutMode.entries.forEach { mode ->
                MrComicFilterChip(
                    selected = uiState.readerScreenTimeoutMode == mode.storedValue,
                    onClick = { viewModel.setReaderScreenTimeoutMode(mode.storedValue) },
                    label = { Text(readerScreenTimeoutLabel(mode.storedValue, strings.languageCode)) }
                )
            }
        }
        SwitchRow(
            title = strings.keepScreenOn,
            subtitle = behaviorText.keepScreenOnSubtitle,
            checked = uiState.keepScreenOnInReader,
            onCheckedChange = viewModel::setKeepScreenOnInReader
        )
        SwitchRow(
            title = strings.fullscreenMode,
            subtitle = behaviorText.immersiveSubtitle,
            checked = uiState.readerImmersiveMode,
            onCheckedChange = viewModel::setReaderImmersiveMode
        )
        Spacer(Modifier.height(10.dp))
        Text(
            text = readerToolbarSectionTitle(strings.languageCode),
            style = MaterialTheme.typography.titleSmall,
            fontWeight = FontWeight.SemiBold
        )
        Spacer(Modifier.height(6.dp))
        val combinedReaderToolbarOpacity = ((uiState.readerTopToolbarOpacity + uiState.readerBottomToolbarOpacity) * 0.5f)
            .coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1f)
        SettingsSliderTile(
            title = readerToolbarOpacityTitle(strings.languageCode),
            valueLabel = "${(combinedReaderToolbarOpacity * 100).toInt()}%",
            value = combinedReaderToolbarOpacity,
            onValueChange = viewModel::setReaderToolbarOpacity,
            valueRange = SETTINGS_READER_MIN_TOOLBAR_OPACITY..1f,
            steps = 10
        )
        Spacer(Modifier.height(8.dp))
        SettingsSliderTile(
            title = readerToolbarBlurTitle(strings.languageCode),
            valueLabel = "${(uiState.readerToolbarBlur * 100).toInt()}%",
            value = uiState.readerToolbarBlur,
            onValueChange = viewModel::setReaderToolbarBlur,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(8.dp))
        SwitchRow(
            title = readerToolbarAutoHideTitle(strings.languageCode),
            subtitle = readerToolbarAutoHideSubtitle(strings.languageCode),
            checked = uiState.readerChromeAutoHide,
            onCheckedChange = viewModel::setReaderChromeAutoHide
        )
    }
}

private fun readerToolbarSectionTitle(language: String): String = when (language) {
    "en" -> "Panels"
    "ja" -> "パネル"
    "zh" -> "面板"
    "ko" -> "패널"
    else -> "Панели"
}

private fun readerToolbarOpacityTitle(language: String): String = when (language) {
    "en" -> "Panel opacity"
    "ja" -> "パネルの不透明度"
    "zh" -> "面板不透明度"
    "ko" -> "패널 불투명도"
    else -> "Непрозрачность панелей"
}

private fun readerToolbarBlurTitle(language: String): String = when (language) {
    "en" -> "Panel blur"
    "ja" -> "パネルのブラー"
    "zh" -> "面板模糊"
    "ko" -> "패널 블러"
    else -> "Блюр панелей"
}

private fun readerToolbarAutoHideTitle(language: String): String = when (language) {
    "en" -> "Auto-hide toolbars"
    "ja" -> "ツールバーを自動で隠す"
    "zh" -> "自动隐藏工具栏"
    "ko" -> "툴바 자동 숨김"
    else -> "Автоскрытие тулбаров"
}

private fun readerToolbarAutoHideSubtitle(language: String): String = when (language) {
    "en" -> "After a short pause, the top and bottom bars hide on their own."
    "ja" -> "少し待つと、上下のツールバーが自動で隠れます。"
    "zh" -> "短暂停留后，顶部和底部工具栏会自动隐藏。"
    "ko" -> "잠시 기다리면 상단과 하단 툴바가 자동으로 숨겨집니다."
    else -> "После короткой паузы верхний и нижний тулбары скрываются сами."
}

private data class ReaderBehaviorText(
    val keepScreenOnSubtitle: String,
    val immersiveSubtitle: String,
    val screenTimeoutTitle: String,
    val selectionCardTitle: String,
    val selectionHint: String,
    val selectionRouteLabel: String,
    val translationLinkTitle: String,
    val translationLinkDescription: String
)

private fun readerBehaviorText(language: String): ReaderBehaviorText = when (language) {
    "ja" -> ReaderBehaviorText(
        keepScreenOnSubtitle = "読書中は画面を消さずにセッションを保ちます。",
        immersiveSubtitle = "読書中はシステムバーを静かに隠します。",
        screenTimeoutTitle = "画面を消すまで",
        selectionCardTitle = "選択と翻訳",
        selectionHint = "選択したテキストの翻訳先や説明の出し方を、読書セッション向けにまとめます。",
        selectionRouteLabel = "現在のルート",
        translationLinkTitle = "翻訳設定を開く",
        translationLinkDescription = "言語、OCR、オーバーレイなどの詳細設定へ移動します。"
    )
    "zh" -> ReaderBehaviorText(
        keepScreenOnSubtitle = "阅读时保持屏幕常亮，不打断当前会话。",
        immersiveSubtitle = "阅读时尽量隐藏系统栏，让页面更安静。",
        screenTimeoutTitle = "息屏时间",
        selectionCardTitle = "划词与翻译",
        selectionHint = "这里放的是阅读中选中文本的即时行为，语言与 OCR 细节仍在翻译设置里。",
        selectionRouteLabel = "当前路径",
        translationLinkTitle = "打开翻译设置",
        translationLinkDescription = "继续调整语言、OCR 和覆盖层等详细选项。"
    )
    "ko" -> ReaderBehaviorText(
        keepScreenOnSubtitle = "읽는 동안 화면이 꺼지지 않도록 세션을 유지합니다.",
        immersiveSubtitle = "읽는 동안 시스템 바를 조용히 숨겨 화면에 집중합니다.",
        screenTimeoutTitle = "화면 꺼짐 시간",
        selectionCardTitle = "선택과 번역",
        selectionHint = "선택한 텍스트가 어떻게 열리는지 여기서 다루고, 언어와 OCR 세부 설정은 번역 섹션에 둡니다.",
        selectionRouteLabel = "현재 경로",
        translationLinkTitle = "번역 설정 열기",
        translationLinkDescription = "언어, OCR, 오버레이 같은 세부 설정으로 이동합니다."
    )
    "ru" -> ReaderBehaviorText(
        keepScreenOnSubtitle = "Во время чтения экран не будет гаснуть сам по себе.",
        immersiveSubtitle = "Во время чтения системные панели будут спокойно скрываться.",
        screenTimeoutTitle = "Отключение экрана",
        selectionCardTitle = "Выделение и перевод",
        selectionHint = "Здесь собраны только живые реакции на выделенный текст. Языки, OCR и оверлей остаются в разделе перевода.",
        selectionRouteLabel = "Текущий маршрут",
        translationLinkTitle = "Открыть перевод",
        translationLinkDescription = "Языки, OCR и оверлей лежат в отдельном разделе, чтобы не перегружать чтение."
    )
    else -> ReaderBehaviorText(
        keepScreenOnSubtitle = "Keeps the screen awake for the whole reading session.",
        immersiveSubtitle = "Softly hides system bars while you are reading.",
        screenTimeoutTitle = "Screen timeout",
        selectionCardTitle = "Selection and translation",
        selectionHint = "This card only covers live selection behavior. Languages, OCR, and overlays stay in Translation.",
        selectionRouteLabel = "Current route",
        translationLinkTitle = "Open Translation",
        translationLinkDescription = "Adjust languages, OCR, and overlay settings in the dedicated section."
    )
}

private fun readerScreenTimeoutLabel(mode: String, language: String): String = when (ReaderScreenTimeoutMode.fromStored(mode)) {
    ReaderScreenTimeoutMode.SYSTEM -> when (language) {
        "ja" -> "システム"
        "zh" -> "跟随系统"
        "ko" -> "시스템"
        "ru" -> "Системное"
        else -> "System"
    }
    ReaderScreenTimeoutMode.SECONDS_30 -> when (language) {
        "ja" -> "30秒"
        "zh" -> "30 秒"
        "ko" -> "30초"
        "ru" -> "30 сек"
        else -> "30 sec"
    }
    ReaderScreenTimeoutMode.MINUTE_1 -> when (language) {
        "ja" -> "1分"
        "zh" -> "1 分"
        "ko" -> "1분"
        "ru" -> "1 мин"
        else -> "1 min"
    }
    ReaderScreenTimeoutMode.MINUTE_2 -> when (language) {
        "ja" -> "2分"
        "zh" -> "2 分"
        "ko" -> "2분"
        "ru" -> "2 мин"
        else -> "2 min"
    }
    ReaderScreenTimeoutMode.MINUTE_5 -> when (language) {
        "ja" -> "5分"
        "zh" -> "5 分"
        "ko" -> "5분"
        "ru" -> "5 мин"
        else -> "5 min"
    }
    ReaderScreenTimeoutMode.MINUTE_10 -> when (language) {
        "ja" -> "10分"
        "zh" -> "10 分"
        "ko" -> "10분"
        "ru" -> "10 мин"
        else -> "10 min"
    }
    ReaderScreenTimeoutMode.NEVER -> when (language) {
        "ja" -> "消さない"
        "zh" -> "不关闭"
        "ko" -> "꺼지지 않음"
        "ru" -> "Не выключать"
        else -> "Never"
    }
}

@Composable
private fun ReaderSelectionBehaviorCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    onOpenTranslationSettings: () -> Unit
) {
    val text = remember(strings.languageCode) { readerBehaviorText(strings.languageCode) }
    val source = translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false)
    val target = translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true)
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    SettingsCard(title = text.selectionCardTitle) {
        Text(
            text = text.selectionHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${text.selectionRouteLabel}: $source → $target · $transport")
        Spacer(Modifier.height(8.dp))
        HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
        Spacer(Modifier.height(4.dp))
        SettingsNavItem(
            icon = Icons.Default.Translate,
            title = text.translationLinkTitle,
            description = text.translationLinkDescription,
            summary = "$source → $target",
            onClick = onOpenTranslationSettings
        )
    }
}

@Composable
private fun ReaderWellnessCard(
    uiState: SettingsUiState,
    eyeRestText: EyeRestSettingsText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = eyeRestText.cardTitle) {
        SwitchRow(
            title = eyeRestText.enabledTitle,
            subtitle = eyeRestText.enabledSubtitle,
            checked = uiState.readerEyeRestEnabled,
            onCheckedChange = viewModel::setReaderEyeRestEnabled
        )
        if (uiState.readerEyeRestEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText("${eyeRestText.intervalLabel}: ${uiState.readerEyeRestMinutes} ${eyeRestText.minutesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 45, 60).forEach { minutes ->
                    MrComicFilterChip(
                        selected = uiState.readerEyeRestMinutes == minutes,
                        onClick = { viewModel.setReaderEyeRestMinutes(minutes) },
                        label = { Text("$minutes ${eyeRestText.minutesSuffix}") }
                    )
                }
            }
            Spacer(Modifier.height(4.dp))
            Text(
                eyeRestText.hint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun ReaderProgressCard(
    uiState: SettingsUiState,
    readingGoalText: ReadingGoalSettingsText,
    streakPolicyText: StreakPolicySettingsText,
    streakProgressText: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = readingGoalText.cardTitle) {
        SwitchRow(
            title = readingGoalText.enabledTitle,
            subtitle = readingGoalText.enabledSubtitle,
            checked = uiState.dailyReadingGoalEnabled,
            onCheckedChange = viewModel::setDailyReadingGoalEnabled
        )
        if (uiState.dailyReadingGoalEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText(
                readingGoalText.progressLabel(
                    uiState.dailyReadingGoalProgressPages,
                    uiState.dailyReadingGoalTargetPages
                )
            )
            LabelText(
                readingGoalText.weeklyProgressLabel(
                    uiState.dailyReadingWeekProgressPages,
                    uiState.dailyReadingWeekTargetPages,
                    uiState.dailyReadingWeekCompletedDays
                )
            )
            LabelText(
                readingGoalText.calendarLabel(
                    uiState.dailyReadingRecentActiveDays,
                    uiState.dailyReadingRecentGoalDays
                )
            )
            LabelText("${readingGoalText.targetLabel}: ${uiState.dailyReadingGoalTargetPages} ${readingGoalText.pagesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 50).forEach { targetPages ->
                    MrComicFilterChip(
                        selected = uiState.dailyReadingGoalTargetPages == targetPages,
                        onClick = { viewModel.setDailyReadingGoalTargetPages(targetPages) },
                        label = { Text("$targetPages ${readingGoalText.pagesSuffix}") }
                    )
                }
            }
            if (uiState.dailyReadingGoalProgressPages >= uiState.dailyReadingGoalTargetPages) {
                Spacer(Modifier.height(4.dp))
                Text(
                    readingGoalText.completedHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        if (uiState.dailyReadingGoalEnabled || uiState.dailyReadingStreakEnabled) {
            Spacer(Modifier.height(10.dp))
            HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
            Spacer(Modifier.height(10.dp))
            Text(
                streakPolicyText.title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            SwitchRow(
                title = streakPolicyText.enabledTitle,
                subtitle = streakPolicyText.enabledSubtitle,
                checked = uiState.dailyReadingStreakEnabled,
                onCheckedChange = viewModel::setDailyReadingStreakEnabled
            )
            if (uiState.dailyReadingStreakEnabled) {
                SwitchRow(
                    title = streakPolicyText.graceTitle,
                    subtitle = streakPolicyText.graceSubtitle,
                    checked = uiState.dailyReadingGraceEnabled,
                    onCheckedChange = viewModel::setDailyReadingGraceEnabled
                )
                Text(
                    streakProgressText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    streakPolicyText.summary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun ReaderEffectsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.animSoundCard) {
        LabelText(strings.pageAnimLabel)
        ChipRow {
            listOf(
                "NONE" to strings.animNone,
                "SLIDE" to strings.animSlide,
                "FADE" to strings.animFade
            ).forEach { (key, label) ->
                MrComicFilterChip(
                    selected = uiState.readerPageAnimation == key,
                    onClick = { viewModel.setReaderPageAnimation(key) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SwitchRow(
            title = strings.pageFlipSound,
            subtitle = strings.pageFlipSoundSubtitle,
            checked = uiState.readerPageSound,
            onCheckedChange = viewModel::setReaderPageSound
        )
        if (uiState.readerPageSound) {
            Spacer(Modifier.height(4.dp))
            LabelText(strings.soundStyleLabel)
            ChipRow {
                listOf(
                    "PAPER" to strings.soundPaper,
                    "CRISP" to strings.soundCrisp,
                    "SOFT" to strings.soundSoft
                ).forEach { (key, label) ->
                    MrComicFilterChip(
                        selected = uiState.readerPageSoundStyle == key,
                        onClick = { viewModel.setReaderPageSoundStyle(key) },
                        label = { Text(label) }
                    )
                }
            }
        }
    }
}

@Composable
private fun ReaderPreloadCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.preloadCard) {
        SettingsSliderTile(
            title = strings.preloadLabel,
            valueLabel = uiState.readerPreloadPages.toString(),
            value = uiState.readerPreloadPages.toFloat(),
            onValueChange = { viewModel.setReaderPreloadPages(it.toInt()) },
            valueRange = 2f..8f,
            steps = 5,
            subtitle = strings.preloadHint
        )
    }
}

@Composable
private fun ReaderTextStyleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    styleText: ReaderStyleSettingsText,
    viewModel: SettingsViewModel,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit = {},
    onImportReaderStyle: () -> Unit = {},
    onExportReaderStyle: () -> Unit = {},
    onDeleteCustomFont: (String) -> Unit = {}
) {
    val context = LocalContext.current
    val fonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.availableFontFamilies(context)
    }
    val customFonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.customFontFamilies(context)
    }
    SettingsCard(title = styleText.cardTitle) {
        Text(
            styleText.cardHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText(styleText.quickPresetsTitle)
        ChipRow {
            io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().map { preset ->
                preset to readingPresetQuickLabel(strings, preset)
            }.forEach { (preset, label) ->
                MrComicFilterChip(
                    selected = ReadingPreset.fromStored(uiState.readerPreset) == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.colorSchemeTitle)
        ChipRow {
            listOf(
                "DAY" to styleText.day,
                "SEPIA" to styleText.sepia,
                "NIGHT" to styleText.night
            ).forEach { (scheme, label) ->
                MrComicFilterChip(
                    selected = uiState.textColorScheme == scheme,
                    onClick = { viewModel.setTextColorScheme(scheme) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onImportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onExportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.exportPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        val savedReaderStyleCount = remember(uiState.readerStylePresetEntries) {
            uiState.readerStylePresetEntries.size
        }
        val sortedReaderStyleEntries = remember(
            uiState.readerStylePresetEntries,
            uiState.readerPreset,
            uiState.textFontFamily,
            uiState.textFontSize,
            uiState.textLineHeight,
            uiState.textAlignment,
            uiState.textColorScheme,
            uiState.textBold,
            uiState.textLetterSpacing,
            uiState.textWordSpacing,
            uiState.textParagraphSpacing,
            uiState.textCustomTextColor,
            uiState.textCustomBackgroundColor,
            uiState.textCustomAccentColor
        ) {
            uiState.readerStylePresetEntries.sortedWith(
                compareByDescending<ReaderStylePresetEntry> { entry ->
                    entry.snapshot.matchesSettingsUiState(uiState)
                }.thenByDescending { entry ->
                    entry.snapshot.displayName?.isNotBlank() == true
                }.thenBy { entry ->
                    entry.snapshot.displayName ?: entry.id
                }
            )
        }
        val activeReaderStyleSnapshot = remember(sortedReaderStyleEntries, uiState) {
            sortedReaderStyleEntries
                .map { it.snapshot }
                .firstOrNull { it.matchesSettingsUiState(uiState) }
        }
        LabelText("${styleText.savedStylesTitle} ($savedReaderStyleCount)")
        Text(
            text = styleText.savedStylesHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        if (activeReaderStyleSnapshot != null) {
            Spacer(Modifier.height(8.dp))
            SettingsPreviewBanner(
                title = activeReaderStyleSnapshot.displayName?.takeIf { it.isNotBlank() }
                    ?: readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                subtitle = listOf(
                    readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                    readerTextSchemeLabel(strings.languageCode, activeReaderStyleSnapshot.textColorScheme),
                    activeReaderStyleSnapshot.textFontFamily
                ).joinToString(" · "),
                details = listOf(
                    readerTextFontSizeLabel(activeReaderStyleSnapshot.textFontSize, strings.languageCode),
                    readerTextLineHeightLabel((activeReaderStyleSnapshot.textLineHeight * 100).toInt(), strings.languageCode)
                ).joinToString(" · ")
            )
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = { viewModel.saveCurrentReaderStylePreset() },
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(if (strings.languageCode == "ru") "Сохранить текущий стиль как новый" else "Save current style as new")
        }
        Spacer(Modifier.height(8.dp))
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            sortedReaderStyleEntries.forEachIndexed { index, entry ->
                val active = entry.snapshot.matchesSettingsUiState(uiState)
                ReaderStylePresetCard(
                    slot = ReaderStylePresetSlot(
                        index = index + 1,
                        serialized = entry.snapshot.serialize()
                    ),
                    strings = strings,
                    text = styleText,
                    isActive = active,
                    onSave = { viewModel.overwriteReaderStylePreset(entry.id) },
                    onApply = { viewModel.applyReaderStylePreset(entry.id) },
                    onClear = { viewModel.deleteReaderStylePreset(entry.id) },
                    onRename = { viewModel.renameReaderStylePreset(entry.id, it) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${styleText.fontTitle} (${fonts.size})")
        MrComicButton(
            onClick = onImportCustomFont,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importFontLabel)
        }
        Spacer(Modifier.height(8.dp))
        SettingsPreviewBanner(
            title = uiState.textFontFamily,
            subtitle = readerImportedFontsActive(strings.languageCode),
            details = listOf(
                readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
                readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
                "${customFonts.size} ${readerImportedFontsTitle(strings.languageCode).lowercase(Locale.getDefault())}"
            ).joinToString(" · ")
        )
        Spacer(Modifier.height(8.dp))
        val orderedFonts = remember(fonts, uiState.textFontFamily) {
            fonts.sortedWith(
                compareByDescending<String> { it == uiState.textFontFamily }
                    .thenBy { it.lowercase(Locale.getDefault()) }
            )
        }
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            orderedFonts.forEach { family ->
                MrComicFilterChip(
                    selected = uiState.textFontFamily == family,
                    onClick = { viewModel.setTextFontFamily(family) },
                    label = { Text(family, style = MaterialTheme.typography.bodySmall) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${readerImportedFontsTitle(strings.languageCode)} (${customFonts.size})")
        Text(
            text = readerImportedFontsHint(strings.languageCode),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        if (customFonts.isNotEmpty()) {
            val orderedCustomFonts = remember(customFonts, uiState.textFontFamily) {
                customFonts.sortedWith(
                    compareByDescending<String> { it == uiState.textFontFamily }
                        .thenBy { it.lowercase(Locale.getDefault()) }
                )
            }
            FlowRow(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                orderedCustomFonts.forEach { family ->
                    val selected = uiState.textFontFamily == family
                    MrComicCardSurface(
                        modifier = Modifier
                            .widthIn(min = 152.dp)
                            .clickable(onClick = { viewModel.setTextFontFamily(family) }),
                        fillMaxWidth = false,
                        cornerRadius = 14.dp,
                        containerColor = if (selected) {
                            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.9f)
                        } else {
                            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                        },
                        border = BorderStroke(
                            width = if (selected) 1.1.dp else 0.8.dp,
                            color = if (selected) {
                                MaterialTheme.colorScheme.primary.copy(alpha = 0.42f)
                            } else {
                                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f)
                            }
                        )
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(start = 12.dp, top = 10.dp, end = 6.dp, bottom = 10.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Column(
                                modifier = Modifier.weight(1f),
                                verticalArrangement = Arrangement.spacedBy(2.dp)
                            ) {
                                Text(
                                    text = family,
                                    style = MaterialTheme.typography.bodySmall,
                                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                if (selected) {
                                    Text(
                                        text = readerImportedFontsActive(strings.languageCode),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                }
                            }
                            MrComicIconButton(
                                onClick = { onDeleteCustomFont(family) },
                                variant = MrComicIconButtonVariant.Tonal
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Delete,
                                    contentDescription = readerDeleteCustomFontAction(strings.languageCode)
                                )
                            }
                        }
                    }
                }
            }
        } else {
            Text(
                text = readerImportedFontsEmpty(strings.languageCode),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.fontSizeTitle,
            valueLabel = readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
            value = uiState.textFontSize.toFloat(),
            onValueChange = { viewModel.setTextFontSize(it.toInt()) },
            valueRange = 12f..32f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.lineHeightTitle,
            valueLabel = readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
            value = uiState.textLineHeight,
            onValueChange = viewModel::setTextLineHeight,
            valueRange = 1.0f..3.0f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.letterSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textLetterSpacing)}em",
            value = uiState.textLetterSpacing,
            onValueChange = viewModel::setTextLetterSpacing,
            valueRange = 0f..0.2f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.wordSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textWordSpacing)}em",
            value = uiState.textWordSpacing,
            onValueChange = viewModel::setTextWordSpacing,
            valueRange = 0f..0.6f,
            steps = 23
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.paragraphSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textParagraphSpacing)}em",
            value = uiState.textParagraphSpacing,
            onValueChange = viewModel::setTextParagraphSpacing,
            valueRange = 0.1f..1.2f,
            steps = 21
        )
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.alignmentTitle)
        ChipRow {
            listOf(
                "justify" to styleText.justify,
                "left" to styleText.left,
                "right" to styleText.right,
                "center" to styleText.center
            ).forEach { (alignment, label) ->
                MrComicFilterChip(
                    selected = uiState.textAlignment == alignment,
                    onClick = { viewModel.setTextAlignment(alignment) },
                    label = { Text(label) }
                )
            }
        }
        SwitchRow(
            title = styleText.boldTitle,
            subtitle = uiState.textFontFamily,
            checked = uiState.textBold,
            onCheckedChange = viewModel::setTextBold
        )
        OutlinedButton(
            onClick = viewModel::resetReaderTextStyle,
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(styleText.resetLabel)
        }
    }
}

// ──────────── Library section ────────────

@Composable
private fun LibrarySection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: LibrarySettingsPage,
    onImportRejected: () -> Unit,
    onPageChange: (LibrarySettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    val libraryText = remember(uiState.appLanguage) { librarySectionText(uiState.appLanguage) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            LibrarySettingsPage.OVERVIEW -> {
                item {
                    SettingsCard(title = libraryCollectionOrderTitle(uiState.appLanguage)) {
                        LabelText(libraryText.sortDefault)
                        ChipRow {
                            listOf(
                                "DATE_ADDED_DESC" to librarySortOrderLabel("DATE_ADDED_DESC", uiState.appLanguage),
                                "DATE_READ_DESC" to librarySortOrderLabel("DATE_READ_DESC", uiState.appLanguage),
                                "TITLE_ASC" to librarySortOrderLabel("TITLE_ASC", uiState.appLanguage),
                                "PROGRESS_DESC" to librarySortOrderLabel("PROGRESS_DESC", uiState.appLanguage)
                            ).forEach { (sortOrder, label) ->
                                MrComicFilterChip(
                                    selected = uiState.librarySortOrder == sortOrder,
                                    onClick = { viewModel.setLibrarySortOrder(sortOrder) },
                                    label = { Text(label) }
                                )
                            }
                        }
                        Spacer(Modifier.height(10.dp))
                        LabelText(libraryText.groupBy)
                        ChipRow {
                            libraryText.groupByLabels.forEach { (groupBy, label) ->
                                MrComicFilterChip(
                                    selected = uiState.libraryGroupBy == groupBy,
                                    onClick = { viewModel.setLibraryGroupBy(groupBy) },
                                    label = { Text(label) }
                                )
                            }
                        }
                    }
                }
            }
            LibrarySettingsPage.ACCESS -> item {
                LibraryAccessCard(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel
                )
            }
            LibrarySettingsPage.CACHE -> item {
                LibraryCacheCard(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel
                )
            }
            LibrarySettingsPage.IMPORT_EXPORT -> {
                item {
                    SyncProgressCard(
                        uiState = uiState,
                        strings = strings,
                        viewModel = viewModel,
                        onImportRejected = onImportRejected
                    )
                }
                item {
                    SyncFormatCard(strings = strings)
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun LibraryLayoutCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    libraryText: LibrarySectionText,
    viewModel: SettingsViewModel,
    title: String = libraryText.displayCard
) {
    SettingsCard(title = title) {
        val currentViewMode = uiState.libraryViewMode
        LabelText(strings.libraryDefaultView)
        ChipRow {
            MrComicFilterChip(
                selected = currentViewMode == "GRID",
                onClick = { viewModel.setLibraryViewMode("GRID") },
                label = { Text(strings.libraryViewGrid) },
                leadingIcon = {
                    Icon(
                        Icons.Default.GridView,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
            MrComicFilterChip(
                selected = currentViewMode == "LIST",
                onClick = { viewModel.setLibraryViewMode("LIST") },
                label = { Text(strings.libraryViewList) },
                leadingIcon = {
                    Icon(
                        Icons.AutoMirrored.Filled.ViewList,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
            MrComicFilterChip(
                selected = currentViewMode == "STRIPS",
                onClick = { viewModel.setLibraryViewMode("STRIPS") },
                label = { Text(settingsLibraryViewLabel(uiState.appLanguage, "STRIPS")) },
                leadingIcon = {
                    Icon(
                        Icons.Default.Menu,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
        }
        if (currentViewMode == "GRID") {
            Spacer(Modifier.height(4.dp))
            LabelText("${strings.libraryGridColumns}: ${uiState.libraryGridColumns}")
            ChipRow {
                listOf(2, 3, 4).forEach { n ->
                    MrComicFilterChip(
                        selected = uiState.libraryGridColumns == n,
                        onClick = { viewModel.setLibraryGridColumns(n) },
                        label = { Text("$n") }
                    )
                }
            }
        }
        Spacer(Modifier.height(6.dp))
        SwitchRow(
            title = when (uiState.appLanguage) {
                "en" -> "Show Files / Reading / Completed"
                "ja" -> "Files / Reading / Completed を表示"
                "zh" -> "显示 文件 / 在读 / 已读"
                "ko" -> "파일 / 읽는 중 / 읽음 표시"
                else -> "Показывать островки Файлы / Читаю / Прочитано"
            },
            subtitle = when (uiState.appLanguage) {
                "en" -> "Shows the library status row under the main section chips."
                "ja" -> "メインのセクションチップの下に状態行を表示します。"
                "zh" -> "在主分区标签下显示书库状态行。"
                "ko" -> "메인 섹션 칩 아래에 라이브러리 상태 줄을 표시합니다."
                else -> "Показывает строку состояния библиотеки под основными островками."
            },
            checked = uiState.libraryShowStatusChips,
            onCheckedChange = viewModel::setLibraryShowStatusChips
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.recentStripPosition)
        ChipRow {
            listOf(
                "TOP" to when (uiState.appLanguage) {
                    "en" -> "Top"
                    "ja" -> "上"
                    "zh" -> "顶部"
                    "ko" -> "상단"
                    else -> "Сверху"
                },
                "BOTTOM" to when (uiState.appLanguage) {
                    "en" -> "Bottom"
                    "ja" -> "下"
                    "zh" -> "底部"
                    "ko" -> "하단"
                    else -> "Снизу"
                }
            ).forEach { (position, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryRecentStripPosition == position,
                    onClick = { viewModel.setLibraryRecentStripPosition(position) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
private fun LibraryCardsStyleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    libraryText: LibrarySectionText,
    viewModel: SettingsViewModel,
    title: String = libraryText.cardsCard
) {
    val coverTitleText = coverTitleSettingsText(uiState.appLanguage)
    SettingsCard(title = title) {
        SettingsSliderTile(
            title = strings.libraryTileSize,
            valueLabel = "${uiState.libraryTileSize} dp",
            value = uiState.libraryTileSize.toFloat(),
            onValueChange = { viewModel.setLibraryTileSize(it.toInt()) },
            valueRange = 80f..200f
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.cardDensity)
        ChipRow {
            listOf(
                "COMPACT" to libraryCardStyleLabel("COMPACT", uiState.appLanguage),
                "BALANCED" to libraryCardStyleLabel("BALANCED", uiState.appLanguage),
                "SHOWCASE" to libraryCardStyleLabel("SHOWCASE", uiState.appLanguage)
            ).forEach { (style, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryCardStyle == style,
                    onClick = { viewModel.setLibraryCardStyle(style) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.coverScale)
        ChipRow {
            listOf(
                "CROP" to libraryCoverScaleLabel("CROP", uiState.appLanguage),
                "FIT" to libraryCoverScaleLabel("FIT", uiState.appLanguage)
            ).forEach { (scale, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryCoverScale == scale,
                    onClick = { viewModel.setLibraryCoverScale(scale) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.thumbnailShape)
        ChipRow {
            listOf(
                "RECTANGLE" to libraryText.rectangle,
                "SQUARE" to libraryText.square
            ).forEach { (mode, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryThumbnailMode == mode,
                    onClick = { viewModel.setLibraryThumbnailMode(mode) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryGraphicCoverStyleTitle(uiState.appLanguage))
        ChipRow {
            listOf(
                "POSTER" to graphicCoverStyleOptionLabel("POSTER", uiState.appLanguage),
                "INK" to graphicCoverStyleOptionLabel("INK", uiState.appLanguage),
                "MINIMAL" to graphicCoverStyleOptionLabel("MINIMAL", uiState.appLanguage)
            ).forEach { (style, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryGraphicCoverStyle == style,
                    onClick = { viewModel.setLibraryGraphicCoverStyle(style) },
                    label = { Text(label) }
                )
            }
        }

        SwitchRow(
            title = libraryText.progressTitle,
            subtitle = libraryText.progressSubtitle,
            checked = uiState.libraryShowProgress,
            onCheckedChange = viewModel::setLibraryShowProgress
        )
        SwitchRow(
            title = coverTitleText.title,
            subtitle = coverTitleText.subtitle,
            checked = uiState.libraryShowCoverTitles,
            onCheckedChange = viewModel::setLibraryShowCoverTitles
        )
        SettingsSliderTile(
            title = libraryText.cardShadow,
            valueLabel = "${(uiState.libraryCardShadow * 100).toInt()}%",
            value = uiState.libraryCardShadow,
            onValueChange = viewModel::setLibraryCardShadow,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.titleScale,
            valueLabel = "${(uiState.libraryTitleScale * 100).toInt()}%",
            value = uiState.libraryTitleScale,
            onValueChange = viewModel::setLibraryTitleScale,
            valueRange = 0.85f..1.3f,
            steps = 8
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.titleLines)
        ChipRow {
            listOf(1, 2, 3).forEach { lines ->
                MrComicFilterChip(
                    selected = uiState.libraryTitleLines == lines,
                    onClick = { viewModel.setLibraryTitleLines(lines) },
                    label = { Text("$lines") }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.cardStroke,
            valueLabel = "${(uiState.libraryCardStroke * 100).toInt()}%",
            value = uiState.libraryCardStroke,
            onValueChange = viewModel::setLibraryCardStroke,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.cardCornerRadius,
            valueLabel = "${uiState.libraryCardCornerRadius} dp",
            value = uiState.libraryCardCornerRadius.toFloat(),
            onValueChange = { viewModel.setLibraryCardCornerRadius(it.roundToInt()) },
            valueRange = 6f..24f,
            steps = 8
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.titlePanelOpacity,
            valueLabel = "${(uiState.libraryTitlePanelOpacity * 100).toInt()}%",
            value = uiState.libraryTitlePanelOpacity,
            onValueChange = viewModel::setLibraryTitlePanelOpacity,
            valueRange = 0.18f..0.78f,
            steps = 9
        )
    }
}

private fun ReaderStylePresetSnapshot.matchesSettingsUiState(uiState: SettingsUiState): Boolean {
    return readerPreset == uiState.readerPreset &&
        textFontSize == uiState.textFontSize &&
        textColorScheme == uiState.textColorScheme &&
        textFontFamily == uiState.textFontFamily &&
        textLineHeight == uiState.textLineHeight &&
        textLetterSpacing == uiState.textLetterSpacing &&
        textWordSpacing == uiState.textWordSpacing &&
        textParagraphSpacing == uiState.textParagraphSpacing &&
        textAlignment == uiState.textAlignment &&
        textBold == uiState.textBold &&
        brightness == uiState.brightness &&
        immersiveMode == uiState.readerImmersiveMode &&
        pageAnimation == uiState.readerPageAnimation
}

private fun AppThemePresetSnapshot.matchesAppThemeUiState(uiState: SettingsUiState): Boolean {
    return themePreset == uiState.themePreset &&
        themeMode == uiState.themeMode.name &&
        useDynamicColor == uiState.useDynamicColor &&
        useAmoledDark == uiState.useAmoledDark &&
        customPrimaryColor == uiState.customPrimaryColor &&
        customSecondaryColor == uiState.customSecondaryColor &&
        customBackgroundColor == uiState.customBackgroundColor &&
        customSurfaceColor == uiState.customSurfaceColor &&
        surfaceOpacity == uiState.surfaceOpacity &&
        uiFontScale == uiState.uiFontScale &&
        uiDensityScale == uiState.uiDensityScale &&
        uiCornerRadius == uiState.uiCornerRadius
}

@Composable
private fun PerformanceSettingsCard(
    uiState: SettingsUiState,
    viewModel: SettingsViewModel
) {
    val performanceText = remember(uiState.appLanguage) {
        performanceSettingsText(uiState.appLanguage)
    }
    SettingsCard(title = performanceText.title) {
        Text(
            performanceText.hint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        SwitchRow(
            title = performanceText.reducedMotionTitle,
            subtitle = performanceText.reducedMotionSubtitle,
            checked = uiState.performanceReducedMotion,
            onCheckedChange = viewModel::setPerformanceReducedMotion
        )
        SwitchRow(
            title = performanceText.reducedVisualEffectsTitle,
            subtitle = performanceText.reducedVisualEffectsSubtitle,
            checked = uiState.performanceReducedVisualEffects,
            onCheckedChange = viewModel::setPerformanceReducedVisualEffects
        )
    }
}

@Composable
private fun LibraryBackgroundPresetCard(
    selected: Boolean,
    onClick: () -> Unit,
    label: String,
    style: String,
    selectedImageUri: String?,
    modifier: Modifier = Modifier
) {
    val usesSelectedImage = style == "IMAGE" && !selectedImageUri.isNullOrBlank()
    val previewStyle = when {
        style == "IMAGE" && selectedImageUri.isNullOrBlank() -> "PAPER_GRAIN"
        else -> style
    }
    MrComicLibraryPresetCard(
        title = label,
        subtitle = "",
        selected = selected,
        onClick = onClick,
        modifier = modifier.width(148.dp),
        accentColor = MaterialTheme.colorScheme.primary
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(74.dp)
                .clip(RoundedCornerShape(12.dp))
        ) {
            LibraryBackdropLayer(
                backgroundStyle = previewStyle,
                backgroundImageUri = if (usesSelectedImage) selectedImageUri else null,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
                backgroundBlur = if (previewStyle == "LIQUID_GLASS") 0.32f else DEFAULT_LIBRARY_BACKGROUND_BLUR,
                imageVeil = DEFAULT_LIBRARY_BACKGROUND_VEIL,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
            )
            if (style == "IMAGE" && selectedImageUri.isNullOrBlank()) {
                Icon(
                    imageVector = Icons.Default.Image,
                    contentDescription = null,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .size(20.dp),
                    tint = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.78f)
                )
            }
        }
    }
}

@Composable
private fun SelectedLibraryBackgroundPreview(
    imageUri: String,
    title: String,
    hint: String,
    modifier: Modifier = Modifier
) {
    val parsedUri = remember(imageUri) { Uri.parse(imageUri) }
    val displayName = remember(imageUri) {
        parsedUri.lastPathSegment
            ?.substringAfterLast('/')
            ?.substringAfterLast(':')
            ?.takeIf { it.isNotBlank() }
            ?: imageUri
    }

    MrComicCardSurface(
        modifier = modifier.fillMaxWidth(),
        cornerRadius = 16.dp,
        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.24f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(10.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            AsyncImage(
                model = parsedUri,
                contentDescription = null,
                modifier = Modifier
                    .size(width = 88.dp, height = 56.dp)
                    .clip(RoundedCornerShape(12.dp)),
                contentScale = androidx.compose.ui.layout.ContentScale.Crop
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = displayName,
                    style = MaterialTheme.typography.bodyMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = hint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
private fun LibraryShelfPresetCard(
    selected: Boolean,
    onClick: () -> Unit,
    label: String,
    shelfStyle: String,
    backgroundStyle: String,
    backgroundImageUri: String?,
    backgroundBlur: Float,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    MrComicLibraryPresetCard(
        title = label,
        subtitle = "",
        selected = selected,
        onClick = onClick,
        modifier = modifier.width(148.dp),
        accentColor = MaterialTheme.colorScheme.primary
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(74.dp)
                .clip(RoundedCornerShape(12.dp))
        ) {
            LibraryBackdropLayer(
                backgroundStyle = backgroundStyle,
                backgroundImageUri = backgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = 0.24f,
                backgroundBlur = backgroundBlur,
                imageVeil = 0.14f,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 10.dp, vertical = 10.dp),
                contentAlignment = Alignment.BottomCenter
            ) {
                LibraryShelfBar(
                    shelfStyle = shelfStyle,
                    colorScheme = MaterialTheme.colorScheme,
                    depth = shelfDepth,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
    }
}

private fun libraryBackgroundStyleLabel(style: String, language: String): String = when (style) {
    "LIQUID_GLASS" -> when (language) {
        "en" -> "Liquid glass"
        "ja" -> "リキッドガラス"
        "zh" -> "液态玻璃"
        "ko" -> "리퀴드 글래스"
        else -> "Жидкое стекло"
    }
    "MIDNIGHT_MICA" -> when (language) {
        "en" -> "Midnight mica"
        "ja" -> "ミッドナイトマイカ"
        "zh" -> "午夜云母"
        "ko" -> "미드나이트 미카"
        else -> "Полуночная слюда"
    }
    "SUNSET_HAZE" -> when (language) {
        "en" -> "Sunset haze"
        "ja" -> "サンセットヘイズ"
        "zh" -> "日落薄雾"
        "ko" -> "선셋 헤이즈"
        else -> "Закатная дымка"
    }
    "DARK_STUDY" -> when (language) {
        "en" -> "Dark study"
        "ja" -> "ダーク書斎"
        "zh" -> "暗色书房"
        "ko" -> "다크 서재"
        else -> "Тёмный кабинет"
    }
    "LIGHT_GREENHOUSE" -> when (language) {
        "en" -> "Light greenhouse"
        "ja" -> "明るい温室"
        "zh" -> "明亮温室"
        "ko" -> "라이트 온실"
        else -> "Светлая оранжерея"
    }
    "SCIENCE_LAB" -> when (language) {
        "en" -> "Science lab"
        "ja" -> "サイエンスラボ"
        "zh" -> "科学实验室"
        "ko" -> "사이언스 랩"
        else -> "Научная лаборатория"
    }
    "CITY_LIBRARY" -> when (language) {
        "en" -> "City library"
        "ja" -> "シティライブラリ"
        "zh" -> "城市书库"
        "ko" -> "시티 라이브러리"
        else -> "Городская библиотека"
    }
    "AURORA_MIST" -> when (language) {
        "en" -> "Aurora mist"
        "ja" -> "オーロラミスト"
        "zh" -> "极光薄雾"
        "ko" -> "오로라 미스트"
        else -> "Аврора-дымка"
    }
    "CINEMA_NOIR" -> when (language) {
        "en" -> "Cinema noir"
        "ja" -> "シネマノワール"
        "zh" -> "黑色影院"
        "ko" -> "시네마 누아르"
        else -> "Синема-нуар"
    }
    "PAPER_GRAIN" -> when (language) {
        "en" -> "Paper grain"
        "ja" -> "紙目"
        "zh" -> "纸纹"
        "ko" -> "페이퍼 그레인"
        else -> "Зерно бумаги"
    }
    "MANGA_INK" -> when (language) {
        "en" -> "Manga ink"
        "ja" -> "マンガインク"
        "zh" -> "漫画墨迹"
        "ko" -> "망가 잉크"
        else -> "Манга-инк"
    }
    "EINK_WASH" -> when (language) {
        "en" -> "E-Ink wash"
        "ja" -> "E-Inkウォッシュ"
        "zh" -> "电子墨水水洗"
        "ko" -> "이잉크 워시"
        else -> "E-Ink wash"
    }
    "IMAGE" -> when (language) {
        "en" -> "Image"
        "ja" -> "画像"
        "zh" -> "图片"
        "ko" -> "이미지"
        else -> "Изображение"
    }
    else -> style
}

private fun libraryShelfStyleLabel(style: String, language: String): String = when (style) {
    "FROST" -> when (language) {
        "en" -> "Frost"
        "ja" -> "フロスト"
        "zh" -> "霜玻璃"
        "ko" -> "프로스트"
        else -> "Фрост"
    }
    "ALUMINUM" -> when (language) {
        "en" -> "Aluminum"
        "ja" -> "アルミニウム"
        "zh" -> "铝金属"
        "ko" -> "알루미늄"
        else -> "Алюминий"
    }
    "FLOAT" -> when (language) {
        "en" -> "Float"
        "ja" -> "フロート"
        "zh" -> "悬浮"
        "ko" -> "플로트"
        else -> "Парящая"
    }
    "GLASS" -> when (language) {
        "en" -> "Glass"
        "ja" -> "ガラス"
        "zh" -> "玻璃"
        "ko" -> "유리"
        else -> "Стекло"
    }
    "OAK" -> when (language) {
        "en" -> "Oak"
        "ja" -> "オーク"
        "zh" -> "橡木"
        "ko" -> "오크"
        else -> "Дуб"
    }
    "WALNUT" -> when (language) {
        "en" -> "Walnut"
        "ja" -> "ウォルナット"
        "zh" -> "胡桃木"
        "ko" -> "월넛"
        else -> "Орех"
    }
    "STEEL" -> when (language) {
        "en" -> "Steel"
        "ja" -> "スチール"
        "zh" -> "钢制"
        "ko" -> "스틸"
        else -> "Сталь"
    }
    "LACQUER" -> when (language) {
        "en" -> "Lacquer"
        "ja" -> "ラッカー"
        "zh" -> "亮漆"
        "ko" -> "래커"
        else -> "Лак"
    }
    "NEON" -> when (language) {
        "en" -> "Neon"
        "ja" -> "ネオン"
        "zh" -> "霓虹"
        "ko" -> "네온"
        else -> "Неон"
    }
    "MINIMAL" -> when (language) {
        "en" -> "Minimal"
        "ja" -> "ミニマル"
        "zh" -> "极简"
        "ko" -> "미니멀"
        else -> "Минимал"
    }
    "NONE" -> when (language) {
        "en" -> "None"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "Нет"
    }
    else -> style
}

private fun graphicCoverStyleOptionLabel(style: String, language: String): String = when (style) {
    "POSTER" -> when (language) {
        "en" -> "Poster"
        "ja" -> "ポスター"
        "zh" -> "海报"
        "ko" -> "포스터"
        else -> "Постер"
    }
    "INK" -> when (language) {
        "en" -> "Ink"
        "ja" -> "インク"
        "zh" -> "墨色"
        "ko" -> "잉크"
        else -> "Тушь"
    }
    "MINIMAL" -> when (language) {
        "en" -> "Minimal"
        "ja" -> "ミニマル"
        "zh" -> "极简"
        "ko" -> "미니멀"
        else -> "Минимал"
    }
    else -> style
}

private fun librarySortOrderLabel(sortOrder: String, language: String): String = when (sortOrder) {
    "DATE_ADDED_DESC" -> when (language) {
        "en" -> "New"
        "ja" -> "追加順"
        "zh" -> "最新导入"
        "ko" -> "추가순"
        else -> "Новые"
    }
    "DATE_READ_DESC" -> when (language) {
        "en" -> "Recent"
        "ja" -> "最近読んだ"
        "zh" -> "最近阅读"
        "ko" -> "최근 읽음"
        else -> "Недавние"
    }
    "TITLE_ASC" -> when (language) {
        "en" -> "Title"
        "ja" -> "タイトル"
        "zh" -> "标题"
        "ko" -> "제목"
        else -> "Название"
    }
    "PROGRESS_DESC" -> when (language) {
        "en" -> "Progress"
        "ja" -> "進捗"
        "zh" -> "进度"
        "ko" -> "진행률"
        else -> "Прогресс"
    }
    else -> sortOrder
}

private fun libraryGroupByLabel(groupBy: String, language: String): String = when (groupBy) {
    "NONE" -> when (language) {
        "en" -> "No grouping"
        "ja" -> "グループなし"
        "zh" -> "不分组"
        "ko" -> "그룹 없음"
        else -> "Без группировки"
    }
    "AUTHOR" -> when (language) {
        "en" -> "Author"
        "ja" -> "作者"
        "zh" -> "作者"
        "ko" -> "작가"
        else -> "Автор"
    }
    "SERIES" -> when (language) {
        "en" -> "Series"
        "ja" -> "シリーズ"
        "zh" -> "系列"
        "ko" -> "시리즈"
        else -> "Серия"
    }
    "FOLDER" -> when (language) {
        "en" -> "Folder"
        "ja" -> "フォルダ"
        "zh" -> "文件夹"
        "ko" -> "폴더"
        else -> "Папка"
    }
    "TAG" -> when (language) {
        "en" -> "Tag"
        "ja" -> "タグ"
        "zh" -> "标签"
        "ko" -> "태그"
        else -> "Тег"
    }
    "SOURCE" -> when (language) {
        "en" -> "Source"
        "ja" -> "ソース"
        "zh" -> "来源"
        "ko" -> "소스"
        else -> "Источник"
    }
    else -> groupBy
}

@Composable
private fun SettingsPreviewBanner(
    title: String,
    subtitle: String,
    details: String,
    modifier: Modifier = Modifier
) {
    MrComicCardSurface(
        modifier = modifier.fillMaxWidth(),
        cornerRadius = 16.dp,
        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f))
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(12.dp)
                    .clip(CircleShape)
                    .background(MaterialTheme.colorScheme.primary)
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    text = subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    text = details,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.9f),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
private fun AppThemePresetCard(
    slot: AppThemePresetSlot,
    strings: AppStrings,
    text: AppThemePresetText,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseAppThemePreset(slot.serialized) }
    val cardShape = RoundedCornerShape(18.dp)
    val slotLabel = "${text.slotPrefix} ${slot.index}"
    val themePresetLabelText = snapshot?.let { themePresetLabel(strings, it.themePreset) } ?: text.empty
    val modeLabel = snapshot?.let {
        themeLabel(
            strings,
            runCatching { ThemeMode.valueOf(it.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
        )
    }.orEmpty()
    val primaryColor = snapshot?.customPrimaryColor?.let(::argbLongToThemeColor) ?: MaterialTheme.colorScheme.primary
    val surfaceColor = snapshot?.customSurfaceColor?.let(::argbLongToThemeColor)
        ?: MaterialTheme.colorScheme.surface.copy(alpha = snapshot?.surfaceOpacity ?: 1f)
    val backgroundColor = snapshot?.customBackgroundColor?.let(::argbLongToThemeColor) ?: MaterialTheme.colorScheme.background

    MrComicCardSurface(
        modifier = modifier
            .width(160.dp)
            .clip(cardShape),
        fillMaxWidth = false,
        shape = cardShape,
        containerColor = if (isActive) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.86f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
        },
        border = if (isActive) {
            BorderStroke(1.dp, MaterialTheme.colorScheme.primary.copy(alpha = 0.42f))
        } else {
            BorderStroke(0.8.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f))
        },
        shadowElevation = if (isActive) 5.dp else 4.dp
    ) {
        Column(
            modifier = Modifier.padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(88.dp)
                    .clip(RoundedCornerShape(14.dp))
                    .background(backgroundColor)
                    .border(
                        width = 1.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f),
                        shape = RoundedCornerShape(14.dp)
                    )
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(10.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Box(
                            modifier = Modifier
                                .size(10.dp)
                                .clip(CircleShape)
                                .background(primaryColor)
                        )
                        Box(
                            modifier = Modifier
                                .size(10.dp)
                                .clip(CircleShape)
                                .background(surfaceColor)
                        )
                    }
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(12.dp))
                            .background(surfaceColor)
                            .padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(5.dp)
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(0.72f)
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(primaryColor.copy(alpha = 0.84f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(MaterialTheme.colorScheme.onSurface.copy(alpha = 0.12f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(0.82f)
                                .height(7.dp)
                                .clip(RoundedCornerShape(999.dp))
                                .background(MaterialTheme.colorScheme.onSurface.copy(alpha = 0.08f))
                        )
                    }
                }
            }
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = slotLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                if (isActive) {
                    Text(
                        text = text.current,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
                Text(
                    text = if (modeLabel.isBlank()) themePresetLabelText else "$themePresetLabelText · $modeLabel",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    minLines = 2,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = text.save)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = text.apply)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = text.clear)
                }
            }
        }
    }
}

@Composable
private fun ReaderStylePresetCard(
    slot: ReaderStylePresetSlot,
    strings: AppStrings,
    text: ReaderStyleSettingsText,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    onRename: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseReaderStylePreset(slot.serialized) }
    var renameDialogOpen by rememberSaveable(slot.index) { mutableStateOf(false) }
    var renameDraft by rememberSaveable(slot.index) { mutableStateOf("") }
    LaunchedEffect(slot.serialized) {
        renameDraft = snapshot?.displayName.orEmpty()
    }
    val (backgroundColor, lineColor) = remember(
        snapshot?.textColorScheme,
        snapshot?.textCustomBackgroundColor,
        snapshot?.textCustomTextColor
    ) {
        val base = when (snapshot?.textColorScheme) {
            "SEPIA" -> Color(0xFFF4ECD8) to Color(0xFF7B5C34)
            "NIGHT" -> Color(0xFF000000) to Color(0xFFF2F5F7)
            else -> Color(0xFFF6F1E7) to Color(0xFF2B2118)
        }
        (snapshot?.textCustomBackgroundColor?.let(::argbLongToThemeColor) ?: base.first) to
            (snapshot?.textCustomTextColor?.let(::argbLongToThemeColor) ?: base.second)
    }
    val slotLabel = "${text.savedStyleSlotPrefix} ${slot.index}"
    val titleLabel = snapshot?.displayName?.takeIf { it.isNotBlank() } ?: slotLabel
    val presetLabel = snapshot?.let { readingPresetQuickLabel(strings, ReadingPreset.fromStored(it.readerPreset)) } ?: text.savedStyleEmpty
    val schemeLabel = snapshot?.let { readerTextSchemeLabel(strings.languageCode, it.textColorScheme) }.orEmpty()
    val detailLabel = snapshot?.let {
        "${it.textFontFamily} · ${readerTextFontSizeLabel(it.textFontSize, strings.languageCode)} · ${readerTextLineHeightLabel((it.textLineHeight * 100).toInt(), strings.languageCode)}"
    } ?: text.savedStyleEmpty
    val shape = RoundedCornerShape(18.dp)

    if (renameDialogOpen) {
        AlertDialog(
            onDismissRequest = { renameDialogOpen = false },
            title = { Text(text.savedStyleRenameTitle) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    OutlinedTextField(
                        value = renameDraft,
                        onValueChange = { renameDraft = it.take(40) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        label = { Text(text.savedStyleNameLabel) },
                        placeholder = { Text(slotLabel) }
                    )
                    Text(
                        text = text.savedStyleRenameHint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        onRename(renameDraft)
                        renameDialogOpen = false
                    }
                ) {
                    Text(text.savedStyleRenameConfirm)
                }
            },
            dismissButton = {
                TextButton(onClick = { renameDialogOpen = false }) {
                    Text(text.savedStyleRenameCancel)
                }
            }
        )
    }

    MrComicCardSurface(
        modifier = modifier
            .fillMaxWidth()
            .clip(shape),
        shape = shape,
        containerColor = if (isActive) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
        },
        border = BorderStroke(
            width = if (isActive) 1.2.dp else 0.dp,
            color = MaterialTheme.colorScheme.primary.copy(alpha = if (isActive) 0.48f else 0f)
        ),
        shadowElevation = if (isActive) 5.dp else 4.dp
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(92.dp)
                    .clip(RoundedCornerShape(14.dp))
                    .background(backgroundColor)
                    .border(
                        width = 1.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f),
                        shape = RoundedCornerShape(14.dp)
                    )
                    .padding(horizontal = 12.dp, vertical = 10.dp)
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterVertically)
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth(0.72f)
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.88f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.28f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth((0.55f + (((snapshot?.textParagraphSpacing ?: 0.2f) * 0.2f))).coerceIn(0.55f, 0.9f))
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.18f))
                    )
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = titleLabel,
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.onSurface,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    if (isActive) {
                        Text(
                            text = readerSavedStyleActive(strings.languageCode),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                    if (titleLabel != slotLabel) {
                        Text(
                            text = slotLabel,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Text(
                        text = if (schemeLabel.isBlank()) presetLabel else "$presetLabel · $schemeLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = detailLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.9f),
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                if (snapshot != null) {
                    IconButton(
                        onClick = { renameDialogOpen = true },
                        modifier = Modifier.size(34.dp)
                    ) {
                        Icon(Icons.Default.Edit, contentDescription = text.savedStyleRename)
                    }
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = text.savedStyleSave)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = text.savedStyleApply)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = text.savedStyleClear)
                }
            }
        }
    }
}

@Composable
private fun LibraryThemePresetCard(
    slot: LibraryThemePresetSlot,
    slotLabelPrefix: String,
    appLanguage: String,
    saveLabel: String,
    applyLabel: String,
    clearLabel: String,
    emptyLabel: String,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseLibraryThemePreset(slot.serialized) }
    val cardShape = RoundedCornerShape(18.dp)
    val slotLabel = "$slotLabelPrefix ${slot.index}"
    val summary = snapshot?.let {
        "${libraryBackgroundStyleLabel(it.backgroundStyle, appLanguage)} • ${libraryShelfStyleLabel(it.shelfStyle, appLanguage)}"
    } ?: emptyLabel

    MrComicCardSurface(
        modifier = modifier.width(160.dp),
        fillMaxWidth = false,
        shape = cardShape,
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier.padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(88.dp)
                    .clip(RoundedCornerShape(14.dp))
            ) {
                if (snapshot != null) {
                    LibraryBackdropLayer(
                        backgroundStyle = snapshot.backgroundStyle,
                        backgroundImageUri = snapshot.backgroundImageUri,
                        colorScheme = MaterialTheme.colorScheme,
                        backdropStrength = snapshot.backdropStrength,
                        backgroundBlur = snapshot.backgroundBlur,
                        imageVeil = snapshot.backgroundVeil,
                        modifier = Modifier.fillMaxSize()
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.08f))
                    )
                    Row(
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .padding(start = 10.dp, end = 10.dp, bottom = 10.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.Bottom
                    ) {
                        Box(
                            modifier = Modifier
                                .size(width = 20.dp, height = 34.dp)
                                .clip(RoundedCornerShape(8.dp))
                                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.9f))
                        ) {
                            Box(
                                modifier = Modifier
                                    .fillMaxHeight()
                                    .width(5.dp)
                                    .background(MaterialTheme.colorScheme.secondary.copy(alpha = 0.8f))
                            )
                        }
                        Box(
                            modifier = Modifier
                                .size(width = 24.dp, height = 38.dp)
                                .clip(RoundedCornerShape(9.dp))
                                .background(
                                    Brush.verticalGradient(
                                        listOf(
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.92f),
                                            MaterialTheme.colorScheme.tertiary.copy(alpha = 0.6f)
                                        )
                                    )
                                )
                                .border(
                                    width = if (snapshot.graphicCoverStyle == "INK") 2.dp else 1.dp,
                                    color = if (snapshot.graphicCoverStyle == "MINIMAL") {
                                        MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f)
                                    } else {
                                        Color.Black.copy(alpha = 0.28f)
                                    },
                                    shape = RoundedCornerShape(9.dp)
                                )
                        )
                        Box(
                            modifier = Modifier
                                .size(width = 34.dp, height = 34.dp)
                                .clip(RoundedCornerShape(10.dp))
                                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.9f))
                        ) {
                            Box(
                                modifier = Modifier
                                    .align(Alignment.TopStart)
                                    .padding(start = 6.dp, top = 4.dp)
                                    .width(18.dp)
                                    .height(7.dp)
                                    .clip(RoundedCornerShape(topStart = 6.dp, topEnd = 6.dp, bottomEnd = 4.dp, bottomStart = 2.dp))
                                    .background(MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.95f))
                            )
                        }
                    }
                    LibraryShelfBar(
                        shelfStyle = snapshot.shelfStyle,
                        colorScheme = MaterialTheme.colorScheme,
                        depth = snapshot.shelfDepth,
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .padding(horizontal = 10.dp, vertical = 8.dp)
                            .fillMaxWidth()
                    )
                } else {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.72f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Style,
                            contentDescription = emptyLabel,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                        )
                    }
                }
            }
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = slotLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = summary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    minLines = 2,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = saveLabel)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = applyLabel)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = clearLabel)
                }
            }
        }
    }
}

@Composable
private fun FlowRowScope.LibraryQuickPresetTile(
    title: String,
    subtitle: String,
    accent: Color,
    snapshot: LibraryThemePresetSnapshot,
    selected: Boolean,
    onClick: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier
            .widthIn(min = 148.dp, max = 220.dp)
            .weight(1f)
            .clickable(onClick = onClick),
        fillMaxWidth = false,
        cornerRadius = 14.dp,
        containerColor = if (selected) {
            accent.copy(alpha = 0.14f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.72f)
        },
        border = BorderStroke(
            width = if (selected) 1.1.dp else 0.8.dp,
            color = if (selected) {
                accent.copy(alpha = 0.44f)
            } else {
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f)
            }
        )
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(76.dp)
                    .clip(RoundedCornerShape(12.dp))
            ) {
                LibraryBackdropLayer(
                    backgroundStyle = snapshot.backgroundStyle,
                    backgroundImageUri = snapshot.backgroundImageUri,
                    colorScheme = MaterialTheme.colorScheme,
                    backdropStrength = snapshot.backdropStrength,
                    backgroundBlur = snapshot.backgroundBlur,
                    imageVeil = snapshot.backgroundVeil,
                    modifier = Modifier.fillMaxSize()
                )
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
                )
                Row(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(start = 9.dp, end = 9.dp, bottom = 9.dp),
                    horizontalArrangement = Arrangement.spacedBy(7.dp),
                    verticalAlignment = Alignment.Bottom
                ) {
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(30.dp)
                            .clip(RoundedCornerShape(8.dp))
                            .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.88f))
                    )
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(34.dp)
                            .clip(RoundedCornerShape(9.dp))
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        accent.copy(alpha = 0.92f),
                                        MaterialTheme.colorScheme.tertiary.copy(alpha = 0.52f)
                                    )
                                )
                            )
                    )
                }
                LibraryShelfBar(
                    shelfStyle = snapshot.shelfStyle,
                    colorScheme = MaterialTheme.colorScheme,
                    depth = snapshot.shelfDepth,
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(horizontal = 9.dp, vertical = 7.dp)
                        .fillMaxWidth()
                )
            }
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(10.dp)
                        .clip(CircleShape)
                        .background(accent)
                )
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
            }
            Text(
                text = subtitle,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 3,
                overflow = TextOverflow.Ellipsis
            )
        }
    }
}

@Composable
private fun LibraryStylePreview(
    uiState: SettingsUiState,
    libraryText: LibrarySectionText,
    modifier: Modifier = Modifier
) {
    val styleLabel = libraryBackgroundStyleLabel(uiState.libraryBackgroundStyle, uiState.appLanguage)
    val shelfLabel = libraryShelfStyleLabel(uiState.libraryShelfStyle, uiState.appLanguage)
    val shape = RoundedCornerShape(22.dp)
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = shape,
        containerColor = Color.Transparent
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(184.dp)
                .clip(shape)
        ) {
            LibraryBackdropLayer(
                backgroundStyle = uiState.libraryBackgroundStyle,
                backgroundImageUri = uiState.libraryBackgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = uiState.libraryBackdropStrength,
                backgroundBlur = uiState.libraryBackgroundBlur,
                imageVeil = uiState.libraryBackgroundVeil,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
            )
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 12.dp, vertical = 10.dp),
                verticalArrangement = Arrangement.SpaceBetween
            ) {
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    Text(
                        text = libraryText.previewTitle,
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                    Text(
                        text = "${libraryText.backgroundStyle}: $styleLabel",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Text(
                        text = "${libraryText.shelfStyle}: $shelfLabel",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.Bottom
                    ) {
                        LibraryPreviewVolume(
                            title = libraryText.previewNovel,
                            accent = MaterialTheme.colorScheme.secondary,
                            isGraphic = false,
                            cardStyle = uiState.libraryCardStyle,
                            coverScaleMode = uiState.libraryCoverScale,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            showProgress = uiState.libraryShowProgress,
                            modifier = Modifier.weight(1f)
                        )
                        LibraryPreviewVolume(
                            title = libraryText.previewGraphic,
                            accent = MaterialTheme.colorScheme.primary,
                            isGraphic = true,
                            cardStyle = uiState.libraryCardStyle,
                            coverScaleMode = uiState.libraryCoverScale,
                            graphicCoverStyle = uiState.libraryGraphicCoverStyle,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            showProgress = uiState.libraryShowProgress,
                            modifier = Modifier.weight(1f)
                        )
                        LibraryPreviewFolder(
                            title = libraryText.previewFolder,
                            cardStyle = uiState.libraryCardStyle,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            modifier = Modifier.weight(1f)
                        )
                    }
                    LibraryShelfBar(
                        shelfStyle = uiState.libraryShelfStyle,
                        colorScheme = MaterialTheme.colorScheme,
                        depth = uiState.libraryShelfDepth,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}

@Composable
private fun LibraryPreviewVolume(
    title: String,
    accent: Color,
    isGraphic: Boolean,
    cardStyle: String,
    coverScaleMode: String,
    graphicCoverStyle: String = "POSTER",
    isSquare: Boolean,
    shadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showProgress: Boolean,
    modifier: Modifier = Modifier
) {
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val coverShape = RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(6.dp))
    val cardPadding = when (cardStyle) {
        "COMPACT" -> 5.dp
        "SHOWCASE" -> 7.dp
        else -> 6.dp
    }
    val coverRatio = if (isSquare) 1f else when (cardStyle) {
        "COMPACT" -> 0.64f
        "SHOWCASE" -> 0.69f
        else -> 0.66f
    }
    val fitInset = if (coverScaleMode == "FIT") 6.dp else 0.dp
    val isInk = graphicCoverStyle == "INK"
    val isMinimal = graphicCoverStyle == "MINIMAL"
    val containerColor = when {
        isGraphic -> MaterialTheme.colorScheme.surfaceContainerLowest.copy(alpha = 0.74f)
        else -> lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.18f
        ).copy(alpha = 0.82f)
    }
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = cardShape,
        shadowElevation = libraryCardElevation(shadow),
        containerColor = containerColor,
        border = BorderStroke(
            width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.06f + cardStroke.coerceIn(0f, 1f) * if (isGraphic) 0.18f else 0.14f)
        )
    ) {
        Column(modifier = Modifier.padding(cardPadding), verticalArrangement = Arrangement.spacedBy(4.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .clip(coverShape)
                    .background(
                        if (isGraphic) {
                            Brush.verticalGradient(
                                listOf(
                                    when {
                                        isMinimal -> accent.copy(alpha = 0.18f)
                                        isInk -> Color.Black.copy(alpha = 0.84f)
                                        else -> accent.copy(alpha = 0.84f)
                                    },
                                    when {
                                        isMinimal -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.76f)
                                        isInk -> accent.copy(alpha = 0.52f)
                                        else -> accent.copy(alpha = 0.56f)
                                    },
                                    if (isMinimal) Color.Transparent else Color.Black.copy(alpha = if (isInk) 0.3f else 0.12f)
                                )
                            )
                        } else {
                            Brush.verticalGradient(
                                listOf(
                                    MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.92f),
                                    MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.82f)
                                )
                            )
                        }
                    )
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(fitInset)
                        .clip(coverShape)
                ) {
                    if (isGraphic) {
                        Box(
                            modifier = Modifier
                                .fillMaxSize()
                                .border(
                                    if (isMinimal) 0.65.dp else if (isInk) 1.55.dp else 0.9.dp,
                                    if (isMinimal) {
                                        MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f)
                                    } else {
                                        Color.Black.copy(alpha = if (isInk) 0.62f else 0.16f)
                                    },
                                    coverShape
                                )
                        )
                        if (!isMinimal) {
                            if (isInk) {
                                Box(
                                    modifier = Modifier
                                        .fillMaxHeight()
                                        .width(5.dp)
                                        .background(
                                            Brush.verticalGradient(
                                                listOf(Color.Black.copy(alpha = 0.68f), accent.copy(alpha = 0.32f))
                                            )
                                        )
                                )
                            } else {
                                Box(
                                    modifier = Modifier
                                        .fillMaxHeight()
                                        .width(3.dp)
                                        .background(
                                            Brush.verticalGradient(
                                                listOf(accent.copy(alpha = 0.36f), MaterialTheme.colorScheme.tertiary.copy(alpha = 0.14f))
                                            )
                                        )
                                )
                            }
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(if (isInk) 14.dp else 8.dp)
                                    .align(Alignment.BottomCenter)
                                    .background(
                                        Brush.verticalGradient(
                                            listOf(Color.Transparent, Color.Black.copy(alpha = if (isInk) 0.22f else 0.1f))
                                        )
                                    )
                            )
                        }
                        if (!isMinimal) {
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth(if (isInk) 0.2f else 0.22f)
                                    .height(5.dp)
                                    .align(Alignment.TopEnd)
                                    .padding(end = 9.dp, top = 8.dp)
                                    .clip(RoundedCornerShape(999.dp))
                                    .background(Color.White.copy(alpha = if (isInk) 0.06f else 0.08f))
                            )
                        }
                        if (isMinimal) {
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(2.dp)
                                    .align(Alignment.BottomCenter)
                                    .background(Color.Black.copy(alpha = 0.06f))
                            )
                        }
                    } else {
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .width(if (cardStyle == "COMPACT") 5.dp else 6.dp)
                                .background(accent.copy(alpha = 0.32f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .width(1.dp)
                                .padding(start = if (cardStyle == "COMPACT") 5.dp else 6.dp)
                                .background(Color.White.copy(alpha = 0.1f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(if (cardStyle == "SHOWCASE") 12.dp else 10.dp)
                                .align(Alignment.TopCenter)
                                .background(
                                    Brush.verticalGradient(
                                        listOf(Color.White.copy(alpha = 0.04f), Color.Transparent)
                                    )
                                )
                        )
                        Icon(
                            Icons.AutoMirrored.Filled.MenuBook,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.align(Alignment.Center)
                        )
                    }
                }
                if (showProgress) {
                    val previewProgress = if (isGraphic) 0.68f else 0.42f
                    Box(
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .fillMaxWidth()
                            .height(2.dp)
                            .background(Color.Black.copy(alpha = 0.12f))
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .fillMaxWidth(previewProgress)
                                .background(
                                    if (isGraphic) {
                                        Brush.horizontalGradient(
                                            listOf(MaterialTheme.colorScheme.primary, MaterialTheme.colorScheme.tertiary)
                                        )
                                    } else {
                                        Brush.horizontalGradient(
                                            listOf(MaterialTheme.colorScheme.secondary, MaterialTheme.colorScheme.primary)
                                        )
                                    }
                                )
                        )
                    }
                    Surface(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = 4.dp, bottom = 5.dp),
                        shape = RoundedCornerShape((radiusBase * 0.42f).coerceAtLeast(4.dp)),
                        color = MaterialTheme.colorScheme.scrim.copy(alpha = titlePanelOpacity.coerceIn(0.18f, 0.78f))
                    ) {
                        Text(
                            if (isGraphic) "68%" else "42%",
                            style = MaterialTheme.typography.labelSmall,
                            color = Color.White.copy(alpha = 0.92f),
                            modifier = Modifier.padding(horizontal = 4.dp, vertical = 1.dp)
                        )
                    }
                }
            }
            Text(
                text = title,
                style = MaterialTheme.typography.labelSmall.copy(fontSize = (11.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
            )
        }
    }
}

@Composable
private fun LibraryPreviewFolder(
    title: String,
    cardStyle: String,
    isSquare: Boolean,
    shadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    modifier: Modifier = Modifier
) {
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = 0.8f)
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 6.dp
        "SHOWCASE" -> 8.dp
        else -> 7.dp
    }
    val coverRatio = if (isSquare) 1f else when (cardStyle) {
        "COMPACT" -> 0.64f
        "SHOWCASE" -> 0.69f
        else -> 0.66f
    }
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = cardShape,
        shadowElevation = libraryCardElevation(shadow),
        containerColor = containerColor,
        border = BorderStroke(
            width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f + cardStroke.coerceIn(0f, 1f) * 0.16f)
        )
    ) {
        Column(modifier = Modifier.padding(contentPadding), verticalArrangement = Arrangement.spacedBy(5.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .clip(RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(6.dp)))
                    .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.9f))
            ) {
                repeat(3) { index ->
                    Box(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = (10 + index * 9).dp, bottom = 10.dp)
                            .width(8.dp)
                            .fillMaxHeight(0.36f + index * 0.05f)
                            .clip(RoundedCornerShape(4.dp))
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        MaterialTheme.colorScheme.primary.copy(alpha = 0.34f - index * 0.05f),
                                        MaterialTheme.colorScheme.surfaceContainerHighest.copy(alpha = 0.44f)
                                    )
                                )
                            )
                    )
                }
                Surface(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(top = 8.dp, end = 8.dp),
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f),
                    border = BorderStroke(
                        width = 0.6.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f)
                    )
                ) {
                    Text(
                        text = "7",
                        modifier = Modifier.padding(horizontal = 7.dp, vertical = 3.dp),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .padding(start = 10.dp, top = 8.dp)
                        .width(46.dp)
                        .height(12.dp)
                        .clip(RoundedCornerShape(999.dp))
                        .background(MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.78f))
                )
                Box(
                    modifier = Modifier
                        .align(Alignment.Center)
                        .size(30.dp)
                        .clip(RoundedCornerShape(10.dp))
                        .background(MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        Icons.Default.FolderOpen,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }
            Text(
                text = title,
                style = MaterialTheme.typography.labelSmall.copy(fontSize = (11.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f),
                modifier = Modifier
                    .background(
                        MaterialTheme.colorScheme.scrim.copy(alpha = titlePanelOpacity.coerceIn(0.18f, 0.78f)),
                        RoundedCornerShape((radiusBase * 0.42f).coerceAtLeast(4.dp))
                    )
                    .padding(horizontal = 6.dp, vertical = 3.dp)
            )
        }
    }
}

// ──────────── Translation section ────────────

@Composable
private fun TranslationSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: TranslationSettingsPage,
    onPageChange: (TranslationSettingsPage) -> Unit,
    onOpenAiServices: () -> Unit,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { translationSectionText(strings.languageCode) }
    val pageText = remember(strings.languageCode) { translationSettingsMapText(strings.languageCode) }
    val languageOptions = remember(strings.languageCode) {
        translationLanguageOptions(strings.languageCode)
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            TranslationSettingsPage.OVERVIEW -> {
                item {
                    val navItems = translationPageNavItems(pageText)
                    SettingsCard(title = pageText.areasTitle) {
                        navItems.forEachIndexed { index, navItem ->
                            SettingsNavItem(
                                icon = navItem.icon,
                                title = navItem.title,
                                description = null,
                                onClick = { onPageChange(navItem.page) }
                            )
                            if (index != navItems.lastIndex) {
                                HorizontalDivider(
                                    modifier = Modifier.padding(start = 56.dp),
                                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                                )
                            }
                        }
                    }
                }
            }
            TranslationSettingsPage.LANGUAGES -> {
                item {
                    TranslationBehaviorCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
                item {
                    TranslationSourceCard(
                        uiState = uiState,
                        sectionText = sectionText,
                        languageOptions = languageOptions,
                        viewModel = viewModel
                    )
                }
                item {
                    TranslationTargetCard(
                        uiState = uiState,
                        sectionText = sectionText,
                        languageOptions = languageOptions,
                        viewModel = viewModel
                    )
                }
            }
            TranslationSettingsPage.OCR -> {
                item {
                    OcrFiltersCard(uiState = uiState, sectionText = sectionText, viewModel = viewModel)
                }
                item {
                    OcrLanguageCard(uiState = uiState, strings = strings, viewModel = viewModel)
                }
            }
            TranslationSettingsPage.OVERLAY -> item {
                TranslationOverlayCard(uiState = uiState, sectionText = sectionText, viewModel = viewModel)
            }
            TranslationSettingsPage.SERVICES -> item {
                TranslationServicesGatewayPage(
                    uiState = uiState,
                    strings = strings,
                    onOpenAiServices = onOpenAiServices
                )
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

private fun pageTitleForTranslation(
    page: TranslationSettingsPage,
    text: TranslationSettingsMapText
): String = when (page) {
    TranslationSettingsPage.OVERVIEW -> text.overviewTitle
    TranslationSettingsPage.LANGUAGES -> text.languagesTitle
    TranslationSettingsPage.OCR -> text.ocrTitle
    TranslationSettingsPage.OVERLAY -> text.overlayTitle
    TranslationSettingsPage.SERVICES -> text.servicesTitle
}

private fun pageDescriptionForTranslation(
    page: TranslationSettingsPage,
    text: TranslationSettingsMapText
): String = when (page) {
    TranslationSettingsPage.OVERVIEW -> text.overviewDescription
    TranslationSettingsPage.LANGUAGES -> text.languagesDescription
    TranslationSettingsPage.OCR -> text.ocrDescription
    TranslationSettingsPage.OVERLAY -> text.overlayDescription
    TranslationSettingsPage.SERVICES -> text.servicesDescription
}

private data class TranslationSettingsNavItem(
    val page: TranslationSettingsPage,
    val title: String,
    val description: String,
    val icon: ImageVector
)

private fun translationPageNavItems(
    text: TranslationSettingsMapText
): List<TranslationSettingsNavItem> = listOf(
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.LANGUAGES,
        title = text.languagesTitle,
        description = text.languagesDescription,
        icon = Icons.Default.Translate
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.OCR,
        title = text.ocrTitle,
        description = text.ocrDescription,
        icon = Icons.AutoMirrored.Filled.TextSnippet
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.OVERLAY,
        title = text.overlayTitle,
        description = text.overlayDescription,
        icon = Icons.Default.Layers
    ),
    TranslationSettingsNavItem(
        page = TranslationSettingsPage.SERVICES,
        title = text.servicesTitle,
        description = text.servicesDescription,
        icon = Icons.Default.SettingsSuggest
    )
)

@Composable
private fun TranslationBehaviorCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = translationSectionText(strings.languageCode).translationBehaviorCard) {
        Text(
            strings.translationHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        ChipRow {
            listOf(
                "OFF" to strings.transOff,
                "OCR" to strings.transOcr,
                "DICTIONARY" to strings.transDict
            ).forEach { (key, label) ->
                MrComicFilterChip(
                    selected = uiState.translationMode == key,
                    onClick = { viewModel.setTranslationMode(key) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
private fun TranslationSourceCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    languageOptions: List<Pair<String, String>>,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.sourceLanguageCard) {
        LabelText(sectionText.sourceLanguageHint)
        ChipRow {
            MrComicFilterChip(
                selected = uiState.translationSourceLanguage == "AUTO",
                onClick = { viewModel.setTranslationSourceLanguage("AUTO") },
                label = { Text(sectionText.autoSource) }
            )
            languageOptions.forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.translationSourceLanguage == code,
                    onClick = { viewModel.setTranslationSourceLanguage(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
private fun TranslationTargetCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    languageOptions: List<Pair<String, String>>,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.targetLanguageCard) {
        LabelText(sectionText.targetLanguageHint)
        ChipRow {
            MrComicFilterChip(
                selected = uiState.translationTargetLanguage == "APP",
                onClick = { viewModel.setTranslationTargetLanguage("APP") },
                label = { Text(sectionText.appLanguageTarget) }
            )
            languageOptions.forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.translationTargetLanguage == code,
                    onClick = { viewModel.setTranslationTargetLanguage(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
private fun TranslationServicesGatewayPage(
    uiState: SettingsUiState,
    strings: AppStrings,
    onOpenAiServices: () -> Unit
) {
    val overviewText = remember(strings.languageCode) { aiServicesOverviewText(strings.languageCode) }
    val summaryText = remember(strings.languageCode) { settingsSectionSummaryText(strings.languageCode) }
    val transportText = remember(strings.languageCode) { translationSectionText(strings.languageCode).transportCard }
    val aiServicesTitle = settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).title
    val readAloudTitle = settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).title
    val gatewayText = remember(strings.languageCode, aiServicesTitle, readAloudTitle) {
        translationServicesGatewayText(strings.languageCode, aiServicesTitle, readAloudTitle)
    }
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    val explain = compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled)

    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        SettingsPreviewBanner(
            title = aiServicesTitle,
            subtitle = gatewayText.previewSubtitle,
            details = "$transport · ${overviewText.advancedExplainTitle}: $explain"
        )
        SettingsCompactSummaryCard(
            title = summaryText.title,
            hint = summaryText.hint,
            items = listOf(
                transportText to transport,
                overviewText.machineTranslationTitle to aiMachineTranslationStatus(uiState, strings.languageCode),
                overviewText.advancedExplainTitle to explain,
                overviewText.providersTitle to aiProvidersStatus(uiState, strings.languageCode)
            )
        )
        SettingsCard(title = gatewayText.ownershipTitle) {
            Text(
                text = gatewayText.ownershipBody,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Spacer(Modifier.height(8.dp))
            LabelText(gatewayText.readAloudHint)
            Spacer(Modifier.height(12.dp))
            MrComicButton(
                onClick = onOpenAiServices,
                variant = MrComicButtonVariant.Outlined
            ) {
                Text(gatewayText.openButtonLabel)
            }
        }
    }
}

@Composable
private fun OcrFiltersCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.comicFiltersCard) {
        LabelText(sectionText.comicFiltersHint)
        Spacer(Modifier.height(8.dp))
        MrComicSwitchRow(
            title = sectionText.dialoguesOnlyTitle,
            subtitle = sectionText.dialoguesOnlySubtitle,
            checked = uiState.ocrDialoguesOnly,
            onCheckedChange = viewModel::setOcrDialoguesOnly
        )
        Spacer(Modifier.height(12.dp))
        MrComicSwitchRow(
            title = sectionText.includeSfxTitle,
            subtitle = sectionText.includeSfxSubtitle,
            checked = uiState.ocrIncludeSfx,
            onCheckedChange = viewModel::setOcrIncludeSfx
        )
    }
}

@Composable
private fun TranslationOverlayCard(
    uiState: SettingsUiState,
    sectionText: TranslationSectionText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = sectionText.overlayCard) {
        LabelText(sectionText.overlayHint)
        Spacer(Modifier.height(12.dp))
        SettingsSliderTile(
            title = sectionText.overlayOpacityTitle,
            valueLabel = "${(uiState.ocrOverlayOpacity * 100).toInt()}%",
            value = uiState.ocrOverlayOpacity,
            onValueChange = viewModel::setOcrOverlayOpacity,
            valueRange = 0.45f..1.0f
        )
        Spacer(Modifier.height(12.dp))
        Text(
            text = sectionText.overlayFontScaleTitle,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.onSurface
        )
        ChipRow {
            listOf(0.85f, 1.0f, 1.15f, 1.3f).forEach { scale ->
                MrComicFilterChip(
                    selected = kotlin.math.abs(uiState.ocrOverlayFontScale - scale) < 0.01f,
                    onClick = { viewModel.setOcrOverlayFontScale(scale) },
                    label = { Text("${(scale * 100).toInt()}%") }
                )
            }
        }
        Spacer(Modifier.height(12.dp))
        Text(
            text = sectionText.overlayStyleTitle,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.onSurface
        )
        ChipRow {
            listOf(
                "AUTO" to sectionText.overlayStyleAuto,
                "LIGHT" to sectionText.overlayStyleLight,
                "DARK" to sectionText.overlayStyleDark
            ).forEach { (code, label) ->
                MrComicFilterChip(
                    selected = uiState.ocrOverlayStyle == code,
                    onClick = { viewModel.setOcrOverlayStyle(code) },
                    label = { Text(label) }
                )
            }
        }
    }
}

@Composable
private fun OcrLanguageCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.ocrLanguageCard) {
        LabelText(strings.ocrLanguageHint)
        ChipRow {
            ocrSourceLanguageOptions(strings.languageCode).forEach { option ->
                MrComicFilterChip(
                    selected = uiState.ocrLanguage == option.code.uppercase(),
                    onClick = { viewModel.setOcrLanguage(option.code.uppercase()) },
                    label = { Text(option.label) }
                )
            }
        }
        if (uiState.translationMode == "OFF") {
            Spacer(Modifier.height(4.dp))
            Text(
                strings.ocrNote,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.error.copy(alpha = 0.7f)
            )
        }
    }
}

@Composable
private fun AiServicesSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val overviewText = remember(strings.languageCode) { aiServicesOverviewText(strings.languageCode) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            AiServiceMachineTranslationCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            AiServiceLocalExplainCard(overviewText = overviewText)
        }
        item {
            AiServiceAdvancedExplainCard(
                uiState = uiState,
                strings = strings,
                overviewText = overviewText,
                onExplainProviderChange = { viewModel.setTranslationExplainProvider(it) }
            )
        }
        item {
            AiServiceSummaryOverviewCard(overviewText = overviewText)
        }
        item {
            AiServiceOcrOverviewCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            AiServiceProvidersOverviewCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            OpenRouterProviderCard(
                uiState = uiState,
                language = strings.languageCode,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun AiServiceMachineTranslationCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    val source = translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false)
    val target = translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true)
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    SettingsCard(title = overviewText.machineTranslationTitle) {
        Text(
            text = overviewText.machineTranslationHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.routeLabel}: $source → $target")
        LabelText("${translationSectionText(strings.languageCode).transportCard}: $transport")
        LabelText("${overviewText.statusLabel}: ${aiMachineTranslationStatus(uiState, strings.languageCode)}")
    }
}

@Composable
private fun AiServiceLocalExplainCard(
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.localExplainTitle) {
        Text(
            text = overviewText.localExplainHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${overviewText.localProviderValue}")
        LabelText("${overviewText.statusLabel}: ${overviewText.localExplainStatus}")
    }
}

@Composable
private fun AiServiceAdvancedExplainCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText,
    onExplainProviderChange: (String) -> Unit = {}
) {
    SettingsCard(title = overviewText.advancedExplainTitle) {
        Text(
            text = overviewText.advancedExplainHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${aiProvidersValue(uiState, strings.languageCode)}")
        LabelText("${overviewText.expandedExplainLabel}: ${compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled)}")
        Spacer(Modifier.height(8.dp))
        val currentProvider = uiState.translationConfig.explainProvider
        Text(
            text = "Explain provider:",
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
        Spacer(Modifier.height(4.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            FilterChip(
                selected = currentProvider == "LOCAL",
                onClick = { onExplainProviderChange("LOCAL") },
                label = { Text("Local dictionary") }
            )
            FilterChip(
                selected = currentProvider == "ONLINE",
                onClick = { onExplainProviderChange("ONLINE") },
                label = { Text("Online (internet)") }
            )
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${overviewText.statusLabel}: ${aiAdvancedExplainStatus(uiState, strings.languageCode)}")
    }
}

@Composable
private fun AiServiceSummaryOverviewCard(
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.summaryTitle) {
        Text(
            text = overviewText.summaryHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${overviewText.notConnectedValue}")
        LabelText("${overviewText.statusLabel}: ${overviewText.summaryUnavailableStatus}")
    }
}

@Composable
private fun AiServiceOcrOverviewCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    val translationText = remember(strings.languageCode) { translationSectionText(strings.languageCode) }
    SettingsCard(title = overviewText.ocrTitle) {
        Text(
            text = overviewText.ocrHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${strings.ocrLanguageCard}: ${uiState.ocrLanguage}")
        LabelText("${translationText.dialoguesOnlyTitle}: ${compactToggleLabel(strings.languageCode, uiState.ocrDialoguesOnly)}")
        LabelText("${translationText.includeSfxTitle}: ${compactToggleLabel(strings.languageCode, uiState.ocrIncludeSfx)}")
    }
}

@Composable
private fun AiServiceProvidersOverviewCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.providersTitle) {
        Text(
            text = overviewText.providersHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${aiProvidersValue(uiState, strings.languageCode)}")
        LabelText("${overviewText.statusLabel}: ${aiProvidersStatus(uiState, strings.languageCode)}")
        if (uiState.openRouterModel.isNotBlank()) {
            LabelText("${openRouterModelLabel(strings.languageCode)}: ${uiState.openRouterModel}")
        }
    }
}

@Composable
private fun OpenRouterProviderCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var apiKeyDraft by rememberSaveable { mutableStateOf("") }
    var modelDraft by rememberSaveable(uiState.openRouterModel) { mutableStateOf(uiState.openRouterModel) }
    val status = when {
        uiState.openRouterApiKey.isBlank() -> openRouterDisconnectedStatus(language)
        !openRouterCredentialsPassLocalValidation(uiState.openRouterApiKey, uiState.openRouterModel) ->
            openRouterNeedsValidationStatus(language)
        uiState.translationAvailability.networkAvailable -> openRouterConnectedStatus(language)
        else -> openRouterNeedsNetworkStatus(language)
    }

    SettingsCard(title = "OpenRouter") {
        Text(
            text = openRouterCardHint(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        OutlinedTextField(
            value = apiKeyDraft,
            onValueChange = { apiKeyDraft = it },
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            label = { Text(openRouterApiKeyLabel(language)) },
            placeholder = {
                Text(if (uiState.openRouterApiKey.isNotBlank()) "••••••••" else "sk-or-v1-...")
            },
            visualTransformation = PasswordVisualTransformation()
        )
        Spacer(Modifier.height(10.dp))
        OutlinedTextField(
            value = modelDraft,
            onValueChange = { modelDraft = it },
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            label = { Text(openRouterModelLabel(language)) },
            placeholder = { Text("openrouter/auto") }
        )
        Spacer(Modifier.height(10.dp))
        LabelText("${openRouterStatusLabel(language)}: $status")
        Spacer(Modifier.height(12.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
            MrComicButton(
                onClick = {
                    val normalizedKey = apiKeyDraft.trim()
                    val normalizedModel = modelDraft.trim().ifEmpty { "openrouter/auto" }
                    viewModel.saveEncryptedOpenRouterApiKey(
                        normalizedKey.ifEmpty { uiState.openRouterApiKey }
                    )
                    viewModel.setOpenRouterModel(normalizedModel)
                    apiKeyDraft = ""
                },
                variant = MrComicButtonVariant.Filled
            ) {
                Text(openRouterSaveLabel(language))
            }
            MrComicButton(
                onClick = {
                    val normalizedKey = ""
                    val normalizedModel = "openrouter/auto"
                    apiKeyDraft = normalizedKey
                    modelDraft = normalizedModel
                    viewModel.saveEncryptedOpenRouterApiKey(normalizedKey)
                    viewModel.setOpenRouterModel(normalizedModel)
                },
                variant = MrComicButtonVariant.Outlined
            ) {
                Text(openRouterClearLabel(language))
            }
        }
    }
}

private fun openRouterCardHint(language: String): String = when (language) {
    "ru" -> "Ключ и модель для онлайн-перевода через OpenRouter. Ключ хранится локально в зашифрованном виде."
    else -> "API key and model for online translation through OpenRouter. The key is stored encrypted on this device."
}

private fun openRouterApiKeyLabel(language: String): String = when (language) {
    "ru" -> "API ключ"
    else -> "API key"
}

private fun openRouterModelLabel(language: String): String = when (language) {
    "ru" -> "Модель"
    else -> "Model"
}

private fun openRouterStatusLabel(language: String): String = when (language) {
    "ru" -> "Статус"
    else -> "Status"
}

private fun openRouterSaveLabel(language: String): String = when (language) {
    "ru" -> "Сохранить"
    else -> "Save"
}

private fun openRouterClearLabel(language: String): String = when (language) {
    "ru" -> "Очистить"
    else -> "Clear"
}

private fun openRouterConnectedStatus(language: String): String = when (language) {
    "ru" -> "Подключён"
    else -> "Connected"
}

private fun openRouterNeedsNetworkStatus(language: String): String = when (language) {
    "ru" -> "Ключ сохранён, нужна сеть"
    else -> "Configured, network required"
}

private fun openRouterNeedsValidationStatus(language: String): String = when (language) {
    "ru" -> "Проверьте ключ или модель"
    else -> "Check key or model"
}

private fun openRouterDisconnectedStatus(language: String): String = when (language) {
    "ru" -> "Не настроен"
    else -> "Not configured"
}

@Composable
private fun PerformanceSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    DetailedPerformanceSection(
        uiState = uiState,
        viewModel = viewModel,
        language = strings.languageCode,
        modifier = modifier
    )
}

@Composable
private fun ReadAloudSection(
    uiState: SettingsUiState,
    viewModel: SettingsViewModel,
    strings: AppStrings,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val previewController = remember(context) { SettingsTextToSpeechPreviewController(context) }
    val previewState by previewController.state.collectAsState()
    val sectionText = remember(strings.languageCode) { readAloudSectionText(strings.languageCode) }
    var showVoicePicker by rememberSaveable { mutableStateOf(false) }
    val provider = remember(uiState.readerTtsProvider) { ReaderTtsProviderType.fromStored(uiState.readerTtsProvider) }
    LaunchedEffect(
        provider,
        uiState.readerTtsVoiceName,
        uiState.readerTtsSpeed,
        uiState.readerTtsPitch,
        uiState.readerTtsVolume
    ) {
        previewController.updateConfig(
            provider = provider,
            voiceName = uiState.readerTtsVoiceName,
            speed = uiState.readerTtsSpeed,
            pitch = uiState.readerTtsPitch,
            volume = uiState.readerTtsVolume
        )
    }
    DisposableEffect(previewController) {
        onDispose { previewController.release() }
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCard(title = readAloudProviderTitle(strings.languageCode)) {
                Text(
                    text = readAloudProviderHint(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ChipRow {
                    MrComicFilterChip(
                        selected = provider == ReaderTtsProviderType.SYSTEM,
                        onClick = { viewModel.setReaderTtsProvider(ReaderTtsProviderType.SYSTEM.storedValue) },
                        label = { Text(readAloudProviderLabel(ReaderTtsProviderType.SYSTEM.storedValue, strings.languageCode)) }
                    )
                    listOf(ReaderTtsProviderType.OPENAI, ReaderTtsProviderType.AZURE, ReaderTtsProviderType.ALIYUN).forEach { item ->
                        MrComicFilterChip(
                            selected = false,
                            enabled = false,
                            onClick = {},
                            label = { Text("${readAloudProviderLabel(item.storedValue, strings.languageCode)} · ${readAloudNotConnectedLabel(strings.languageCode)}") }
                        )
                    }
                }
                Spacer(Modifier.height(8.dp))
                LabelText(readAloudExternalVoicesHint(strings.languageCode))
            }
        }
        item {
            SettingsCard(title = sectionText.title) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.Top
                ) {
                    Icon(
                        imageVector = Icons.Default.RecordVoiceOver,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        modifier = Modifier.size(18.dp)
                    )
                    Text(
                        text = when (strings.languageCode) {
                            "en" -> "Uses installed system voices and stays in sync with the reader service panel."
                            "ja" -> "インストール済みのシステム音声を使い、リーダー内のサービス欄と同期します。"
                            "zh" -> "使用已安装的系统语音，并与阅读器服务面板保持同步。"
                            "ko" -> "설치된 시스템 음성을 사용하며 리더 서비스 패널과 동기화됩니다."
                            else -> "Использует установленные системные голоса и синхронизируется с сервисной панелью ридера."
                        },
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Spacer(Modifier.height(2.dp))
                SettingsPickerTile(
                    title = readAloudVoiceTitle(strings.languageCode),
                    value = previewState.availableVoices.firstOrNull { it.name == uiState.readerTtsVoiceName }?.label
                        ?: readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode),
                    onClick = { showVoicePicker = true },
                    compact = true
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudPlaybackTitle(strings.languageCode),
                    valueLabel = "${String.format(Locale.US, "%.2f", uiState.readerTtsSpeed)}x",
                    value = uiState.readerTtsSpeed,
                    onValueChange = viewModel::setReaderTtsSpeed,
                    valueRange = 0.5f..2.0f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Default speech speed for text books."
                        "ja" -> "テキスト本で使う既定の読み上げ速度です。"
                        "zh" -> "文本书籍默认朗读语速。"
                        "ko" -> "텍스트 책에 쓰는 기본 읽기 속도입니다."
                        else -> "Скорость озвучивания по умолчанию для текстовых книг."
                    }
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudPitchTitle(strings.languageCode),
                    valueLabel = String.format(Locale.US, "%.2f", uiState.readerTtsPitch),
                    value = uiState.readerTtsPitch,
                    onValueChange = viewModel::setReaderTtsPitch,
                    valueRange = 0.5f..2.0f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Keeps the system voice calmer or brighter."
                        "ja" -> "システム音声を落ち着かせるか、明るくするかを調整します。"
                        "zh" -> "让系统语音更沉稳或更明亮。"
                        "ko" -> "시스템 음성을 더 차분하게 또는 더 밝게 조정합니다."
                        else -> "Делает системный голос спокойнее или светлее."
                    }
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudVolumeTitle(strings.languageCode),
                    valueLabel = "${(uiState.readerTtsVolume * 100).toInt()}%",
                    value = uiState.readerTtsVolume,
                    onValueChange = viewModel::setReaderTtsVolume,
                    valueRange = 0f..1f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Applies to the reader TTS stream without touching system media volume."
                        "ja" -> "システム全体の音量ではなく、リーダーの TTS 出力にだけ適用します。"
                        "zh" -> "只作用于阅读器 TTS，不改动系统媒体音量。"
                        "ko" -> "시스템 미디어 볼륨이 아니라 리더 TTS 출력에만 적용됩니다."
                        else -> "Применяется только к TTS в ридере и не меняет общую медиагромкость системы."
                    }
                )
                Spacer(Modifier.height(10.dp))
                LabelText(readAloudSleepTimerTitle(strings.languageCode))
                ChipRow {
                    ReaderTtsSleepTimerMode.entries.forEach { mode ->
                        MrComicFilterChip(
                            selected = uiState.readerTtsSleepTimerMode == mode.storedValue,
                            onClick = { viewModel.setReaderTtsSleepTimerMode(mode.storedValue) },
                            label = { Text(readAloudSleepTimerLabel(mode.storedValue, strings.languageCode)) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(
                title = when (strings.languageCode) {
                    "en" -> "Playback and sounds"
                    "ja" -> "再生とサウンド"
                    "zh" -> "播放与声音"
                    "ko" -> "재생과 사운드"
                    else -> "Воспроизведение и звуки"
                }
            ) {
                SwitchRow(
                    title = when (strings.languageCode) {
                        "en" -> "Page flip sound"
                        "ja" -> "ページめくり音"
                        "zh" -> "翻页音效"
                        "ko" -> "페이지 넘김 소리"
                        else -> "Звук перелистывания"
                    },
                    subtitle = when (strings.languageCode) {
                        "en" -> "Keeps a light paper cue for reader paging."
                        "ja" -> "ページ送りに軽い紙の合図を追加します。"
                        "zh" -> "为翻页保留轻微的纸张提示音。"
                        "ko" -> "페이지 넘김에 가벼운 종이 소리를 남깁니다."
                        else -> "Оставляет лёгкую бумажную подсказку при листании."
                    },
                    checked = uiState.readerPageSound,
                    onCheckedChange = viewModel::setReaderPageSound
                )
                if (uiState.readerPageSound) {
                    Spacer(Modifier.height(10.dp))
                    LabelText(
                        when (strings.languageCode) {
                            "en" -> "Page sound style"
                            "ja" -> "ページ音スタイル"
                            "zh" -> "翻页音风格"
                            "ko" -> "페이지 소리 스타일"
                            else -> "Стиль звука перелистывания"
                        }
                    )
                    ChipRow {
                        listOf("PAPER", "CRISP", "SOFT").forEach { style ->
                            MrComicFilterChip(
                                selected = uiState.readerPageSoundStyle == style,
                                onClick = { viewModel.setReaderPageSoundStyle(style) },
                                label = { Text(style) }
                            )
                        }
                    }
                }
                Spacer(Modifier.height(10.dp))
                SwitchRow(
                    title = strings.uiSoundsTitle,
                    subtitle = strings.uiSoundsSubtitle,
                    checked = uiState.uiSoundEnabled,
                    onCheckedChange = viewModel::setUiSoundEnabled
                )
                if (uiState.uiSoundEnabled) {
                    Spacer(Modifier.height(10.dp))
                    SettingsSliderTile(
                        title = when (strings.languageCode) {
                            "en" -> "UI sounds volume"
                            "ja" -> "UI サウンド音量"
                            "zh" -> "界面音量"
                            "ko" -> "UI 사운드 볼륨"
                            else -> "Громкость UI-звуков"
                        },
                        valueLabel = "${(uiState.uiSoundsVolume * 100).toInt()}%",
                        value = uiState.uiSoundsVolume,
                        onValueChange = viewModel::setUiSoundsVolume,
                        valueRange = 0f..1f
                    )
                }
            }
        }
        item {
            SettingsCard(title = readAloudPreviewTitle(strings.languageCode)) {
                Text(
                    text = readAloudPreviewHint(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                LabelText("${readAloudProviderTitle(strings.languageCode)}: ${readAloudProviderLabel(uiState.readerTtsProvider, strings.languageCode)}")
                LabelText("${readAloudVoiceTitle(strings.languageCode)}: ${previewState.availableVoices.firstOrNull { it.name == uiState.readerTtsVoiceName }?.label ?: readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode)}")
                LabelText(readAloudPreviewReadyLabel(previewState.ready, strings.languageCode))
                Spacer(Modifier.height(8.dp))
                Text(
                    text = readAloudPreviewSample(strings.languageCode),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Spacer(Modifier.height(10.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    MrComicButton(
                        modifier = Modifier.weight(1f),
                        enabled = provider == ReaderTtsProviderType.SYSTEM && previewState.ready,
                        onClick = { previewController.togglePreview(readAloudPreviewSample(strings.languageCode)) },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Text(
                            text = if (previewState.isSpeaking) {
                                readAloudPreviewStopLabel(strings.languageCode)
                            } else {
                                readAloudPreviewPlayLabel(strings.languageCode)
                            },
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    MrComicButton(
                        modifier = Modifier.weight(1f),
                        enabled = previewState.isSpeaking,
                        onClick = previewController::stop,
                        variant = MrComicButtonVariant.Outlined
                    ) {
                        Text(
                            text = readAloudPreviewStopLabel(strings.languageCode),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.statusTitle) {
                Text(
                    text = sectionText.statusBody,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.roadmapTitle) {
                AboutBulletList(items = sectionText.roadmapItems)
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
    if (showVoicePicker) {
        SettingsPickerDialog(
            title = readAloudVoiceTitle(strings.languageCode),
            options = listOf(
                ReaderPickerOption("", readAloudVoiceSummaryLabel(null, strings.languageCode))
            ) + previewState.availableVoices.map { ReaderPickerOption(it.name, it.label) },
            selectedValue = uiState.readerTtsVoiceName.orEmpty(),
            onDismiss = { showVoicePicker = false },
            onSelect = {
                viewModel.setReaderTtsVoiceName(it.ifBlank { null })
                showVoicePicker = false
            }
        )
    }
}

@Composable
private fun SyncProgressCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onImportRejected: () -> Unit
) {
    val context = LocalContext.current
    val busy = uiState.isExporting || uiState.isImporting
    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri -> uri?.let { viewModel.exportProgress(it) } }
    val importLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        if (runCatching { uri.isAcceptedSettingsJsonImport(context) }.getOrDefault(false)) {
            viewModel.importProgress(uri)
        } else {
            onImportRejected()
        }
    }

    SettingsCard(title = strings.progressCard) {
        Text(
            text = strings.progressHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            MrComicButton(
                onClick = {
                    exportLauncher.launch("mr_comic_progress_${System.currentTimeMillis()}.json")
                },
                enabled = !busy,
                modifier = Modifier.weight(1f),
                variant = MrComicButtonVariant.Tonal
            ) {
                if (uiState.isExporting) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.exportingBtn)
                } else {
                    Icon(Icons.Default.FileUpload, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(6.dp))
                    Text(strings.exportBtn)
                }
            }
            MrComicButton(
                onClick = { importLauncher.launch(arrayOf("application/json", "*/*")) },
                enabled = !busy,
                modifier = Modifier.weight(1f),
                variant = MrComicButtonVariant.Tonal
            ) {
                if (uiState.isImporting) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.importingBtn)
                } else {
                    Icon(Icons.Default.FileDownload, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(6.dp))
                    Text(strings.importBtn)
                }
            }
        }
        Spacer(Modifier.height(8.dp))
        SwitchRow(
            title = strings.autoBackup,
            subtitle = strings.autoBackupSubtitle,
            checked = uiState.autoBackupEnabled,
            onCheckedChange = viewModel::setAutoBackupEnabled
        )
    }
}

@Composable
private fun SyncFormatCard(strings: AppStrings) {
    SettingsCard(
        title = when (strings.languageCode) {
            "en" -> "Format"
            "ja" -> "形式"
            "zh" -> "格式"
            "ko" -> "형식"
            else -> "Формат"
        }
    ) {
        Text(
            text = when (strings.languageCode) {
                "en" -> "Progress snapshots are stored as JSON and can be restored on another device with the same library access."
                "ja" -> "進捗スナップショットは JSON として保存され、同じライブラリアクセスを持つ別端末へ復元できます。"
                "zh" -> "进度快照以 JSON 保存，可在拥有相同书库访问权限的另一台设备上恢复。"
                "ko" -> "진행 스냅샷은 JSON으로 저장되며 같은 라이브러리 접근 권한이 있는 다른 기기에서 복원할 수 있습니다."
                else -> "Снимки прогресса сохраняются в JSON и могут быть восстановлены на другом устройстве с тем же доступом к библиотеке."
            },
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
private fun LibraryAccessCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val context = LocalContext.current
    val busy = uiState.isRepairingLibraryAccess
    val reconnectLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocumentTree()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        runCatching {
            context.contentResolver.takePersistableUriPermission(
                uri,
                Intent.FLAG_GRANT_READ_URI_PERMISSION
            )
        }
        viewModel.repairLibraryAccess(uri)
    }

    LaunchedEffect(uiState.pendingLibraryRepairLaunchToken) {
        val token = uiState.pendingLibraryRepairLaunchToken
        if (token == 0L) return@LaunchedEffect
        viewModel.consumePendingLibraryRepairLaunch()
        reconnectLauncher.launch(null)
    }

    SettingsCard(title = libraryAccessTitle(strings.languageCode)) {
        Text(
            text = when (strings.languageCode) {
                "en" -> "If Android dropped folder permissions, reconnect the library root without losing reading progress."
                "ja" -> "Android がフォルダ権限を失った場合でも、読書進捗を失わずにライブラリルートを再接続できます。"
                "zh" -> "如果 Android 丢失了文件夹权限，可在不丢失阅读进度的情况下重新连接书库根目录。"
                "ko" -> "Android가 폴더 권한을 잃어도 읽기 진행을 잃지 않고 라이브러리 루트를 다시 연결할 수 있습니다."
                else -> "Если Android потерял права на папки, перепривяжите корень библиотеки без потери прогресса чтения."
            },
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        FilledTonalButton(
            onClick = { reconnectLauncher.launch(null) },
            enabled = !busy,
            modifier = Modifier.fillMaxWidth()
        ) {
            if (uiState.isRepairingLibraryAccess) {
                CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                Spacer(Modifier.width(6.dp))
                Text(
                    when (strings.languageCode) {
                        "en" -> "Reconnecting..."
                        "ja" -> "再接続中..."
                        "zh" -> "重新连接中..."
                        "ko" -> "다시 연결 중..."
                        else -> "Перепривязка..."
                    }
                )
            } else {
                Icon(Icons.Default.FolderOpen, contentDescription = null, modifier = Modifier.size(18.dp))
                Spacer(Modifier.width(6.dp))
                Text(
                    when (strings.languageCode) {
                        "en" -> "Reconnect library"
                        "ja" -> "ライブラリを再接続"
                        "zh" -> "重新连接书库"
                        "ko" -> "라이브러리 다시 연결"
                        else -> "Перепривязать библиотеку"
                    }
                )
            }
        }
    }
}

@Composable
private fun LibraryCacheCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.cacheCard) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(strings.imageCacheTitle, style = MaterialTheme.typography.titleSmall)
                Text(
                    strings.imageCacheHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Spacer(Modifier.width(12.dp))
            FilledTonalButton(
                onClick = viewModel::clearImageCache,
                enabled = !uiState.isClearingCache
            ) {
                if (uiState.isClearingCache) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(8.dp))
                    Text(strings.clearingBtn)
                } else {
                    Text(strings.clearCacheBtn)
                }
            }
        }
    }
}

private fun syncBackupTitle(language: String): String = when (language) {
    "en" -> "Backup and transfer"
    "ja" -> "バックアップと移行"
    "zh" -> "备份与迁移"
    "ko" -> "백업 및 전송"
    else -> "Бэкап и перенос"
}

private fun syncBackupSummary(language: String): String = when (language) {
    "en" -> "Reading progress export, import, and automatic backups."
    "ja" -> "読書進捗のエクスポート、インポート、自動バックアップ。"
    "zh" -> "阅读进度导出、导入和自动备份。"
    "ko" -> "읽기 진행 내보내기, 가져오기, 자동 백업."
    else -> "Экспорт и импорт прогресса чтения, плюс автоматические резервные копии."
}

private fun syncStorageTitle(language: String): String = when (language) {
    "en" -> "Storage and access"
    "ja" -> "ストレージとアクセス"
    "zh" -> "存储与访问"
    "ko" -> "저장소와 접근"
    else -> "Хранилище и доступ"
}

private fun syncStorageSummary(language: String): String = when (language) {
    "en" -> "Reconnect library folders after reinstall and clear local cache."
    "ja" -> "再インストール後のライブラリ再接続とローカルキャッシュの整理。"
    "zh" -> "重装后重新连接书库并清理本地缓存。"
    "ko" -> "재설치 후 라이브러리 재연결과 로컬 캐시 정리."
    else -> "Перепривязка папок библиотеки после переустановки и очистка локального кэша."
}

private fun syncPopupSettingsTitle(language: String): String = when (language) {
    "en" -> "Popup messages"
    "ja" -> "ポップアップ表示"
    "zh" -> "弹窗消息"
    "ko" -> "팝업 메시지"
    else -> "Всплывающие сообщения"
}

private fun syncPopupSettingsSummary(language: String): String = when (language) {
    "en" -> "Import error presentation and reader image popup behavior."
    "ja" -> "インポートエラー表示とリーダー画像ポップアップの挙動。"
    "zh" -> "导入错误展示方式和阅读器图片弹窗行为。"
    "ko" -> "가져오기 오류 표시 방식과 리더 이미지 팝업 동작."
    else -> "Показ ошибок импорта и поведение графических всплывашек в ридере."
}

@Composable
private fun SyncSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: SyncSettingsPage,
    onImportRejected: () -> Unit,
    onPageChange: (SyncSettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            SyncSettingsPage.OVERVIEW -> {
                item {
                    SettingsCompactSummaryCard(
                        title = settingsSectionSummaryText(strings.languageCode).title,
                        hint = settingsSectionSummaryText(strings.languageCode).hint,
                        items = listOf(
                            strings.autoBackup to compactToggleLabel(strings.languageCode, uiState.autoBackupEnabled),
                            syncTransferLabel(strings.languageCode) to "JSON"
                        )
                    )
                }
                item {
                    SettingsCard(title = settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).title) {
                        SettingsNavItem(
                            icon = Icons.Default.Sync,
                            title = syncBackupTitle(strings.languageCode),
                            description = null,
                            summary = syncBackupSummary(strings.languageCode),
                            onClick = { onPageChange(SyncSettingsPage.BACKUP) }
                        )
                    }
                }
            }
            SyncSettingsPage.BACKUP -> {
                item {
                    SyncProgressCard(
                        uiState = uiState,
                        strings = strings,
                        viewModel = viewModel,
                        onImportRejected = onImportRejected
                    )
                }
                item {
                    SyncFormatCard(strings = strings)
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun StorageSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = settingsSectionSummaryText(strings.languageCode).hint,
                items = listOf(
                    storageFoldersLabel(strings.languageCode) to settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).title,
                    cacheShortLabel(strings.languageCode) to if (uiState.isClearingCache) strings.clearingBtn else strings.clearCacheBtn
                )
            )
        }
        item {
            LibraryAccessCard(uiState = uiState, strings = strings, viewModel = viewModel)
        }
        item {
            LibraryCacheCard(uiState = uiState, strings = strings, viewModel = viewModel)
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun SyncPopupSettingsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val language = strings.languageCode
    val popupScalePercent = (uiState.imageMessagePopupSizeScale * 100).roundToInt()
    val durationLabel = when {
        uiState.imageMessagePopupDurationSeconds <= 0 -> when (language) {
            "en" -> "Manual"
            "ja" -> "手動"
            "zh" -> "手动"
            "ko" -> "수동"
            else -> "Вручную"
        }
        language == "en" -> "${uiState.imageMessagePopupDurationSeconds} s"
        language == "ja" -> "${uiState.imageMessagePopupDurationSeconds}秒"
        language == "zh" -> "${uiState.imageMessagePopupDurationSeconds} 秒"
        language == "ko" -> "${uiState.imageMessagePopupDurationSeconds}초"
        else -> "${uiState.imageMessagePopupDurationSeconds} сек"
    }
    val presentationOptions = listOf(
        SettingsImportErrorPresentation.TEXT to when (language) {
            "en" -> "Text"
            "ja" -> "テキスト"
            "zh" -> "文本"
            "ko" -> "텍스트"
            else -> "Текст"
        },
        SettingsImportErrorPresentation.IMAGE to when (language) {
            "en" -> "Image"
            "ja" -> "画像"
            "zh" -> "图片"
            "ko" -> "이미지"
            else -> "Картинка"
        }
    )
    val positionOptions = listOf(
        SettingsImageMessagePopupPosition.CENTER to when (language) {
            "en" -> "Center"
            "ja" -> "中央"
            "zh" -> "居中"
            "ko" -> "가운데"
            else -> "По центру"
        },
        SettingsImageMessagePopupPosition.TOP to when (language) {
            "en" -> "Top"
            "ja" -> "上"
            "zh" -> "顶部"
            "ko" -> "상단"
            else -> "Сверху"
        },
        SettingsImageMessagePopupPosition.BOTTOM to when (language) {
            "en" -> "Bottom"
            "ja" -> "下"
            "zh" -> "底部"
            "ko" -> "하단"
            else -> "Снизу"
        },
        SettingsImageMessagePopupPosition.TOP_START to when (language) {
            "en" -> "Top left"
            "ja" -> "左上"
            "zh" -> "左上"
            "ko" -> "왼쪽 위"
            else -> "Слева сверху"
        },
        SettingsImageMessagePopupPosition.TOP_END to when (language) {
            "en" -> "Top right"
            "ja" -> "右上"
            "zh" -> "右上"
            "ko" -> "오른쪽 위"
            else -> "Справа сверху"
        },
        SettingsImageMessagePopupPosition.BOTTOM_START to when (language) {
            "en" -> "Bottom left"
            "ja" -> "左下"
            "zh" -> "左下"
            "ko" -> "왼쪽 아래"
            else -> "Слева снизу"
        },
        SettingsImageMessagePopupPosition.BOTTOM_END to when (language) {
            "en" -> "Bottom right"
            "ja" -> "右下"
            "zh" -> "右下"
            "ko" -> "오른쪽 아래"
            else -> "Справа снизу"
        }
    )

    SettingsCard(title = syncPopupSettingsTitle(language)) {
        Text(
            text = syncPopupSettingsSummary(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(10.dp))
        LabelText(
            when (language) {
                "en" -> "Import error presentation"
                "ja" -> "インポートエラーの表示"
                "zh" -> "导入错误展示"
                "ko" -> "가져오기 오류 표시"
                else -> "Показ ошибок импорта"
            }
        )
        ChipRow {
            presentationOptions.forEach { (value, label) ->
                MrComicFilterChip(
                    selected = uiState.settingsImportErrorPresentation == value,
                    onClick = { viewModel.setSettingsImportErrorPresentation(value) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        LabelText(
            when (language) {
                "en" -> "Reader popup position"
                "ja" -> "リーダーポップアップの位置"
                "zh" -> "阅读器弹窗位置"
                "ko" -> "리더 팝업 위치"
                else -> "Положение всплывашки в ридере"
            }
        )
        ChipRow {
            positionOptions.forEach { (value, label) ->
                MrComicFilterChip(
                    selected = uiState.imageMessagePopupPosition == value,
                    onClick = { viewModel.setImageMessagePopupPosition(value) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        SwitchRow(
            title = when (language) {
                "en" -> "Allow free move"
                "ja" -> "自由移動を許可"
                "zh" -> "允许自由拖动"
                "ko" -> "자유 이동 허용"
                else -> "Разрешить свободное перемещение"
            },
            subtitle = when (language) {
                "en" -> "Lets image popups be dragged after they appear."
                "ja" -> "画像ポップアップを表示後にドラッグできます。"
                "zh" -> "允许图片弹窗在出现后被拖动。"
                "ko" -> "이미지 팝업이 표시된 뒤 드래그할 수 있습니다."
                else -> "Позволяет перетаскивать графическую всплывашку после появления."
            },
            checked = uiState.imageMessagePopupFreeMove,
            onCheckedChange = viewModel::setImageMessagePopupFreeMove
        )
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Popup size"
                "ja" -> "ポップアップサイズ"
                "zh" -> "弹窗大小"
                "ko" -> "팝업 크기"
                else -> "Размер всплывашки"
            },
            valueLabel = "$popupScalePercent%",
            value = uiState.imageMessagePopupSizeScale,
            onValueChange = viewModel::setImageMessagePopupSizeScale,
            valueRange = SETTINGS_IMAGE_MESSAGE_POPUP_MIN_SCALE..SETTINGS_IMAGE_MESSAGE_POPUP_MAX_SCALE,
            subtitle = when (language) {
                "en" -> "Controls the scale of image popups in the reader."
                "ja" -> "リーダー内の画像ポップアップの大きさを調整します。"
                "zh" -> "调整阅读器中图片弹窗的缩放。"
                "ko" -> "리더 안의 이미지 팝업 크기를 조절합니다."
                else -> "Управляет масштабом графических всплывашек в ридере."
            }
        )
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Auto close"
                "ja" -> "自動で閉じる"
                "zh" -> "自动关闭"
                "ko" -> "자동 닫기"
                else -> "Автозакрытие"
            },
            valueLabel = durationLabel,
            value = uiState.imageMessagePopupDurationSeconds.toFloat(),
            onValueChange = { viewModel.setImageMessagePopupDurationSeconds(it.roundToInt()) },
            valueRange = 0f..SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS.toFloat(),
            steps = SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS - 1,
            subtitle = when (language) {
                "en" -> "Set 0 to close popups manually."
                "ja" -> "0 にすると手動で閉じます。"
                "zh" -> "设为 0 表示手动关闭。"
                "ko" -> "0으로 두면 수동으로 닫습니다."
                else -> "0 означает закрытие только вручную."
            }
        )
    }
}

@Composable
private fun AdvancedSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onAppIconSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val appearanceText = remember(strings.languageCode) { appearanceSectionText(strings.languageCode) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = settingsSectionSummaryText(strings.languageCode).hint,
                items = listOf(
                    appearanceText.mascotRecapTitle to compactToggleLabel(strings.languageCode, uiState.mascotRecapEnabled),
                    appearanceText.questPromptsTitle to compactToggleLabel(strings.languageCode, uiState.questPromptsEnabled),
                    syncPopupSettingsTitle(strings.languageCode) to settingsImportErrorPresentationLabel(strings.languageCode, uiState.settingsImportErrorPresentation)
                )
            )
        }
        item {
            SettingsCard(title = appearanceText.serviceElementsTitle) {
                SwitchRow(
                    title = appearanceText.mascotRecapTitle,
                    subtitle = appearanceText.mascotRecapSubtitle,
                    checked = uiState.mascotRecapEnabled,
                    onCheckedChange = viewModel::setMascotRecapEnabled
                )
                Spacer(Modifier.height(10.dp))
                SwitchRow(
                    title = appearanceText.questPromptsTitle,
                    subtitle = appearanceText.questPromptsSubtitle,
                    checked = uiState.questPromptsEnabled,
                    onCheckedChange = viewModel::setQuestPromptsEnabled
                )
                Spacer(Modifier.height(12.dp))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Apps,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        Text(strings.appIconTitle, style = MaterialTheme.typography.titleSmall)
                        Text(
                            strings.appIconDesc,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Icon(Icons.Default.ChevronRight, contentDescription = null)
                }
                Spacer(Modifier.height(4.dp))
                FilledTonalButton(
                    onClick = onAppIconSettingsClick,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(strings.appIconButton)
                }
            }
        }
        item {
            SyncPopupSettingsCard(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

// ──────────── About section ────────────

@Composable
private fun AboutSection(
    strings: AppStrings,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { aboutSectionText(strings.languageCode) }
    val contacts = remember {
        listOf(
            "xmetalcore@outlook.com",
            "chester.god.alive@gmail.com",
            "xmetalcore@mail.ru"
        )
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = sectionText.description,
                items = listOf(
                    sectionText.featuresTitle to aboutCountValue(strings.languageCode, sectionText.features.size),
                    sectionText.librariesTitle to aboutCountValue(strings.languageCode, sectionText.libraries.size),
                    sectionText.licensesTitle to aboutCountValue(strings.languageCode, sectionText.licenses.size),
                    sectionText.contactsTitle to aboutCountValue(strings.languageCode, contacts.size)
                )
            )
        }
        item {
            SettingsCard(title = sectionText.overviewTitle) {
                Text(
                    text = sectionText.overviewBody,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.featuresTitle) {
                AboutBulletList(items = sectionText.features)
            }
        }
        item {
            SettingsCard(title = sectionText.librariesTitle) {
                AboutBulletList(items = sectionText.libraries)
            }
        }
        item {
            SettingsCard(title = sectionText.licensesTitle) {
                AboutBulletList(items = sectionText.licenses)
            }
        }
        item {
            SettingsCard(title = sectionText.developerTitle) {
                Text(
                    text = sectionText.developerName,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold
                )
                Text(
                    text = sectionText.developerRole,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.contactsTitle) {
                Text(
                    text = sectionText.contactsHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                androidx.compose.foundation.text.selection.SelectionContainer {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        contacts.forEach { contact ->
                            MrComicCardSurface(
                                fillMaxWidth = false,
                                cornerRadius = 14.dp,
                                containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                            ) {
                                Text(
                                    text = contact,
                                    style = MaterialTheme.typography.bodyMedium,
                                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp)
                                )
                            }
                        }
                    }
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun AboutBulletList(items: List<String>) {
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        items.forEach { item ->
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.Top
            ) {
                Text(
                    text = "•",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = item,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.weight(1f)
                )
            }
        }
    }
}

// ──────────── Color picker ────────────

private val COLOR_PALETTE: List<Long> = listOf(
    0xFF6200EEL,
    0xFF3700B3L,
    0xFF0288D1L,
    0xFF00897BL,
    0xFF388E3CL,
    0xFFFF8F00L,
    0xFFE53935L,
    0xFFD81B60L,
    0xFF5D4037L,
    0xFF455A64L,
    0xFF212121L,
    0xFFF5F5F5L
)

@Composable
private fun ColorPickerRow(
    label: String,
    selectedColor: Color?,
    onColorSelected: (Color?) -> Unit
) {
    Column {
        Text(label, style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant)
        Spacer(Modifier.height(6.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            item(key = "$label-default") {
                ColorSwatch(color = null, isSelected = selectedColor == null,
                    onClick = { onColorSelected(null) })
            }
            items(
                items = COLOR_PALETTE,
                key = { argb -> "$label-$argb" }
            ) { argb ->
                val color = Color(argb.toInt())
                ColorSwatch(
                    color = color,
                    isSelected = selectedColor != null && selectedColor == color,
                    onClick = { onColorSelected(color) }
                )
            }
        }
    }
}

@Composable
private fun ColorSwatch(color: Color?, isSelected: Boolean, onClick: () -> Unit) {
    val borderColor = if (isSelected) MaterialTheme.colorScheme.primary else Color.Transparent
    val swatchColor = color ?: MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 1f)
    Box(
        modifier = Modifier
            .size(36.dp)
            .clip(CircleShape)
            .background(swatchColor)
            .border(2.dp, borderColor, CircleShape)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        if (color == null) {
            Icon(
                imageVector = Icons.Default.Close,
                contentDescription = null,
                modifier = Modifier.size(14.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        if (isSelected) {
            Icon(Icons.Default.Check, contentDescription = null,
                modifier = Modifier.size(16.dp),
                tint = if (color == null) MaterialTheme.colorScheme.onSurfaceVariant else Color.White)
        }
    }
}

// Shared components and label helpers extracted to SettingsComponents.kt, SettingsFontStrings.kt

