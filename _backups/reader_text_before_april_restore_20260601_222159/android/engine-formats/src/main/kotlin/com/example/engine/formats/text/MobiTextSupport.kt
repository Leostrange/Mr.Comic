package com.example.engine.formats.text

import java.nio.charset.Charset
import kotlin.math.min

internal sealed interface MobiExtractionResult {
    data class Success(
        val content: String,
        val isMarkup: Boolean
    ) : MobiExtractionResult

    data class Unsupported(
        val message: String
    ) : MobiExtractionResult
}

internal object MobiTextSupport {
    private const val PDB_HEADER_SIZE = 78
    private const val RECORD_INFO_SIZE = 8
    private const val PALMDOC_COMPRESSION_NONE = 1
    private const val PALMDOC_COMPRESSION = 2
    private const val HUFF_CDIC_COMPRESSION = 17480
    private const val MOBI_HEADER_OFFSET = 16
    private const val MOBI_HEADER_LENGTH_OFFSET = 20
    private const val MOBI_TEXT_ENCODING_OFFSET = 28
    private val MOBI_IDENTIFIER = "MOBI".encodeToByteArray()

    fun extract(bytes: ByteArray): MobiExtractionResult {
        val records = readPalmDatabaseRecords(bytes)
            ?: return MobiExtractionResult.Unsupported("Unable to read MOBI/AZW3 container.")
        if (records.size < 2) {
            return MobiExtractionResult.Unsupported("MOBI/AZW3 file does not contain readable text records.")
        }

        val header = records.first()
        if (!header.hasSliceAt(MOBI_HEADER_OFFSET, MOBI_IDENTIFIER)) {
            return MobiExtractionResult.Unsupported("Unsupported MOBI/AZW3 header.")
        }

        val compression = header.readUInt16BE(0) ?: return MobiExtractionResult.Unsupported("Broken MOBI/AZW3 compression header.")
        val textRecordCount = header.readUInt16BE(8) ?: return MobiExtractionResult.Unsupported("Broken MOBI/AZW3 text record header.")
        val encryptionType = header.readUInt16BE(12) ?: 0
        if (encryptionType != 0) {
            return MobiExtractionResult.Unsupported("This MOBI/AZW3 file is DRM-protected and cannot be opened.")
        }

        val headerLength = header.readUInt32BE(MOBI_HEADER_LENGTH_OFFSET)?.toInt()
        val textEncoding = header.readUInt32BE(MOBI_TEXT_ENCODING_OFFSET)?.toInt() ?: 65001
        val extraDataFlags = resolveExtraDataFlags(header, headerLength)

        if (compression == HUFF_CDIC_COMPRESSION) {
            return MobiExtractionResult.Unsupported("This MOBI/AZW3 file uses unsupported HuffDic compression.")
        }

        val limit = min(textRecordCount, records.lastIndex)
        if (limit <= 0) {
            return MobiExtractionResult.Unsupported("MOBI/AZW3 file does not contain readable text content.")
        }

        val decoded = buildString {
            for (index in 1..limit) {
                val trimmedRecord = stripTrailingData(records[index], extraDataFlags)
                val chunk = when (compression) {
                    PALMDOC_COMPRESSION_NONE -> trimmedRecord
                    PALMDOC_COMPRESSION -> decompressPalmDoc(trimmedRecord)
                    else -> return MobiExtractionResult.Unsupported("This MOBI/AZW3 file uses unsupported compression: $compression.")
                }
                append(decodeText(chunk, textEncoding))
            }
        }

        val cleaned = decoded
            .replace("\u0000", "")
            .replace(Regex("[\\u0001-\\u0008\\u000B\\u000C\\u000E-\\u001F]"), "")
            .trim()

        if (cleaned.isBlank()) {
            return MobiExtractionResult.Unsupported("Unable to extract readable text from MOBI/AZW3.")
        }

        val markup = extractMarkupFragment(cleaned)
        return if (markup != null) {
            MobiExtractionResult.Success(markup, isMarkup = true)
        } else {
            MobiExtractionResult.Success(cleaned, isMarkup = false)
        }
    }

