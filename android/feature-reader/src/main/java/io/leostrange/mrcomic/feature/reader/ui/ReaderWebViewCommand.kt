package io.leostrange.mrcomic.feature.reader.ui

internal sealed interface ReaderWebViewCommand {
    val generation: Long

    data class ApplyPagedLayout(
        override val generation: Long,
        val targetPage: Int
    ) : ReaderWebViewCommand

    data class TurnPage(
        override val generation: Long,
        val delta: Int
    ) : ReaderWebViewCommand

    data class Restore(
        override val generation: Long,
        val target: ReaderWebViewRestoreTarget
    ) : ReaderWebViewCommand

    data class ProbeContent(override val generation: Long) : ReaderWebViewCommand
}
