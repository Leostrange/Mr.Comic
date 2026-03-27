package com.example.engine.formats.djvu

data class DjvuAnnotations(
    val text: String,
    val hasCompressedChunks: Boolean
)

internal fun extractDjvuAnnotations(documentBytes: ByteArray): DjvuAnnotations? {
    if (!documentBytes.startsWith(DJVU_ANNOTATION_MAGIC_PREFIX)) return null
    if (documentBytes.readAsciiAt(12, 4) != DJVU_ANNOTATION_FORM_TYPE) return null

    var offset = 16
    val parts = mutableListOf<String>()
    var hasCompressed = false
    while (offset + 8 <= documentBytes.size) {
        val chunkId = documentBytes.readAsciiAt(offset, 4) ?: return null
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)?.toInt() ?: return null
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return null

        when (chunkId) {
            "ANTa" -> {
                val text = runCatching {
                    documentBytes.copyOfRange(payloadStart, payloadEnd).toString(Charsets.UTF_8)
                }.getOrNull()?.trim()
                if (!text.isNullOrEmpty()) parts += text
            }
            "ANTz" -> hasCompressed = true
        }

        offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
    }

    if (parts.isEmpty() && !hasCompressed) return null
    return DjvuAnnotations(
        text = parts.joinToString(separator = "\n\n").trim(),
        hasCompressedChunks = hasCompressed
    )
}

private val DJVU_ANNOTATION_MAGIC_PREFIX = "AT&TFORM".encodeToByteArray()
private const val DJVU_ANNOTATION_FORM_TYPE = "DJVU"

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
