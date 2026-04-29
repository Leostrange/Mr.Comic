package com.example.engine.formats.text

import java.nio.charset.Charset
import kotlin.math.min

internal sealed interface MobiExtractionResult {
    data class Success(
        val content: String,
        val isMarkup: Boolean,
        val diagnostics: MobiDiagnostics
    ) : MobiExtractionResult

    data class Unsupported(
        val message: String
    ) : MobiExtractionResult
}

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

        val decodedChunks = mutableListOf<DecodedChunk>()
        val decoded = buildString {
            for (index in 1..limit) {
                val trimmedRecord = stripTrailingData(records[index], extraDataFlags)
                val chunk = when (compression) {
                    PALMDOC_COMPRESSION_NONE -> trimmedRecord
                    PALMDOC_COMPRESSION -> decompressPalmDoc(trimmedRecord)
                    else -> return MobiExtractionResult.Unsupported("This MOBI/AZW3 file uses unsupported compression: $compression.")
                }
                val decodedChunk = decodeText(chunk, textEncoding)
                decodedChunks += decodedChunk
                append(decodedChunk.text)
            }
        }

        val cleaned = decoded
            .replace("\u0000", "")
            .replace(Regex("[\\u0001-\\u0008\\u000B\\u000C\\u000E-\\u001F]"), "")
            .trim()
        val normalizedText = repairWholeTextMojibake(cleaned)

        if (normalizedText.isBlank()) {
            return MobiExtractionResult.Unsupported("Unable to extract readable text from MOBI/AZW3.")
        }

        val markup = extractMarkupFragment(normalizedText)
        val resolvedEncoding = decodedChunks
            .groupingBy { it.encodingName }
            .eachCount()
            .maxByOrNull { it.value }
            ?.key
            ?: declaredEncodingName(textEncoding)
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
        return flags.takeUnless { it == 0xFFFF } ?: 0
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

    private fun decodeText(bytes: ByteArray, encoding: Int): DecodedChunk {
        if (bytes.isEmpty()) {
            return DecodedChunk("", declaredEncodingName(encoding))
        }
        if (bytes.all(::isAsciiTextByte)) {
            return DecodedChunk(bytes.toString(Charsets.US_ASCII), declaredEncodingName(encoding), score = Int.MAX_VALUE / 4)
        }
        if (isValidUtf8(bytes)) {
            return DecodedChunk(bytes.toString(Charsets.UTF_8), Charsets.UTF_8.name(), score = Int.MAX_VALUE / 3)
        }

        val candidates = buildList {
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

        val best = candidates
            .map { charset ->
                val text = runCatching { bytes.toString(charset) }
                    .getOrElse { bytes.toString(Charsets.UTF_8) }
                DecodedChunk(text = text, encodingName = charset.name(), score = scoreDecodedText(text, charset))
            }
            .maxByOrNull(DecodedChunk::score)

        val resolved = best ?: DecodedChunk(bytes.toString(Charsets.UTF_8), Charsets.UTF_8.name())
        val repaired = repairUtf8Mojibake(resolved)
        return if (repaired.score > resolved.score) repaired else resolved
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
                ch in setOf('?', '�', '¤', '¦', '¨', '¬', '¯') -> {
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
            if (charset.name().equals("windows-1251", ignoreCase = true)) score += 40
            if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 10
            if (charset.name().equals("IBM866", ignoreCase = true)) score += 10
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
        val mojibakeMarkers = Regex("""(?:Р.|С.|Ð.|Ñ.)""")
        return mojibakeMarkers.findAll(text).count() >= 3
    }

    private fun repairWholeTextMojibake(text: String): String {
        if (!looksLikeUtf8Mojibake(text)) return text

        val originalPenalty = mojibakeMarkerCount(text)
        val originalScore = scoreDecodedText(text, Charsets.UTF_8)
        val repaired = listOf(
            Charset.forName("windows-1251"),
            Charset.forName("windows-1252"),
            Charsets.ISO_8859_1
        ).mapNotNull { sourceCharset ->
            runCatching {
                val candidate = text.toByteArray(sourceCharset).toString(Charsets.UTF_8)
                Triple(candidate, mojibakeMarkerCount(candidate), scoreDecodedText(candidate, Charsets.UTF_8))
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

    private fun mojibakeMarkerCount(text: String): Int =
        Regex("""(?:Р.|С.|Ð.|Ñ.)""").findAll(text).count()

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
