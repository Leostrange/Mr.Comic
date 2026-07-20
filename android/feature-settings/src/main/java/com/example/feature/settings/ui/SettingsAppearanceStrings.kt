package com.example.feature.settings.ui

/**
 * Appearance and library localization strings for settings screens.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Pure functions mapping language codes to UI strings.
 */

internal fun appearanceThemeStudioTitle(language: String): String = when (language) {
    "en" -> "Theme Studio"
    "ja" -> "テーマスタジオ"
    "zh" -> "主题工作台"
    "ko" -> "테마 스튜디오"
    else -> "Конструктор темы"
}

internal fun appearanceThemeStudioDescription(language: String): String = when (language) {
    "en" -> "A compact constructor for the whole app: palette, surfaces, density, shape, service elements, and saved themes."
    "ja" -> "パレット、サーフェス、密度、形、補助要素、保存テーマを一か所で整えるアプリ全体のコンストラクタです。"
    "zh" -> "把配色、表面、密度、形状、辅助元素和保存主题集中到一个紧凑的构造器里。"
    "ko" -> "팔레트, 표면, 밀도, 형태, 보조 요소, 저장 테마를 한곳에서 다루는 앱 전체 생성기입니다."
    else -> "Компактный конструктор всего приложения: палитра, поверхности, плотность, форма, сервисные элементы и сохранённые темы."
}

internal fun appearanceThemeTitle(language: String): String = when (language) {
    "en" -> "Theme & mood"
    "ja" -> "テーマとムード"
    "zh" -> "主题与氛围"
    "ko" -> "테마와 무드"
    else -> "Тема и настроение"
}

internal fun appearanceScaleTitle(language: String): String = when (language) {
    "en" -> "Scale & shape"
    "ja" -> "サイズと形"
    "zh" -> "尺寸与形状"
    "ko" -> "크기와 형태"
    else -> "Размер и форма"
}

internal fun appearanceColorsTitle(language: String): String = when (language) {
    "en" -> "Colors & surfaces"
    "ja" -> "色とサーフェス"
    "zh" -> "颜色与表面"
    "ko" -> "색상과 표면"
    else -> "Цвета и поверхности"
}

internal fun appearanceExtrasTitle(language: String): String = when (language) {
    "en" -> "Services & extras"
    "ja" -> "サービスと追加"
    "zh" -> "服务与附加"
    "ko" -> "서비스와 추가 요소"
    else -> "Сервисы и дополнения"
}

internal fun appearanceLibraryVisualsTitle(language: String): String = when (language) {
    "en" -> "Covers and library"
    "ja" -> "表紙とライブラリ"
    "zh" -> "封面与书库"
    "ko" -> "표지와 라이브러리"
    else -> "Обложки и библиотека"
}

internal fun appearanceLibraryVisualsDescription(language: String): String = when (language) {
    "en" -> "Everything visual about the library lives here: view mode, covers, labels, cards, shelves, and background."
    "ja" -> "ライブラリの見た目に関する設定はここに集約します。表示モード、表紙、ラベル、カード、棚、背景をまとめて調整します。"
    "zh" -> "书库的所有视觉设置都放在这里：视图模式、封面、标签、卡片、书架和背景。"
    "ko" -> "라이브러리의 모든 시각 설정을 여기에 모읍니다. 보기 모드, 표지, 라벨, 카드, 선반, 배경을 함께 조정합니다."
    else -> "Здесь собраны все визуальные настройки библиотеки: вид, обложки, подписи, карточки, полки и фон."
}

internal data class AppThemePresetText(
    val title: String,
    val hint: String,
    val slotPrefix: String,
    val current: String,
    val save: String,
    val apply: String,
    val clear: String,
    val empty: String
)