    private fun readPalmDatabaseRecords(bytes: ByteArray): List<ByteArray>? {
        if (bytes.size < PDB_HEADER_SIZE) return null
        val recordCount = bytes.readUInt16BE(76) ?: return null
        if (recordCount <= 0) return null

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

    private fun resolveExtraDataFlags(header: ByteArray, headerLength: Int?): Int {
        if (headerLength == null || headerLength < 0xF4) return 0
        val offset = MOBI_HEADER_OFFSET + 0xF2
        return header.readUInt16BE(offset) ?: 0
    }

    @Suppress("MagicNumber")
    private fun stripTrailingData(record: ByteArray, extraDataFlags: Int): ByteArray {
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

    private fun decodeTrailingDataEntry(record: ByteArray, endExclusive: Int): TrailingDataEntry? {
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

    private data class TrailingDataEntry(
        val totalLength: Int
    )

    private fun decompressPalmDoc(data: ByteArray): ByteArray {
        val out = ArrayList<Byte>(data.size * 2)
        var index = 0
        while (index < data.size) {
            val current = data[index].toInt() and 0xFF
            when {
                current == 0 -> {
                    out += 0
                    index++
                }

                current in 1..8 -> {
                    val literalLength = min(current, data.size - index - 1)
                    if (literalLength <= 0) {
                        index++
                    } else {
                        repeat(literalLength) { offset ->
                            out += data[index + 1 + offset]
                        }
                        index += literalLength + 1
                    }
                }

                current in 9..0x7F -> {
                    out += current.toByte()
                    index++
                }

                current in 0x80..0xBF -> {
                    if (index + 1 >= data.size) break
                    val next = data[index + 1].toInt() and 0xFF
                    val pair = (((current shl 8) or next) and 0x3FFF)
                    val distance = pair shr 3
                    val length = (pair and 0x7) + 3
                    if (distance in 1..out.size) {
                        repeat(length) {
                            val sourceIndex = out.size - distance
                            if (sourceIndex in out.indices) {
                                out += out[sourceIndex]
                            }
                        }
                    }
                    index += 2
                }

                else -> {
                    out += ' '.code.toByte()
                    out += (current xor 0x80).toByte()
                    index++
                }
            }
        }
        return out.toByteArray()
    }

    private fun decodeText(bytes: ByteArray, encoding: Int): String {
        val charset = when (encoding) {
            65001 -> Charsets.UTF_8
            65005, 1200 -> Charsets.UTF_16LE
            1201 -> Charsets.UTF_16BE
            1252 -> Charset.forName("windows-1252")
            else -> runCatching { Charset.forName("windows-$encoding") }.getOrElse { Charsets.UTF_8 }
        }
        return runCatching { bytes.toString(charset) }
            .getOrElse { bytes.toString(Charsets.UTF_8) }
    }

    private fun extractMarkupFragment(text: String): String? {
        if (!looksLikeMarkup(text)) return null

        val trimmed = text.trim()
        val start = listOf(
            "<!doctype",
            "<html",
            "<body",
            "<section",
            "<article",
            "<chapter",
            "<h1",
            "<h2",
            "<p",
            "<div",
            "<mbp:pagebreak"
        ).map { marker ->
            trimmed.indexOf(marker, ignoreCase = true).takeIf { it >= 0 }
        }.filterNotNull().minOrNull() ?: 0

        var fragment = trimmed.substring(start).trim()
        val htmlEnd = fragment.lastIndexOf("</html>", ignoreCase = true)
        if (htmlEnd >= 0) {
            fragment = fragment.substring(0, htmlEnd + "</html>".length)
        }
        return fragment.trim().takeIf { it.isNotBlank() }
    }

    private fun looksLikeMarkup(text: String): Boolean {
        val lower = text.lowercase()
        return listOf(
            "<html",
            "<body",
            "<p",
            "<div",
            "<span",
            "<h1",
            "<h2",
            "<mbp:pagebreak",
            "<guide",
            "<metadata"
        ).count { lower.contains(it) } >= 2
    }

    private fun ByteArray.readUInt16BE(offset: Int): Int? {
        if (offset < 0 || offset + 2 > size) return null
        return ((this[offset].toInt() and 0xFF) shl 8) or
            (this[offset + 1].toInt() and 0xFF)
    }

    private fun ByteArray.readUInt32BE(offset: Int): Long? {
        if (offset < 0 || offset + 4 > size) return null
        return ((this[offset].toLong() and 0xFF) shl 24) or
            ((this[offset + 1].toLong() and 0xFF) shl 16) or
            ((this[offset + 2].toLong() and 0xFF) shl 8) or
            (this[offset + 3].toLong() and 0xFF)
    }

    private fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean {
        if (offset < 0 || size < offset + other.size) return false
        return other.indices.all { index -> this[offset + index] == other[index] }
    }
}
