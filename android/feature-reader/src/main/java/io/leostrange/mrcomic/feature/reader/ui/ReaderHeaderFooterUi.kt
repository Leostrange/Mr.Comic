package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shadow
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import kotlin.math.roundToInt
import kotlinx.coroutines.delay

internal data class ReaderInfoOverlayLine(
    val start: String = "",
    val center: String = "",
    val end: String = ""
) {
    val hasVisibleContent: Boolean
        get() = start.isNotBlank() || center.isNotBlank() || end.isNotBlank()
}

internal data class ReaderHeaderFooterOverlayStyle(
    val textColor: Color,
    val textShadow: Shadow?
)

internal fun readerHeaderFooterOverlayStyle(
    surfaceColor: Color,
    eink: Boolean = false
): ReaderHeaderFooterOverlayStyle {
    if (eink) {
        return ReaderHeaderFooterOverlayStyle(
            textColor = Color(0xFF111111),
            textShadow = null
        )
    }
    val perceivedLuminance =
        0.299f * surfaceColor.red + 0.587f * surfaceColor.green + 0.114f * surfaceColor.blue
    val isLightSurface = perceivedLuminance >= 0.55f
    return if (isLightSurface) {
        ReaderHeaderFooterOverlayStyle(
            textColor = Color(0xFF241B14),
            textShadow = Shadow(
                color = Color.White.copy(alpha = 0.24f),
                offset = Offset(0f, 0.75f),
                blurRadius = 2.5f
            )
        )
    } else {
        ReaderHeaderFooterOverlayStyle(
            textColor = Color(0xFFF4EEE4),
            textShadow = Shadow(
                color = Color.Black.copy(alpha = 0.34f),
                offset = Offset(0f, 1.25f),
                blurRadius = 4.5f
            )
        )
    }
}

@Composable
internal fun rememberReaderClockText(): String {
    val formatter = remember { DateTimeFormatter.ofPattern("HH:mm") }
    val clockText by produceState(
        initialValue = LocalTime.now().format(formatter),
        key1 = formatter
    ) {
        while (true) {
            val now = LocalTime.now()
            value = now.format(formatter)
            val delayMillis = (((60 - now.second).coerceAtLeast(1)) * 1000L - now.nano / 1_000_000L)
                .coerceAtLeast(250L)
            delay(delayMillis)
        }
    }
    return clockText
}

internal fun resolveReaderCurrentChapterTitle(
    tableOfContents: List<TocEntry>,
    currentPage: Int
): String? = tableOfContents
    .asSequence()
    .sortedBy { it.pageIndex }
    .lastOrNull { it.pageIndex <= currentPage }
    ?.title
    ?.trim()
    ?.takeIf { it.isNotBlank() }

internal fun resolveReaderInfoOverlayLine(
    startSlot: String,
    centerSlot: String,
    endSlot: String,
    comicTitle: String?,
    chapterTitle: String?,
    clockText: String,
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode
): ReaderInfoOverlayLine {
    val visiblePages = resolveReaderVisiblePages(currentPage, totalPages, readingMode)
    return ReaderInfoOverlayLine(
        start = resolveReaderInfoSlotValue(startSlot, comicTitle, chapterTitle, clockText, visiblePages, totalPages),
        center = resolveReaderInfoSlotValue(centerSlot, comicTitle, chapterTitle, clockText, visiblePages, totalPages),
        end = resolveReaderInfoSlotValue(endSlot, comicTitle, chapterTitle, clockText, visiblePages, totalPages)
    )
}

private fun resolveReaderVisiblePages(
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode
): List<Int> {
    if (totalPages <= 0) return emptyList()
    val clamped = currentPage.coerceIn(0, totalPages - 1)
    return when (readingMode) {
        ReadingMode.DUAL_PAGE -> buildList {
            val leftPage = (clamped / 2) * 2
            add(leftPage)
            val rightPage = leftPage + 1
            if (rightPage < totalPages) add(rightPage)
        }

        else -> listOf(clamped)
    }
}

