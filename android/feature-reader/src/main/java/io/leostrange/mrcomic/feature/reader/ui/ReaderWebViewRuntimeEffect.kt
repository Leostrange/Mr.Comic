package io.leostrange.mrcomic.feature.reader.ui

internal sealed interface ReaderWebViewRuntimeEffect {
    data class LoadDocument(
        val generation: Long,
        val attempt: Int,
        val fallback: Boolean
    ) : ReaderWebViewRuntimeEffect

    data class Restore(
        val generation: Long,
        val target: ReaderWebViewRestoreTarget,
        val attempt: Int = 1
    ) : ReaderWebViewRuntimeEffect

    data class PublishReady(
        val generation: Long,
        val metrics: ReaderWebViewLayoutMetrics
    ) : ReaderWebViewRuntimeEffect

    data class ShowTerminalError(
        val generation: Long,
        val reason: String
    ) : ReaderWebViewRuntimeEffect
}
