package io.leostrange.mrcomic.engine.formats.djvu

data class DjvuTextLayer(
    val text: String,
    val sourceChunkId: String,
    val isCompressed: Boolean
)

internal fun extractDjvuTextLayer(documentBytes: ByteArray): DjvuTextLayer? {
    if (!documentBytes.startsWith(DJVU_TEXT_MAGIC_PREFIX)) return null
    if (documentBytes.readAsciiAt(12, 4) != DJVU_TEXT_FORM_TYPE) return null

    var offset = 16
    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAsciiAt(offset, 4) ?: return null
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)
            ?.takeIf { it <= Int.MAX_VALUE }
            ?.toInt()
            ?: return null
        val payloadStart = offset + 8
        if (chunkSize > documentBytes.size - payloadStart) return null
        val payloadEnd = payloadStart + chunkSize

        if (chunkId == "TXTa") {
            val text = parseTxTaPayload(documentBytes.copyOfRange(payloadStart, payloadEnd)) ?: return null
            return DjvuTextLayer(
                text = text,
                sourceChunkId = chunkId,
                isCompressed = false
            )
        }
        if (chunkId == "TXTz") {
            val payload = documentBytes.copyOfRange(payloadStart, payloadEnd)
            val decompressed = DjvuBzzDecoder.decode(payload)
            if (decompressed != null) {
                val text = parseTxTaPayload(decompressed)
                if (text != null) {
                    return DjvuTextLayer(
                        text = text,
                        sourceChunkId = chunkId,
                        isCompressed = true
                    )
                }
            }
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }
    return null
}

/**
 * Returns true only if a TXTz chunk is present but BZZ decoding failed (still undecoded).
 * If decoding succeeded, extractDjvuTextLayer already handles it.
 */
internal fun hasCompressedDjvuTextLayer(documentBytes: ByteArray): Boolean {
    if (!documentBytes.startsWith(DJVU_TEXT_MAGIC_PREFIX)) return false
    if (documentBytes.readAsciiAt(12, 4) != DJVU_TEXT_FORM_TYPE) return false

    var offset = 16
    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAsciiAt(offset, 4) ?: return false
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)
            ?.takeIf { it <= Int.MAX_VALUE }
            ?.toInt()
            ?: return false
        val payloadStart = offset + 8
        if (chunkSize > documentBytes.size - payloadStart) return false
        val payloadEnd = payloadStart + chunkSize
        if (chunkId == "TXTz") {
            // Only report "compressed and undecodable" if BZZ decode fails
            val payload = documentBytes.copyOfRange(payloadStart, payloadEnd)
            val decompressed = DjvuBzzDecoder.decode(payload)
            return decompressed == null || parseTxTaPayload(decompressed) == null
        }
        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }
    return false
}

private fun parseTxTaPayload(payload: ByteArray): String? {
    if (payload.size < 4) return null
    // Try standard 3-byte-length format first (offset 0)
    val textSize0 = ((payload[0].toInt() and 0xFF) shl 16) or
        ((payload[1].toInt() and 0xFF) shl 8) or
        (payload[2].toInt() and 0xFF)
    if (textSize0 in 1..(payload.size - 3)) {
        val text = runCatching {
            payload.copyOfRange(3, 3 + textSize0).toString(Charsets.UTF_8)
        }.getOrNull()?.takeIf { it.isNotBlank() }
        if (text != null) return text
    }
    // Try with version-byte prefix (TXTz decompressed may start with version byte)
    if (payload.size >= 5) {
        val textSize1 = ((payload[1].toInt() and 0xFF) shl 16) or
            ((payload[2].toInt() and 0xFF) shl 8) or
            (payload[3].toInt() and 0xFF)
        if (textSize1 in 1..(payload.size - 4)) {
            val text = runCatching {
                payload.copyOfRange(4, 4 + textSize1).toString(Charsets.UTF_8)
            }.getOrNull()?.takeIf { it.isNotBlank() }
            if (text != null) return text
        }
    }
    // Last resort: try the entire payload as UTF-8 text (skip non-text header)
    for (start in 0..minOf(8, payload.size - 1)) {
        val text = runCatching {
            payload.copyOfRange(start, payload.size).toString(Charsets.UTF_8)
        }.getOrNull()
            ?.replace(Regex("[\\x00-\\x08\\x0B\\x0C\\x0E-\\x1F]"), "")
            ?.trim()
            ?.takeIf { it.length > 10 && it.count { c -> c.isLetterOrDigit() } > it.length / 3 }
        if (text != null) return text
    }
    return null
}


private val DJVU_TEXT_MAGIC_PREFIX = "AT&TFORM".encodeToByteArray()
private const val DJVU_TEXT_FORM_TYPE = "DJVU"

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