internal fun appThemePresetText(language: String): AppThemePresetText = when (language) {
    "en" -> AppThemePresetText(
        title = "Saved app themes",
        hint = "Save up to three full app looks: palette, surfaces, scale, and shape.",
        slotPrefix = "Slot",
        current = "Current",
        save = "Save theme",
        apply = "Apply theme",
        clear = "Clear slot",
        empty = "Empty slot"
    )
    "ja" -> AppThemePresetText(
        title = "保存したアプリテーマ",
        hint = "パレット、サーフェス、スケール、形を含むアプリ全体の見た目を3つまで保存できます。",
        slotPrefix = "スロット",
        current = "現在",
        save = "保存",
        apply = "適用",
        clear = "消去",
        empty = "空き"
    )
    "zh" -> AppThemePresetText(
        title = "已保存的应用主题",
        hint = "最多保存三个完整的应用外观：配色、表面、缩放和圆角。",
        slotPrefix = "槽位",
        current = "当前",
        save = "保存主题",
        apply = "应用主题",
        clear = "清空槽位",
        empty = "空槽位"
    )
    "ko" -> AppThemePresetText(
        title = "저장된 앱 테마",
        hint = "팔레트, 표면, 스케일, 형태를 포함한 앱 전체 룩을 최대 세 개 저장합니다.",
        slotPrefix = "슬롯",
        current = "현재",
        save = "저장",
        apply = "적용",
        clear = "비우기",
        empty = "빈 슬롯"
    )
    else -> AppThemePresetText(
        title = "Сохранённые темы приложения",
        hint = "Сохраняйте до трёх полных вариантов оформления приложения: палитру, поверхности, масштаб и форму.",
        slotPrefix = "Слот",
        current = "Сейчас",
        save = "Сохранить тему",
        apply = "Применить тему",
        clear = "Очистить слот",
        empty = "Пустой слот"
    )
}

internal fun libraryMaintenanceTitle(language: String): String = when (language) {
    "en" -> "Maintenance"
    "ja" -> "メンテナンス"
    "zh" -> "维护"
    "ko" -> "유지관리"
    else -> "Обслуживание"
}

internal fun libraryCollectionOrderTitle(language: String): String = when (language) {
    "en" -> "Collection order"
    "ja" -> "コレクション順"
    "zh" -> "馆藏顺序"
    "ko" -> "컬렉션 순서"
    else -> "Порядок коллекции"
}

internal fun libraryTransferTitle(language: String): String = when (language) {
    "en" -> "Transfer and backup"
    "ja" -> "移行とバックアップ"
    "zh" -> "迁移与备份"
    "ko" -> "이전 및 백업"
    else -> "Перенос и резерв"
}

internal fun libraryImportExportTitle(language: String): String = when (language) {
    "en" -> "Import and export"
    "ja" -> "インポートとエクスポート"
    "zh" -> "导入与导出"
    "ko" -> "가져오기와 내보내기"
    else -> "Импорт и экспорт"
}

internal fun libraryImportExportSummary(language: String): String = when (language) {
    "en" -> "Open Sync"
    "ja" -> "同期を開く"
    "zh" -> "打开同步"
    "ko" -> "동기화 열기"
    else -> "Открыть синхронизацию"
}

internal fun libraryAccessTitle(language: String): String = when (language) {
    "en" -> "Library access"
    "ja" -> "ライブラリアクセス"
    "zh" -> "书库访问"
    "ko" -> "라이브러리 접근"
    else -> "Доступ к библиотеке"
}

internal fun libraryCacheTitle(language: String): String = when (language) {
    "en" -> "Cache and recovery"
    "ja" -> "キャッシュと復旧"
    "zh" -> "缓存与恢复"
    "ko" -> "캐시와 복구"
    else -> "Кэш и восстановление"
}

internal fun libraryThemeStudioTitle(language: String): String = when (language) {
    "en" -> "Theme Studio"
    "ja" -> "テーマスタジオ"
    "zh" -> "主题工作台"
    "ko" -> "테마 스튜디오"
    else -> "Конструктор темы"
}

