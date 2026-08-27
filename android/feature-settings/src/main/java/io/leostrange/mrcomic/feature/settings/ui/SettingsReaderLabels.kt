// Phase R (2026-08-03): label/i18n helpers from SettingsReaderSection.kt.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.TextSnippet
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import kotlin.math.roundToInt

internal fun readerInfoSlotLabel(language: String, slot: String): String = when (ReaderInfoSlot.fromStored(slot)) {
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
internal fun readerTapZoneActionLabel(language: String, action: String): String = when (ReaderTapZoneAction.fromStored(action)) {
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
internal fun readerInfoSlotPreviewValue(language: String, slot: String): String = when (ReaderInfoSlot.fromStored(slot)) {
    ReaderInfoSlot.NONE -> ""
    ReaderInfoSlot.BOOK_TITLE -> when (language) {
        "en" -> "Book title"
        "ja" -> "本のタイトル"
        "zh" -> "书名"
        "ko" -> "책 제목"
        else -> "Название книги"
    }
    ReaderInfoSlot.CHAPTER_TITLE -> when (language) {
        "en" -> "Chapter 3"
        "ja" -> "第3章"
        "zh" -> "第3章"
        "ko" -> "제3장"
        else -> "Глава 3"
    }
    ReaderInfoSlot.TIME -> "12:48"
    ReaderInfoSlot.PROGRESS -> "78%"
    ReaderInfoSlot.PAGE -> "124 / 320"
}
internal fun readerHeaderFooterPickerOptions(language: String): List<ReaderPickerOption> = listOf(
    ReaderPickerOption(ReaderInfoSlot.NONE.name, readerInfoSlotLabel(language, ReaderInfoSlot.NONE.name)),
    ReaderPickerOption(ReaderInfoSlot.BOOK_TITLE.name, readerInfoSlotLabel(language, ReaderInfoSlot.BOOK_TITLE.name)),
    ReaderPickerOption(ReaderInfoSlot.CHAPTER_TITLE.name, readerInfoSlotLabel(language, ReaderInfoSlot.CHAPTER_TITLE.name)),
    ReaderPickerOption(ReaderInfoSlot.TIME.name, readerInfoSlotLabel(language, ReaderInfoSlot.TIME.name)),
    ReaderPickerOption(ReaderInfoSlot.PROGRESS.name, readerInfoSlotLabel(language, ReaderInfoSlot.PROGRESS.name)),
    ReaderPickerOption(ReaderInfoSlot.PAGE.name, readerInfoSlotLabel(language, ReaderInfoSlot.PAGE.name))
)
internal fun readerTapZonePickerOptions(language: String): List<ReaderPickerOption> = listOf(
    ReaderPickerOption(ReaderTapZoneAction.PREVIOUS_PAGE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.PREVIOUS_PAGE.name)),
    ReaderPickerOption(ReaderTapZoneAction.MENU.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.MENU.name)),
    ReaderPickerOption(ReaderTapZoneAction.NEXT_PAGE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NEXT_PAGE.name)),
    ReaderPickerOption(ReaderTapZoneAction.PREVIOUS_CHAPTER.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.PREVIOUS_CHAPTER.name)),
    ReaderPickerOption(ReaderTapZoneAction.NEXT_CHAPTER.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NEXT_CHAPTER.name)),
    ReaderPickerOption(ReaderTapZoneAction.NONE.name, readerTapZoneActionLabel(language, ReaderTapZoneAction.NONE.name))
)
internal fun pageTitleForReader(
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
internal fun pageDescriptionForReader(
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
internal fun readerPageNavItems(
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
internal fun readerImageLayoutCardTitle(language: String): String = when (language) {
    "en" -> "Image layout"
    "ja" -> "画像レイアウト"
    "zh" -> "图像布局"
    "ko" -> "이미지 레이아웃"
    else -> "Макет изображения"
}
internal fun readerImageLayoutCardHint(language: String): String = when (language) {
    "en" -> "Controls how PDF and DjVu pages fit the screen and how aggressively outer margins are cropped."
    "ja" -> "PDF と DjVu のページを画面にどう合わせるか、外側の余白をどこまで切り詰めるかを調整します。"
    "zh" -> "控制 PDF 和 DjVu 页面如何贴合屏幕，以及裁掉多少外边距。"
    "ko" -> "PDF와 DjVu 페이지를 화면에 맞추는 방식과 바깥 여백을 얼마나 자를지 조절합니다."
    else -> "Управляет тем, как страницы PDF и DjVu вписываются в экран и насколько сильно обрезаются внешние поля."
}
internal fun readerImageScaleModeTitle(language: String): String = when (language) {
    "en" -> "Scale mode"
    "ja" -> "拡大モード"
    "zh" -> "缩放模式"
    "ko" -> "확대 모드"
    else -> "Режим масштаба"
}
internal fun readerImageScaleModeLabel(mode: ReaderImageScaleMode, language: String): String = when (mode) {
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
internal fun readerMarginCropHorizontalTitle(language: String): String = when (language) {
    "en" -> "Horizontal crop"
    "ja" -> "左右のトリミング"
    "zh" -> "水平裁边"
    "ko" -> "가로 여백 자르기"
    else -> "Обрезка по горизонтали"
}
internal fun readerMarginCropVerticalTitle(language: String): String = when (language) {
    "en" -> "Vertical crop"
    "ja" -> "上下のトリミング"
    "zh" -> "垂直裁边"
    "ko" -> "세로 여백 자르기"
    else -> "Обрезка по вертикали"
}
internal fun readerMarginCropPercentLabel(value: Float): String =
    "${(value.coerceIn(0f, 0.22f) * 100f).roundToInt()}%"
internal fun readerToolbarSectionTitle(language: String): String = when (language) {
    "en" -> "Panels"
    "ja" -> "パネル"
    "zh" -> "面板"
    "ko" -> "패널"
    else -> "Панели"
}
internal fun readerToolbarOpacityTitle(language: String): String = when (language) {
    "en" -> "Panel opacity"
    "ja" -> "パネルの不透明度"
    "zh" -> "面板不透明度"
    "ko" -> "패널 불투명도"
    else -> "Непрозрачность панелей"
}
internal fun readerToolbarBlurTitle(language: String): String = when (language) {
    "en" -> "Panel blur"
    "ja" -> "パネルのブラー"
    "zh" -> "面板模糊"
    "ko" -> "패널 블러"
    else -> "Блюр панелей"
}
internal fun readerToolbarAutoHideTitle(language: String): String = when (language) {
    "en" -> "Auto-hide toolbars"
    "ja" -> "ツールバーを自動で隠す"
    "zh" -> "自动隐藏工具栏"
    "ko" -> "툴바 자동 숨김"
    else -> "Автоскрытие тулбаров"
}
internal fun readerToolbarAutoHideSubtitle(language: String): String = when (language) {
    "en" -> "After a short pause, the top and bottom bars hide on their own."
    "ja" -> "少し待つと、上下のツールバーが自動で隠れます。"
    "zh" -> "短暂停留后，顶部和底部工具栏会自动隐藏。"
    "ko" -> "잠시 기다리면 상단과 하단 툴바가 자동으로 숨겨집니다."
    else -> "После короткой паузы верхний и нижний тулбары скрываются сами."
}
internal fun readerBehaviorText(language: String): ReaderBehaviorText = when (language) {
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
internal fun readerScreenTimeoutLabel(mode: String, language: String): String = when (ReaderScreenTimeoutMode.fromStored(mode)) {
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
