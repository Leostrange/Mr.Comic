package io.leostrange.mrcomic.feature.settings.ui

/**
 * Appearance and library localization strings for settings screens.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Pure functions mapping language codes to UI strings.
 */

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
    "en" -> "Colors"
    "ja" -> "カラー"
    "zh" -> "颜色"
    "ko" -> "색상"
    else -> "Цвета"
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
