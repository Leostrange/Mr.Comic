package com.example.feature.reader.ui

import com.example.core.model.ReaderImageScaleMode
import com.example.core.model.ReaderScreenTimeoutMode
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderTtsSleepTimerMode

/**
 * Reader control center localization strings.
 *
 * Extracted from ReaderControlCenterSheet to reduce its size.
 * Pure functions mapping language/enums to UI strings.
 */

internal fun readerImageScaleTitle(language: String): String = when (language) {
    "ru" -> "Масштаб изображения"
    "ja" -> "画像の表示"
    "zh" -> "图像缩放"
    "ko" -> "이미지 배율"
    else -> "Image scale"
}

internal fun readerImageScaleLabel(mode: ReaderImageScaleMode, language: String): String = when (mode) {
    ReaderImageScaleMode.FIT_WIDTH -> when (language) {
        "ru" -> "По ширине"
        "ja" -> "幅に合わせる"
        "zh" -> "适应宽度"
        "ko" -> "너비에 맞춤"
        else -> "Fit width"
    }
    ReaderImageScaleMode.FIT_HEIGHT -> when (language) {
        "ru" -> "По высоте"
        "ja" -> "高さに合わせる"
        "zh" -> "适应高度"
        "ko" -> "높이에 맞춤"
        else -> "Fit height"
    }
    ReaderImageScaleMode.REAL_SIZE -> when (language) {
        "ru" -> "Реальный размер"
        "ja" -> "実寸"
        "zh" -> "实际大小"
        "ko" -> "실제 크기"
        else -> "Real size"
    }
}

internal fun readerMarginCropHint(language: String): String = when (language) {
    "ru" -> "Симметрично обрезает внешние поля PDF и DjVu, чтобы текст занимал больше места на экране."
    "ja" -> "PDF と DjVu の外側余白を左右上下から対称に切り取り、本文を広く表示します。"
    "zh" -> "对 PDF 和 DjVu 的外部留白进行对称裁切，让正文占据更多屏幕空间。"
    "ko" -> "PDF와 DjVu의 바깥 여백을 좌우·상하 대칭으로 잘라 본문이 화면을 더 넓게 쓰도록 합니다."
    else -> "Symmetrically trims outer PDF and DjVu margins so the page content uses more screen space."
}

internal fun readerMarginCropHorizontalLabel(value: Float, language: String): String = when (language) {
    "ru" -> "Обрезка слева и справа: ${(value * 100f).toInt()}%"
    "ja" -> "左右トリム: ${(value * 100f).toInt()}%"
    "zh" -> "左右裁切：${(value * 100f).toInt()}%"
    "ko" -> "좌우 자르기: ${(value * 100f).toInt()}%"
    else -> "Left/right crop: ${(value * 100f).toInt()}%"
}

internal fun readerMarginCropVerticalLabel(value: Float, language: String): String = when (language) {
    "ru" -> "Обрезка сверху и снизу: ${(value * 100f).toInt()}%"
    "ja" -> "上下トリム: ${(value * 100f).toInt()}%"
    "zh" -> "上下裁切：${(value * 100f).toInt()}%"
    "ko" -> "상하 자르기: ${(value * 100f).toInt()}%"
    else -> "Top/bottom crop: ${(value * 100f).toInt()}%"
}

internal fun readerImportedFontsTitle(language: String): String = when (language) {
    "ru" -> "Импортированные шрифты"
    "ja" -> "追加したフォント"
    "zh" -> "已导入字体"
    "ko" -> "가져온 글꼴"
    else -> "Imported fonts"
}

internal fun readerImportedFontsEmpty(language: String): String = when (language) {
    "ru" -> "Пока здесь только встроенные шрифты."
    "ja" -> "まだ追加したフォントはありません。"
    "zh" -> "这里还没有导入字体。"
    "ko" -> "아직 가져온 글꼴이 없습니다."
    else -> "Only built-in fonts are available yet."
}

internal fun readerImportedFontsActive(language: String): String = when (language) {
    "ru" -> "Используется сейчас"
    "ja" -> "現在使用中"
    "zh" -> "当前正在使用"
    "ko" -> "현재 사용 중"
    else -> "Currently active"
}

