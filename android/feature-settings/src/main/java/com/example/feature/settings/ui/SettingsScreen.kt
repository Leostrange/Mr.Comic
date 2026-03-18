@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package com.example.feature.settings.ui

import android.content.Intent
import android.net.Uri
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
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
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.automirrored.filled.VolumeDown
import androidx.compose.material.icons.automirrored.filled.VolumeUp
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
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import com.example.core.model.ReadingMode
import com.example.core.model.TranslationTransportPreference
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import com.example.core.ui.library.LibraryBackdropLayer
import com.example.core.ui.library.LibraryQuickPresetSpec
import com.example.core.ui.library.LibraryShelfBar
import com.example.core.ui.library.LibraryThemePresetSnapshot
import com.example.core.ui.library.libraryQuickPresetCatalog
import com.example.core.ui.library.libraryCardElevation
import com.example.core.ui.library.libraryQuickPresetDescription
import com.example.core.ui.library.libraryQuickPresetTitle
import com.example.core.ui.library.matchesLibraryQuickPreset as matchesSharedLibraryQuickPreset
import com.example.core.ui.library.parseLibraryThemePreset
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.locale.ocrSourceLanguageOptions
import com.example.core.ui.locale.translationLanguageOptions
import com.example.core.ui.sound.UIFeedback
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ThemePreset
import com.example.core.ui.theme.previewColors
import com.example.core.ui.theme.style

// ──────────── Navigation model ────────────

private enum class SettingsSection { APPEARANCE, READER, LIBRARY, TRANSLATION, BACKUP, ABOUT }
private data class LibraryQuickPresetOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val accent: Color
)

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
        readerLeadTitle = "Reader settings",
        readerLeadDescription = "Tune reader behavior, screen, animation, and only the text modes you actually need for EPUB and FB2.",
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
        readerLeadDescription = "リーダーの挙動、画面、アニメーション、そして EPUB / FB2 に必要なテキストモードだけを調整します。",
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
        readerLeadTitle = "阅读器设置",
        readerLeadDescription = "调整阅读器行为、屏幕、动画，以及 EPUB 与 FB2 真正需要的文本模式。",
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
        readerLeadTitle = "리더 설정",
        readerLeadDescription = "리더 동작, 화면, 애니메이션과 EPUB/FB2에 필요한 텍스트 모드만 조정합니다.",
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
        readerLeadTitle = "Параметры чтения",
        readerLeadDescription = "Настройте поведение ридера, экран, анимацию и только те текстовые режимы, которые нужны для EPUB и FB2.",
        quickBlocksTitle = "Быстрые блоки",
        surfaceCardsLabel = "Поверхности и карточки"
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
        explainSubtitle = "単語やフレーズのローカル解説はすでに使えます。高度な explain-provider が接続されたときにも文脈解説を使いたいならオンにしておきます。",
        autoSource = "自動",
        appLanguageTarget = "アプリ言語",
        transportAuto = "自動",
        transportOffline = "オフライン",
        transportOnline = "オンライン",
        explainComingSoon = "ローカル解説はすでに使えます。このトグルは高度な explain-provider 用に残しています。",
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
        explainSubtitle = "单词和短语的本地解释已经可用。如果以后接入更强的 explain-provider，还想继续获得更丰富的上下文解释，就保持开启。",
        autoSource = "自动",
        appLanguageTarget = "应用语言",
        transportAuto = "自动",
        transportOffline = "离线",
        transportOnline = "在线",
        explainComingSoon = "本地解释已经可用。这个开关主要为未来更强的 explain-provider 预留。",
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
        explainSubtitle = "단어와 구문에 대한 로컬 설명은 이미 동작합니다. 나중에 더 강한 explain-provider가 연결될 때도 풍부한 문맥 설명을 원하면 켜 두세요.",
        autoSource = "자동",
        appLanguageTarget = "앱 언어",
        transportAuto = "자동",
        transportOffline = "오프라인",
        transportOnline = "온라인",
        explainComingSoon = "로컬 설명은 이미 동작합니다. 이 토글은 앞으로의 확장 explain-provider용입니다.",
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
        description = "Здесь собраны поведение перевода, язык OCR и будущий explain-слой, без лишних служебных блоков вокруг.",
        translationBehaviorCard = "Поведение перевода",
        sourceLanguageCard = "Исходный язык",
        sourceLanguageHint = "Для большинства текстовых книг достаточно автоопределения. Ручной выбор нужен только если книга плохо смешивает языки.",
        targetLanguageCard = "Целевой язык",
        targetLanguageHint = "Режим «Язык приложения» автоматически следует за текущим языком интерфейса.",
        transportCard = "Режим перевода",
        transportHint = "Авто сначала пробует локальные модели, а затем использует сетевой путь, если он станет доступен.",
        explainCard = "Параметры explain",
        explainTitle = "Использовать расширенный explain при доступности",
        explainSubtitle = "Локальные пояснения для слов и фраз уже работают. Оставьте это включённым, если позже захотите и более глубокий контекстный explain от расширенного провайдера.",
        autoSource = "Авто",
        appLanguageTarget = "Язык приложения",
        transportAuto = "Авто",
        transportOffline = "Офлайн",
        transportOnline = "Онлайн",
        explainComingSoon = "Локальный explain уже работает. Этот тумблер нужен для будущего расширенного explain-провайдера.",
        comicFiltersCard = "Фильтры OCR-комиксов",
        comicFiltersHint = "Эти фильтры влияют только на автоматический перевод всей страницы. Ручной тап по отдельному блоку остаётся доступным всегда.",
        dialoguesOnlyTitle = "Предпочитать только диалоги",
        dialoguesOnlySubtitle = "При переводе страницы пропускает narration-блоки, но оставляет неопределённые сегменты, чтобы не потерять возможную реплику.",
        includeSfxTitle = "Включать SFX-блоки",
        includeSfxSubtitle = "Если выключено, звукоподражания остаются в OCR-результате, но не переводятся автоматически на всю страницу.",
        overlayCard = "Overlay комиксов",
        overlayHint = "Здесь настраивается, как перевод ложится поверх страницы, не меняя оригинальное изображение.",
        overlayOpacityTitle = "Прозрачность overlay",
        overlayFontScaleTitle = "Размер шрифта overlay",
        overlayStyleTitle = "Стиль overlay",
        overlayStyleAuto = "Авто по теме",
        overlayStyleLight = "Светлый",
        overlayStyleDark = "Тёмный"
    )
}

private data class BackupSectionText(
    val title: String,
    val description: String,
    val reconnectTitle: String,
    val reconnectDescription: String,
    val reconnectButton: String,
    val reconnectingButton: String
)

private fun backupSectionText(language: String): BackupSectionText = when (language) {
    "en" -> BackupSectionText(
        title = "Backup & maintenance",
        description = "Export and import for settings, reading progress, and cache cleanup live here so service actions do not clutter the main reading controls.",
        reconnectTitle = "Reconnect library access",
        reconnectDescription = "If restored books show up in the library but do not open after reinstall, choose the original source folder again. Repeat this for each source folder you used.",
        reconnectButton = "Choose source folder",
        reconnectingButton = "Reconnecting..."
    )
    "ja" -> BackupSectionText(
        title = "バックアップとメンテナンス",
        description = "設定と読書進捗の書き出し・読み込み、キャッシュ整理をここにまとめ、メインの読書設定を散らかさないようにしています。",
        reconnectTitle = "ライブラリアクセスを再接続",
        reconnectDescription = "復元後に本は見えるのに開けない場合は、元の保存フォルダーをもう一度選んでください。保存元が複数ある場合は、それぞれ繰り返します。",
        reconnectButton = "元フォルダーを選ぶ",
        reconnectingButton = "再接続中..."
    )
    "zh" -> BackupSectionText(
        title = "备份与维护",
        description = "设置与阅读进度的导出、导入以及缓存清理集中在这里，避免干扰主要阅读设置。",
        reconnectTitle = "重新连接书库访问",
        reconnectDescription = "如果恢复后的书已经在书库里，但重装后打不开，请重新选择原始来源文件夹。若有多个来源文件夹，需要分别执行一次。",
        reconnectButton = "选择来源文件夹",
        reconnectingButton = "重新连接中..."
    )
    "ko" -> BackupSectionText(
        title = "백업과 유지관리",
        description = "설정과 읽기 진행 상황 내보내기·가져오기, 캐시 정리를 이곳에 모아 주요 읽기 설정과 분리했습니다.",
        reconnectTitle = "라이브러리 접근 다시 연결",
        reconnectDescription = "복원된 책이 라이브러리에는 보이지만 재설치 후 열리지 않으면 원래 소스 폴더를 다시 선택하세요. 여러 소스 폴더를 썼다면 각각 반복하면 됩니다.",
        reconnectButton = "소스 폴더 선택",
        reconnectingButton = "다시 연결하는 중..."
    )
    else -> BackupSectionText(
        title = "Резервная копия и обслуживание",
        description = "Экспорт и импорт всех настроек, прогресса чтения и очистка кеша собраны отдельно, чтобы сервисные действия не мешали основным настройкам.",
        reconnectTitle = "Перепривязать доступ к библиотеке",
        reconnectDescription = "Если после восстановления книги видны в библиотеке, но не открываются, выберите исходную папку заново. Если источников было несколько, повторите это для каждой папки.",
        reconnectButton = "Выбрать исходную папку",
        reconnectingButton = "Перепривязка..."
    )
}

private data class AboutSectionText(
    val title: String,
    val description: String,
    val achievementsTitle: String
)

private fun aboutSectionText(language: String): AboutSectionText = when (language) {
    "en" -> AboutSectionText(
        title = "About the app",
        description = "App version and reader achievements.",
        achievementsTitle = "Achievements"
    )
    "ja" -> AboutSectionText(
        title = "アプリについて",
        description = "アプリのバージョンと読書実績です。",
        achievementsTitle = "実績"
    )
    "zh" -> AboutSectionText(
        title = "关于应用",
        description = "应用版本和阅读成就。",
        achievementsTitle = "成就"
    )
    "ko" -> AboutSectionText(
        title = "앱 정보",
        description = "앱 버전과 독서 업적입니다.",
        achievementsTitle = "업적"
    )
    else -> AboutSectionText(
        title = "О приложении",
        description = "Версия приложения и достижения читателя.",
        achievementsTitle = "Достижения"
    )
}

private data class LibrarySectionText(
    val leadTitle: String,
    val leadDescription: String,
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
    val backgroundStyle: String,
    val backgroundAccent: String,
    val backgroundVeil: String,
    val panelOpacity: String,
    val shelfStyle: String,
    val shelfDepth: String,
    val cardShadow: String,
    val chooseBackground: String,
    val changeBackground: String,
    val resetBackground: String,
    val selectedBackground: String,
    val selectedBackgroundHint: String,
    val recentStripPosition: String,
    val sortGroupCard: String,
    val sortDefault: String,
    val groupBy: String
)

