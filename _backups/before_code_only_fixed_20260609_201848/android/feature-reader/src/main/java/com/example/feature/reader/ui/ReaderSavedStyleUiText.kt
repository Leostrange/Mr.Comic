package com.example.feature.reader.ui

internal fun readerSavedStylesTitle(language: String): String = when (language) {
    "en" -> "Saved styles"
    "ja" -> "保存したスタイル"
    "zh" -> "已保存样式"
    "ko" -> "저장된 스타일"
    else -> "Сохранённые стили"
}

internal fun readerSavedStylesHint(language: String): String = when (language) {
    "en" -> "Save the current typography to a slot and apply it without leaving the book."
    "ja" -> "現在の組版をスロットに保存し、本を閉じずに適用できます。"
    "zh" -> "把当前排版保存到槽位里，阅读时可直接套用。"
    "ko" -> "현재 타이포그래피를 슬롯에 저장하고 책을 닫지 않고 다시 적용할 수 있습니다."
    else -> "Сохраняй текущую типографику в слот и применяй её прямо во время чтения."
}

internal fun readerSavedStylesListHint(language: String): String = when (language) {
    "en" -> "Your styles are now shown as a list, so it will scale beyond three entries."
    "ja" -> "スタイルは一覧で表示されるため、3件以上でもそのまま使えます。"
    "zh" -> "样式现在以列表显示，因此可以自然扩展到三项以上。"
    "ko" -> "스타일은 이제 목록으로 보여서 3개를 넘어도 그대로 확장됩니다."
    else -> "Стили теперь показаны списком, так что этот блок спокойно расширится дальше трёх."
}

internal fun readerSavedStyleSlotPrefix(language: String): String = when (language) {
    "en" -> "Style"
    "ja" -> "スタイル"
    "zh" -> "样式"
    "ko" -> "스타일"
    else -> "Стиль"
}

internal fun readerSavedStyleSave(language: String): String = when (language) {
    "en" -> "Save"
    "ja" -> "保存"
    "zh" -> "保存"
    "ko" -> "저장"
    else -> "Сохранить"
}

internal fun readerSavedStyleSaveCurrentAsNew(language: String): String = when (language) {
    "en" -> "Save current style as new"
    "ja" -> "現在のスタイルを新規保存"
    "zh" -> "将当前样式另存为新样式"
    "ko" -> "현재 스타일을 새로 저장"
    else -> "Сохранить текущий стиль как новый"
}

internal fun readerSavedStyleApply(language: String): String = when (language) {
    "en" -> "Apply"
    "ja" -> "適用"
    "zh" -> "应用"
    "ko" -> "적용"
    else -> "Применить"
}

internal fun readerSavedStyleClear(language: String): String = when (language) {
    "en" -> "Clear"
    "ja" -> "削除"
    "zh" -> "清除"
    "ko" -> "삭제"
    else -> "Очистить"
}

internal fun readerSavedStyleEmpty(language: String): String = when (language) {
    "en" -> "Empty slot"
    "ja" -> "空のスロット"
    "zh" -> "空槽位"
    "ko" -> "빈 슬롯"
    else -> "Пустой слот"
}

internal fun readerImportStyleAction(language: String): String = when (language) {
    "en" -> "Import style"
    "ja" -> "スタイルを読み込む"
    "zh" -> "导入样式"
    "ko" -> "스타일 가져오기"
    else -> "Импортировать стиль"
}

internal fun readerExportStyleAction(language: String): String = when (language) {
    "en" -> "Export style"
    "ja" -> "スタイルを書き出す"
    "zh" -> "导出样式"
    "ko" -> "스타일 내보내기"
    else -> "Экспортировать стиль"
}

internal fun readerManualColorsTitle(language: String): String = when (language) {
    "en" -> "Manual colors"
    "ja" -> "手動の色"
    "zh" -> "手动颜色"
    "ko" -> "수동 색상"
    else -> "Ручные цвета"
}

internal fun readerManualColorsHint(language: String): String = when (language) {
    "en" -> "Pick custom text, background, and accent colors when the UI provides them."
    "ja" -> "UI に色の値が渡されたら、文字色・背景色・アクセント色を手動で選べます。"
    "zh" -> "当界面提供颜色值时，可以手动选择文本、背景和强调色。"
    "ko" -> "UI에 색상 값이 들어오면 텍스트, 배경, 강조 색상을 수동으로 고를 수 있습니다."
    else -> "Если UI даст значения, здесь можно будет вручную выбрать цвет текста, фона и акцента."
}

internal fun readerManualTextColorLabel(language: String): String = when (language) {
    "en" -> "Text"
    "ja" -> "本文"
    "zh" -> "文本"
    "ko" -> "텍스트"
    else -> "Текст"
}

internal fun readerManualBackgroundColorLabel(language: String): String = when (language) {
    "en" -> "Background"
    "ja" -> "背景"
    "zh" -> "背景"
    "ko" -> "배경"
    else -> "Фон"
}

internal fun readerManualAccentColorLabel(language: String): String = when (language) {
    "en" -> "Accent"
    "ja" -> "アクセント"
    "zh" -> "强调"
    "ko" -> "강조"
    else -> "Акцент"
}

internal fun readerManualColorAuto(language: String): String = when (language) {
    "en" -> "Auto"
    "ja" -> "自動"
    "zh" -> "自动"
    "ko" -> "자동"
    else -> "Авто"
}

internal fun readerManualColorPaper(language: String): String = when (language) {
    "en" -> "Paper"
    "ja" -> "Paper"
    "zh" -> "Paper"
    "ko" -> "Paper"
    else -> "Бумага"
}

internal fun readerManualColorInk(language: String): String = when (language) {
    "en" -> "Ink"
    "ja" -> "Ink"
    "zh" -> "Ink"
    "ko" -> "Ink"
    else -> "Чернила"
}

internal fun readerManualColorMuted(language: String): String = when (language) {
    "en" -> "Muted"
    "ja" -> "Muted"
    "zh" -> "Muted"
    "ko" -> "Muted"
    else -> "Тихий"
}

internal fun readerManualColorAccent(language: String): String = when (language) {
    "en" -> "Accent"
    "ja" -> "Accent"
    "zh" -> "Accent"
    "ko" -> "Accent"
    else -> "Акцент"
}

internal fun readerManualColorWarm(language: String): String = when (language) {
    "en" -> "Warm"
    "ja" -> "Warm"
    "zh" -> "Warm"
    "ko" -> "Warm"
    else -> "Тёплый"
}
