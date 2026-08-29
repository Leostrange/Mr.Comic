package io.leostrange.mrcomic.feature.reader.ui

/**
 * Margin-crop dialog localization ("Обрезка пустых полей").
 * Pure functions mapping language → UI strings.
 */
internal fun readerMarginCropDialogTitle(language: String): String = when (language) {
    "ru" -> "Обрезка пустых полей"
    "ja" -> "余白のトリミング"
    "zh" -> "裁剪空白页边"
    "ko" -> "빈 여백 자르기"
    else -> "Margin crop"
}

internal fun readerMarginCropEnable(language: String): String = when (language) {
    "ru" -> "Включить"
    "ja" -> "有効にする"
    "zh" -> "启用"
    "ko" -> "사용"
    else -> "Enable"
}

internal fun readerMarginCropPresetAuto(language: String): String = when (language) {
    "ru" -> "Авто"
    "ja" -> "自動"
    "zh" -> "自动"
    "ko" -> "자동"
    else -> "Auto"
}

internal fun readerMarginCropSideTop(language: String): String = when (language) {
    "ru" -> "Сверху"
    "ja" -> "上"
    "zh" -> "上边"
    "ko" -> "위"
    else -> "Top"
}

internal fun readerMarginCropSideBottom(language: String): String = when (language) {
    "ru" -> "Снизу"
    "ja" -> "下"
    "zh" -> "下边"
    "ko" -> "아래"
    else -> "Bottom"
}

internal fun readerMarginCropSideLeft(language: String): String = when (language) {
    "ru" -> "Слева"
    "ja" -> "左"
    "zh" -> "左边"
    "ko" -> "왼쪽"
    else -> "Left"
}

internal fun readerMarginCropSideRight(language: String): String = when (language) {
    "ru" -> "Справа"
    "ja" -> "右"
    "zh" -> "右边"
    "ko" -> "오른쪽"
    else -> "Right"
}

internal fun readerMarginCropSymmetric(language: String): String = when (language) {
    "ru" -> "Симметричная обрезка"
    "ja" -> "対称トリミング"
    "zh" -> "对称裁剪"
    "ko" -> "대칭 자르기"
    else -> "Symmetric crop"
}

internal fun readerMarginCropShowWarning(language: String): String = when (language) {
    "ru" -> "Показывать предупреждение при обрезке"
    "ja" -> "トリミング中は警告を表示"
    "zh" -> "裁剪时显示警告"
    "ko" -> "자르기 사용 시 경고 표시"
    else -> "Show warning while crop is on"
}

internal fun readerMarginCropWarningText(language: String): String = when (language) {
    "ru" -> "Часть изображения по краям страниц скрыта"
    "ja" -> "ページの端の一部が非表示になっています"
    "zh" -> "页面边缘的部分内容已被隐藏"
    "ko" -> "페이지 가장자리의 일부가 숨겨져 있습니다"
    else -> "Part of the page edges is hidden"
}

internal fun readerMarginCropReset(language: String): String = when (language) {
    "ru" -> "Сбросить"
    "ja" -> "リセット"
    "zh" -> "重置"
    "ko" -> "초기화"
    else -> "Reset"
}

internal fun readerMarginCropDone(language: String): String = when (language) {
    "ru" -> "Готово"
    "ja" -> "完了"
    "zh" -> "完成"
    "ko" -> "완료"
    else -> "Done"
}

internal fun readerMarginCropAutoRunning(language: String): String = when (language) {
    "ru" -> "Анализ страницы…"
    "ja" -> "ページを解析中…"
    "zh" -> "正在分析页面…"
    "ko" -> "페이지 분석 중…"
    else -> "Analyzing page…"
}

/** Content description for the locked crop button (comics/manga formats). */
internal fun readerMarginCropLockedHint(language: String): String = when (language) {
    "ru" -> "Обрезка полей доступна для PDF и DjVu"
    "ja" -> "余白トリミングは PDF と DjVu で利用できます"
    "zh" -> "页边裁剪仅适用于 PDF 和 DjVu"
    "ko" -> "여백 자르기는 PDF 및 DjVu에서 사용할 수 있습니다"
    else -> "Margin crop is available for PDF and DjVu"
}
