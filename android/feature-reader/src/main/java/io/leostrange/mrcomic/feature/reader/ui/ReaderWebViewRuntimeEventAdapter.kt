package io.leostrange.mrcomic.feature.reader.ui

internal fun ReaderWebViewEvent.toRuntimeEvent(
    pagedMode: Boolean
): ReaderWebViewRuntimeEvent? = when (this) {
    is ReaderWebViewEvent.Committed -> ReaderWebViewRuntimeEvent.DocumentCommitted(generation)
    is ReaderWebViewEvent.LayoutReady -> ReaderWebViewRuntimeEvent.LayoutReady(
        generation = generation,
        metrics = ReaderWebViewLayoutMetrics(
            pageCount = metrics.pageCount,
            pageIndex = metrics.pageIndex,
            characterOffset = metrics.characterOffset
        )
    )
    is ReaderWebViewEvent.RestoreAcknowledged ->
        ReaderWebViewRuntimeEvent.RestoreAcknowledged(generation)
    is ReaderWebViewEvent.ContentMeasured -> when {
        metrics.isBlank -> ReaderWebViewRuntimeEvent.ContentBlank(generation)
        pagedMode -> null
        else -> ReaderWebViewRuntimeEvent.LayoutReady(
            generation = generation,
            metrics = ReaderWebViewLayoutMetrics(
                pageCount = 1,
                pageIndex = 0,
                characterOffset = 0
            )
        )
    }
    is ReaderWebViewEvent.Error -> ReaderWebViewRuntimeEvent.LoadFailed(
        generation = generation,
        reason = "$code: $message"
    )
    is ReaderWebViewEvent.PositionChanged -> null
}
