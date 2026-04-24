package com.example.feature.reader.ui.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Popup
import androidx.compose.ui.window.PopupProperties
import kotlin.math.roundToInt
import kotlinx.coroutines.delay

object ImageMessagePopupPosition {
    const val CENTER = "CENTER"
    const val TOP = "TOP"
    const val BOTTOM = "BOTTOM"
    const val TOP_START = "TOP_START"
    const val TOP_END = "TOP_END"
    const val BOTTOM_START = "BOTTOM_START"
    const val BOTTOM_END = "BOTTOM_END"
}

const val IMAGE_MESSAGE_POPUP_MIN_SCALE = 0.55f
const val IMAGE_MESSAGE_POPUP_MAX_SCALE = 1.35f
const val IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS = 30

data class ImageMessagePopupConfig(
    val position: String = ImageMessagePopupPosition.CENTER,
    val allowFreeMove: Boolean = false,
    val sizeScale: Float = 1f,
    val durationSeconds: Int = 0
)

fun normalizeImageMessagePopupPosition(value: String?): String =
    when (value?.trim()?.uppercase()) {
        ImageMessagePopupPosition.TOP -> ImageMessagePopupPosition.TOP
        ImageMessagePopupPosition.BOTTOM -> ImageMessagePopupPosition.BOTTOM
        ImageMessagePopupPosition.TOP_START -> ImageMessagePopupPosition.TOP_START
        ImageMessagePopupPosition.TOP_END -> ImageMessagePopupPosition.TOP_END
        ImageMessagePopupPosition.BOTTOM_START -> ImageMessagePopupPosition.BOTTOM_START
        ImageMessagePopupPosition.BOTTOM_END -> ImageMessagePopupPosition.BOTTOM_END
        else -> ImageMessagePopupPosition.CENTER
    }

fun clampImageMessagePopupScale(value: Float): Float =
    value.coerceIn(IMAGE_MESSAGE_POPUP_MIN_SCALE, IMAGE_MESSAGE_POPUP_MAX_SCALE)

fun clampImageMessagePopupDurationSeconds(value: Int): Int =
    value.coerceIn(0, IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS)

@Composable
fun ImageMessagePopup(
    drawableId: Int,
    contentDescription: String,
    config: ImageMessagePopupConfig,
    onDismiss: () -> Unit
) {
    val popupAlignment = remember(config.position) {
        when (normalizeImageMessagePopupPosition(config.position)) {
            ImageMessagePopupPosition.TOP -> Alignment.TopCenter
            ImageMessagePopupPosition.BOTTOM -> Alignment.BottomCenter
            ImageMessagePopupPosition.TOP_START -> Alignment.TopStart
            ImageMessagePopupPosition.TOP_END -> Alignment.TopEnd
            ImageMessagePopupPosition.BOTTOM_START -> Alignment.BottomStart
            ImageMessagePopupPosition.BOTTOM_END -> Alignment.BottomEnd
            else -> Alignment.Center
        }
    }
    val popupScale = remember(config.sizeScale) { clampImageMessagePopupScale(config.sizeScale) }
    val popupDurationSeconds = remember(config.durationSeconds) {
        clampImageMessagePopupDurationSeconds(config.durationSeconds)
    }
    var dragOffsetX by rememberSaveable(drawableId, config.position) { mutableFloatStateOf(0f) }
    var dragOffsetY by rememberSaveable(drawableId, config.position) { mutableFloatStateOf(0f) }
    val popupInteractionSource = remember(drawableId, config.position) { MutableInteractionSource() }

    LaunchedEffect(drawableId, popupDurationSeconds) {
        if (popupDurationSeconds > 0) {
            delay(popupDurationSeconds * 1_000L)
            onDismiss()
        }
    }

    Popup(
        alignment = popupAlignment,
        offset = IntOffset(dragOffsetX.roundToInt(), dragOffsetY.roundToInt()),
        onDismissRequest = onDismiss,
        properties = PopupProperties(
            focusable = true,
            dismissOnBackPress = true,
            dismissOnClickOutside = true,
            clippingEnabled = false
        )
    ) {
        Box(
            modifier = Modifier
                .padding(12.dp)
                .then(
                    if (config.allowFreeMove) {
                        Modifier.pointerInput(drawableId, config.position) {
                            detectDragGestures { change, dragAmount ->
                                change.consume()
                                dragOffsetX += dragAmount.x
                                dragOffsetY += dragAmount.y
                            }
                        }
                    } else {
                        Modifier
                    }
                )
                .widthIn(max = (320.dp * popupScale).coerceAtLeast(176.dp))
        ) {
            Image(
                painter = painterResource(drawableId),
                contentDescription = contentDescription,
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable(
                        interactionSource = popupInteractionSource,
                        indication = null,
                        onClick = onDismiss
                    ),
                contentScale = ContentScale.Fit
            )
        }
    }
}
