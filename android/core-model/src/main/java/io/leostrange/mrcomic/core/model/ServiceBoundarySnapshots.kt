package io.leostrange.mrcomic.core.model

/**
 * Shared capability snapshot for reader surfaces.
 *
 * This keeps format-specific checks in one place instead of duplicating
 * ad-hoc `ComicFormat == ...` comparisons across reader UI code.
 */
data class ReaderFormatCapabilities(
    val format: ComicFormat
) {
    val supportsTextReader: Boolean
        get() = format.isTextReadingFormat()

    val supportsBitmapReader: Boolean
        get() = format.supportsReaderImageScaling()

    val supportsHighResZoomTiers: Boolean
        get() = format.supportsHighResZoomTiers()

    val supportsAdaptiveLandscapeSpread: Boolean
        get() = format.supportsAdaptiveLandscapeSpread()

    val supportsDocumentMarginCrop: Boolean
        get() = format.supportsDocumentMarginCrop()

    val defaultImageScaleMode: ReaderImageScaleMode
        get() = ReaderImageScaleMode.defaultFor(format)
}

fun ComicFormat.readerFormatCapabilities(): ReaderFormatCapabilities = ReaderFormatCapabilities(this)

/**
 * Shared translation/OCR service availability snapshot.
 *
 * The OCR surface uses this to keep enablement + affordances aligned with the
 * actual provider/network state without re-deriving the same flags in every UI.
 */
data class TranslationAvailabilitySnapshot(
    val isRefreshing: Boolean = false,
    val dictionaryAvailable: Boolean = false,
    val offlinePairSupported: Boolean = false,
    val offlineModelInstalled: Boolean = false,
    val networkAvailable: Boolean = false,
    val onlineConfigured: Boolean = false,
    val explainToggleEnabled: Boolean = false
) {
    val canDownloadOfflineModel: Boolean
        get() = offlinePairSupported && !offlineModelInstalled && networkAvailable

    val canUseOnlineTranslation: Boolean
        get() = onlineConfigured && networkAvailable

    val canUseMachineTranslation: Boolean
        get() = offlineModelInstalled || canUseOnlineTranslation
}