private fun librarySectionText(language: String): LibrarySectionText = when (language) {
    "en" -> LibrarySectionText(
        leadTitle = "Library without clutter",
        leadDescription = "Tune the collection view: grid or list, shelf rhythm, sorting, and folder or series grouping.",
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
        backgroundStyle = "Background style",
        backgroundAccent = "Background accent",
        backgroundVeil = "Image veil",
        panelOpacity = "Menus and panels transparency",
        shelfStyle = "Shelf style",
        shelfDepth = "Shelf depth",
        cardShadow = "Card shadow",
        chooseBackground = "Choose background",
        changeBackground = "Change background",
        resetBackground = "Reset",
        selectedBackground = "Selected image",
        selectedBackgroundHint = "The chosen file is used directly in the library background preview and on the library screen.",
        recentStripPosition = "Recent strip position",
        sortGroupCard = "Sorting & grouping",
        sortDefault = "Default sorting",
        groupBy = "Group library by"
    )
    "ja" -> LibrarySectionText(
        leadTitle = "散らからないライブラリ",
        leadDescription = "グリッド・リスト、棚の見た目、並び順、シリーズやフォルダ分割をまとめて調整します。",
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
        backgroundStyle = "背景スタイル",
        backgroundAccent = "背景アクセント",
        backgroundVeil = "画像ベール",
        panelOpacity = "メニューとパネルの透明度",
        shelfStyle = "棚スタイル",
        shelfDepth = "棚の奥行き",
        cardShadow = "カードの影",
        chooseBackground = "背景を選ぶ",
        changeBackground = "背景を変更",
        resetBackground = "リセット",
        selectedBackground = "選択中の画像",
        selectedBackgroundHint = "選んだファイルはライブラリ背景のプレビューと実際のライブラリ画面でそのまま使われます。",
        recentStripPosition = "最近読んだ棚の位置",
        sortGroupCard = "並び替えと分類",
        sortDefault = "既定の並び順",
        groupBy = "ライブラリ分類"
    )
    "zh" -> LibrarySectionText(
        leadTitle = "更干净的书库",
        leadDescription = "统一调整网格/列表、书架节奏、排序方式，以及按系列或文件夹分组。",
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
        backgroundStyle = "背景风格",
        backgroundAccent = "背景强调",
        backgroundVeil = "图片遮罩",
        panelOpacity = "菜单与面板透明度",
        shelfStyle = "书架风格",
        shelfDepth = "书架厚度",
        cardShadow = "卡片阴影",
        chooseBackground = "选择背景",
        changeBackground = "更换背景",
        resetBackground = "重置",
        selectedBackground = "已选图片",
        selectedBackgroundHint = "所选文件会直接用于书库背景预览和实际书库页面。",
        recentStripPosition = "继续阅读条位置",
        sortGroupCard = "排序与分组",
        sortDefault = "默认排序",
        groupBy = "书库分组方式"
    )
    "ko" -> LibrarySectionText(
        leadTitle = "덜 복잡한 라이브러리",
        leadDescription = "그리드/목록, 선반 분위기, 정렬, 시리즈 또는 폴더 분류를 한 번에 조정합니다.",
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
        backgroundStyle = "배경 스타일",
        backgroundAccent = "배경 강도",
        backgroundVeil = "이미지 베일",
        panelOpacity = "메뉴와 패널 투명도",
        shelfStyle = "선반 스타일",
        shelfDepth = "선반 깊이",
        cardShadow = "카드 그림자",
        chooseBackground = "배경 선택",
        changeBackground = "배경 변경",
        resetBackground = "초기화",
        selectedBackground = "선택된 이미지",
        selectedBackgroundHint = "선택한 파일이 라이브러리 배경 미리보기와 실제 라이브러리 화면에 그대로 사용됩니다.",
        recentStripPosition = "최근 읽기 선반 위치",
        sortGroupCard = "정렬과 분류",
        sortDefault = "기본 정렬",
        groupBy = "라이브러리 분류"
    )
    else -> LibrarySectionText(
        leadTitle = "Библиотека без перегруза",
        leadDescription = "Соберите свой вид коллекции: сетка или список, порядок полок, сортировка и разделение по сериям или папкам.",
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
        backgroundStyle = "Стиль фона",
        backgroundAccent = "Акцент фона библиотеки",
        backgroundVeil = "Вуаль поверх изображения",
        panelOpacity = "Прозрачность меню и панелей",
        shelfStyle = "Стиль полок",
        shelfDepth = "Глубина полок",
        cardShadow = "Тень карточек",
        chooseBackground = "Выбрать фон",
        changeBackground = "Сменить фон",
        resetBackground = "Сбросить",
        selectedBackground = "Выбранное изображение",
        selectedBackgroundHint = "Файл используется напрямую в предпросмотре фона и на экране библиотеки.",
        recentStripPosition = "Положение полки «Недавно читаемые»",
        sortGroupCard = "Сортировка и разделение",
        sortDefault = "Сортировка по умолчанию",
        groupBy = "Разделение библиотеки"
    )
}