internal fun readerDeleteFontAction(language: String): String = when (language) {
    "ru" -> "Удалить"
    "ja" -> "削除"
    "zh" -> "删除"
    "ko" -> "삭제"
    else -> "Delete"
}

internal fun readerScreenTimeoutLabel(mode: ReaderScreenTimeoutMode, language: String): String = when (mode) {
    ReaderScreenTimeoutMode.SYSTEM -> when (language) {
        "ru" -> "Системное"
        "ja" -> "システム"
        "zh" -> "系统"
        "ko" -> "시스템"
        else -> "System"
    }
    ReaderScreenTimeoutMode.SECONDS_30 -> when (language) {
        "ru" -> "30 сек"
        "ja" -> "30秒"
        "zh" -> "30秒"
        "ko" -> "30초"
        else -> "30s"
    }
    ReaderScreenTimeoutMode.MINUTE_1 -> when (language) {
        "ru" -> "1 мин"
        "ja" -> "1分"
        "zh" -> "1分钟"
        "ko" -> "1분"
        else -> "1m"
    }
    ReaderScreenTimeoutMode.MINUTE_2 -> when (language) {
        "ru" -> "2 мин"
        "ja" -> "2分"
        "zh" -> "2分钟"
        "ko" -> "2분"
        else -> "2m"
    }
    ReaderScreenTimeoutMode.MINUTE_5 -> when (language) {
        "ru" -> "5 мин"
        "ja" -> "5分"
        "zh" -> "5分钟"
        "ko" -> "5분"
        else -> "5m"
    }
    ReaderScreenTimeoutMode.MINUTE_10 -> when (language) {
        "ru" -> "10 мин"
        "ja" -> "10分"
        "zh" -> "10分钟"
        "ko" -> "10분"
        else -> "10m"
    }
    ReaderScreenTimeoutMode.NEVER -> when (language) {
        "ru" -> "Не выключать"
        "ja" -> "常にオン"
        "zh" -> "常亮"
        "ko" -> "항상 켜기"
        else -> "Never"
    }
}

internal fun readerPageAnimationLabel(animation: String, language: String): String = when (animation) {
    "NONE" -> when (language) {
        "ru" -> "Нет"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "None"
    }
    "FADE" -> when (language) {
        "ru" -> "Угасание"
        "ja" -> "フェード"
        "zh" -> "淡入淡出"
        "ko" -> "페이드"
        else -> "Fade"
    }
    else -> when (language) {
        "ru" -> "Слайд"
        "ja" -> "スライド"
        "zh" -> "滑动"
        "ko" -> "슬라이드"
        else -> "Slide"
    }
}

internal fun readerImmersiveTitle(language: String): String = when (language) {
    "ru" -> "Режим погружения"
    "ja" -> "没入モード"
    "zh" -> "沉浸模式"
    "ko" -> "몰입 모드"
    else -> "Immersive mode"
}

internal fun readerTapZonesTitle(language: String): String = when (language) {
    "ru" -> "Зоны нажатия"
    "ja" -> "タップゾーン"
    "zh" -> "点击区域"
    "ko" -> "탭 영역"
    else -> "Tap zones"
}

internal fun readerTapZoneModeLabel(mode: ReaderTapZoneMode, language: String): String = when (mode) {
    ReaderTapZoneMode.SIMPLE -> when (language) {
        "ru" -> "Простой"
        "ja" -> "シンプル"
        "zh" -> "简单"
        "ko" -> "기본"
        else -> "Simple"
    }
    ReaderTapZoneMode.CUSTOM -> when (language) {
        "ru" -> "Настраиваемый"
        "ja" -> "カスタム"
        "zh" -> "自定义"
        "ko" -> "사용자 지정"
        else -> "Custom"
    }
}

internal fun readerTapZoneSwapTitle(language: String): String = when (language) {
    "ru" -> "Поменять левую и правую зоны"
    "ja" -> "左右のゾーンを入れ替える"
    "zh" -> "交换左右区域"
    "ko" -> "좌우 영역 바꾸기"
    else -> "Swap left and right zones"
}

