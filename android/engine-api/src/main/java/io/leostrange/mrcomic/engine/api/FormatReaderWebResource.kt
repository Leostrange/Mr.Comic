package io.leostrange.mrcomic.engine.api

/**
 * Binary web resource used by HTML-based readers through WebViewAssetLoader.
 *
 * Moved from engine.formats.base to engine-api so feature modules
 * can reference web resources without depending on engine-formats.
 */
data class FormatReaderWebResource(
    val mimeType: String,
    val bytes: ByteArray,
    val encoding: String? = null
)
