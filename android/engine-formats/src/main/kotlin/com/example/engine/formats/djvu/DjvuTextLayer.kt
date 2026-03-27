package com.example.engine.formats.djvu

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
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)?.toInt() ?: return null
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return null

        if (chunkId == "TXTa") {
            val text = parseTxTaPayload(documentBytes.copyOfRange(payloadStart, payloadEnd)) ?: return null
            return DjvuTextLayer(
                text = text,
                sourceChunkId = chunkId,
                isCompressed = false
            )
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }
    return null
}

internal fun hasCompressedDjvuTextLayer(documentBytes: ByteArray): Boolean {
    if (!documentBytes.startsWith(DJVU_TEXT_MAGIC_PREFIX)) return false
    if (documentBytes.readAsciiAt(12, 4) != DJVU_TEXT_FORM_TYPE) return false

    var offset = 16
    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAsciiAt(offset, 4) ?: return false
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)?.toInt() ?: return false
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return false
        if (chunkId == "TXTz") return true
        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }
    return false
}

private fun parseTxTaPayload(payload: ByteArray): String? {
    if (payload.size < 4) return null
    val textSize = ((payload[0].toInt() and 0xFF) shl 16) or
        ((payload[1].toInt() and 0xFF) shl 8) or
        (payload[2].toInt() and 0xFF)
    if (textSize < 0 || 3 + textSize >= payload.size) return null
    val textBytes = payload.copyOfRange(3, 3 + textSize)
    return runCatching { textBytes.toString(Charsets.UTF_8) }.getOrNull()
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