// ──────────── Root screen ────────────

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onAppIconSettingsClick: () -> Unit,
    onBackClick: (() -> Unit)? = null,
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val strings = LocalStrings.current
    val snackbarHostState = remember { SnackbarHostState() }
    var currentSectionName by rememberSaveable { mutableStateOf<String?>(null) }
    val currentSection = currentSectionName?.let(SettingsSection::valueOf)

    BackHandler(enabled = currentSection != null) { currentSectionName = null }

    LaunchedEffect(uiState.cacheMessage) {
        val message = uiState.cacheMessage ?: return@LaunchedEffect
        snackbarHostState.showSnackbar(message)
        viewModel.consumeCacheMessage()
    }

    val sectionTitle = when (currentSection) {
        SettingsSection.APPEARANCE   -> strings.sectionAppearance
        SettingsSection.READER       -> strings.sectionReader
        SettingsSection.LIBRARY      -> strings.sectionLibrary
        SettingsSection.TRANSLATION  -> strings.sectionTranslation
        SettingsSection.BACKUP       -> strings.sectionBackup
        SettingsSection.ABOUT        -> strings.sectionAbout
        null                         -> strings.settings
    }

    Scaffold(
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            TopAppBar(
                title = { Text(sectionTitle) },
                navigationIcon = {
                    IconButton(onClick = {
                        if (currentSection != null) currentSectionName = null
                        else onBackClick?.invoke()
                    }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = strings.back)
                    }
                }
            )
        }
    ) { padding ->
        when (currentSection) {
            null -> SettingsMainMenu(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                onSectionClick = { currentSectionName = it.name },
                modifier = Modifier.padding(padding)
            )
            SettingsSection.APPEARANCE -> AppearanceSection(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                onAppIconSettingsClick = onAppIconSettingsClick,
                modifier = Modifier.padding(padding)
            )
            SettingsSection.READER -> ReaderSection(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                modifier = Modifier.padding(padding)
            )
            SettingsSection.LIBRARY -> LibrarySection(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                modifier = Modifier.padding(padding)
            )
            SettingsSection.TRANSLATION -> TranslationSection(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                modifier = Modifier.padding(padding)
            )
            SettingsSection.BACKUP -> BackupSection(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel,
                modifier = Modifier.padding(padding)
            )
            SettingsSection.ABOUT -> AboutSection(
                strings = strings,
                uiState = uiState,
                modifier = Modifier.padding(padding)
            )
        }
    }
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
    val sectionItems = listOf(
        Triple(SettingsSection.APPEARANCE, strings.sectionAppearance, strings.sectionAppearanceDesc),
        Triple(SettingsSection.READER, strings.sectionReader, strings.sectionReaderDesc),
        Triple(SettingsSection.LIBRARY, strings.sectionLibrary, strings.sectionLibraryDesc),
        Triple(SettingsSection.TRANSLATION, strings.sectionTranslation, strings.sectionTranslationDesc),
        Triple(SettingsSection.BACKUP, strings.sectionBackup, strings.sectionBackupDesc),
        Triple(SettingsSection.ABOUT, strings.sectionAbout, strings.sectionAboutDesc)
    ).filter { (_, title, description) ->
        normalizedQuery.isBlank() ||
            title.lowercase().contains(normalizedQuery) ||
            description.lowercase().contains(normalizedQuery)
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
                shape = MaterialTheme.shapes.extraLarge
            )
        }
        item {
            SettingsSectionLead(
                title = menuText.leadTitle,
                description = menuText.leadDescription
            )
        }
        item {
            QuickReadingHub(
                uiState = uiState,
                strings = strings,
                menuText = menuText,
                viewModel = viewModel,
                onOpenReaderSettings = { onSectionClick(SettingsSection.READER) }
            )
        }
        item {
            SettingsCard(title = menuText.sectionsTitle) {
                sectionItems.forEachIndexed { index, (section, title, description) ->
                    val icon = when (section) {
                        SettingsSection.APPEARANCE -> Icons.Default.Palette
                        SettingsSection.READER -> Icons.Default.Book
                        SettingsSection.LIBRARY -> Icons.Default.GridView
                        SettingsSection.TRANSLATION -> Icons.Default.Translate
                        SettingsSection.BACKUP -> Icons.Default.Save
                        SettingsSection.ABOUT -> Icons.Default.Info
                    }
                    SettingsNavItem(
                        icon = icon,
                        title = title,
                        description = description,
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
private fun QuickReadingHub(
    uiState: SettingsUiState,
    strings: AppStrings,
    menuText: MainMenuText,
    viewModel: SettingsViewModel,
    onOpenReaderSettings: () -> Unit
) {
    val activePreset = ReadingPreset.fromStored(uiState.readerPreset)
    SettingsCard(title = menuText.quickReadingTitle) {
        Text(
            menuText.quickReadingDescription,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        ChipRow {
            listOf(
                ReadingPreset.PAPER to readingPresetQuickLabel(strings, ReadingPreset.PAPER),
                ReadingPreset.NIGHT_INK to readingPresetQuickLabel(strings, ReadingPreset.NIGHT_INK),
                ReadingPreset.EINK to readingPresetQuickLabel(strings, ReadingPreset.EINK)
            ).forEach { (preset, label) ->
                FilterChip(
                    selected = activePreset == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        LabelText("${strings.brightnessLabel}: ${(uiState.brightness * 100).toInt()}%")
        Slider(
            value = uiState.brightness,
            onValueChange = viewModel::setBrightness,
            valueRange = 0.05f..1f,
            modifier = Modifier.fillMaxWidth()
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            FilledTonalButton(onClick = onOpenReaderSettings, modifier = Modifier.weight(1f)) {
                Text(strings.sectionReader)
            }
            FilledTonalButton(
                onClick = {
                    viewModel.setTranslationMode(
                        if (uiState.translationMode == "OCR") "OFF" else "OCR"
                    )
                },
                modifier = Modifier.weight(1f)
            ) {
                Text(if (uiState.translationMode == "OCR") menuText.ocrEnabled else menuText.ocrEnable)
            }
        }
    }
}

@Composable
private fun SettingsNavItem(
    icon: ImageVector,
    title: String,
    description: String,
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
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f),
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
            Spacer(Modifier.height(2.dp))
            Text(
                description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
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
    Surface(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.extraLarge,
        color = MaterialTheme.colorScheme.surfaceVariant
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

// ──────────── Appearance section ────────────

private enum class AppearanceSettingsTab {
    BASICS,
    THEME,
    SCALE,
    COLORS,
    EXTRA
}

@Composable
private fun AppearanceSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onAppIconSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    var selectedTabName by rememberSaveable { mutableStateOf(AppearanceSettingsTab.BASICS.name) }
    val menuText = remember(uiState.appLanguage) { mainMenuText(uiState.appLanguage) }
    val selectedTab = remember(selectedTabName) {
        runCatching { AppearanceSettingsTab.valueOf(selectedTabName) }
            .getOrDefault(AppearanceSettingsTab.BASICS)
    }
    val leadTitle = when (uiState.appLanguage) {
        "en" -> "App appearance"
        "ja" -> "アプリの見た目"
        "zh" -> "应用外观"
        "ko" -> "앱 외형"
        else -> "Внешний вид приложения"
    }
    val leadDescription = when (uiState.appLanguage) {
        "en" -> "Keep the preview on top, then tune theme, scale, colors and service elements in separate blocks."
        "ja" -> "プレビューを上に固定し、テーマ・スケール・色・補助要素を個別ブロックで調整します。"
        "zh" -> "预览固定在上方，主题、缩放、颜色和服务元素分块调整。"
        "ko" -> "미리보기는 위에 두고, 테마·스케일·색상·보조 요소를 블록별로 조정합니다."
        else -> "Сверху остаётся превью, а ниже отдельно настраиваются тема, масштаб, цвета и служебные элементы."
    }
    val quickBlocksTitle = when (uiState.appLanguage) {
        "en" -> "Quick blocks"
        "ja" -> "クイックブロック"
        "zh" -> "快速分组"
        "ko" -> "빠른 블록"
        else -> "Быстрые блоки"
    }
    val tabLabels = when (uiState.appLanguage) {
        "en" -> mapOf(
            AppearanceSettingsTab.BASICS to "Basics",
            AppearanceSettingsTab.THEME to "Theme",
            AppearanceSettingsTab.SCALE to "Scale",
            AppearanceSettingsTab.COLORS to "Colors",
            AppearanceSettingsTab.EXTRA to "Extras"
        )
        "ja" -> mapOf(
            AppearanceSettingsTab.BASICS to "基本",
            AppearanceSettingsTab.THEME to "テーマ",
            AppearanceSettingsTab.SCALE to "サイズ",
            AppearanceSettingsTab.COLORS to "色",
            AppearanceSettingsTab.EXTRA to "追加"
        )
        "zh" -> mapOf(
            AppearanceSettingsTab.BASICS to "基础",
            AppearanceSettingsTab.THEME to "主题",
            AppearanceSettingsTab.SCALE to "尺寸",
            AppearanceSettingsTab.COLORS to "颜色",
            AppearanceSettingsTab.EXTRA to "附加"
        )
        "ko" -> mapOf(
            AppearanceSettingsTab.BASICS to "기본",
            AppearanceSettingsTab.THEME to "테마",
            AppearanceSettingsTab.SCALE to "크기",
            AppearanceSettingsTab.COLORS to "색상",
            AppearanceSettingsTab.EXTRA to "추가"
        )
        else -> mapOf(
            AppearanceSettingsTab.BASICS to "Основа",
            AppearanceSettingsTab.THEME to "Тема",
            AppearanceSettingsTab.SCALE to "Размер",
            AppearanceSettingsTab.COLORS to "Цвета",
            AppearanceSettingsTab.EXTRA to "Дополнительно"
        )
    }
    val tabHint = when (selectedTab) {
        AppearanceSettingsTab.BASICS -> when (uiState.appLanguage) {
            "en" -> "Language and global preview."
            "ja" -> "言語と全体プレビュー。"
            "zh" -> "语言与整体预览。"
            "ko" -> "언어와 전체 미리보기."
            else -> "Язык интерфейса и общее превью."
        }
        AppearanceSettingsTab.THEME -> when (uiState.appLanguage) {
            "en" -> "Presets, light/dark mode and dynamic colors."
            "ja" -> "プリセット、ライト/ダーク、ダイナミックカラー。"
            "zh" -> "预设、明暗模式和动态配色。"
            "ko" -> "프리셋, 라이트/다크, 동적 색상."
            else -> "Пресеты, светлая/тёмная тема и динамические цвета."
        }
        AppearanceSettingsTab.SCALE -> when (uiState.appLanguage) {
            "en" -> "Font scale, interface density and corner radius."
            "ja" -> "文字倍率、UI密度、角丸。"
            "zh" -> "字体比例、界面密度与圆角。"
            "ko" -> "글자 크기, UI 밀도, 코너 반경."
            else -> "Масштаб шрифта, плотность интерфейса и скругления."
        }
        AppearanceSettingsTab.COLORS -> when (uiState.appLanguage) {
            "en" -> "Accent, background, surfaces and transparency."
            "ja" -> "アクセント、背景、サーフェス、透明度。"
            "zh" -> "强调色、背景、表面和透明度。"
            "ko" -> "강조색, 배경, 표면, 투명도."
            else -> "Акцент, фон, поверхности и прозрачность."
        }
        AppearanceSettingsTab.EXTRA -> when (uiState.appLanguage) {
            "en" -> "UI sounds and service elements."
            "ja" -> "UIサウンドと補助要素。"
            "zh" -> "界面音效与附加元素。"
            "ko" -> "UI 사운드와 보조 요소."
            else -> "Звуки интерфейса и служебные элементы."
        }
    }
    val sizeShapeTitle = when (uiState.appLanguage) {
        "en" -> "Size and shape"
        "ja" -> "サイズと形"
        "zh" -> "尺寸与形状"
        "ko" -> "크기와 형태"
        else -> "Размер и форма"
    }
    val accentColorsTitle = when (uiState.appLanguage) {
        "en" -> "Accent and signal colors"
        "ja" -> "アクセントとシグナル色"
        "zh" -> "强调与提示颜色"
        "ko" -> "강조 및 상태 색상"
        else -> "Акцент и сигнальные цвета"
    }
    val accentColorsDescription = when (uiState.appLanguage) {
        "en" -> "Accent affects buttons, active chips, progress indicators and key actions."
        "ja" -> "アクセントはボタン、選択チップ、進捗表示、主要アクションに使われます。"
        "zh" -> "强调色影响按钮、选中标签、进度指示和主要操作。"
        "ko" -> "강조색은 버튼, 활성 칩, 진행 표시, 핵심 액션에 반영됩니다."
        else -> "Акцент влияет на кнопки, активные чипы, индикаторы прогресса и ключевые action-элементы."
    }
    val surfacesTitle = when (uiState.appLanguage) {
        "en" -> "Background and surfaces"
        "ja" -> "背景とサーフェス"
        "zh" -> "背景与表面"
        "ko" -> "배경과 표면"
        else -> "Фон и поверхности"
    }
    val surfacesDescription = when (uiState.appLanguage) {
        "en" -> "Background, cards and overlays are tuned separately so light and dark themes stay coherent."
        "ja" -> "背景、カード、オーバーレイを分けて調整し、ライト/ダークの整合性を保ちます。"
        "zh" -> "背景、卡片和遮罩分开调整，让亮色和暗色主题保持一致。"
        "ko" -> "배경, 카드, 오버레이를 따로 조정해 라이트/다크가 어긋나지 않게 합니다."
        else -> "Фон, карточки и overlay настраиваются отдельно, чтобы светлые и тёмные темы не конфликтовали."
    }
    val paletteResetLabel = when (uiState.appLanguage) {
        "en" -> "Reset palette"
        "ja" -> "パレットをリセット"
        "zh" -> "重置配色"
        "ko" -> "팔레트 초기화"
        else -> "Сбросить палитру"
    }
    val serviceElementsTitle = when (uiState.appLanguage) {
        "en" -> "Service elements"
        "ja" -> "補助要素"
        "zh" -> "附加元素"
        "ko" -> "보조 요소"
        else -> "Служебные элементы"
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsSectionLead(
                title = leadTitle,
                description = leadDescription
            )
        }
        // Превью закреплён сверху — виден при любом положении скролла
        stickyHeader(key = "appearance_preview") {
            SettingsCard(title = strings.preview) {
                ThemePreviewCard(
                    uiState = uiState,
                    strings = strings
                )
            }
        }
        item {
            SettingsCard(title = quickBlocksTitle) {
                ChipRow {
                    AppearanceSettingsTab.entries.forEach { tab ->
                        val icon = when (tab) {
                            AppearanceSettingsTab.BASICS -> Icons.Default.Language
                            AppearanceSettingsTab.THEME -> Icons.Default.Palette
                            AppearanceSettingsTab.SCALE -> Icons.Default.Tune
                            AppearanceSettingsTab.COLORS -> Icons.Default.ColorLens
                            AppearanceSettingsTab.EXTRA -> Icons.Default.Widgets
                        }
                        FilterChip(
                            selected = selectedTab == tab,
                            onClick = { selectedTabName = tab.name },
                            label = { Text(tabLabels[tab].orEmpty()) },
                            leadingIcon = {
                                Icon(icon, contentDescription = null, modifier = Modifier.size(16.dp))
                            }
                        )
                    }
                }
                LabelText(tabHint)
            }
        }
        if (selectedTab == AppearanceSettingsTab.BASICS) item {
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
                        FilterChip(
                            selected = uiState.appLanguage == code,
                            onClick = { viewModel.setAppLanguage(code) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        if (selectedTab == AppearanceSettingsTab.THEME) item {
            SettingsCard(title = strings.themePresets) {
                val activePreset = runCatching {
                    ThemePreset.valueOf(uiState.themePreset)
                }.getOrDefault(ThemePreset.CUSTOM)

                LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    val presets = listOf(
                        ThemePreset.CUSTOM to strings.themePresetCustom,
                        ThemePreset.PAPER  to strings.themePresetPaper,
                        ThemePreset.AMOLED to strings.themePresetAmoled,
                        ThemePreset.NEON   to strings.themePresetNeon,
                        ThemePreset.GRAY   to strings.themePresetGray,
                        ThemePreset.SEPIA  to strings.themePresetSepia,
                        ThemePreset.EINK   to strings.themePresetEink
                    )
                    items(presets) { (preset, label) ->
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
        if (selectedTab == AppearanceSettingsTab.THEME) item {
            SettingsCard(title = strings.themeCard) {
                LabelText(strings.colorTheme)
                ChipRow {
                    ThemeMode.entries.forEach { mode ->
                        FilterChip(
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
                    subtitle = strings.amoledDarkSubtitle,
                    checked = uiState.useAmoledDark,
                    onCheckedChange = viewModel::setUseAmoledDark
                )
            }
        }
        if (selectedTab == AppearanceSettingsTab.SCALE) item {
            SettingsCard(title = sizeShapeTitle) {
                LabelText("${strings.fontScale}: ${fontScaleLabel(strings, uiState.uiFontScale)}")
                ChipRow {
                    listOf(
                        0.85f to strings.fontScaleSmall,
                        1.0f  to strings.fontScaleNormal,
                        1.15f to strings.fontScaleLarge,
                        1.3f  to strings.fontScaleXL
                    ).forEach { (scale, label) ->
                        FilterChip(
                            selected = uiState.uiFontScale == scale,
                            onClick = { viewModel.setUiFontScale(scale) },
                            label = { Text(label) }
                        )
                    }
                }
                Spacer(Modifier.height(4.dp))
                LabelText("${appearanceDensityLabel(uiState.appLanguage)}: ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}")
                Slider(
                    value = uiState.uiDensityScale,
                    onValueChange = viewModel::setUiDensityScale,
                    valueRange = 0.9f..1.1f,
                    steps = 3,
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(Modifier.height(4.dp))
                LabelText("${strings.cornerRadius}: ${uiState.uiCornerRadius} dp")
                Slider(
                    value = uiState.uiCornerRadius.toFloat(),
                    onValueChange = { viewModel.setUiCornerRadius(it.toInt()) },
                    valueRange = 0f..24f,
                    steps = 5,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
        if (selectedTab == AppearanceSettingsTab.COLORS) item {
            SettingsCard(title = accentColorsTitle) {
                Text(
                    accentColorsDescription,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorPrimary,
                    selectedColor = uiState.customPrimaryColor?.let { Color(it.toInt()) },
                    onColorSelected = { viewModel.setCustomPrimaryColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorSecondary,
                    selectedColor = uiState.customSecondaryColor?.let { Color(it.toInt()) },
                    onColorSelected = { viewModel.setCustomSecondaryColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
            }
        }
        if (selectedTab == AppearanceSettingsTab.COLORS) item {
            SettingsCard(title = surfacesTitle) {
                Text(
                    surfacesDescription,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = strings.colorBackground,
                    selectedColor = uiState.customBackgroundColor?.let { Color(it.toInt()) },
                    onColorSelected = { viewModel.setCustomBackgroundColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                ColorPickerRow(
                    label = menuText.surfaceCardsLabel,
                    selectedColor = uiState.customSurfaceColor?.let { Color(it.toInt()) },
                    onColorSelected = { viewModel.setCustomSurfaceColor(it?.toArgb()?.toUInt()?.toLong()) }
                )
                Spacer(Modifier.height(8.dp))
                LabelText("${surfaceOpacityLabel(uiState.appLanguage)}: ${(uiState.surfaceOpacity * 100).toInt()}%")
                Slider(
                    value = uiState.surfaceOpacity,
                    onValueChange = viewModel::setSurfaceOpacity,
                    valueRange = 0.55f..1f,
                    steps = 8,
                    modifier = Modifier.fillMaxWidth()
                )
                TextButton(
                    onClick = {
                        viewModel.setCustomPrimaryColor(null)
                        viewModel.setCustomSecondaryColor(null)
                        viewModel.setCustomBackgroundColor(null)
                        viewModel.setCustomSurfaceColor(null)
                        viewModel.setSurfaceOpacity(1f)
                    },
                    modifier = Modifier.align(Alignment.End)
                ) {
                    Text(paletteResetLabel)
                }
            }
        }
        if (selectedTab == AppearanceSettingsTab.EXTRA) item {
            SettingsCard(title = strings.uiSoundsTitle) {
                SwitchRow(
                    title = strings.uiSoundsTitle,
                    subtitle = strings.uiSoundsSubtitle,
                    checked = uiState.uiSoundEnabled,
                    onCheckedChange = viewModel::setUiSoundEnabled
                )
                if (uiState.uiSoundEnabled) {
                    Spacer(Modifier.height(8.dp))
                    Row(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 4.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(Icons.AutoMirrored.Filled.VolumeDown, contentDescription = null,
                            modifier = Modifier.size(20.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant)
                        Slider(
                            value = uiState.uiSoundsVolume,
                            onValueChange = viewModel::setUiSoundsVolume,
                            valueRange = 0f..1f,
                            modifier = Modifier.weight(1f)
                        )
                        Icon(Icons.AutoMirrored.Filled.VolumeUp, contentDescription = null,
                            modifier = Modifier.size(20.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant)
                        Text(
                            "${(uiState.uiSoundsVolume * 100).toInt()}%",
                            style = MaterialTheme.typography.labelSmall,
                            modifier = Modifier.width(34.dp)
                        )
                    }
                }
            }
        }
        if (selectedTab == AppearanceSettingsTab.EXTRA) item {
            SettingsCard(title = serviceElementsTitle) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Apps, contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary)
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        Text(strings.appIconTitle, style = MaterialTheme.typography.titleSmall)
                        Text(strings.appIconDesc, style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                    Icon(Icons.Default.ChevronRight, contentDescription = null)
                }
                Spacer(Modifier.height(4.dp))
                FilledTonalButton(
                    onClick = onAppIconSettingsClick,
                    modifier = Modifier.fillMaxWidth()
                ) { Text(strings.appIconButton) }
            }
        }

        item { Spacer(Modifier.height(16.dp)) }
    }
}

// ──────────── Live preview card ────────────

@Composable
private fun ThemePreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    val previewBackground = MaterialTheme.colorScheme.background
    val previewSurface = MaterialTheme.colorScheme.surface
    val previewPrimary = MaterialTheme.colorScheme.primary
    val previewSecondary = MaterialTheme.colorScheme.secondaryContainer
    val onPreview = MaterialTheme.colorScheme.onBackground
    val mutedPreview = MaterialTheme.colorScheme.onSurfaceVariant
    val modeLabel = when (uiState.themeMode) {
        ThemeMode.SYSTEM -> strings.themeSystem
        ThemeMode.LIGHT -> strings.themeLight
        ThemeMode.DARK -> strings.themeDark
        ThemeMode.DYNAMIC -> strings.themeDynamic
    }

    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = previewBackground),
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
                    .background(previewPrimary.copy(alpha = if (previewBackground.luminance() > 0.5f) 0.12f else 0.2f))
                    .padding(horizontal = 10.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Surface(
                    color = previewPrimary.copy(alpha = 0.18f),
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
                    color = previewPrimary.copy(alpha = 0.14f),
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
                    .background(previewSurface.copy(alpha = uiState.surfaceOpacity))
                    .padding(horizontal = 12.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.92f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreview.copy(alpha = 0.18f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreview.copy(alpha = 0.16f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.82f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreview.copy(alpha = 0.14f))
                )
            }
            Surface(
                shape = MaterialTheme.shapes.large,
                color = previewSecondary
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
                        color = onPreview,
                        style = MaterialTheme.typography.bodyMedium,
                        modifier = Modifier.weight(1f)
                    )
                    Surface(
                        color = previewPrimary.copy(alpha = 0.14f),
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
                    color = previewSurface.copy(alpha = uiState.surfaceOpacity)
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
                            color = onPreview
                        )
                    }
                }
                FilledTonalButton(
                    onClick = {},
                    modifier = Modifier.height(36.dp),
                    colors = ButtonDefaults.filledTonalButtonColors(
                        containerColor = previewPrimary,
                        contentColor = if (previewPrimary.luminance() > 0.5f) Color.Black else Color.White
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
            .width(76.dp)
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
    modifier: Modifier = Modifier
) {
    val menuText = remember(uiState.appLanguage) { mainMenuText(uiState.appLanguage) }
    val eyeRestText = remember(uiState.appLanguage) { eyeRestSettingsText(uiState.appLanguage) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsSectionLead(
                title = menuText.readerLeadTitle,
                description = menuText.readerLeadDescription
            )
        }
        // ── Reader presets ──
        item {
            SettingsCard(title = strings.readerPresetsCard) {
                val activePreset = ReadingPreset.fromStored(uiState.readerPreset)
                val presets = listOf(
                    ReadingPreset.CUSTOM to strings.readerPresetCustom,
                    ReadingPreset.PAPER to readingPresetQuickLabel(strings, ReadingPreset.PAPER),
                    ReadingPreset.NIGHT_INK to readingPresetQuickLabel(strings, ReadingPreset.NIGHT_INK),
                    ReadingPreset.EINK to readingPresetQuickLabel(strings, ReadingPreset.EINK)
                )
                ChipRow {
                    presets.forEach { (preset, label) ->
                        FilterChip(
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
                        "${strings.brightnessLabel}: ${(style.brightness * 100).toInt()}% · ${
                            when (style.pageAnimation) {
                                "FADE" -> strings.animFade
                                "NONE" -> strings.animNone
                                else -> strings.animSlide
                            }
                        }",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }

        // ── Reading mode ──
        item {
            SettingsCard(title = strings.readingModeCard) {
                ChipRow {
                    FilterChip(
                        selected = uiState.readingMode == ReadingMode.PAGE_LTR,
                        onClick = { viewModel.setReadingMode(ReadingMode.PAGE_LTR) },
                        label = { Text(strings.readingModeLtr) }
                    )
                    FilterChip(
                        selected = uiState.readingMode == ReadingMode.PAGE_RTL,
                        onClick = { viewModel.setReadingMode(ReadingMode.PAGE_RTL) },
                        label = { Text(strings.readingModeRtl) }
                    )
                    FilterChip(
                        selected = uiState.readingMode == ReadingMode.WEBTOON,
                        onClick = { viewModel.setReadingMode(ReadingMode.WEBTOON) },
                        label = { Text(strings.readingModeWebtoon) }
                    )
                }
            }
        }

        // ── Screen ──
        item {
            SettingsCard(title = strings.readerScreenCard) {
                LabelText("${strings.brightnessLabel}: ${(uiState.brightness * 100).toInt()}%")
                Slider(
                    value = uiState.brightness,
                    onValueChange = viewModel::setBrightness,
                    valueRange = 0.05f..1f,
                    modifier = Modifier.fillMaxWidth()
                )
                SwitchRow(
                    title = strings.keepScreenOn,
                    subtitle = strings.keepScreenOnSubtitle,
                    checked = uiState.keepScreenOnInReader,
                    onCheckedChange = viewModel::setKeepScreenOnInReader
                )
                SwitchRow(
                    title = strings.fullscreenMode,
                    subtitle = strings.fullscreenModeSubtitle,
                    checked = uiState.readerImmersiveMode,
                    onCheckedChange = viewModel::setReaderImmersiveMode
                )
            }
        }

        item {
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
                            FilterChip(
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

        // ── Animation & sound ──
        item {
            SettingsCard(title = strings.animSoundCard) {
                LabelText(strings.pageAnimLabel)
                ChipRow {
                    listOf(
                        "NONE"  to strings.animNone,
                        "SLIDE" to strings.animSlide,
                        "FADE"  to strings.animFade
                    ).forEach { (key, label) ->
                        FilterChip(
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
                            "SOFT"  to strings.soundSoft
                        ).forEach { (key, label) ->
                            FilterChip(
                                selected = uiState.readerPageSoundStyle == key,
                                onClick = { viewModel.setReaderPageSoundStyle(key) },
                                label = { Text(label) }
                            )
                        }
                    }
                }
            }
        }

        // ── Preload ──
        item {
            SettingsCard(title = strings.preloadCard) {
                LabelText("${strings.preloadLabel}: ${uiState.readerPreloadPages}")
                Slider(
                    value = uiState.readerPreloadPages.toFloat(),
                    onValueChange = { viewModel.setReaderPreloadPages(it.toInt()) },
                    valueRange = 2f..8f,
                    steps = 5,
                    modifier = Modifier.fillMaxWidth()
                )
                Text(strings.preloadHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
        }

        item { Spacer(Modifier.height(16.dp)) }
    }
}

// ──────────── Library section ────────────

private enum class LibrarySettingsTab {
    DISPLAY,
    COVERS,
    STYLE,
    SORTING
}

@Composable
private fun LibrarySection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val libraryText = remember(uiState.appLanguage) { librarySectionText(uiState.appLanguage) }
    val menuText = remember(uiState.appLanguage) { mainMenuText(uiState.appLanguage) }
    val styleOptionsScroll = rememberScrollState()
    val backgroundPresetScroll = rememberScrollState()
    val shelfPresetScroll = rememberScrollState()
    val presetSlotsScroll = rememberScrollState()
    var selectedTabName by rememberSaveable { mutableStateOf(LibrarySettingsTab.DISPLAY.name) }
    val selectedTab = remember(selectedTabName) {
        runCatching { LibrarySettingsTab.valueOf(selectedTabName) }
            .getOrDefault(LibrarySettingsTab.DISPLAY)
    }
    val tabLabels = remember(uiState.appLanguage) {
        when (uiState.appLanguage) {
            "en" -> mapOf(
                LibrarySettingsTab.DISPLAY to "Layout",
                LibrarySettingsTab.COVERS to "Covers",
                LibrarySettingsTab.STYLE to "Shelves & background",
                LibrarySettingsTab.SORTING to "Sorting"
            )
            "ja" -> mapOf(
                LibrarySettingsTab.DISPLAY to "レイアウト",
                LibrarySettingsTab.COVERS to "表紙",
                LibrarySettingsTab.STYLE to "棚と背景",
                LibrarySettingsTab.SORTING to "並び替え"
            )
            "zh" -> mapOf(
                LibrarySettingsTab.DISPLAY to "布局",
                LibrarySettingsTab.COVERS to "封面",
                LibrarySettingsTab.STYLE to "书架与背景",
                LibrarySettingsTab.SORTING to "排序"
            )
            "ko" -> mapOf(
                LibrarySettingsTab.DISPLAY to "레이아웃",
                LibrarySettingsTab.COVERS to "표지",
                LibrarySettingsTab.STYLE to "선반·배경",
                LibrarySettingsTab.SORTING to "정렬"
            )
            else -> mapOf(
                LibrarySettingsTab.DISPLAY to "Вид",
                LibrarySettingsTab.COVERS to "Обложки",
                LibrarySettingsTab.STYLE to "Полки и фон",
                LibrarySettingsTab.SORTING to "Сортировка"
            )
        }
    }
    val tabHint = when (selectedTab) {
        LibrarySettingsTab.DISPLAY -> when (uiState.appLanguage) {
            "en" -> "Grid/list, columns and tile size."
            "ja" -> "グリッド/リスト、列数、タイルサイズ。"
            "zh" -> "网格/列表、列数和卡片尺寸。"
            "ko" -> "그리드/목록, 열 수, 타일 크기."
            else -> "Сетка/список, колонки и размер карточек."
        }
        LibrarySettingsTab.COVERS -> when (uiState.appLanguage) {
            "en" -> "Card style, cover scale, thumbnail shape and progress marks."
            "ja" -> "カード密度、表紙スケール、形状、進捗表示。"
            "zh" -> "卡片密度、封面缩放、形状与进度显示。"
            "ko" -> "카드 밀도, 표지 스케일, 형태, 진행률 표시."
            else -> "Стиль карточек, масштаб, форма миниатюр и прогресс."
        }
        LibrarySettingsTab.STYLE -> when (uiState.appLanguage) {
            "en" -> "Background presets, custom image, shelf and shadow depth."
            "ja" -> "背景プリセット、画像背景、棚と影の深さ。"
            "zh" -> "背景预设、图片背景、书架与阴影深度。"
            "ko" -> "배경 프리셋, 이미지 배경, 선반/그림자 깊이."
            else -> "Фон, изображение, глубина полок и тени."
        }
        LibrarySettingsTab.SORTING -> when (uiState.appLanguage) {
            "en" -> "Default sorting and grouping mode."
            "ja" -> "既定の並び順と分類。"
            "zh" -> "默认排序与分组。"
            "ko" -> "기본 정렬과 분류."
            else -> "Сортировка по умолчанию и режим разделения."
        }
    }
    val backgroundOptions = listOf(
        "DARK_STUDY" to libraryBackgroundStyleLabel("DARK_STUDY", uiState.appLanguage),
        "LIGHT_GREENHOUSE" to libraryBackgroundStyleLabel("LIGHT_GREENHOUSE", uiState.appLanguage),
        "SCIENCE_LAB" to libraryBackgroundStyleLabel("SCIENCE_LAB", uiState.appLanguage),
        "CITY_LIBRARY" to libraryBackgroundStyleLabel("CITY_LIBRARY", uiState.appLanguage),
        "AURORA_MIST" to libraryBackgroundStyleLabel("AURORA_MIST", uiState.appLanguage),
        "CINEMA_NOIR" to libraryBackgroundStyleLabel("CINEMA_NOIR", uiState.appLanguage),
        "PAPER_GRAIN" to libraryBackgroundStyleLabel("PAPER_GRAIN", uiState.appLanguage),
        "MANGA_INK" to libraryBackgroundStyleLabel("MANGA_INK", uiState.appLanguage),
        "EINK_WASH" to libraryBackgroundStyleLabel("EINK_WASH", uiState.appLanguage),
        "IMAGE" to when (uiState.appLanguage) {
            "en" -> "Image"
            "ja" -> "画像"
            "zh" -> "图片"
            "ko" -> "이미지"
            else -> "Изображение"
        }
    )
    val shelfOptions = listOf(
        "GLASS" to libraryShelfStyleLabel("GLASS", uiState.appLanguage),
        "OAK" to libraryShelfStyleLabel("OAK", uiState.appLanguage),
        "WALNUT" to libraryShelfStyleLabel("WALNUT", uiState.appLanguage),
        "STEEL" to libraryShelfStyleLabel("STEEL", uiState.appLanguage),
        "LACQUER" to libraryShelfStyleLabel("LACQUER", uiState.appLanguage),
        "NEON" to libraryShelfStyleLabel("NEON", uiState.appLanguage),
        "MINIMAL" to libraryShelfStyleLabel("MINIMAL", uiState.appLanguage),
        "NONE" to libraryShelfStyleLabel("NONE", uiState.appLanguage)
    )

    val backgroundImageLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        if (uri != null) {
            try {
                context.contentResolver.takePersistableUriPermission(
                    uri,
                    android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
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
        item {
            SettingsSectionLead(
                title = libraryText.leadTitle,
                description = libraryText.leadDescription
            )
        }
        // Живой предпросмотр — закреплён сверху, виден при любом положении скролла
        stickyHeader(key = "library_preview") {
            LibraryStylePreview(
                uiState = uiState,
                libraryText = libraryText,
                modifier = Modifier.fillMaxWidth()
            )
        }
        item {
            SettingsCard(
                title = menuText.quickBlocksTitle
            ) {
                ChipRow {
                    LibrarySettingsTab.entries.forEach { tab ->
                        val icon = when (tab) {
                            LibrarySettingsTab.DISPLAY -> Icons.Default.GridView
                            LibrarySettingsTab.COVERS -> Icons.AutoMirrored.Filled.MenuBook
                            LibrarySettingsTab.STYLE -> Icons.Default.Palette
        LibrarySettingsTab.SORTING -> Icons.AutoMirrored.Filled.Sort
                        }
                        FilterChip(
                            selected = selectedTab == tab,
                            onClick = { selectedTabName = tab.name },
                            label = { Text(tabLabels[tab].orEmpty()) },
                            leadingIcon = {
                                Icon(icon, contentDescription = null, modifier = Modifier.size(16.dp))
                            }
                        )
                    }
                }
                LabelText(tabHint)
            }
        }
        if (selectedTab == LibrarySettingsTab.DISPLAY) item {
            SettingsCard(title = libraryText.displayCard) {
                LabelText(strings.libraryDefaultView)
                ChipRow {
                    FilterChip(
                        selected = uiState.libraryViewGrid,
                        onClick = { viewModel.setLibraryViewGrid(true) },
                        label = { Text(strings.libraryViewGrid) },
                        leadingIcon = {
                            Icon(Icons.Default.GridView, contentDescription = null,
                                modifier = Modifier.size(16.dp))
                        }
                    )
                    FilterChip(
                        selected = !uiState.libraryViewGrid,
                        onClick = { viewModel.setLibraryViewGrid(false) },
                        label = { Text(strings.libraryViewList) },
                        leadingIcon = {
                            Icon(Icons.AutoMirrored.Filled.ViewList, contentDescription = null,
                                modifier = Modifier.size(16.dp))
                        }
                    )
                }
                if (uiState.libraryViewGrid) {
                    Spacer(Modifier.height(4.dp))
                    LabelText("${strings.libraryGridColumns}: ${uiState.libraryGridColumns}")
                    ChipRow {
                        listOf(2, 3, 4).forEach { n ->
                            FilterChip(
                                selected = uiState.libraryGridColumns == n,
                                onClick = { viewModel.setLibraryGridColumns(n) },
                                label = { Text("$n") }
                            )
                        }
                    }
                }
                Spacer(Modifier.height(4.dp))
                LabelText("${strings.libraryTileSize}: ${uiState.libraryTileSize} dp")
                Slider(
                    value = uiState.libraryTileSize.toFloat(),
                    onValueChange = { viewModel.setLibraryTileSize(it.toInt()) },
                    valueRange = 80f..200f,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
        if (selectedTab == LibrarySettingsTab.COVERS) item {
            SettingsCard(title = libraryText.cardsCard) {
                LabelText(libraryText.cardDensity)
                ChipRow {
                    listOf(
                        "COMPACT" to libraryCardStyleLabel("COMPACT", uiState.appLanguage),
                        "BALANCED" to libraryCardStyleLabel("BALANCED", uiState.appLanguage),
                        "SHOWCASE" to libraryCardStyleLabel("SHOWCASE", uiState.appLanguage)
                    ).forEach { (style, label) ->
                        FilterChip(
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
                        FilterChip(
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
                        FilterChip(
                            selected = uiState.libraryThumbnailMode == mode,
                            onClick = { viewModel.setLibraryThumbnailMode(mode) },
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
            }
        }
        if (selectedTab == LibrarySettingsTab.STYLE) item {
            SettingsCard(title = libraryText.shelvesBackgroundCard) {
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(18.dp),
                    color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.26f)
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 420.dp)
                            .verticalScroll(styleOptionsScroll)
                            .padding(horizontal = 10.dp, vertical = 10.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {

                        LabelText(libraryText.backgroundStyle)
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .horizontalScroll(backgroundPresetScroll),
                            horizontalArrangement = Arrangement.spacedBy(10.dp)
                        ) {
                            backgroundOptions.forEach { (style, label) ->
                                LibraryBackgroundPresetCard(
                                    selected = uiState.libraryBackgroundStyle == style,
                                    onClick = { viewModel.setLibraryBackgroundStyle(style) },
                                    label = label,
                                    style = style,
                                    selectedImageUri = uiState.libraryBackgroundImageUri
                                )
                            }
                        }
                        LabelText("${libraryText.backgroundAccent}: ${(uiState.libraryBackdropStrength * 100).toInt()}%")
                        Slider(
                            value = uiState.libraryBackdropStrength,
                            onValueChange = viewModel::setLibraryBackdropStrength,
                            valueRange = 0f..1f,
                            steps = 9,
                            modifier = Modifier.fillMaxWidth()
                        )
                        LabelText("${libraryText.backgroundVeil}: ${(uiState.libraryBackgroundVeil * 100).toInt()}%")
                        Slider(
                            value = uiState.libraryBackgroundVeil,
                            onValueChange = viewModel::setLibraryBackgroundVeil,
                            valueRange = 0f..1f,
                            steps = 9,
                            modifier = Modifier.fillMaxWidth()
                        )
                        LabelText("${libraryText.panelOpacity}: ${(uiState.surfaceOpacity * 100).toInt()}%")
                        Slider(
                            value = uiState.surfaceOpacity,
                            onValueChange = viewModel::setSurfaceOpacity,
                            valueRange = 0.55f..1f,
                            steps = 8,
                            modifier = Modifier.fillMaxWidth()
                        )

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(10.dp)
                        ) {
                            FilledTonalButton(
                                onClick = { backgroundImageLauncher.launch(arrayOf("image/*")) },
                                modifier = Modifier.weight(1f)
                            ) {
                                Text(if (uiState.libraryBackgroundImageUri == null) libraryText.chooseBackground else libraryText.changeBackground)
                            }
                            OutlinedButton(
                                onClick = { viewModel.setLibraryBackgroundImageUri(null) },
                                modifier = Modifier.weight(1f),
                                enabled = uiState.libraryBackgroundImageUri != null
                            ) {
                                Text(libraryText.resetBackground)
                            }
                        }
                        uiState.libraryBackgroundImageUri?.let { backgroundUri ->
                            SelectedLibraryBackgroundPreview(
                                imageUri = backgroundUri,
                                title = libraryText.selectedBackground,
                                hint = libraryText.selectedBackgroundHint
                            )
                        }
                        LabelText(libraryText.shelfStyle)
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .horizontalScroll(shelfPresetScroll),
                            horizontalArrangement = Arrangement.spacedBy(10.dp)
                        ) {
                            shelfOptions.forEach { (style, label) ->
                                LibraryShelfPresetCard(
                                    selected = uiState.libraryShelfStyle == style,
                                    onClick = { viewModel.setLibraryShelfStyle(style) },
                                    label = label,
                                    shelfStyle = style,
                                    backgroundStyle = uiState.libraryBackgroundStyle,
                                    backgroundImageUri = uiState.libraryBackgroundImageUri,
                                    shelfDepth = uiState.libraryShelfDepth
                                )
                            }
                        }
                        LabelText("${libraryText.shelfDepth}: ${(uiState.libraryShelfDepth * 100).toInt()}%")
                        Slider(
                            value = uiState.libraryShelfDepth,
                            onValueChange = viewModel::setLibraryShelfDepth,
                            valueRange = 0f..1f,
                            steps = 9,
                            modifier = Modifier.fillMaxWidth()
                        )
                        LabelText("${libraryText.cardShadow}: ${(uiState.libraryCardShadow * 100).toInt()}%")
                        Slider(
                            value = uiState.libraryCardShadow,
                            onValueChange = viewModel::setLibraryCardShadow,
                            valueRange = 0f..1f,
                            steps = 9,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }
            }
        }
        if (selectedTab == LibrarySettingsTab.STYLE) item {
            SettingsCard(title = libraryQuickPresetsTitle(uiState.appLanguage)) {
                LabelText(libraryQuickPresetsHint(uiState.appLanguage))
                FlowRow(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    libraryQuickPresetCatalog().forEach { preset ->
                        LibraryQuickPresetTile(
                            title = libraryQuickPresetTitle(preset.id, uiState.appLanguage),
                            subtitle = libraryQuickPresetDescription(preset.id, uiState.appLanguage),
                            accent = preset.accent,
                            snapshot = preset.snapshot,
                            selected = matchesLibraryQuickPreset(uiState, preset.id),
                            onClick = { viewModel.applyLibraryLookPreset(preset.id) }
                        )
                    }
                }
            }
        }
        if (selectedTab == LibrarySettingsTab.STYLE) item {
            SettingsCard(title = librarySavedThemesTitle(uiState.appLanguage)) {
                LabelText(librarySavedThemesHint(uiState.appLanguage))
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .horizontalScroll(presetSlotsScroll),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    uiState.libraryThemePresetSlots.forEach { slot ->
                        LibraryThemePresetCard(
                            slot = slot,
                            appLanguage = uiState.appLanguage,
                            saveLabel = librarySavedThemeSave(uiState.appLanguage),
                            applyLabel = librarySavedThemeApply(uiState.appLanguage),
                            clearLabel = librarySavedThemeClear(uiState.appLanguage),
                            emptyLabel = librarySavedThemeEmpty(uiState.appLanguage),
                            onSave = { viewModel.saveLibraryThemePreset(slot.index) },
                            onApply = { viewModel.applyLibraryThemePreset(slot.index) },
                            onClear = { viewModel.clearLibraryThemePreset(slot.index) }
                        )
                    }
                }
            }
        }
        if (selectedTab == LibrarySettingsTab.SORTING) item {
            SettingsCard(title = libraryText.sortGroupCard) {
                LabelText(libraryText.sortDefault)
                ChipRow {
                    listOf(
                        "DATE_ADDED_DESC" to librarySortOrderLabel("DATE_ADDED_DESC", uiState.appLanguage),
                        "DATE_READ_DESC" to librarySortOrderLabel("DATE_READ_DESC", uiState.appLanguage),
                        "TITLE_ASC" to librarySortOrderLabel("TITLE_ASC", uiState.appLanguage),
                        "PROGRESS_DESC" to librarySortOrderLabel("PROGRESS_DESC", uiState.appLanguage)
                    ).forEach { (sortOrder, label) ->
                        FilterChip(
                            selected = uiState.librarySortOrder == sortOrder,
                            onClick = { viewModel.setLibrarySortOrder(sortOrder) },
                            label = { Text(label) }
                        )
                    }
                }
                Spacer(Modifier.height(4.dp))
                LabelText(libraryText.groupBy)
                ChipRow {
                    listOf(
                        "NONE" to when (uiState.appLanguage) {
                            "en" -> "None"
                            "ja" -> "なし"
                            "zh" -> "不分组"
                            "ko" -> "없음"
                            else -> "Нет"
                        },
                        "SERIES" to when (uiState.appLanguage) {
                            "en" -> "Series"
                            "ja" -> "シリーズ"
                            "zh" -> "按系列"
                            "ko" -> "시리즈"
                            else -> "По серии"
                        },
                        "FOLDER" to when (uiState.appLanguage) {
                            "en" -> "Folder"
                            "ja" -> "フォルダ"
                            "zh" -> "按文件夹"
                            "ko" -> "폴더"
                            else -> "По папке"
                        }
                    ).forEach { (groupBy, label) ->
                        FilterChip(
                            selected = uiState.libraryGroupBy == groupBy,
                            onClick = { viewModel.setLibraryGroupBy(groupBy) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
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
    val shape = RoundedCornerShape(16.dp)
    val usesSelectedImage = style == "IMAGE" && !selectedImageUri.isNullOrBlank()
    val previewStyle = when {
        style == "IMAGE" && selectedImageUri.isNullOrBlank() -> "PAPER_GRAIN"
        else -> style
    }
    Surface(
        modifier = modifier
            .width(132.dp)
            .clickable(onClick = onClick),
        shape = shape,
        border = BorderStroke(
            width = if (selected) 1.4.dp else 0.8.dp,
            color = if (selected) {
                MaterialTheme.colorScheme.primary.copy(alpha = 0.72f)
            } else {
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.55f)
            }
        ),
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f),
        tonalElevation = if (selected) 4.dp else 0.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
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
            Text(
                text = label,
                style = MaterialTheme.typography.labelMedium,
                color = if (selected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
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

    Surface(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.24f)
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
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(16.dp)
    Surface(
        modifier = modifier
            .width(132.dp)
            .clickable(onClick = onClick),
        shape = shape,
        border = BorderStroke(
            width = if (selected) 1.4.dp else 0.8.dp,
            color = if (selected) {
                MaterialTheme.colorScheme.primary.copy(alpha = 0.72f)
            } else {
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.55f)
            }
        ),
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f),
        tonalElevation = if (selected) 4.dp else 0.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
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
            Text(
                text = label,
                style = MaterialTheme.typography.labelMedium,
                color = if (selected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
        }
    }
}

private fun libraryBackgroundStyleLabel(style: String, language: String): String = when (style) {
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

private fun libraryQuickPresetsTitle(language: String): String = when (language) {
    "en" -> "Quick presets"
    "ja" -> "クイックプリセット"
    "zh" -> "快速预设"
    "ko" -> "빠른 프리셋"
    else -> "Быстрые пресеты"
}

private fun libraryQuickPresetsHint(language: String): String = when (language) {
    "en" -> "Apply a ready-made library look in one tap instead of rebuilding it from every slider."
    "ja" -> "各スライダーを毎回触らなくても、1タップで完成した見た目を適用できます。"
    "zh" -> "不用每次都重新调一堆滑块，点一下就能套用完整外观。"
    "ko" -> "슬라이더를 하나씩 다시 맞추지 않고, 한 번에 완성된 라이브러리 룩을 적용합니다."
    else -> "Применяйте готовый вид библиотеки одним нажатием, а не собирайте его заново из всех ползунков."
}

private fun librarySavedThemesTitle(language: String): String = when (language) {
    "en" -> "Saved library themes"
    "ja" -> "保存したライブラリテーマ"
    "zh" -> "已保存的书库主题"
    "ko" -> "저장된 라이브러리 테마"
    else -> "Сохранённые темы библиотеки"
}

private fun librarySavedThemesHint(language: String): String = when (language) {
    "en" -> "Save up to three custom library looks and switch between them quickly."
    "ja" -> "カスタムのライブラリ外観を3つまで保存し、すばやく切り替えられます。"
    "zh" -> "最多保存三个自定义书库外观，并在它们之间快速切换。"
    "ko" -> "커스텀 라이브러리 룩을 최대 세 개 저장하고 빠르게 전환할 수 있습니다."
    else -> "Сохраняйте до трёх собственных вариантов оформления библиотеки и быстро переключайтесь между ними."
}

private fun librarySavedThemeSave(language: String): String = when (language) {
    "en" -> "Save theme"
    "ja" -> "保存"
    "zh" -> "保存主题"
    "ko" -> "저장"
    else -> "Сохранить тему"
}

private fun librarySavedThemeApply(language: String): String = when (language) {
    "en" -> "Apply theme"
    "ja" -> "適用"
    "zh" -> "应用主题"
    "ko" -> "적용"
    else -> "Применить тему"
}

private fun librarySavedThemeClear(language: String): String = when (language) {
    "en" -> "Clear slot"
    "ja" -> "スロットをクリア"
    "zh" -> "清空槽位"
    "ko" -> "슬롯 비우기"
    else -> "Очистить слот"
}

private fun librarySavedThemeEmpty(language: String): String = when (language) {
    "en" -> "Empty slot"
    "ja" -> "空のスロット"
    "zh" -> "空槽位"
    "ko" -> "빈 슬롯"
    else -> "Пустой слот"
}

@Composable
private fun LibraryThemePresetCard(
    slot: LibraryThemePresetSlot,
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
    val slotLabel = when (appLanguage) {
        "en" -> "Slot ${slot.index}"
        "ja" -> "スロット ${slot.index}"
        "zh" -> "槽位 ${slot.index}"
        "ko" -> "슬롯 ${slot.index}"
        else -> "Слот ${slot.index}"
    }
    val summary = snapshot?.let {
        "${libraryBackgroundStyleLabel(it.backgroundStyle, appLanguage)} • ${libraryShelfStyleLabel(it.shelfStyle, appLanguage)}"
    } ?: emptyLabel

    Card(
        modifier = modifier.width(198.dp),
        shape = cardShape,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
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
    Surface(
        modifier = Modifier
            .widthIn(min = 148.dp, max = 220.dp)
            .weight(1f)
            .clip(RoundedCornerShape(14.dp))
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(14.dp),
        color = if (selected) {
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
    val cardStyleLabel = libraryCardStyleLabel(uiState.libraryCardStyle, uiState.appLanguage)
    val scaleLabel = libraryCoverScaleLabel(uiState.libraryCoverScale, uiState.appLanguage)
    val shape = RoundedCornerShape(22.dp)
    Card(
        modifier = modifier,
        shape = shape,
        colors = CardDefaults.cardColors(containerColor = Color.Transparent),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
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
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        LibraryPreviewMetricChip(text = cardStyleLabel)
                        LibraryPreviewMetricChip(text = shelfLabel)
                        LibraryPreviewMetricChip(text = scaleLabel)
                    }
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
                            showProgress = uiState.libraryShowProgress,
                            modifier = Modifier.weight(1f)
                        )
                        LibraryPreviewFolder(
                            title = libraryText.previewFolder,
                            cardStyle = uiState.libraryCardStyle,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
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
private fun LibraryPreviewMetricChip(
    text: String,
    modifier: Modifier = Modifier
) {
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(999.dp),
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.72f),
        border = BorderStroke(
            width = 0.7.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.2f)
        )
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
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
    showProgress: Boolean,
    modifier: Modifier = Modifier
) {
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(8.dp)
        "SHOWCASE" -> RoundedCornerShape(14.dp)
        else -> RoundedCornerShape(10.dp)
    }
    val coverShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(topStart = 8.dp, topEnd = 8.dp, bottomStart = 4.dp, bottomEnd = 4.dp)
        "SHOWCASE" -> RoundedCornerShape(topStart = 14.dp, topEnd = 14.dp, bottomStart = 6.dp, bottomEnd = 6.dp)
        else -> RoundedCornerShape(topStart = 10.dp, topEnd = 10.dp, bottomStart = 5.dp, bottomEnd = 5.dp)
    }
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
    Card(
        modifier = modifier,
        shape = cardShape,
        elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(shadow)),
        colors = CardDefaults.cardColors(containerColor = containerColor),
        border = BorderStroke(
            width = 0.7.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = if (isGraphic) 0.11f else 0.09f)
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
                        shape = RoundedCornerShape(4.dp),
                        color = MaterialTheme.colorScheme.scrim.copy(alpha = 0.42f)
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
                style = MaterialTheme.typography.labelSmall,
                maxLines = 1,
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
    modifier: Modifier = Modifier
) {
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = 0.8f)
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(8.dp)
        "SHOWCASE" -> RoundedCornerShape(14.dp)
        else -> RoundedCornerShape(10.dp)
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
    Card(
        modifier = modifier,
        shape = cardShape,
        elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(shadow)),
        colors = CardDefaults.cardColors(containerColor = containerColor),
        border = BorderStroke(
            width = 0.75.dp,
            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
        )
    ) {
        Column(modifier = Modifier.padding(contentPadding), verticalArrangement = Arrangement.spacedBy(5.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .clip(RoundedCornerShape(8.dp))
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
                style = MaterialTheme.typography.labelSmall,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
            )
        }
    }
}

private fun matchesLibraryQuickPreset(
    uiState: SettingsUiState,
    presetId: String
): Boolean = matchesSharedLibraryQuickPreset(
    snapshot = uiState.toLibraryThemePresetSnapshot(),
    useAmoledDark = uiState.useAmoledDark,
    presetId = presetId
)

private fun SettingsUiState.toLibraryThemePresetSnapshot(): LibraryThemePresetSnapshot =
    LibraryThemePresetSnapshot(
        backgroundStyle = libraryBackgroundStyle,
        backgroundImageUri = libraryBackgroundImageUri,
        backdropStrength = libraryBackdropStrength,
        backgroundVeil = libraryBackgroundVeil,
        shelfStyle = libraryShelfStyle,
        shelfDepth = libraryShelfDepth,
        cardShadow = libraryCardShadow,
        cardStyle = libraryCardStyle,
        thumbnailMode = libraryThumbnailMode,
        graphicCoverStyle = libraryGraphicCoverStyle,
        coverScale = libraryCoverScale,
        surfaceOpacity = surfaceOpacity
    )

// ──────────── Translation section ────────────

@Composable
private fun TranslationSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { translationSectionText(strings.languageCode) }
    val languageOptions = remember(strings.languageCode) {
        translationLanguageOptions(strings.languageCode)
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsSectionLead(
                title = sectionText.title,
                description = sectionText.description
            )
        }
        item {
            SettingsCard(title = sectionText.translationBehaviorCard) {
                Text(
                    strings.translationHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ChipRow {
                    listOf(
                        "OFF"        to strings.transOff,
                        "OCR"        to strings.transOcr,
                        "DICTIONARY" to strings.transDict
                    ).forEach { (key, label) ->
                        FilterChip(
                            selected = uiState.translationMode == key,
                            onClick = { viewModel.setTranslationMode(key) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.sourceLanguageCard) {
                LabelText(sectionText.sourceLanguageHint)
                ChipRow {
                    FilterChip(
                        selected = uiState.translationSourceLanguage == "AUTO",
                        onClick = { viewModel.setTranslationSourceLanguage("AUTO") },
                        label = { Text(sectionText.autoSource) }
                    )
                    languageOptions.forEach { (code, label) ->
                        FilterChip(
                            selected = uiState.translationSourceLanguage == code,
                            onClick = { viewModel.setTranslationSourceLanguage(code) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.targetLanguageCard) {
                LabelText(sectionText.targetLanguageHint)
                ChipRow {
                    FilterChip(
                        selected = uiState.translationTargetLanguage == "APP",
                        onClick = { viewModel.setTranslationTargetLanguage("APP") },
                        label = { Text(sectionText.appLanguageTarget) }
                    )
                    languageOptions.forEach { (code, label) ->
                        FilterChip(
                            selected = uiState.translationTargetLanguage == code,
                            onClick = { viewModel.setTranslationTargetLanguage(code) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.transportCard) {
                LabelText(sectionText.transportHint)
                ChipRow {
                    listOf(
                        TranslationTransportPreference.AUTO.name to sectionText.transportAuto,
                        TranslationTransportPreference.OFFLINE.name to sectionText.transportOffline,
                        TranslationTransportPreference.ONLINE.name to sectionText.transportOnline
                    ).forEach { (code, label) ->
                        FilterChip(
                            selected = uiState.translationTransport == code,
                            onClick = { viewModel.setTranslationTransport(code) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.explainCard) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = sectionText.explainTitle,
                            style = MaterialTheme.typography.titleSmall,
                            color = MaterialTheme.colorScheme.onSurface
                        )
                        Text(
                            text = sectionText.explainSubtitle,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Switch(
                        checked = uiState.translationExplainEnabled,
                        onCheckedChange = viewModel::setTranslationExplainEnabled
                    )
                }
                Spacer(Modifier.height(8.dp))
                Text(
                    text = sectionText.explainComingSoon,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.secondary
                )
            }
        }
        item {
            SettingsCard(title = sectionText.comicFiltersCard) {
                LabelText(sectionText.comicFiltersHint)
                Spacer(Modifier.height(8.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = sectionText.dialoguesOnlyTitle,
                            style = MaterialTheme.typography.titleSmall,
                            color = MaterialTheme.colorScheme.onSurface
                        )
                        Text(
                            text = sectionText.dialoguesOnlySubtitle,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Switch(
                        checked = uiState.ocrDialoguesOnly,
                        onCheckedChange = viewModel::setOcrDialoguesOnly
                    )
                }
                Spacer(Modifier.height(12.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = sectionText.includeSfxTitle,
                            style = MaterialTheme.typography.titleSmall,
                            color = MaterialTheme.colorScheme.onSurface
                        )
                        Text(
                            text = sectionText.includeSfxSubtitle,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Switch(
                        checked = uiState.ocrIncludeSfx,
                        onCheckedChange = viewModel::setOcrIncludeSfx
                    )
                }
            }
        }
        item {
            SettingsCard(title = sectionText.overlayCard) {
                LabelText(sectionText.overlayHint)
                Spacer(Modifier.height(12.dp))
                Text(
                    text = "${sectionText.overlayOpacityTitle}: ${(uiState.ocrOverlayOpacity * 100).toInt()}%",
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Slider(
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
                        FilterChip(
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
                        FilterChip(
                            selected = uiState.ocrOverlayStyle == code,
                            onClick = { viewModel.setOcrOverlayStyle(code) },
                            label = { Text(label) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = strings.ocrLanguageCard) {
                LabelText(strings.ocrLanguageHint)
                ChipRow {
                    ocrSourceLanguageOptions(strings.languageCode).forEach { option ->
                        FilterChip(
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
        item { Spacer(Modifier.height(16.dp)) }
    }
}

// ──────────── Backup section ────────────

@Composable
private fun BackupSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val busy = uiState.isExporting || uiState.isImporting || uiState.isRepairingLibraryAccess
    val sectionText = remember(strings.languageCode) { backupSectionText(strings.languageCode) }
    val context = LocalContext.current

    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri -> uri?.let { viewModel.exportProgress(it) } }

    val importLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri -> uri?.let { viewModel.importProgress(it) } }

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

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsSectionLead(
                title = sectionText.title,
                description = sectionText.description
            )
        }
        item {
            SettingsCard(title = strings.progressCard) {
                Text(strings.progressHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                Spacer(Modifier.height(12.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilledTonalButton(
                        onClick = {
                            exportLauncher.launch("mr_comic_progress_${System.currentTimeMillis()}.json")
                        },
                        enabled = !busy,
                        modifier = Modifier.weight(1f)
                    ) {
                        if (uiState.isExporting) {
                            CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                            Spacer(Modifier.width(6.dp))
                            Text(strings.exportingBtn)
                        } else {
                            Icon(Icons.Default.FileUpload, contentDescription = null,
                                modifier = Modifier.size(18.dp))
                            Spacer(Modifier.width(6.dp))
                            Text(strings.exportBtn)
                        }
                    }
                    FilledTonalButton(
                        onClick = { importLauncher.launch(arrayOf("application/json", "*/*")) },
                        enabled = !busy,
                        modifier = Modifier.weight(1f)
                    ) {
                        if (uiState.isImporting) {
                            CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                            Spacer(Modifier.width(6.dp))
                            Text(strings.importingBtn)
                        } else {
                            Icon(Icons.Default.FileDownload, contentDescription = null,
                                modifier = Modifier.size(18.dp))
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
        item {
            SettingsCard(title = sectionText.reconnectTitle) {
                Text(
                    text = sectionText.reconnectDescription,
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
                        Text(sectionText.reconnectingButton)
                    } else {
                        Icon(Icons.Default.FolderOpen, contentDescription = null, modifier = Modifier.size(18.dp))
                        Spacer(Modifier.width(6.dp))
                        Text(sectionText.reconnectButton)
                    }
                }
            }
        }
        item {
            SettingsCard(title = strings.cacheCard) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(strings.imageCacheTitle, style = MaterialTheme.typography.titleSmall)
                        Text(strings.imageCacheHint,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant)
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
        item { Spacer(Modifier.height(16.dp)) }
    }
}

// ──────────── About section ────────────

@Composable
private fun AboutSection(
    strings: AppStrings,
    uiState: SettingsUiState,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { aboutSectionText(strings.languageCode) }
    // Inline achievement definitions — без зависимости на feature-library
    data class AchievementEntry(val emoji: String, val title: String, val unlocked: Boolean)

    val topAuthorCount = uiState.rawAuthors.filterNotNull()
        .groupingBy { it }.eachCount().values.maxOrNull() ?: 0
    val distinctGenres = uiState.rawGenres.filterNotNull().toSet().size

    val achievements = listOf(
        AchievementEntry("📖", strings.achFirstBook, uiState.totalComics >= 1),
        AchievementEntry("📚", strings.achReader, uiState.totalComics >= 10),
        AchievementEntry("🗂️", strings.achCollector, uiState.totalComics >= 25),
        AchievementEntry("✅", strings.achFirstComplete, uiState.completedComics >= 1),
        AchievementEntry("🏃", strings.achMarathon, uiState.completedComics >= 20),
        AchievementEntry("❤️", strings.achBookmarker, uiState.bookmarkedComics >= 1),
        AchievementEntry("✍️", strings.achAuthorFan, topAuthorCount >= 5),
        AchievementEntry("🌐", strings.achGenreGourmet, distinctGenres >= 3),
        AchievementEntry("🐱", strings.achSecretCat, false)
    )

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsSectionLead(
                title = sectionText.title,
                description = sectionText.description
            )
        }
        item {
            Card(modifier = Modifier.fillMaxWidth()) {
                Row(modifier = Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Info, contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary)
                    Spacer(Modifier.width(16.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        Text("Mr.Comic", style = MaterialTheme.typography.titleSmall)
                        Text(strings.version,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            }
        }
        item {
            val unlockedCount = achievements.count { it.unlocked }
            SettingsCard(title = "${sectionText.achievementsTitle} ($unlockedCount / ${achievements.size})") {
                FlowRow(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    achievements.forEach { a ->
                        Surface(
                            shape = RoundedCornerShape(12.dp),
                            color = if (a.unlocked) {
                                MaterialTheme.colorScheme.primaryContainer
                            } else {
                                MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                            },
                            tonalElevation = if (a.unlocked) 2.dp else 0.dp
                        ) {
                            Row(
                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(6.dp)
                            ) {
                                Text(
                                    text = a.emoji,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                                Text(
                                    text = a.title,
                                    style = MaterialTheme.typography.labelMedium,
                                    color = if (a.unlocked) {
                                        MaterialTheme.colorScheme.onPrimaryContainer
                                    } else {
                                        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.5f)
                                    }
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

// ──────────── Color picker ────────────

private val COLOR_PALETTE: List<Pair<Long, String>> = listOf(
    0xFF6200EEL to "Фиолетовый",
    0xFF3700B3L to "Тёмно-фиолетовый",
    0xFF0288D1L to "Синий",
    0xFF00897BL to "Бирюзовый",
    0xFF388E3CL to "Зелёный",
    0xFFFF8F00L to "Янтарный",
    0xFFE53935L to "Красный",
    0xFFD81B60L to "Розовый",
    0xFF5D4037L to "Коричневый",
    0xFF455A64L to "Серо-синий",
    0xFF212121L to "Чёрный",
    0xFFF5F5F5L to "Белый"
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
            item {
                ColorSwatch(color = null, isSelected = selectedColor == null,
                    onClick = { onColorSelected(null) })
            }
            items(COLOR_PALETTE) { (argb, _) ->
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
    Box(
        modifier = Modifier
            .size(36.dp)
            .clip(CircleShape)
            .background(color ?: MaterialTheme.colorScheme.surfaceVariant)
            .border(2.dp, borderColor, CircleShape)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        if (color == null) {
            Text("✕", style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
        if (isSelected) {
            Icon(Icons.Default.Check, contentDescription = null,
                modifier = Modifier.size(16.dp),
                tint = if (color == null) MaterialTheme.colorScheme.onSurfaceVariant else Color.White)
        }
    }
}

// ──────────── Shared components ────────────

@Composable
private fun SettingsCard(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    OutlinedCard(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(24.dp),
        border = BorderStroke(
            width = 1.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.55f)
        ),
        colors = CardDefaults.outlinedCardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(9.dp)
        ) {
            Text(
                title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            content()
        }
    }
}

@Composable
private fun LabelText(text: String) {
    Text(text, style = MaterialTheme.typography.bodySmall,
        color = MaterialTheme.colorScheme.onSurfaceVariant)
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ChipRow(content: @Composable FlowRowScope.() -> Unit) {
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        content = content
    )
}

@Composable
private fun SwitchRow(
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceVariant,
        shape = RoundedCornerShape(20.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(title, style = MaterialTheme.typography.titleSmall)
                Spacer(Modifier.height(2.dp))
                Text(
                    subtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Spacer(Modifier.width(12.dp))
            Switch(checked = checked, onCheckedChange = { value ->
                UIFeedback.playSelect()
                onCheckedChange(value)
            })
        }
    }
}

// ──────────── Label helpers ────────────

private fun themeLabel(strings: AppStrings, mode: ThemeMode): String = when (mode) {
    ThemeMode.SYSTEM  -> strings.themeSystem
    ThemeMode.LIGHT   -> strings.themeLight
    ThemeMode.DARK    -> strings.themeDark
    ThemeMode.DYNAMIC -> strings.themeDynamic
}

private fun fontScaleLabel(strings: AppStrings, scale: Float): String = when {
    scale <= 0.85f -> strings.fontScaleSmall
    scale <= 1.0f  -> strings.fontScaleNormal
    scale <= 1.15f -> strings.fontScaleLarge
    else           -> strings.fontScaleXL
}

private fun readingPresetQuickLabel(strings: AppStrings, preset: ReadingPreset): String = when (preset) {
    ReadingPreset.PAPER -> strings.themePresetPaper
    ReadingPreset.NIGHT_INK -> when (strings.languageCode) {
        "en" -> "Night Ink"
        "ja" -> "ナイトインク"
        "zh" -> "夜墨"
        "ko" -> "나이트 잉크"
        else -> "Ночная тушь"
    }
    ReadingPreset.EINK -> when (strings.languageCode) {
        "en" -> "E-Ink"
        "ja" -> "E-Ink"
        "zh" -> "电子墨水"
        "ko" -> "E-Ink"
        else -> "E-Ink"
    }
    else -> strings.readerPresetCustom
}

private fun appearanceDensityLabel(language: String): String = when (language) {
    "en" -> "Interface density"
    "ja" -> "インターフェース密度"
    "zh" -> "界面密度"
    "ko" -> "인터페이스 밀도"
    else -> "Плотность интерфейса"
}

private fun surfaceOpacityLabel(language: String): String = when (language) {
    "en" -> "Surface opacity"
    "ja" -> "サーフェス透明度"
    "zh" -> "表层透明度"
    "ko" -> "표면 투명도"
    else -> "Прозрачность поверхностей"
}

private fun libraryCardStyleLabel(style: String, language: String): String = when (style) {
    "COMPACT" -> when (language) {
        "en" -> "Compact"
        "ja" -> "コンパクト"
        "zh" -> "紧凑"
        "ko" -> "컴팩트"
        else -> "Компактно"
    }
    "BALANCED" -> when (language) {
        "en" -> "Balanced"
        "ja" -> "バランス"
        "zh" -> "均衡"
        "ko" -> "밸런스"
        else -> "Баланс"
    }
    "SHOWCASE" -> when (language) {
        "en" -> "Showcase"
        "ja" -> "ショーケース"
        "zh" -> "展陈"
        "ko" -> "쇼케이스"
        else -> "Витрина"
    }
    else -> style
}

private fun libraryCoverScaleLabel(style: String, language: String): String = when (style) {
    "CROP" -> when (language) {
        "en" -> "Fill"
        "ja" -> "塗りつぶし"
        "zh" -> "铺满"
        "ko" -> "채우기"
        else -> "Заполнение"
    }
    "FIT" -> when (language) {
        "en" -> "Fit"
        "ja" -> "収める"
        "zh" -> "适应"
        "ko" -> "맞춤"
        else -> "Вписать"
    }
    else -> style
}

private fun uiDensityLabel(language: String, scale: Float): String = when {
    scale < 0.96f -> when (language) {
        "en" -> "Compact"
        "ja" -> "コンパクト"
        "zh" -> "紧凑"
        "ko" -> "컴팩트"
        else -> "Компактно"
    }
    scale > 1.04f -> when (language) {
        "en" -> "Relaxed"
        "ja" -> "ゆったり"
        "zh" -> "宽松"
        "ko" -> "여유"
        else -> "Свободно"
    }
    else -> when (language) {
        "en" -> "Balanced"
        "ja" -> "バランス"
        "zh" -> "均衡"
        "ko" -> "균형"
        else -> "Баланс"
    }
}