internal fun readerTapZoneLeftTitle(language: String): String = when (language) {
    "ru" -> "Левая зона"
    "ja" -> "左ゾーン"
    "zh" -> "左侧区域"
    "ko" -> "왼쪽 영역"
    else -> "Left zone"
}

internal fun readerTapZoneCenterTitle(language: String): String = when (language) {
    "ru" -> "Центральная зона"
    "ja" -> "中央ゾーン"
    "zh" -> "中间区域"
    "ko" -> "가운데 영역"
    else -> "Center zone"
}

internal fun readerTapZoneRightTitle(language: String): String = when (language) {
    "ru" -> "Правая зона"
    "ja" -> "右ゾーン"
    "zh" -> "右侧区域"
    "ko" -> "오른쪽 영역"
    else -> "Right zone"
}

internal fun readerTapZoneActionLabel(action: ReaderTapZoneAction, language: String): String = when (action) {
    ReaderTapZoneAction.PREVIOUS_PAGE -> when (language) {
        "ru" -> "Назад"
        "ja" -> "前へ"
        "zh" -> "上一页"
        "ko" -> "이전 페이지"
        else -> "Previous page"
    }
    ReaderTapZoneAction.MENU,
    ReaderTapZoneAction.TOGGLE_UI -> when (language) {
        "ru" -> "Меню"
        "ja" -> "メニュー"
        "zh" -> "菜单"
        "ko" -> "메뉴"
        else -> "Menu"
    }
    ReaderTapZoneAction.NEXT_PAGE -> when (language) {
        "ru" -> "Вперёд"
        "ja" -> "次へ"
        "zh" -> "下一页"
        "ko" -> "다음 페이지"
        else -> "Next page"
    }
    ReaderTapZoneAction.NONE -> when (language) {
        "ru" -> "Без действия"
        "ja" -> "なし"
        "zh" -> "无动作"
        "ko" -> "동작 없음"
        else -> "No action"
    }
    ReaderTapZoneAction.PREVIOUS_CHAPTER -> when (language) {
        "ru" -> "Предыдущая глава"
        "ja" -> "前の章"
        "zh" -> "上一章"
        "ko" -> "이전 챕터"
        else -> "Previous chapter"
    }
    ReaderTapZoneAction.NEXT_CHAPTER -> when (language) {
        "ru" -> "Следующая глава"
        "ja" -> "次の章"
        "zh" -> "下一章"
        "ko" -> "다음 챕터"
        else -> "Next chapter"
    }
}

internal fun readerTapZoneLayoutSummary(
    left: ReaderTapZoneAction,
    center: ReaderTapZoneAction,
    right: ReaderTapZoneAction,
    language: String
): String = when (language) {
    "ru" -> "Слева: ${readerTapZoneActionLabel(left, language)} · Центр: ${readerTapZoneActionLabel(center, language)} · Справа: ${readerTapZoneActionLabel(right, language)}"
    "ja" -> "左: ${readerTapZoneActionLabel(left, language)} · 中央: ${readerTapZoneActionLabel(center, language)} · 右: ${readerTapZoneActionLabel(right, language)}"
    "zh" -> "左侧：${readerTapZoneActionLabel(left, language)} · 中间：${readerTapZoneActionLabel(center, language)} · 右侧：${readerTapZoneActionLabel(right, language)}"
    "ko" -> "왼쪽: ${readerTapZoneActionLabel(left, language)} · 가운데: ${readerTapZoneActionLabel(center, language)} · 오른쪽: ${readerTapZoneActionLabel(right, language)}"
    else -> "Left: ${readerTapZoneActionLabel(left, language)} · Center: ${readerTapZoneActionLabel(center, language)} · Right: ${readerTapZoneActionLabel(right, language)}"
}

internal fun readerChromeIconsTitle(language: String): String = when (language) {
    "ru" -> "Значки верхней панели"
    "ja" -> "上部パネルのアイコン"
    "zh" -> "顶部面板图标"
    "ko" -> "상단 패널 아이콘"
    else -> "Top bar icons"
}

internal fun readerChromeVisibilityTab(language: String): String = when (language) {
    "ru" -> "Видимость"
    "ja" -> "表示"
    "zh" -> "显示"
    "ko" -> "표시"
    else -> "Visibility"
}

