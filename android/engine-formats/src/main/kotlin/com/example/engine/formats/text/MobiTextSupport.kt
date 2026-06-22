package com.example.engine.formats.text

import java.io.ByteArrayOutputStream
import java.nio.charset.Charset
import kotlin.math.min

internal sealed interface MobiExtractionResult {
    data class Success(
        val content: String,
        val isMarkup: Boolean,
        val diagnostics: MobiDiagnostics
    ) : MobiExtractionResult

    data class Unsupported(
        val message: String,
        val details: MobiUnsupportedDetails? = null
    ) : MobiExtractionResult
}

internal data class MobiUnsupportedDetails(
    val reason: String,
    val declaredEncoding: Int? = null,
    val compression: Int? = null,
    val textRecordCount: Int? = null,
    val encryptionType: Int? = null,
    val containsHuffCdicTables: Boolean = false
)

internal data class MobiDiagnostics(
    val declaredEncoding: Int,
    val resolvedEncoding: String,
    val compression: Int,
    val textRecordCount: Int,
    val pageBreakCount: Int,
    val containsMarkup: Boolean
)

internal object MobiTextSupport {
    private const val PDB_HEADER_SIZE = 78
    private const val RECORD_INFO_SIZE = 8
    private const val PALMDOC_COMPRESSION_NONE = 1
    private const val PALMDOC_COMPRESSION = 2
    private const val HUFF_CDIC_COMPRESSION = 17480
    private const val MAX_MOBI_DECOMPRESSED_RECORD_BYTES = 8 * 1024 * 1024
    private const val MAX_MOBI_DECOMPRESSED_TEXT_BYTES = 64 * 1024 * 1024
    private const val MAX_MOBI_DECODED_TEXT_CHARS = 32 * 1024 * 1024
    private const val MOBI_HEADER_OFFSET = 16
    private const val MOBI_HEADER_LENGTH_OFFSET = 20
    private const val MOBI_TEXT_ENCODING_OFFSET = 28
    private val MOBI_IDENTIFIER = "MOBI".encodeToByteArray()
    private val HUFF_IDENTIFIER = "HUFF".encodeToByteArray()
    private val CDIC_IDENTIFIER = "CDIC".encodeToByteArray()
    private const val CP1251_UTF8_MOJIBAKE_CONTINUATIONS =
        "\u0402\u0403\u201A\u0453\u201E\u2026\u2020\u2021\u20AC\u2030\u0409\u2039\u040A\u040C\u040B\u040F" +
            "\u0452\u2018\u2019\u201C\u201D\u2022\u2013\u2014\uFFFD\u2122\u0459\u203A\u045A\u045C\u045B\u045F" +
            "\u00A0\u040E\u045E\u0408\u00A4\u0490\u00A6\u00A7\u0401\u00A9\u0404\u00AB\u00AC\u00AD\u00AE\u0407" +
            "\u00B0\u00B1\u0406\u0456\u0491\u00B5\u00B6\u00B7\u0451\u2116\u0454\u00BB\u0458\u0405\u0455\u0457"
    private const val CP1252_UTF8_MOJIBAKE_CONTINUATIONS =
        "\u20AC\u201A\u0192\u201E\u2026\u2020\u2021\u02C6\u2030\u0160\u2039\u0152\u017D" +
            "\u2018\u2019\u201C\u201D\u2022\u2013\u2014\u02DC\u2122\u0161\u203A\u0153\u017E\u0178"
    private enum class LocalizedMojibakeCharset {
        WINDOWS_1251,
        WINDOWS_1252
    }

    private val LOCALIZED_UTF8_MOJIBAKE_SOURCE_CHARSETS = listOf(
        LocalizedMojibakeCharset.WINDOWS_1251,
        LocalizedMojibakeCharset.WINDOWS_1252
    )
    private const val ASCII_MOBI_CORRUPTION_CHARS = "abcefghjknopqrstuwyz"

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
        val declaredTextLength = header.readUInt32BE(4)
            ?.takeIf { it in 1..MAX_MOBI_DECOMPRESSED_TEXT_BYTES.toLong() }
            ?.toInt()
        val textRecordCount = header.readUInt16BE(8) ?: return MobiExtractionResult.Unsupported("Broken MOBI/AZW3 text record header.")
        val encryptionType = header.readUInt16BE(12) ?: 0
        val headerLength = header.readUInt32BE(MOBI_HEADER_LENGTH_OFFSET)?.toInt()
        val textEncoding = header.readUInt32BE(MOBI_TEXT_ENCODING_OFFSET)?.toInt() ?: 65001
        val unsupportedDetails = MobiUnsupportedDetails(
            reason = "unknown",
            declaredEncoding = textEncoding,
            compression = compression,
            textRecordCount = min(textRecordCount, records.lastIndex),
            encryptionType = encryptionType,
            containsHuffCdicTables = containsHuffCdicTables(records)
        )

