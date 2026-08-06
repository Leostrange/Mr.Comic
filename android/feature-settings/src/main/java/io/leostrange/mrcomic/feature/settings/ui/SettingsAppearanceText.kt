@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.Icons
import androidx.compose.ui.graphics.vector.ImageVector
import io.leostrange.mrcomic.core.ui.locale.AppStrings

// Appearance i18n models and helpers (Phase C cascade, 2026-08-02).
// Split from SettingsAppearanceSection.kt (2026-08-06).
internal data class AppearanceSectionText(
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

/* ──── AppearanceSettingsNavItem (data class) ──── */
internal data class AppearanceSettingsNavItem(
    val page: AppearanceSettingsPage,
    val title: String,
    val description: String,
    val summary: String? = null,
    val icon: ImageVector
)

/* ──── compactToggleLabel (fun) ──── */
internal fun compactToggleLabel(language: String, enabled: Boolean): String = when (language) {
    "en" -> if (enabled) "On" else "Off"
    "ja" -> if (enabled) "オン" else "オフ"
    "zh" -> if (enabled) "开" else "关"
    "ko" -> if (enabled) "켜짐" else "꺼짐"
    else -> if (enabled) "Вкл" else "Выкл"
}

/* ──── appLanguageLabel (fun) ──── */
internal fun appLanguageLabel(strings: AppStrings, code: String): String = when (code) {
    "en" -> strings.langEn
    "ja" -> strings.langJa
    "zh" -> strings.langZh
    "ko" -> strings.langKo
    else -> strings.langRu
}

/* ──── settingsLibraryViewLabel (fun) ──── */
internal fun settingsLibraryViewLabel(language: String, mode: String): String = when (mode) {
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

/* ──── appearanceSectionText (fun) ──── */
internal fun appearanceSectionText(language: String): AppearanceSectionText = when (language) {
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

/* ──── appearanceSectionSummaryItems (fun) ──── */
internal fun appearanceSectionSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    strings.appLanguage to appLanguageLabel(strings, uiState.appLanguage),
    strings.themeCard to "${themePresetLabel(strings, uiState.themePreset)} · ${themeLabel(strings, uiState.themeMode)}",
    appearanceLibraryVisualsTitle(strings.languageCode) to "${settingsLibraryViewLabel(uiState.appLanguage, uiState.libraryViewMode)} · ${uiState.libraryTileSize} dp · ${compactToggleLabel(strings.languageCode, uiState.libraryShowCoverTitles)}",
    appearanceScaleTitle(strings.languageCode) to "${fontScaleLabel(strings, uiState.uiFontScale)} · ${uiDensityLabel(uiState.appLanguage, uiState.uiDensityScale)}",
    appearanceColorsTitle(strings.languageCode) to "${compactToggleLabel(strings.languageCode, uiState.customPrimaryColor != null || uiState.customBackgroundColor != null)} · ${(uiState.surfaceOpacity * 100).toInt()}%"
)

/* ──── appearancePageNavItems (fun) ──── */
internal fun appearancePageNavItems(
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

/* ──── appearancePageTitle (fun) ──── */
internal fun appearancePageTitle(
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

/* ──── appearancePageDescription (fun) ──── */
internal fun appearancePageDescription(
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

/* ──── AppearanceSection (fun) ──── */
