package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderWebViewContentMetrics(
    val textLength: Int,
    val rawTextLength: Int,
    val imageCount: Int,
    val mediaCount: Int,
    val contentHeight: Int
) {
    val isBlank: Boolean
        get() = textLength == 0 && rawTextLength == 0 && imageCount == 0 && mediaCount == 0
}

internal sealed interface ReaderWebViewEvent {
    val generation: Long

    data class Committed(override val generation: Long) : ReaderWebViewEvent

    data class LayoutReady(
        override val generation: Long,
        val metrics: ReaderPagedLayoutMetrics
    ) : ReaderWebViewEvent

    data class PositionChanged(
        override val generation: Long,
        val target: ReaderWebViewRestoreTarget
    ) : ReaderWebViewEvent

    data class RestoreAcknowledged(
        override val generation: Long,
        val target: ReaderWebViewRestoreTarget?
    ) : ReaderWebViewEvent

    data class ContentMeasured(
        override val generation: Long,
        val metrics: ReaderWebViewContentMetrics
    ) : ReaderWebViewEvent

    data class Error(
        override val generation: Long,
        val code: String,
        val message: String,
        val recoverable: Boolean
    ) : ReaderWebViewEvent
}

internal sealed interface ReaderWebViewProtocolDecodeResult {
    data class Success(val event: ReaderWebViewEvent) : ReaderWebViewProtocolDecodeResult
    data class Failure(val reason: String) : ReaderWebViewProtocolDecodeResult
}
