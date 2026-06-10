package com.example.engine.formats.djvu

import android.graphics.Bitmap

/**
 * Extract and decode an IW44-encoded page from a standalone DJVU document byte array.
 *
 * Scans the document for BG44 chunks (and optionally FG44), feeds them into
 * [DjvuIw44Decoder] in order, then renders the result.
 *
 * @return decoded Bitmap, or null if the page has no BG44 data or decoding fails.
 */
internal fun extractIw44Bitmap(documentBytes: ByteArray, renderQuality: Int = 1): Bitmap? {
    if (!documentBytes.startsWith(IW44_MAGIC_PREFIX)) return null
    if (documentBytes.readAsciiAt(12, 4) != IW44_FORM_TYPE) return null

    val decoder = DjvuIw44Decoder()
    var hasBg44 = false

    var offset = 16
    while (offset + 8 <= documentBytes.size) {
        val chunkId  = documentBytes.readAsciiAt(offset, 4) ?: break
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)
            ?.takeIf { it <= Int.MAX_VALUE }
            ?.toInt()
            ?: break
        val payloadStart = offset + 8
        if (chunkSize > documentBytes.size - payloadStart) break
        val payloadEnd   = payloadStart + chunkSize

        if (chunkId == "BG44") {
            val payload = documentBytes.copyOfRange(payloadStart, payloadEnd)
            if (decoder.feedChunk(payload)) hasBg44 = true
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }

    if (!hasBg44) return null

    val fullBitmap = decoder.render() ?: return null
    return scaleBitmapForQuality(fullBitmap, renderQuality)
}

/**
 * Quickly check whether a document byte array contains at least one BG44 chunk.
 * Used to decide which render path to attempt without fully decoding the page.
 */
internal fun hasIw44Background(documentBytes: ByteArray): Boolean {
    if (!documentBytes.startsWith(IW44_MAGIC_PREFIX)) return false
    if (documentBytes.readAsciiAt(12, 4) != IW44_FORM_TYPE) return false

    var offset = 16
    while (offset + 8 <= documentBytes.size) {
        val chunkId   = documentBytes.readAsciiAt(offset, 4) ?: return false
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)
            ?.takeIf { it <= Int.MAX_VALUE }
            ?.toInt()
            ?: return false
        val payloadStart = offset + 8
        if (chunkSize > documentBytes.size - payloadStart) return false
        val payloadEnd = payloadStart + chunkSize
        if (chunkId == "BG44") return true
        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }
    return false
}

private fun scaleBitmapForQuality(bitmap: Bitmap, renderQuality: Int): Bitmap {
    val maxDim = maxOf(bitmap.width, bitmap.height)
    val targetMax = when {
        renderQuality >= 3 -> Int.MAX_VALUE
        renderQuality == 2 -> 3200
        else               -> 2200
    }
    if (maxDim <= targetMax) return bitmap

    val scale = targetMax.toFloat() / maxDim
    val sw = (bitmap.width  * scale).toInt().coerceAtLeast(1)
    val sh = (bitmap.height * scale).toInt().coerceAtLeast(1)
    val scaled = Bitmap.createScaledBitmap(bitmap, sw, sh, true)
    if (scaled !== bitmap) bitmap.recycle()
    return scaled
}

private val IW44_MAGIC_PREFIX = "AT&TFORM".encodeToByteArray()
private const val IW44_FORM_TYPE = "DJVU"

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
