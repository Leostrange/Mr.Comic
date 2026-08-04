// Phase S3 (2026-08-03): menu/library/misc texts from SettingsScreen.kt.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import java.util.Locale

/* ──── MainMenuText ──── */
internal data class MainMenuText(
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


/* ──── SettingsMainMenuSectionItem ──── */
internal data class SettingsMainMenuSectionItem(
    val section: SettingsSection,
    val title: String,
    val description: String,
    val summary: String? = null
)


/* ──── mainMenuText ──── */
internal fun mainMenuText(language: String): MainMenuText = when (language) {
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

/* ──── SettingsSectionSummaryText ──── */
internal data class SettingsSectionSummaryText(
    val title: String,
    val hint: String
)


/* ──── LibrarySectionText ──── */
internal data class LibrarySectionText(
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


/* ──── librarySectionText ──── */
internal fun librarySectionText(language: String): LibrarySectionText = when (language) {
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

/* ──── compactPendingLabel ──── */
internal fun compactPendingLabel(language: String): String = when (language) {
    "en" -> "Not connected yet"
    "ja" -> "まだ未接続"
    "zh" -> "尚未接入"
    "ko" -> "아직 미연결"
    else -> "Пока не подключено"
}

/* ──── preloadSummaryLabel ──── */
internal fun preloadSummaryLabel(language: String, enabled: Boolean): String = when (language) {
    "en" -> "Preload ${compactToggleLabel(language, enabled)}"
    "ja" -> "先読み ${compactToggleLabel(language, enabled)}"
    "zh" -> "预加载 ${compactToggleLabel(language, enabled)}"
    "ko" -> "프리로드 ${compactToggleLabel(language, enabled)}"
    else -> "Предзагрузка ${compactToggleLabel(language, enabled)}"
}

/* ──── syncMenuSummary ──── */
internal fun syncMenuSummary(language: String, autoBackupEnabled: Boolean): String = when (language) {
    "en" -> "Backup ${compactToggleLabel(language, autoBackupEnabled)} · Import · Export"
    "ja" -> "バックアップ ${compactToggleLabel(language, autoBackupEnabled)} ・インポート・エクスポート"
    "zh" -> "备份 ${compactToggleLabel(language, autoBackupEnabled)} · 导入 · 导出"
    "ko" -> "백업 ${compactToggleLabel(language, autoBackupEnabled)} · 가져오기 · 내보내기"
    else -> "Бэкап ${compactToggleLabel(language, autoBackupEnabled)} · Импорт · Экспорт"
}

/* ──── storageMenuSummary ──── */
internal fun storageMenuSummary(language: String): String = when (language) {
    "en" -> "Access · Cache"
    "ja" -> "アクセス・キャッシュ"
    "zh" -> "访问 · 缓存"
    "ko" -> "접근 · 캐시"
    else -> "Доступ · Кэш"
}

/* ──── settingsImportErrorPresentationLabel ──── */
internal fun settingsImportErrorPresentationLabel(
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

/* ──── advancedMenuSummary ──── */
internal fun advancedMenuSummary(
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

/* ──── aboutMenuSummary ──── */
internal fun aboutMenuSummary(language: String): String = when (language) {
    "en" -> "App · Libraries · Licenses"
    "ja" -> "アプリ・ライブラリ・ライセンス"
    "zh" -> "应用 · 库 · 许可证"
    "ko" -> "앱 · 라이브러리 · 라이선스"
    else -> "Приложение · Библиотеки · Лицензии"
}

/* ──── syncTransferLabel ──── */
internal fun syncTransferLabel(language: String): String = when (language) {
    "en" -> "Transfer"
    "ja" -> "移行"
    "zh" -> "传输"
    "ko" -> "전송"
    else -> "Перенос"
}

/* ──── storageFoldersLabel ──── */
internal fun storageFoldersLabel(language: String): String = when (language) {
    "en" -> "Library folders"
    "ja" -> "フォルダ"
    "zh" -> "书库文件夹"
    "ko" -> "라이브러리 폴더"
    else -> "Папки библиотеки"
}

/* ──── cacheShortLabel ──── */
internal fun cacheShortLabel(language: String): String = when (language) {
    "en" -> "Cache"
    "ja" -> "キャッシュ"
    "zh" -> "缓存"
    "ko" -> "캐시"
    else -> "Кэш"
}

/* ──── settingsSectionSummaryText ──── */
internal fun settingsSectionSummaryText(language: String): SettingsSectionSummaryText = when (language) {
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

/* ──── SettingsSectionMeta ──── */
internal data class SettingsSectionMeta(
    val title: String,
    val description: String
)


/* ──── settingsSectionMeta ──── */
internal fun settingsSectionMeta(
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

/* ──── settingsSectionItems ──── */
internal fun settingsSectionItems(
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

/* ──── translationSectionSummaryItems ──── */
internal fun translationSectionSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    translationSectionText(strings.languageCode).translationBehaviorCard to translationModeLabel(strings, uiState.translationMode),
    translationSectionText(strings.languageCode).sourceLanguageCard to translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false),
    translationSectionText(strings.languageCode).targetLanguageCard to translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true),
    strings.ocrLanguageCard to uiState.ocrLanguage
)

/* ──── aiServicesSummaryItems ──── */
internal fun aiServicesSummaryItems(
    uiState: SettingsUiState,
    strings: AppStrings
): List<Pair<String, String>> = listOf(
    aiServicesOverviewText(strings.languageCode).machineTranslationTitle to aiMachineTranslationStatus(uiState, strings.languageCode),
    aiServicesOverviewText(strings.languageCode).advancedExplainTitle to compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled),
    aiServicesOverviewText(strings.languageCode).summaryTitle to aiServicesOverviewText(strings.languageCode).notConnectedValue,
    aiServicesOverviewText(strings.languageCode).providersTitle to aiProvidersStatus(uiState, strings.languageCode)
)

/* ──── readAloudSummaryItems ──── */
internal fun readAloudSummaryItems(
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

/* ──── PerformanceSettingsText ──── */
internal data class PerformanceSettingsText(
    val title: String,
    val hint: String,
    val reducedMotionTitle: String,
    val reducedMotionSubtitle: String,
    val reducedVisualEffectsTitle: String,
    val reducedVisualEffectsSubtitle: String
)


/* ──── performanceSettingsText ──── */
internal fun performanceSettingsText(language: String): PerformanceSettingsText = when (language) {
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

