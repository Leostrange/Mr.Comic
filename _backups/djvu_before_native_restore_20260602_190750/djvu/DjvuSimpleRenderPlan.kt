package com.example.engine.formats.djvu

data class DjvuSimpleRenderPlan(
    val jpegPayload: ByteArray
)

private val DJVU_DOCUMENT_MAGIC = "AT&TFORM".encodeToByteArray()
private val DJVU_FORM_TYPE = "DJVU"
private val BGJP_CHUNK_ID = "BGjp"
private val SAFE_NON_RENDER_CHUNKS = setOf("INFO", "TXTa", "TXTz", "ANTa", "ANTz")

internal fun extractSimpleRenderPlan(documentBytes: ByteArray): DjvuSimpleRenderPlan? {
    if (!documentBytes.startsWith(DJVU_DOCUMENT_MAGIC)) return null
    if (documentBytes.readAscii(12, 4) != DJVU_FORM_TYPE) return null

    var offset = 16
    var jpegPayload: ByteArray? = null
    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAscii(offset, 4) ?: return null
        val chunkSize = documentBytes.readUnsignedInt(offset + 4)?.toInt() ?: return null
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return null

        when {
            chunkId == BGJP_CHUNK_ID -> {
                if (jpegPayload != null) return null
                jpegPayload = documentBytes.copyOfRange(payloadStart, payloadEnd)
            }
            chunkId in SAFE_NON_RENDER_CHUNKS -> Unit
            else -> return null
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }

    return jpegPayload?.let(::DjvuSimpleRenderPlan)
}

private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
    if (size < prefix.size) return false
    return prefix.indices.all { this[it] == prefix[it] }
}

private fun ByteArray.readAscii(offset: Int, length: Int): String? {
    if (offset < 0 || length < 0 || offset + length > size) return null
    return copyOfRange(offset, offset + length).decodeToString()
}

private fun ByteArray.readUnsignedInt(offset: Int): Long? {
    if (offset < 0 || offset + 3 >= size) return null
    return ((this[offset].toLong() and 0xFF) shl 24) or
        ((this[offset + 1].toLong() and 0xFF) shl 16) or
        ((this[offset + 2].toLong() and 0xFF) shl 8) or
        (this[offset + 3].toLong() and 0xFF)
}