        if (encryptionType != 0) {
            return MobiExtractionResult.Unsupported(
                message = "This MOBI/AZW3 file is DRM-protected and cannot be opened.",
                details = unsupportedDetails.copy(reason = "drm")
            )
        }

        val extraDataFlags = resolveExtraDataFlags(header, headerLength)

        if (compression == HUFF_CDIC_COMPRESSION) {
            return MobiExtractionResult.Unsupported(
                message = "This MOBI/AZW3 file uses HUFF/CDIC compression, which needs a dedicated MOBI/AZW3 decoder.",
                details = unsupportedDetails.copy(reason = "huff-cdic")
            )
        }

        val limit = min(textRecordCount, records.lastIndex)
        if (limit <= 0) {
            return MobiExtractionResult.Unsupported("MOBI/AZW3 file does not contain readable text content.")
        }

        val decompressedChunks = mutableListOf<ByteArray>()
        var decompressedBytes = 0
        var writtenBytes = 0
        for (index in 1..limit) {
            val trimmedRecord = stripTrailingData(records[index], extraDataFlags)
            val chunk = when (compression) {
                PALMDOC_COMPRESSION_NONE -> trimmedRecord
                PALMDOC_COMPRESSION -> decompressPalmDoc(trimmedRecord)
                    ?: return MobiExtractionResult.Unsupported(
                        message = "PalmDOC text record expands beyond the safe MOBI/AZW3 limit.",
                        details = unsupportedDetails.copy(reason = "palm-doc-expansion-limit")
                    )
                else -> return MobiExtractionResult.Unsupported(
                    message = "This MOBI/AZW3 file uses unsupported compression: $compression.",
                    details = unsupportedDetails.copy(reason = "unsupported-compression")
                )
            }
            decompressedBytes += chunk.size
            if (decompressedBytes > MAX_MOBI_DECOMPRESSED_TEXT_BYTES) {
                return MobiExtractionResult.Unsupported(
                    message = "MOBI/AZW3 text expands beyond the safe reader limit.",
                    details = unsupportedDetails.copy(reason = "decompressed-text-limit")
                )
            }
            val bytesToWrite = declaredTextLength?.let { expectedLength ->
                (expectedLength - writtenBytes).coerceIn(0, chunk.size)
            } ?: chunk.size
            if (bytesToWrite > 0) {
                decompressedChunks += if (bytesToWrite == chunk.size) {
                    chunk
                } else {
                    chunk.copyOf(bytesToWrite)
                }
                writtenBytes += bytesToWrite
            }
            if (declaredTextLength != null && writtenBytes >= declaredTextLength) {
                break
            }
        }
        val decodedChunk = decodeTextRecords(decompressedChunks, textEncoding)
        if (decodedChunk.text.length > MAX_MOBI_DECODED_TEXT_CHARS) {
            return MobiExtractionResult.Unsupported(
                message = "MOBI/AZW3 text expands beyond the safe reader limit.",
                details = unsupportedDetails.copy(reason = "decoded-text-limit")
            )
        }
        val decoded = decodedChunk.text

        val cleaned = decoded
            .replace("\u0000", "")
            .replace("\uFFFD", "")
            .replace(Regex("[\\u0001-\\u0008\\u000B\\u000C\\u000E-\\u001F]"), "")
            .trim()
        val normalizedText = sanitizeResidualMobiCorruption(
            repairWholeTextMojibake(repairLocalizedUtf8Mojibake(cleaned))
        ).replace("\uFFFD", "")

        if (normalizedText.isBlank()) {
            return MobiExtractionResult.Unsupported("Unable to extract readable text from MOBI/AZW3.")
        }