private fun resolveReaderInfoSlotValue(
    slot: String,
    comicTitle: String?,
    chapterTitle: String?,
    clockText: String,
    visiblePages: List<Int>,
    totalPages: Int
): String = when (ReaderInfoSlot.fromStored(slot)) {
    ReaderInfoSlot.NONE -> ""
    ReaderInfoSlot.BOOK_TITLE -> comicTitle.orEmpty()
    ReaderInfoSlot.CHAPTER_TITLE -> chapterTitle.orEmpty()
    ReaderInfoSlot.TIME -> clockText
    ReaderInfoSlot.PROGRESS -> resolveReaderProgressLabel(visiblePages, totalPages)
    ReaderInfoSlot.PAGE -> resolveReaderPageLabel(visiblePages, totalPages)
}

private fun resolveReaderProgressLabel(
    visiblePages: List<Int>,
    totalPages: Int
): String {
    if (totalPages <= 0 || visiblePages.isEmpty()) return ""
    val progress = (((visiblePages.last() + 1).toFloat() / totalPages.toFloat()) * 100f)
        .roundToInt()
        .coerceIn(0, 100)
    return "$progress%"
}

private fun resolveReaderPageLabel(
    visiblePages: List<Int>,
    totalPages: Int
): String {
    if (totalPages <= 0 || visiblePages.isEmpty()) return ""
    val oneBasedPages = visiblePages.map { it + 1 }
    val visibleLabel = if (oneBasedPages.size > 1) {
        "${oneBasedPages.first()}-${oneBasedPages.last()}"
    } else {
        oneBasedPages.first().toString()
    }
    return "$visibleLabel / $totalPages"
}

