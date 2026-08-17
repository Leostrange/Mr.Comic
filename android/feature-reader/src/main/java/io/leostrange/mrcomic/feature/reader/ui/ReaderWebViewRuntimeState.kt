package io.leostrange.mrcomic.feature.reader.ui

internal enum class ReaderWebViewRuntimePhase {
    IDLE,
    LOADING,
    COMMITTED,
    LAYOUT_READY,
    RESTORING,
    READY,
    TERMINAL_ERROR,
    DISPOSED
}

internal data class ReaderWebViewRestoreTarget(
    val fragment: String? = null,
    val sectionIndex: Int? = null,
    val characterOffset: Int? = null,
    val progression: Double? = null
) {
    init {
        require(
            !fragment.isNullOrBlank() || sectionIndex != null ||
                characterOffset != null || progression != null
        ) { "Restore target requires at least one coordinate" }
        require(sectionIndex == null || sectionIndex >= 0) { "sectionIndex must be non-negative" }
        require(characterOffset == null || characterOffset >= 0) { "characterOffset must be non-negative" }
        require(progression == null || progression in 0.0..1.0) { "progression must be within 0..1" }
    }
}

internal data class ReaderWebViewLayoutMetrics(
    val pageCount: Int,
    val pageIndex: Int,
    val characterOffset: Int
) {
    init {
        require(pageCount > 0) { "pageCount must be positive" }
        require(pageIndex in 0 until pageCount) { "pageIndex must be inside pageCount" }
        require(characterOffset >= 0) { "characterOffset must be non-negative" }
    }
}

internal data class ReaderWebViewRuntimeState(
    val phase: ReaderWebViewRuntimePhase = ReaderWebViewRuntimePhase.IDLE,
    val documentIdentity: String? = null,
    val generation: Long = 0L,
    val loadAttempt: Int = 0,
    val committed: Boolean = false,
    val layoutMetrics: ReaderWebViewLayoutMetrics? = null,
    val restoreTarget: ReaderWebViewRestoreTarget? = null,
    val restoreIssued: Boolean = false,
    val error: String? = null
)

internal sealed interface ReaderWebViewRuntimeEvent {
    data class LoadRequested(
        val documentIdentity: String,
        val generation: Long,
        val restoreTarget: ReaderWebViewRestoreTarget? = null
    ) : ReaderWebViewRuntimeEvent

    data class DocumentCommitted(val generation: Long) : ReaderWebViewRuntimeEvent
    data class LayoutReady(
        val generation: Long,
        val metrics: ReaderWebViewLayoutMetrics
    ) : ReaderWebViewRuntimeEvent

    data class RestoreAcknowledged(val generation: Long) : ReaderWebViewRuntimeEvent
    data class LoadFailed(val generation: Long, val reason: String) : ReaderWebViewRuntimeEvent
    data class ContentBlank(val generation: Long) : ReaderWebViewRuntimeEvent
    data object Disposed : ReaderWebViewRuntimeEvent
}