        val markup = extractMarkupFragment(normalizedText)
        val resolvedEncoding = decodedChunk.encodingName
        val pageBreakCount = Regex(
            """(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""
        ).findAll(markup ?: normalizedText).count()
        val diagnostics = MobiDiagnostics(
            declaredEncoding = textEncoding,
            resolvedEncoding = resolvedEncoding,
            compression = compression,
            textRecordCount = limit,
            pageBreakCount = pageBreakCount,
            containsMarkup = markup != null
        )
        return if (markup != null) {
            MobiExtractionResult.Success(markup, isMarkup = true, diagnostics = diagnostics)
        } else {
            MobiExtractionResult.Success(normalizedText, isMarkup = false, diagnostics = diagnostics)
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
        val flags = header.readUInt16BE(offset) ?: return 0
        // Some legacy PalmDOC files use 0xFFFF here; stripping the common trailing
        // data entry matches reader output while avoiding leaked bytes in text.
        return flags.takeUnless { it == 0xFFFF } ?: 0x0002
    }

    private fun containsHuffCdicTables(records: List<ByteArray>): Boolean =
        records.any { record ->
            record.hasSliceAt(0, HUFF_IDENTIFIER) || record.hasSliceAt(0, CDIC_IDENTIFIER)
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

    private fun decompressPalmDoc(data: ByteArray): ByteArray? {
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

    private fun decodeTextRecords(chunks: List<ByteArray>, encoding: Int): DecodedChunk {
        if (chunks.isEmpty()) return DecodedChunk("", declaredEncodingName(encoding))
        val combined = ByteArrayOutputStream(chunks.sumOf { it.size }).apply {
            chunks.forEach { write(it, 0, it.size) }
        }.toByteArray()

        if (encoding == 65001 && isValidUtf8(combined)) {
            return DecodedChunk(
                text = combined.toString(Charsets.UTF_8),
                encodingName = Charsets.UTF_8.name(),
                score = Int.MAX_VALUE / 3
            )
        }

        val decodedChunks = chunks.map { chunk -> decodeTextRecord(chunk, encoding) }
        val resolvedEncoding = decodedChunks
            .groupingBy { it.encodingName }
            .eachCount()
            .maxByOrNull { it.value }
            ?.key
            ?: declaredEncodingName(encoding)
        return DecodedChunk(
            text = decodedChunks.joinToString(separator = "") { it.text },
            encodingName = resolvedEncoding,
            score = decodedChunks.sumOf { it.score }
        )
    }

    private fun decodeTextRecord(bytes: ByteArray, encoding: Int): DecodedChunk {
        if (bytes.isEmpty()) {
            return DecodedChunk("", declaredEncodingName(encoding))
        }
        if (bytes.all(::isAsciiTextByte)) {
            return DecodedChunk(bytes.toString(Charsets.US_ASCII), declaredEncodingName(encoding), score = Int.MAX_VALUE / 4)
        }
        if (isValidUtf8(bytes)) {
            return DecodedChunk(bytes.toString(Charsets.UTF_8), Charsets.UTF_8.name(), score = Int.MAX_VALUE / 3)
        }

        val utf8Lenient = DecodedChunk(
            text = bytes.toString(Charsets.UTF_8),
            encodingName = Charsets.UTF_8.name(),
            score = scoreDecodedText(bytes.toString(Charsets.UTF_8), Charsets.UTF_8)
        )
        // Check if UTF-8 decoding produces cyrillic-looking text with many U+FFFD replacements.
        // If so, the file likely uses a single-byte Cyrillic encoding (Windows-1251) despite
        // declaring UTF-8. Skip the early return and let the charset candidate logic pick the
        // best encoding.
        val utf8ReplacementCount = utf8Lenient.text.count { it == '\uFFFD' }
        val utf8CyrillicCount = utf8Lenient.text.count { it in '\u0400'..'\u04FF' }
        val hasCyrillicMojibake = utf8CyrillicCount > 10 && utf8ReplacementCount > utf8CyrillicCount / 2
        if (encoding == 65001 && !hasCyrillicMojibake && utf8ReplacementCount <= (bytes.size / 512).coerceAtLeast(8)) {
            return utf8Lenient
        }

        val charsetCandidates = buildList {
            add(encodingToCharset(encoding))
            add(Charsets.UTF_8)
            add(Charsets.UTF_16LE)
            add(Charsets.UTF_16BE)
            add(Charset.forName("windows-1251"))
            add(Charset.forName("KOI8-R"))
            add(Charset.forName("IBM866"))
            add(Charset.forName("windows-1252"))
            add(Charsets.ISO_8859_1)
        }.distinctBy(Charset::name)

        val best = charsetCandidates
            .map { charset ->
                val text = runCatching { bytes.toString(charset) }
                    .getOrElse { bytes.toString(Charsets.UTF_8) }
                DecodedChunk(text = text, encodingName = charset.name(), score = scoreDecodedText(text, charset))
            }
            .maxByOrNull(DecodedChunk::score)

        val resolved = best ?: DecodedChunk(bytes.toString(Charsets.UTF_8), Charsets.UTF_8.name())
        if (encoding == 65001 && utf8Lenient.score + 300 >= resolved.score) {
            return utf8Lenient
        }
        val repaired = repairUtf8Mojibake(resolved)
        return if (repaired.score > resolved.score) repaired else resolved
    }

    private fun decodeMixedUtf8AndSingleByte(bytes: ByteArray, fallbackCharset: Charset): String {
        val output = StringBuilder(bytes.size)
        val fallback = when {
            fallbackCharset.name().equals("windows-1251", ignoreCase = true) -> SingleByteFallback.WINDOWS_1251
            fallbackCharset.name().equals("windows-1252", ignoreCase = true) -> SingleByteFallback.WINDOWS_1252
            else -> SingleByteFallback.CHARSET
        }
        var index = 0
        while (index < bytes.size) {
            val value = bytes[index].toInt() and 0xFF
            if (value <= 0x7F) {
                output.append(value.toChar())
                index++
                continue
            }

            val utf8Length = validUtf8SequenceLength(bytes, index)
            if (utf8Length > 0) {
                val runStart = index
                index += utf8Length
                while (index < bytes.size) {
                    val nextLength = validUtf8SequenceLength(bytes, index)
                    if (nextLength <= 0) break
                    index += nextLength
                }
                output.append(String(bytes, runStart, index - runStart, Charsets.UTF_8))
                continue
            }

            val nextUtf8Length = validUtf8SequenceLength(bytes, index + 1)
            if (value in 0xC2..0xF4 && nextUtf8Length > 0) {
                index++
                continue
            }

            output.appendSingleByte(bytes[index].toInt() and 0xFF, fallback, fallbackCharset)
            index++
        }
        return output.toString()
    }

    private enum class SingleByteFallback {
        WINDOWS_1251,
        WINDOWS_1252,
        CHARSET
    }

    private fun StringBuilder.appendSingleByte(value: Int, fallback: SingleByteFallback, charset: Charset) {
        when (fallback) {
            SingleByteFallback.WINDOWS_1251 -> append(charFromWindows1251Byte(value))
            SingleByteFallback.WINDOWS_1252 -> append(charFromWindows1252Byte(value))
            SingleByteFallback.CHARSET -> append(byteArrayOf(value.toByte()).toString(charset))
        }
    }

    private fun charFromWindows1251Byte(value: Int): Char =
        when (value) {
            in 0x00..0x7F -> value.toChar()
            in 0x80..0xBF -> CP1251_UTF8_MOJIBAKE_CONTINUATIONS[value - 0x80]
            in 0xC0..0xFF -> (0x0410 + value - 0xC0).toChar()
            else -> '\uFFFD'
        }

    private fun charFromWindows1252Byte(value: Int): Char =
        when (value) {
            in 0x00..0x7F -> value.toChar()
            0x80 -> '\u20AC'
            0x82 -> '\u201A'
            0x83 -> '\u0192'
            0x84 -> '\u201E'
            0x85 -> '\u2026'
            0x86 -> '\u2020'
            0x87 -> '\u2021'
            0x88 -> '\u02C6'
            0x89 -> '\u2030'
            0x8A -> '\u0160'
            0x8B -> '\u2039'
            0x8C -> '\u0152'
            0x8E -> '\u017D'
            0x91 -> '\u2018'
            0x92 -> '\u2019'
            0x93 -> '\u201C'
            0x94 -> '\u201D'
            0x95 -> '\u2022'
            0x96 -> '\u2013'
            0x97 -> '\u2014'
            0x98 -> '\u02DC'
            0x99 -> '\u2122'
            0x9A -> '\u0161'
            0x9B -> '\u203A'
            0x9C -> '\u0153'
            0x9E -> '\u017E'
            0x9F -> '\u0178'
            in 0xA0..0xFF -> value.toChar()
            else -> '\uFFFD'
        }

    private fun validUtf8SequenceLength(bytes: ByteArray, start: Int): Int {
        if (start !in bytes.indices) return 0
        val value = bytes[start].toInt() and 0xFF
        return when {
            value <= 0x7F -> 1
            value in 0xC2..0xDF -> {
                if (hasUtf8Continuation(bytes, start, 1)) 2 else 0
            }
            value in 0xE0..0xEF -> {
                if (!hasUtf8Continuation(bytes, start, 2)) {
                    0
                } else {
                    val b1 = bytes[start + 1].toInt() and 0xFF
                    if ((value == 0xE0 && b1 < 0xA0) || (value == 0xED && b1 >= 0xA0)) 0 else 3
                }
            }
            value in 0xF0..0xF4 -> {
                if (!hasUtf8Continuation(bytes, start, 3)) {
                    0
                } else {
                    val b1 = bytes[start + 1].toInt() and 0xFF
                    if ((value == 0xF0 && b1 < 0x90) || (value == 0xF4 && b1 >= 0x90)) 0 else 4
                }
            }
            else -> 0
        }
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

    private fun declaredEncodingName(encoding: Int): String = encodingToCharset(encoding).name()

    private fun isAsciiTextByte(value: Byte): Boolean {
        val code = value.toInt() and 0xFF
        return code == 0x09 || code == 0x0A || code == 0x0D || code in 0x20..0x7E
    }

    private fun isValidUtf8(bytes: ByteArray): Boolean {
        var index = 0
        while (index < bytes.size) {
            val value = bytes[index].toInt() and 0xFF
            when {
                value <= 0x7F -> index++
                value in 0xC2..0xDF -> {
                    if (!hasUtf8Continuation(bytes, index, 1)) return false
                    index += 2
                }
                value in 0xE0..0xEF -> {
                    if (!hasUtf8Continuation(bytes, index, 2)) return false
                    val b1 = bytes[index + 1].toInt() and 0xFF
                    if ((value == 0xE0 && b1 < 0xA0) || (value == 0xED && b1 >= 0xA0)) return false
                    index += 3
                }
                value in 0xF0..0xF4 -> {
                    if (!hasUtf8Continuation(bytes, index, 3)) return false
                    val b1 = bytes[index + 1].toInt() and 0xFF
                    if ((value == 0xF0 && b1 < 0x90) || (value == 0xF4 && b1 >= 0x90)) return false
                    index += 4
                }
                else -> return false
            }
        }
        return true
    }

    private fun hasUtf8Continuation(bytes: ByteArray, start: Int, count: Int): Boolean {
        if (start + count >= bytes.size) return false
        for (offset in 1..count) {
            val next = bytes[start + offset].toInt() and 0xFF
            if (next !in 0x80..0xBF) return false
        }
        return true
    }

    private fun encodingToCharset(encoding: Int): Charset = when (encoding) {
        65001 -> Charsets.UTF_8
        65005, 1200 -> Charsets.UTF_16LE
        1201 -> Charsets.UTF_16BE
        1252 -> Charset.forName("windows-1252")
        else -> runCatching { Charset.forName("windows-$encoding") }.getOrElse { Charsets.UTF_8 }
    }

    private fun scoreDecodedText(text: String, charset: Charset): Int {
        var score = 0
        var basicLatinLetters = 0
        var extendedLatinLetters = 0
        var cyrillicLetters = 0
        var printable = 0
        var suspicious = 0
        var controls = 0

        text.forEach { ch ->
            when {
                ch == '\uFFFD' -> score -= 120
                isSuspiciousMobiSupplementGlyph(ch) -> {
                    suspicious++
                    score -= 180
                }
                ch == '\n' || ch == '\r' || ch == '\t' -> score += 1
                ch.isLetter() -> {
                    printable++
                    score += 6
                    if (ch in '\u0041'..'\u007A') basicLatinLetters++
                    if (ch in '\u00C0'..'\u024F') extendedLatinLetters++
                    if (ch in '\u0400'..'\u04FF') cyrillicLetters++
                }
                ch.isDigit() -> {
                    printable++
                    score += 3
                }
                ch.isWhitespace() -> score += 1
                ch.isISOControl() -> {
                    controls++
                    score -= 40
                }
                ch == '?' || ch == '�' || ch == '¤' || ch == '¦' || ch == '¨' || ch == '¬' || ch == '¯' -> {
                    suspicious++
                    score -= 8
                }
                else -> {
                    printable++
                    score += 2
                }
            }
        }

        if (cyrillicLetters > (basicLatinLetters + extendedLatinLetters) * 2) {
            score += cyrillicLetters * 3
            if (charset.name().equals("windows-1251", ignoreCase = true)) score += 100
            if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 50
            if (charset.name().equals("IBM866", ignoreCase = true)) score += 50
            // Penalize UTF-8 for Cyrillic text — it produces mojibake when real encoding is single-byte
            if (charset.name().equals("UTF-8", ignoreCase = true)) score -= 80
        } else if (basicLatinLetters + extendedLatinLetters >= cyrillicLetters) {
            if (charset.name().equals("windows-1252", ignoreCase = true)) score += 20
            if (charset == Charsets.ISO_8859_1) score += 10
        }

        if (cyrillicLetters == 0 && extendedLatinLetters > basicLatinLetters && extendedLatinLetters >= 5) {
            score -= extendedLatinLetters * 12
        }

        score += printable
        score -= suspicious * 6
        score -= controls * 10
        return score
    }

    private fun isSuspiciousMobiSupplementGlyph(ch: Char): Boolean =
        ch in setOf(
            '\u0402', '\u0403', '\u0409', '\u040A', '\u040B', '\u040C', '\u040F',
            '\u0452', '\u0453', '\u0459', '\u045A', '\u045B', '\u045C', '\u045F',
            '\u047B', '\u0475', '\u0477', '\u0491'
        )

    private fun suspiciousMobiSupplementGlyphCount(text: String): Int =
        text.count(::isSuspiciousMobiSupplementGlyph)

    private fun repairUtf8Mojibake(chunk: DecodedChunk): DecodedChunk {
        if (!looksLikeUtf8Mojibake(chunk.text)) return chunk

        val repairedCandidates = listOf(
            Charset.forName("windows-1251"),
            Charset.forName("windows-1252"),
            Charsets.ISO_8859_1
        ).mapNotNull { sourceCharset ->
            runCatching {
                val repairedText = chunk.text.toByteArray(sourceCharset).toString(Charsets.UTF_8)
                DecodedChunk(
                    text = repairedText,
                    encodingName = "UTF-8 via ${sourceCharset.name()}",
                    score = scoreDecodedText(repairedText, Charsets.UTF_8)
                )
            }.getOrNull()
        }

        return repairedCandidates.maxByOrNull(DecodedChunk::score) ?: chunk
    }

    private fun looksLikeUtf8Mojibake(text: String): Boolean {
        if (text.length < 6) return false
        return cyrillicMojibakeMarkerCount(text, stopAt = 3) >= 3
    }

    private fun repairWholeTextMojibake(text: String): String {
        if (!looksLikeUtf8Mojibake(text)) return text

        val originalPenalty = cyrillicMojibakeMarkerCount(text)
        val originalScore = scoreDecodedText(text, Charsets.UTF_8)
        val repaired = listOf(
            Charset.forName("windows-1251"),
            Charset.forName("windows-1252"),
            Charsets.ISO_8859_1
        ).mapNotNull { sourceCharset ->
            runCatching {
                val candidate = text.toByteArray(sourceCharset).toString(Charsets.UTF_8)
                Triple(candidate, cyrillicMojibakeMarkerCount(candidate), scoreDecodedText(candidate, Charsets.UTF_8))
            }.getOrNull()
        }.filter { (candidate, _, _) ->
            candidate.any { it in '\u0400'..'\u04FF' }
        }.sortedWith(
            compareBy<Triple<String, Int, Int>> { it.second }
                .thenByDescending { it.third }
        ).firstOrNull { (_, penalty, score) ->
            penalty < originalPenalty || score > originalScore
        }

        return repaired?.first ?: text
    }

    private fun repairLocalizedUtf8Mojibake(text: String): String {
        if (mojibakeMarkerCount(text, stopAt = 1) == 0) return text
        val repaired = StringBuilder(text.length)
        var index = 0
        while (index < text.length) {
            val token = decodeLocalizedUtf8MojibakeAt(text, index)
            if (token == null) {
                repaired.append(text[index])
                index++
                continue
            }

            repaired.append(token.text)
            index += token.sourceLength
        }
        return repaired.toString()
    }

    private fun sanitizeResidualMobiCorruption(text: String): String =
        if (!needsResidualMobiCorruptionSanitizer(text)) {
            text
        } else {
            text
                .replace(Regex("[\u0402\u0403\u0409\u040A\u040B\u040C\u040F\u0452\u0453\u0459\u045A\u045B\u045C\u045F\u0475\u0477\u047B\u0491]"), "")
                .replace(Regex("""(?iu)(?<=[а-яё])\s*[\u00C0-\u024F]\s*(?=[а-яё])""")) { match ->
                    if (match.value.any(Char::isWhitespace)) " " else ""
                }
                .replace("\u00B5", "")
                .replace(Regex("""(?iu)(?<=[а-яё])\s*[abcefghjknopqrstuwyz]\s*(?=[а-яё])""")) { match ->
                    if (match.value.any(Char::isWhitespace)) " " else ""
                }
                .replace(Regex("""[ \t]{2,}"""), " ")
        }

    private fun needsResidualMobiCorruptionSanitizer(text: String): Boolean {
        text.forEachIndexed { index, ch ->
            if (isSuspiciousMobiSupplementGlyph(ch)) return true
            if (ch == '\u00B5') return true
            if (ch in '\u00C0'..'\u024F' && hasCyrillicNeighbor(text, index)) return true
            if (ch.lowercaseChar() in ASCII_MOBI_CORRUPTION_CHARS && hasCyrillicNeighbor(text, index)) return true
        }
        return false
    }

    private fun hasCyrillicNeighbor(text: String, index: Int): Boolean {
        val previous = previousNonWhitespace(text, index - 1)
        val next = nextNonWhitespace(text, index + 1)
        return previous?.isCyrillicLetter() == true || next?.isCyrillicLetter() == true
    }

    private fun previousNonWhitespace(text: String, start: Int): Char? {
        var index = start
        while (index >= 0) {
            val ch = text[index]
            if (!ch.isWhitespace()) return ch
            index--
        }
        return null
    }

    private fun nextNonWhitespace(text: String, start: Int): Char? {
        var index = start
        while (index < text.length) {
            val ch = text[index]
            if (!ch.isWhitespace()) return ch
            index++
        }
        return null
    }

    private fun Char.isCyrillicLetter(): Boolean =
        this in '\u0400'..'\u04FF'

    private fun mojibakeMarkerCount(text: String, stopAt: Int = Int.MAX_VALUE): Int {
        var count = 0
        var index = 0
        while (index < text.length) {
            val token = decodeLocalizedUtf8MojibakeAt(text, index)
            if (token != null) {
                count++
                if (count >= stopAt) return count
                index += token.sourceLength
            } else {
                index++
            }
        }
        return count
    }

    private fun cyrillicMojibakeMarkerCount(text: String, stopAt: Int = Int.MAX_VALUE): Int {
        var count = 0
        var index = 0
        while (index < text.lastIndex) {
            if (isLikelyCyrillicUtf8MojibakePairAt(text, index)) {
                count++
                if (count >= stopAt) return count
                index += 2
            } else {
                index++
            }
        }
        return count
    }

    private fun isLikelyCyrillicUtf8MojibakePairAt(text: String, index: Int): Boolean {
        if (index !in 0 until text.lastIndex) return false
        val next = text[index + 1]
        return when (text[index]) {
            'Р', 'С' -> singleByteInWindows1251(next) in 0x80..0xBF
            'Ð', 'Ñ' -> singleByteInWindows1252(next) in 0x80..0xBF
            else -> false
        }
    }

    private fun decodeLocalizedUtf8MojibakeAt(text: String, index: Int): LocalizedMojibakeToken? {
        LOCALIZED_UTF8_MOJIBAKE_SOURCE_CHARSETS.forEach { charset ->
            decodeLocalizedUtf8MojibakeAt(text, index, charset)?.let { return it }
        }
        return null
    }

    private fun decodeLocalizedUtf8MojibakeAt(
        text: String,
        index: Int,
        sourceCharset: LocalizedMojibakeCharset
    ): LocalizedMojibakeToken? {
        if (!isLocalizedMojibakeLead(text.getOrNull(index) ?: return null, sourceCharset)) return null

        val bytes = ByteArrayOutputStream(64)
        var cursor = index
        var sequenceCount = 0
        while (cursor < text.length) {
            val firstChar = text[cursor]
            if (!isLocalizedMojibakeLead(firstChar, sourceCharset)) break
            val firstByte = singleByteInLocalizedCharset(firstChar, sourceCharset) ?: break
            val sourceLength = utf8SequenceLength(firstByte) ?: break
            if (cursor + sourceLength > text.length) break

            var secondByte = -1
            var thirdByte = -1
            var fourthByte = -1
            var validSequence = true
            for (offset in 1 until sourceLength) {
                val nextByte = singleByteInLocalizedCharset(text[cursor + offset], sourceCharset)
                if (nextByte == null || nextByte !in 0x80..0xBF) {
                    validSequence = false
                    break
                }
                when (offset) {
                    1 -> secondByte = nextByte
                    2 -> thirdByte = nextByte
                    3 -> fourthByte = nextByte
                }
            }
            if (!validSequence) break

            bytes.write(firstByte)
            bytes.write(secondByte)
            if (sourceLength >= 3) bytes.write(thirdByte)
            if (sourceLength >= 4) bytes.write(fourthByte)
            cursor += sourceLength
            sequenceCount++
        }

        if (sequenceCount == 0) return null
        val decoded = runCatching { bytes.toByteArray().toString(Charsets.UTF_8) }.getOrNull() ?: return null
        if (decoded.isBlank() || '\uFFFD' in decoded) return null
        val source = text.substring(index, cursor)
        if (!isUsefulLocalizedMojibakeRepair(decoded, source)) return null
        return LocalizedMojibakeToken(decoded, cursor - index)
    }

    private fun utf8SequenceLength(firstByte: Int): Int? =
        when (firstByte) {
            in 0xC2..0xDF -> 2
            in 0xE0..0xEF -> 3
            in 0xF0..0xF4 -> 4
            else -> null
        }

    private fun isLocalizedMojibakeLead(char: Char, charset: LocalizedMojibakeCharset): Boolean =
        when (charset) {
            LocalizedMojibakeCharset.WINDOWS_1251 -> char == 'Р' || char == 'С' || char == 'В' || char == 'в'
            LocalizedMojibakeCharset.WINDOWS_1252 -> char == 'Ð' || char == 'Ñ' || char == 'Â' || char == 'â'
        }

    private fun singleByteInLocalizedCharset(char: Char, charset: LocalizedMojibakeCharset): Int? =
        when (charset) {
            LocalizedMojibakeCharset.WINDOWS_1251 -> singleByteInWindows1251(char)
            LocalizedMojibakeCharset.WINDOWS_1252 -> singleByteInWindows1252(char)
        }

    private fun singleByteInWindows1251(char: Char): Int? =
        when {
            char.code in 0x00..0x7F -> char.code
            char in '\u0410'..'\u044F' -> char.code - 0x0410 + 0xC0
            char == '\u0401' -> 0xA8
            char == '\u0451' -> 0xB8
            else -> CP1251_UTF8_MOJIBAKE_CONTINUATIONS.indexOf(char)
                .takeIf { it >= 0 }
                ?.let { 0x80 + it }
        }

    private fun singleByteInWindows1252(char: Char): Int? =
        when {
            char.code in 0x00..0x7F -> char.code
            char.code in 0xA0..0xFF -> char.code
            else -> when (char) {
                '\u20AC' -> 0x80
                '\u201A' -> 0x82
                '\u0192' -> 0x83
                '\u201E' -> 0x84
                '\u2026' -> 0x85
                '\u2020' -> 0x86
                '\u2021' -> 0x87
                '\u02C6' -> 0x88
                '\u2030' -> 0x89
                '\u0160' -> 0x8A
                '\u2039' -> 0x8B
                '\u0152' -> 0x8C
                '\u017D' -> 0x8E
                '\u2018' -> 0x91
                '\u2019' -> 0x92
                '\u201C' -> 0x93
                '\u201D' -> 0x94
                '\u2022' -> 0x95
                '\u2013' -> 0x96
                '\u2014' -> 0x97
                '\u02DC' -> 0x98
                '\u2122' -> 0x99
                '\u0161' -> 0x9A
                '\u203A' -> 0x9B
                '\u0153' -> 0x9C
                '\u017E' -> 0x9E
                '\u0178' -> 0x9F
                else -> null
            }
        }

    private fun isUsefulLocalizedMojibakeRepair(decoded: String, source: String): Boolean {
        if (decoded == source) return false
        return decoded.any { char ->
            char in '\u0400'..'\u04FF' ||
                char in setOf(
                    '\u00A0', '\u00AB', '\u00BB', '\u2013', '\u2014', '\u2018', '\u2019',
                    '\u201C', '\u201D', '\u2022', '\u2026', '\u2116'
                )
        }
    }

    private data class LocalizedMojibakeToken(
        val text: String,
        val sourceLength: Int
    )

    private data class DecodedChunk(
        val text: String,
        val encodingName: String,
        val score: Int = 0
    )

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