@Composable
internal fun ReaderHeaderFooterTextRow(
    line: ReaderInfoOverlayLine,
    fontSizeSp: Int,
    leftPaddingDp: Int,
    rightPaddingDp: Int,
    verticalPaddingDp: Int,
    modifier: Modifier = Modifier,
    textColor: Color = MaterialTheme.colorScheme.onSurface,
    textShadow: Shadow? = null
) {
    val rowTextStyle = MaterialTheme.typography.labelSmall.copy(
        fontSize = fontSizeSp.coerceIn(10, 20).sp,
        shadow = textShadow ?: Shadow(
            color = Color.Transparent,
            offset = Offset.Zero,
            blurRadius = 0f
        )
    )
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(
                start = leftPaddingDp.dp,
                end = rightPaddingDp.dp,
                top = verticalPaddingDp.dp,
                bottom = verticalPaddingDp.dp
            ),
        horizontalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Text(
            text = line.start,
            modifier = Modifier.weight(1f),
            style = rowTextStyle,
            color = textColor,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
        Text(
            text = line.center,
            modifier = Modifier.weight(1f),
            textAlign = TextAlign.Center,
            style = rowTextStyle,
            color = textColor,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
        Text(
            text = line.end,
            modifier = Modifier.weight(1f),
            textAlign = TextAlign.End,
            style = rowTextStyle,
            color = textColor,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

internal fun readerInfoSlotLabel(language: String, slot: String): String = when (ReaderInfoSlot.fromStored(slot)) {
    ReaderInfoSlot.NONE -> when (language) {
        "ru" -> "Нет"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "None"
    }

    ReaderInfoSlot.BOOK_TITLE -> when (language) {
        "ru" -> "Название книги"
        "ja" -> "本のタイトル"
        "zh" -> "书名"
        "ko" -> "책 제목"
        else -> "Book title"
    }

    ReaderInfoSlot.CHAPTER_TITLE -> when (language) {
        "ru" -> "Название главы"
        "ja" -> "章タイトル"
        "zh" -> "章节标题"
        "ko" -> "챕터 제목"
        else -> "Chapter title"
    }

    ReaderInfoSlot.TIME -> when (language) {
        "ru" -> "Время"
        "ja" -> "時刻"
        "zh" -> "时间"
        "ko" -> "시간"
        else -> "Time"
    }

    ReaderInfoSlot.PROGRESS -> when (language) {
        "ru" -> "Прогресс"
        "ja" -> "進捗"
        "zh" -> "进度"
        "ko" -> "진행도"
        else -> "Progress"
    }

    ReaderInfoSlot.PAGE -> when (language) {
        "ru" -> "Страницы"
        "ja" -> "ページ"
        "zh" -> "页数"
        "ko" -> "페이지"
        else -> "Pages"
    }
}

internal fun readerHeaderFooterSectionTitle(language: String): String = when (language) {
    "ru" -> "Колонтитулы"
    "ja" -> "ヘッダーとフッター"
    "zh" -> "页眉和页脚"
    "ko" -> "헤더와 푸터"
    else -> "Headers and footers"
}

internal fun readerHeaderFooterHint(language: String): String = when (language) {
    "ru" -> "Показываются как спокойный overlay, когда тулбары скрыты."
    "ja" -> "ツールバーを隠したときに、落ち着いたオーバーレイとして表示されます。"
    "zh" -> "在工具栏隐藏时，以低干扰的叠加信息显示。"
    "ko" -> "툴바를 숨기면 차분한 오버레이로 표시됩니다."
    else -> "Shown as a calm overlay while the reader chrome is hidden."
}

internal fun readerHeaderFooterPreviewTitle(language: String): String = when (language) {
    "ru" -> "Предпросмотр overlay"
    "ja" -> "オーバーレイのプレビュー"
    "zh" -> "叠加预览"
    "ko" -> "오버레이 미리보기"
    else -> "Overlay preview"
}

internal fun readerHeaderTitle(language: String): String = when (language) {
    "ru" -> "Верхний колонтитул"
    "ja" -> "ヘッダー"
    "zh" -> "页眉"
    "ko" -> "헤더"
    else -> "Header"
}

internal fun readerFooterTitle(language: String): String = when (language) {
    "ru" -> "Нижний колонтитул"
    "ja" -> "フッター"
    "zh" -> "页脚"
    "ko" -> "푸터"
    else -> "Footer"
}

internal fun readerLeftLabel(language: String): String = when (language) {
    "ru" -> "Слева"
    "ja" -> "左"
    "zh" -> "左"
    "ko" -> "왼쪽"
    else -> "Left"
}

internal fun readerCenterLabel(language: String): String = when (language) {
    "ru" -> "По центру"
    "ja" -> "中央"
    "zh" -> "中间"
    "ko" -> "가운데"
    else -> "Center"
}

internal fun readerRightLabel(language: String): String = when (language) {
    "ru" -> "Справа"
    "ja" -> "右"
    "zh" -> "右"
    "ko" -> "오른쪽"
    else -> "Right"
}

internal fun readerHeaderFooterFontSizeTitle(language: String): String = when (language) {
    "ru" -> "Размер шрифта"
    "ja" -> "文字サイズ"
    "zh" -> "字体大小"
    "ko" -> "글꼴 크기"
    else -> "Font size"
}

internal fun readerHeaderFooterVerticalPaddingTitle(language: String): String = when (language) {
    "ru" -> "Вертикальные поля"
    "ja" -> "上下余白"
    "zh" -> "垂直边距"
    "ko" -> "세로 여백"
    else -> "Vertical padding"
}

internal fun readerHeaderFooterLeftInsetTitle(language: String): String = when (language) {
    "ru" -> "Левое поле"
    "ja" -> "左余白"
    "zh" -> "左边距"
    "ko" -> "왼쪽 여백"
    else -> "Left inset"
}

internal fun readerHeaderFooterRightInsetTitle(language: String): String = when (language) {
    "ru" -> "Правое поле"
    "ja" -> "右余白"
    "zh" -> "右边距"
    "ko" -> "오른쪽 여백"
    else -> "Right inset"
}
