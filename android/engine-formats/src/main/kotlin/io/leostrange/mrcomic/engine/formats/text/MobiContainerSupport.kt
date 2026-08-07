package io.leostrange.mrcomic.engine.formats.text

import kotlin.math.min

internal const val PDB_HEADER_SIZE = 78
internal const val RECORD_INFO_SIZE = 8
internal const val PALMDOC_COMPRESSION_NONE = 1
internal const val PALMDOC_COMPRESSION = 2
internal const val HUFF_CDIC_COMPRESSION = 17480
internal const val MAX_MOBI_DECOMPRESSED_RECORD_BYTES = 8 * 1024 * 1024
internal const val MOBI_HEADER_OFFSET = 16
internal const val MOBI_HEADER_LENGTH_OFFSET = 20
internal const val MOBI_TEXT_ENCODING_OFFSET = 28
internal val MOBI_IDENTIFIER = "MOBI".encodeToByteArray()
internal val HUFF_IDENTIFIER = "HUFF".encodeToByteArray()
internal val CDIC_IDENTIFIER = "CDIC".encodeToByteArray()

internal fun readPalmDatabaseRecords(bytes: ByteArray): List<ByteArray>? {
    if (bytes.size < PDB_HEADER_SIZE) return null
    val recordCount = bytes.readUInt16BE(76) ?: return null
    // Cap at 64K records to prevent OOM on malformed MOBI files (P0 #3)
    if (recordCount <= 0 || recordCount > 65536) return null

    val offsets = mutableListOf<Int>()
    for (index in 0 until recordCount) {
        val entryOffset = PDB_HEADER_SIZE + index * RECORD_INFO_SIZE
        val recordOffset = bytes.readUInt32BE(entryOffset)?.toInt() ?: return null
        if (recordOffset !in 0 until bytes.size) return null
        offsets += recordOffset
    }

    return offsets.mapIndexedNotNull { index, start ->
        val end = offsets.getOrNull(index + 1) ?: bytes.size
        if (start >= end || end > bytes.size) null else bytes.copyOfRange(start, end)
    }.takeIf { it.isNotEmpty() }
}

internal fun resolveExtraDataFlags(header: ByteArray, headerLength: Int?): Int {
    if (headerLength == null || headerLength < 0xF4) return 0
    val offset = MOBI_HEADER_OFFSET + 0xF2
    val flags = header.readUInt16BE(offset) ?: return 0
    // Some legacy PalmDOC files use 0xFFFF here; stripping the common trailing
    // data entry matches reader output while avoiding leaked bytes in text.
    return flags.takeUnless { it == 0xFFFF } ?: 0x0002
}

internal fun containsHuffCdicTables(records: List<ByteArray>): Boolean =
    records.any { record ->
        record.hasSliceAt(0, HUFF_IDENTIFIER) || record.hasSliceAt(0, CDIC_IDENTIFIER)
    }

@Suppress("MagicNumber")
internal fun stripTrailingData(record: ByteArray, extraDataFlags: Int): ByteArray {
    if (extraDataFlags == 0 || record.isEmpty()) return record

    var end = record.size
    var flags = extraDataFlags shr 1
    while (flags != 0 && end > 0) {
        if ((flags and 1) != 0) {
            val trailingSizeInfo = decodeTrailingDataEntry(record, end) ?: return record.copyOf(end)
            end -= trailingSizeInfo.totalLength
        }
        flags = flags shr 1
    }

    if ((extraDataFlags and 1) != 0 && end > 0) {
        end -= (record[end - 1].toInt() and 0x3) + 1
    }

    return record.copyOf(end.coerceAtLeast(0))
}

internal fun decodeTrailingDataEntry(record: ByteArray, endExclusive: Int): TrailingDataEntry? {
    var consumed = 0
    var value = 0
    var shift = 0
    var index = endExclusive - 1
    while (index >= 0 && consumed < 4) {
        val current = record[index].toInt() and 0xFF
        consumed++
        value = value or ((current and 0x7F) shl shift)
        if ((current and 0x80) != 0) {
            return TrailingDataEntry(totalLength = value + consumed)
        }
        shift += 7
        index--
    }
    return null
}

internal data class TrailingDataEntry(
    val totalLength: Int
)

internal fun decompressPalmDoc(data: ByteArray): ByteArray? {
    var out = ByteArray((data.size * 2).coerceAtLeast(32))
    var size = 0

    fun ensureCapacity(additional: Int): Boolean {
        val required = size + additional
        if (required > MAX_MOBI_DECOMPRESSED_RECORD_BYTES) return false
        if (required <= out.size) return true

        var newSize = out.size
        while (newSize < required) {
            val doubled = newSize * 2
            newSize = if (doubled > newSize) doubled else required
        }
        out = out.copyOf(newSize)
        return true
    }

    fun append(value: Byte): Boolean {
        if (!ensureCapacity(1)) return false
        out[size] = value
        size++
        return true
    }

    fun append(value: Int): Boolean = append(value.toByte())

    var index = 0
    while (index < data.size) {
        val current = data[index].toInt() and 0xFF
        when {
            current == 0 -> {
                if (!append(0)) return null
                index++
            }

            current in 1..8 -> {
                val literalLength = min(current, data.size - index - 1)
                if (literalLength <= 0) {
                    index++
                } else {
                    repeat(literalLength) { offset ->
                        if (!append(data[index + 1 + offset])) return null
                    }
                    index += literalLength + 1
                }
            }

            current in 9..0x7F -> {
                if (!append(current)) return null
                index++
            }

            current in 0x80..0xBF -> {
                if (index + 1 >= data.size) break
                val next = data[index + 1].toInt() and 0xFF
                val pair = (((current shl 8) or next) and 0x3FFF)
                val distance = pair shr 3
                val length = (pair and 0x7) + 3
                if (distance in 1..size) {
                    repeat(length) {
                        val sourceIndex = size - distance
                        if (sourceIndex in 0 until size) {
                            if (!append(out[sourceIndex])) return null
                        }
                    }
                }
                index += 2
            }

            else -> {
                if (!append(' '.code)) return null
                if (!append(current xor 0x80)) return null
                index++
            }
        }
    }
    return out.copyOf(size)
}

internal fun ByteArray.readUInt16BE(offset: Int): Int? {
    if (offset < 0 || offset + 2 > size) return null
    return ((this[offset].toInt() and 0xFF) shl 8) or
        (this[offset + 1].toInt() and 0xFF)
}

internal fun ByteArray.readUInt32BE(offset: Int): Long? {
    if (offset < 0 || offset + 4 > size) return null
    return ((this[offset].toLong() and 0xFF) shl 24) or
        ((this[offset + 1].toLong() and 0xFF) shl 16) or
        ((this[offset + 2].toLong() and 0xFF) shl 8) or
        (this[offset + 3].toLong() and 0xFF)
}

internal fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean {
    if (offset < 0 || size < offset + other.size) return false
    return other.indices.all { index -> this[offset + index] == other[index] }
}