internal fun readerChromeOrderTab(language: String): String = when (language) {
    "ru" -> "Порядок"
    "ja" -> "順序"
    "zh" -> "顺序"
    "ko" -> "순서"
    else -> "Order"
}

internal fun readerChromeOrderHint(language: String): String = when (language) {
    "ru" -> "Меняйте порядок значков так, как они должны идти слева направо."
    "ja" -> "アイコンの並び順を左から右へ調整します。"
    "zh" -> "调整图标从左到右的排列顺序。"
    "ko" -> "아이콘 순서를 왼쪽에서 오른쪽 기준으로 조정합니다."
    else -> "Adjust the icon order from left to right."
}

internal fun readerChromeButtonLabel(
    button: ReaderChromeButton,
    language: String,
    readerText: ReaderUiText
): String = when (button) {
    ReaderChromeButton.TOC -> readerText.chapters
    ReaderChromeButton.STYLE -> readerText.controlTabStyle
    ReaderChromeButton.AUDIO -> readerText.servicesTtsTitle
    ReaderChromeButton.DIRECTION -> readerText.directionToggle
    ReaderChromeButton.TRANSLATE -> readerText.ocrTranslation
    ReaderChromeButton.BRIGHTNESS -> when (language) {
        "ru" -> "Яркость"
        "ja" -> "明るさ"
        "zh" -> "亮度"
        "ko" -> "밝기"
        else -> "Brightness"
    }
    ReaderChromeButton.AUTO_SCROLL -> when (language) {
        "ru" -> "Автопрокрутка"
        "ja" -> "自動スクロール"
        "zh" -> "自动滚动"
        "ko" -> "자동 스크롤"
        else -> "Auto scroll"
    }
}

internal fun readerChromeButtonVisible(
    button: ReaderChromeButton,
    uiState: ReaderUiState
): Boolean = when (button) {
    ReaderChromeButton.TOC -> uiState.chromeShowTocIcon
    ReaderChromeButton.STYLE -> uiState.chromeShowStyleIcon
    ReaderChromeButton.AUDIO -> uiState.chromeShowAudioIcon
    ReaderChromeButton.DIRECTION -> uiState.chromeShowDirectionIcon
    ReaderChromeButton.TRANSLATE -> uiState.chromeShowTranslateIcon
    ReaderChromeButton.BRIGHTNESS -> uiState.chromeShowBrightnessIcon
    ReaderChromeButton.AUTO_SCROLL -> true
}

internal fun readerTtsSleepTimerLabel(mode: ReaderTtsSleepTimerMode, language: String): String = when (mode) {
    ReaderTtsSleepTimerMode.OFF -> when (language) {
        "ru" -> "Выкл"
        "ja" -> "オフ"
        "zh" -> "关闭"
        "ko" -> "끔"
        else -> "Off"
    }
    ReaderTtsSleepTimerMode.MINUTES_10 -> when (language) {
        "ru" -> "10 мин"
        "ja" -> "10分"
        "zh" -> "10分钟"
        "ko" -> "10분"
        else -> "10m"
    }
    ReaderTtsSleepTimerMode.MINUTES_20 -> when (language) {
        "ru" -> "20 мин"
        "ja" -> "20分"
        "zh" -> "20分钟"
        "ko" -> "20분"
        else -> "20m"
    }
    ReaderTtsSleepTimerMode.MINUTES_30 -> when (language) {
        "ru" -> "30 мин"
        "ja" -> "30分"
        "zh" -> "30分钟"
        "ko" -> "30분"
        else -> "30m"
    }
    ReaderTtsSleepTimerMode.MINUTES_45 -> when (language) {
        "ru" -> "45 мин"
        "ja" -> "45分"
        "zh" -> "45分钟"
        "ko" -> "45분"
        else -> "45m"
    }
    ReaderTtsSleepTimerMode.MINUTES_60 -> when (language) {
        "ru" -> "60 мин"
        "ja" -> "60分"
        "zh" -> "60分钟"
        "ko" -> "60분"
        else -> "60m"
    }
}
