package io.leostrange.mrcomic.engine.formats.text

internal sealed interface MobiExtractionResult {
    data class Success(
        val content: String,
        val isMarkup: Boolean,
        val diagnostics: MobiDiagnostics
    ) : MobiExtractionResult

    data class Unsupported(
        val message: String,
        val details: MobiUnsupportedDetails? = null
    ) : MobiExtractionResult
}

internal data class MobiUnsupportedDetails(
    val reason: String,
    val declaredEncoding: Int? = null,
    val compression: Int? = null,
    val textRecordCount: Int? = null,
    val encryptionType: Int? = null,
    val containsHuffCdicTables: Boolean = false
)

internal data class MobiDiagnostics(
    val declaredEncoding: Int,
    val resolvedEncoding: String,
    val compression: Int,
    val textRecordCount: Int,
    val pageBreakCount: Int,
    val containsMarkup: Boolean
)
