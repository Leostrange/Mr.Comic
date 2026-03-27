package com.example.engine.formats.djvu

private val DJVU_MAGIC_PREFIX = "AT&T".encodeToByteArray()
private val FORM_CHUNK_ID = "FORM".encodeToByteArray()

internal fun buildStandaloneDjvuDocumentBytes(rawPageBytes: ByteArray): ByteArray? {
    if (rawPageBytes.size < 8) return null
    if (!rawPageBytes.startsWith(FORM_CHUNK_ID)) return rawPageBytes
    val chunkSize = rawPageBytes.readUnsignedInt(4) ?: return null
    val exactLength = 8L + chunkSize
    if (exactLength > rawPageBytes.size) return null
    val nestedFormBytes = rawPageBytes.copyOfRange(0, exactLength.toInt())
    return DJVU_MAGIC_PREFIX + nestedFormBytes
}

private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
    if (size < prefix.size) return false
    return prefix.indices.all { this[it] == prefix[it] }
}

private fun ByteArray.readUnsignedInt(offset: Int): Long? {
    if (offset < 0 || offset + 3 >= size) return null
    return ((this[offset].toLong() and 0xFF) shl 24) or
        ((this[offset + 1].toLong() and 0xFF) shl 16) or
        ((this[offset + 2].toLong() and 0xFF) shl 8) or
        (this[offset + 3].toLong() and 0xFF)
}
