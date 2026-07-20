package com.example.feature.settings.ui

/**
 * Font-related localization strings for settings screens.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Pure functions mapping language codes to UI strings.
 */

internal fun readerImportedFontsTitle(language: String): String = when (language) {
    "en" -> "Imported fonts"
    "ja" -> "追加したフォント"
    "zh" -> "已导入字体"
    "ko" -> "가져온 글꼴"
    else -> "Импортированные шрифты"
}

internal fun readerImportedFontsHint(language: String): String = when (language) {
    "en" -> "Tap a font to apply it. Use the trash icon to remove it from the device."
    "ja" -> "フォントをタップすると適用されます。ゴミ箱アイコンで端末から削除できます。"
    "zh" -> "点按字体即可应用。使用垃圾桶图标可将其从设备中删除。"
    "ko" -> "글꼴을 탭하면 적용됩니다. 휴지통 아이콘으로 기기에서 삭제할 수 있습니다."
    else -> "Нажми на шрифт, чтобы применить его. Значок корзины удалит его с устройства."
}

internal fun readerImportedFontsEmpty(language: String): String = when (language) {
    "en" -> "No imported fonts yet."
    "ja" -> "まだ追加したフォントはありません。"
    "zh" -> "尚未导入字体。"
    "ko" -> "아직 가져온 글꼴이 없습니다."
    else -> "Пока нет импортированных шрифтов."
}

internal fun readerImportedFontsActive(language: String): String = when (language) {
    "en" -> "Currently active"
    "ja" -> "現在使用中"
    "zh" -> "当前正在使用"
    "ko" -> "현재 사용 중"
    else -> "Используется сейчас"
}

internal fun readerDeleteCustomFontAction(language: String): String = when (language) {
    "en" -> "Delete font"
    "ja" -> "フォントを削除"
    "zh" -> "删除字体"
    "ko" -> "글꼴 삭제"
    else -> "Удалить шрифт"
}

internal fun readerDeleteCustomFontDialogTitle(language: String): String = when (language) {
    "en" -> "Delete imported font?"
    "ja" -> "追加したフォントを削除しますか?"
    "zh" -> "删除已导入字体?"
    "ko" -> "가져온 글꼴을 삭제할까요?"
    else -> "Удалить импортированный шрифт?"
}

internal fun readerDeleteCustomFontDialogMessage(language: String, fontName: String): String = when (language) {
    "en" -> "Font \"$fontName\" will be removed from the device. If it is active now, the reader will switch to Georgia."
    "ja" -> "フォント「$fontName」を端末から削除します。現在使用中なら Georgia に切り替わります。"
    "zh" -> "字体\"$fontName\"将从设备中删除。如果当前正在使用它，阅读器会切换到 Georgia。"
    "ko" -> "\"$fontName\" 글꼴이 기기에서 삭제됩니다. 현재 사용 중이면 읽기 화면은 Georgia로 전환됩니다."
    else -> "Шрифт «$fontName» будет удалён с устройства. Если он выбран сейчас, ридер переключится на Georgia."
}

internal fun readerDeleteCustomFontConfirm(language: String): String = when (language) {
    "en" -> "Delete"
    "ja" -> "削除"
    "zh" -> "删除"
    "ko" -> "삭제"
    else -> "Удалить"
}

internal fun readerSavedStyleActive(language: String): String = when (language) {
    "en" -> "Current"
    "ja" -> "現在"
    "zh" -> "当前"
    "ko" -> "현재"
    else -> "Сейчас"
}

internal fun readerDeleteCustomFontCancel(language: String): String = when (language) {
    "en" -> "Cancel"
    "ja" -> "キャンセル"
    "zh" -> "取消"
    "ko" -> "취소"
    else -> "Отмена"
}

internal fun readerChromeSlotPickerTitle(language: String, target: String): String = when (target) {
    "header_left" -> when (language) {
        "en" -> "Header left slot"
        "ja" -> "ヘッダー左スロット"
        "zh" -> "页眉左侧栏位"
        "ko" -> "상단 왼쪽 슬롯"
        else -> "Левый слот сверху"
    }
    "header_center" -> when (language) {
        "en" -> "Header center slot"
        "ja" -> "ヘッダー中央スロット"
        "zh" -> "页眉中间栏位"
        "ko" -> "상단 가운데 슬롯"
        else -> "Центральный слот сверху"
    }
    "header_right" -> when (language) {
        "en" -> "Header right slot"
        "ja" -> "ヘッダー右スロット"
        "zh" -> "页眉右侧栏位"
        "ko" -> "상단 오른쪽 슬롯"
        else -> "Правый слот сверху"
    }
    "footer_left" -> when (language) {
        "en" -> "Footer left slot"
        "ja" -> "フッター左スロット"
        "zh" -> "页脚左侧栏位"
        "ko" -> "하단 왼쪽 슬롯"
        else -> "Левый слот снизу"
    }
    "footer_center" -> when (language) {
        "en" -> "Footer center slot"
        "ja" -> "フッター中央スロット"
        "zh" -> "页脚中间栏位"
        "ko" -> "하단 가운데 슬롯"
        else -> "Центральный слот снизу"
    }
    else -> when (language) {
        "en" -> "Footer right slot"
        "ja" -> "フッター右スロット"
        "zh" -> "页脚右侧栏位"
        "ko" -> "하단 오른쪽 슬롯"
        else -> "Правый слот снизу"
    }
}
