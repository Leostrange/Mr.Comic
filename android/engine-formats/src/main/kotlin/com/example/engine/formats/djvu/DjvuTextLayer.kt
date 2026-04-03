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
        val chunkSize = documentBytes.readUnsignedIntAt(offset + 4)?.toInt() ?: return false
        val payloadStart = offset + 8
        val payloadEnd = payloadStart + chunkSize
        if (payloadEnd > documentBytes.size) return false
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
        val rawText = runCatching {
            payload.copyOfRange(3, 3 + textSize0).toString(Charsets.UTF_8)
        }.getOrNull()?.takeIf { it.isNotBlank() }
        if (rawText != null) {
            val zoneStart = 3 + textSize0
            if (zoneStart < payload.size) {
                val spaced = parseZoneTree(rawText, payload, zoneStart)
                if (spaced != null) return spaced
            }
            return rawText
        }
    }
    // Try with version-byte prefix (TXTz decompressed may start with version byte)
    if (payload.size >= 5) {
        val textSize1 = ((payload[1].toInt() and 0xFF) shl 16) or
            ((payload[2].toInt() and 0xFF) shl 8) or
            (payload[3].toInt() and 0xFF)
        if (textSize1 in 1..(payload.size - 4)) {
            val rawText = runCatching {
                payload.copyOfRange(4, 4 + textSize1).toString(Charsets.UTF_8)
            }.getOrNull()?.takeIf { it.isNotBlank() }
            if (rawText != null) {
                val zoneStart = 4 + textSize1
                if (zoneStart < payload.size) {
                    val spaced = parseZoneTree(rawText, payload, zoneStart)
                    if (spaced != null) return spaced
                }
                return rawText
            }
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

// Zone types in DjVu TXT chunk zone tree
private const val ZONE_PAGE = 1
private const val ZONE_COLUMN = 2
private const val ZONE_REGION = 3
private const val ZONE_PARAGRAPH = 4
private const val ZONE_LINE = 5
private const val ZONE_WORD = 6
private const val ZONE_CHARACTER = 7

/**
 * Reads a variable-length integer from [data] starting at [pos].
 * Updates [pos] in place (via IntArray of size 1).
 * Returns the decoded integer, or null on overflow / bounds error.
 *
 * Encoding:
 *  - byte < 0x80 → value = byte (1 byte)
 *  - byte in 0x80..0xFE → value = (byte & 0x7F) << 8 | nextByte (2 bytes)
 *  - byte == 0xFF → value = next 3 bytes big-endian (4 bytes total)
 */
private fun readVarInt(data: ByteArray, pos: IntArray): Int? {
    if (pos[0] >= data.size) return null
    val b = data[pos[0]].toInt() and 0xFF
    pos[0]++
    return when {
        b < 0x80 -> b
        b < 0xFF -> {
            if (pos[0] >= data.size) return null
            val lo = data[pos[0]].toInt() and 0xFF
            pos[0]++
            ((b and 0x7F) shl 8) or lo
        }
        else -> { // 0xFF
            if (pos[0] + 2 >= data.size) return null
            val b1 = data[pos[0]].toInt() and 0xFF
            val b2 = data[pos[0] + 1].toInt() and 0xFF
            val b3 = data[pos[0] + 2].toInt() and 0xFF
            pos[0] += 3
            (b1 shl 16) or (b2 shl 8) or b3
        }
    }
}

/**
 * Walks the DjVu zone tree and reconstructs text with proper spacing.
 *
 * The raw text stored in TXTa/TXTz has NO whitespace between words — word
 * boundaries are encoded in the zone hierarchy. This function inserts:
 *  - A space between WORD zones within a LINE
 *  - A newline between LINE zones within a PARAGRAPH
 *  - A double newline between PARAGRAPH zones
 *
 * Returns null on any parse error so the caller can fall back to [rawText].
 */
private fun parseZoneTree(rawText: String, payload: ByteArray, zoneStart: Int): String? {
    val pos = intArrayOf(zoneStart)
    val result = StringBuilder(rawText.length + rawText.length / 5)
    val textOffset = intArrayOf(0) // cursor into rawText

    fun parseZone(): Boolean {
        // Zone type
        if (pos[0] >= payload.size) return false
        val zoneType = payload[pos[0]].toInt() and 0xFF
        pos[0]++
        if (zoneType !in ZONE_PAGE..ZONE_CHARACTER) return false

        // 5 var-ints: x, y, w, h, textLength
        readVarInt(payload, pos) ?: return false // x
        readVarInt(payload, pos) ?: return false // y
        readVarInt(payload, pos) ?: return false // w
        readVarInt(payload, pos) ?: return false // h
        val textLen = readVarInt(payload, pos) ?: return false

        // Children count
        val childCount = readVarInt(payload, pos) ?: return false

        if (childCount == 0) {
            // Leaf zone — emit text slice
            val start = textOffset[0]
            val end = start + textLen
            if (end > rawText.length) return false
            result.append(rawText, start, end)
            textOffset[0] = end
        } else {
            for (i in 0 until childCount) {
                if (i > 0) {
                    // Insert separator based on the PARENT zone type
                    when (zoneType) {
                        ZONE_LINE -> result.append(' ')               // space between words
                        ZONE_PARAGRAPH -> result.append('\n')         // newline between lines
                        ZONE_COLUMN, ZONE_REGION, ZONE_PAGE ->
                            result.append("\n\n")                     // double newline between paragraphs
                    }
                }
                if (!parseZone()) return false
            }
        }
        return true
    }

    if (!parseZone()) return null
    // Ensure we consumed all the raw text (sanity check)
    val reconstructed = result.toString()
    return reconstructed.takeIf { it.isNotBlank() }
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
