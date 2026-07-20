package io.leostrange.mrcomic.engine.formats.djvu

data class DjvuVisualLayerPlan(
    val chunkIds: List<String>,
    val backgroundLayer: String? = null,
    val foregroundLayer: String? = null,
    val maskLayer: String? = null,
    val paletteChunk: String? = null,
    val includedChunkCount: Int = 0
) {
    val usesIw44: Boolean
        get() = backgroundLayer == "BG44" || foregroundLayer == "FG44"

    val usesJb2: Boolean
        get() = maskLayer == "Sjbz"

    val requiresCompositeDecode: Boolean
        get() = usesIw44 || usesJb2 || includedChunkCount > 0 || foregroundLayer != null || paletteChunk != null

    val unsupportedRenderFeatures: List<String>
        get() = buildList {
            if (backgroundLayer == "BG44") add("IW44 background")
            if (backgroundLayer == "BG2k") add("JPEG2000 background")
            if (foregroundLayer != null) add("foreground layer $foregroundLayer")
            if (maskLayer == "Sjbz") add("JB2 mask")
            if (paletteChunk != null) add("foreground palette $paletteChunk")
            if (includedChunkCount > 0) add("shared included chunks")
        }

    val requiresNativeCompositeRenderer: Boolean
        get() = unsupportedRenderFeatures.isNotEmpty()
}

internal fun extractDjvuVisualLayerPlan(documentBytes: ByteArray): DjvuVisualLayerPlan? {
    if (!documentBytes.startsWith(DJVU_VISUAL_MAGIC_PREFIX)) return null
    if (documentBytes.readAsciiAt(12, 4) != DJVU_VISUAL_FORM_TYPE) return null

    var offset = 16
    val chunkIds = mutableListOf<String>()
    var backgroundLayer: String? = null
    var foregroundLayer: String? = null
    var maskLayer: String? = null
    var paletteChunk: String? = null
    var includedChunkCount = 0

    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAsciiAt(offset, 4) ?: return null
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)?.toInt() ?: return null
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return null

        chunkIds += chunkId
        when (chunkId) {
            "BG44", "BGjp", "BG2k" -> if (backgroundLayer == null) backgroundLayer = chunkId
            "FG44", "FGjp" -> if (foregroundLayer == null) foregroundLayer = chunkId
            "Sjbz" -> if (maskLayer == null) maskLayer = chunkId
            "FGbz" -> if (paletteChunk == null) paletteChunk = chunkId
            "INCL" -> includedChunkCount++
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }

    if (
        backgroundLayer == null &&
        foregroundLayer == null &&
        maskLayer == null &&
        paletteChunk == null &&
        includedChunkCount == 0
    ) {
        return null
    }

    return DjvuVisualLayerPlan(
        chunkIds = chunkIds,
        backgroundLayer = backgroundLayer,
        foregroundLayer = foregroundLayer,
        maskLayer = maskLayer,
        paletteChunk = paletteChunk,
        includedChunkCount = includedChunkCount
    )
}

private val DJVU_VISUAL_MAGIC_PREFIX = "AT&TFORM".encodeToByteArray()
private const val DJVU_VISUAL_FORM_TYPE = "DJVU"

private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
    if (size < prefix.size) return false
    return prefix.indices.all { this[it] == prefix[it] }
}

private fun ByteArray.readAsciiAt(offset: Int, length: Int): String? {
    if (offset < 0 || length < 0 || offset + length > size) return null
    return copyOfRange(offset, offset + length).decodeToString()
}

private fun ByteArray.readUnsignedIntAt(offset: Int): Long? {
    if (offset < 0 || offset + 3 >= size) return null
    return ((this[offset].toLong() and 0xFF) shl 24) or
        ((this[offset + 1].toLong() and 0xFF) shl 16) or
        ((this[offset + 2].toLong() and 0xFF) shl 8) or
        (this[offset + 3].toLong() and 0xFF)
}