internal fun libraryThemeStudioDescription(language: String): String = when (language) {
    "en" -> "A dense builder for the library look. Open a specific layer instead of scrolling through one long wall of cards."
    "ja" -> "長いカードの壁ではなく、レイヤーごとに開いて調整する密度の高いライブラリコンストラクタです。"
    "zh" -> "不再是长长的卡片墙，而是按层进入的紧凑型书库构造器。"
    "ko" -> "긴 카드 벽 대신 레이어별로 들어가는 밀도 높은 라이브러리 빌더입니다."
    else -> "Плотный конструктор библиотеки: вместо длинной стены карточек здесь отдельные слои настройки."
}

internal fun libraryCanvasPageTitle(language: String): String = when (language) {
    "en" -> "Canvas, glass & shelves"
    "ja" -> "キャンバス・ガラス・棚"
    "zh" -> "画布、玻璃与书架"
    "ko" -> "캔버스, 글래스, 선반"
    else -> "Холст, стекло и полки"
}

internal fun libraryCanvasPageDescription(language: String): String = when (language) {
    "en" -> "Tune the backdrop, blur, glass feel, panel transparency, and shelf material as one real canvas layer."
    "ja" -> "背景、ブラー、ガラス感、パネル透明度、棚マテリアルをひとつのキャンバス層としてまとめて調整します。"
    "zh" -> "把背景、模糊、玻璃感、面板透明度和书架材质当作一个真实画布层统一调整。"
    "ko" -> "배경, 블러, 글래스 질감, 패널 투명도, 선반 재질을 하나의 실제 캔버스 층으로 다룹니다."
    else -> "Фон, блюр, стеклянность, прозрачность панелей и материал полок собираются в один настоящий слой холста."
}

internal fun libraryGraphicCoverStyleTitle(language: String): String = when (language) {
    "en" -> "Graphic cover style"
    "ja" -> "グラフィック表紙スタイル"
    "zh" -> "图像封面风格"
    "ko" -> "그래픽 표지 스타일"
    else -> "Стиль графических обложек"
}

internal fun libraryThemeStudioLayoutTitle(language: String): String = when (language) {
    "en" -> "Layout and spacing"
    "ja" -> "レイアウトと間隔"
    "zh" -> "布局与间距"
    "ko" -> "레이아웃과 간격"
    else -> "Макет и ритм"
}

internal fun libraryThemeStudioVisualsTitle(language: String): String = when (language) {
    "en" -> "Cards, covers, and labels"
    "ja" -> "カード・表紙・ラベル"
    "zh" -> "卡片、封面与标签"
    "ko" -> "카드, 표지, 라벨"
    else -> "Карточки, обложки и подписи"
}

internal fun libraryThemeStudioLayoutDescription(language: String): String = when (language) {
    "en" -> "Grid or list, rhythm, strip position, and the way the shelf breathes before visual styling."
    "ja" -> "グリッド/リスト、リズム、ストリップ位置など、見た目より先に棚の構造を整えます。"
    "zh" -> "先调整网格/列表、节奏和条带位置，再处理视觉样式。"
    "ko" -> "그리드/리스트, 리듬, 스트립 위치처럼 외형보다 먼저 선반 구조를 다듬습니다."
    else -> "Сначала настраивается структура полки: grid/list, ритм и положение ленты, а уже потом внешний вид."
}

internal fun libraryThemeStudioVisualsDescription(language: String): String = when (language) {
    "en" -> "Covers, shadows, labels, progress, and thumbnail behavior are tuned as one card layer."
    "ja" -> "表紙、影、ラベル、進捗、サムネイル挙動をひとつのカード層として整えます。"
    "zh" -> "把封面、阴影、标签、进度和缩略图行为当作一个卡片层统一调整。"
    "ko" -> "표지, 그림자, 라벨, 진행 상태, 썸네일 동작을 하나의 카드 층으로 조정합니다."
    else -> "Обложки, тени, подписи, прогресс и поведение миниатюр собираются в один карточный слой."
}
