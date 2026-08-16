package io.leostrange.mrcomic.feature.reader.ui.components

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.pointerInput
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.feature.reader.ui.ReadiumTapAction
import io.leostrange.mrcomic.feature.reader.ui.resolveReadiumTapAction
import io.leostrange.mrcomic.feature.reader.ui.ReaderTextSelection

/**
 * Pure Readium EPUB reader container.
 *
 * Handles gesture coordination (3-zone page turning, chrome toggle) and maps actions to reader orchestration.
 */
@Composable
internal fun ReadiumEpubView(
    readingMode: ReadingMode,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    modifier: Modifier = Modifier,
    onTranslateSelection: (String) -> Unit = {},
    onDictionarySelection: (String) -> Unit = {},
    onExplainSelection: (String) -> Unit = {},
    onSaveQuoteSelection: (String) -> Unit = {},
    onHighlightSelection: (ReaderTextSelection) -> Unit = {},
    onAnchorClick: (String) -> Unit = {}
) {
    val isRtl = readingMode == ReadingMode.PAGE_RTL

    Box(
        modifier = modifier
            .fillMaxSize()
            .pointerInput(isRtl) {
                detectTapGestures { offset ->
                    val action = resolveReadiumTapAction(
                        tapX = offset.x,
                        totalWidth = size.width.toFloat(),
                        isRtl = isRtl
                    )
                    when (action) {
                        ReadiumTapAction.PREV_PAGE -> onLeftTap()
                        ReadiumTapAction.NEXT_PAGE -> onRightTap()
                        ReadiumTapAction.TOGGLE_CHROME -> onCenterTap()
                    }
                }
            }
    )
}
