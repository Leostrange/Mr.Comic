package io.leostrange.mrcomic.engine.formats.text

import java.io.ByteArrayOutputStream
import java.nio.charset.Charset

internal const val MAX_MOBI_DECOMPRESSED_TEXT_BYTES = 64 * 1024 * 1024
internal const val MAX_MOBI_DECODED_TEXT_CHARS = 32 * 1024 * 1024

internal data class DecodedChunk(
    val text: String,
    val encodingName: String,
    val score: Int = 0
)

internal fun decodeTextRecords(chunks: List<ByteArray>, encoding: Int): DecodedChunk {
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

internal fun decodeTextRecord(bytes: ByteArray, encoding: Int): DecodedChunk {
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
        score = mobiScoreDecodedText(bytes.toString(Charsets.UTF_8), Charsets.UTF_8)
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
            DecodedChunk(text = text, encodingName = charset.name(), score = mobiScoreDecodedText(text, charset))
        }
        .maxByOrNull(DecodedChunk::score)

    val resolved = best ?: DecodedChunk(bytes.toString(Charsets.UTF_8), Charsets.UTF_8.name())
    if (encoding == 65001 && utf8Lenient.score + 300 >= resolved.score) {
        return utf8Lenient
    }
    val repaired = repairUtf8Mojibake(resolved)
    return if (repaired.score > resolved.score) repaired else resolved
}

internal fun declaredEncodingName(encoding: Int): String = encodingToCharset(encoding).name()

internal fun isAsciiTextByte(value: Byte): Boolean {
    val code = value.toInt() and 0xFF
    return code == 0x09 || code == 0x0A || code == 0x0D || code in 0x20..0x7E
}

internal fun isValidUtf8(bytes: ByteArray): Boolean {
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

internal fun hasUtf8Continuation(bytes: ByteArray, start: Int, count: Int): Boolean {
    if (start + count >= bytes.size) return false
    for (offset in 1..count) {
        val next = bytes[start + offset].toInt() and 0xFF
        if (next !in 0x80..0xBF) return false
    }
    return true
}

internal fun encodingToCharset(encoding: Int): Charset = when (encoding) {
    65001 -> Charsets.UTF_8
    65005, 1200 -> Charsets.UTF_16LE
    1201 -> Charsets.UTF_16BE
    1252 -> Charset.forName("windows-1252")
    else -> runCatching { Charset.forName("windows-$encoding") }.getOrElse { Charsets.UTF_8 }
}

internal fun mobiScoreDecodedText(text: String, charset: Charset): Int {
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

internal fun isSuspiciousMobiSupplementGlyph(ch: Char): Boolean =
    ch in setOf(
        '\u0402', '\u0403', '\u0409', '\u040A', '\u040B', '\u040C', '\u040F',
        '\u0452', '\u0453', '\u0459', '\u045A', '\u045B', '\u045C', '\u045F',
        '\u047B', '\u0475', '\u0477', '\u0491'
    )


