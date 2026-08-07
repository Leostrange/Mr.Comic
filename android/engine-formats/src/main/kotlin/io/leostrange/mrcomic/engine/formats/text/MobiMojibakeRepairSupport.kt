package io.leostrange.mrcomic.engine.formats.text

import java.io.ByteArrayOutputStream
import java.nio.charset.Charset

internal const val CP1251_UTF8_MOJIBAKE_CONTINUATIONS =
    "\u0402\u0403\u201A\u0453\u201E\u2026\u2020\u2021\u20AC\u2030\u0409\u2039\u040A\u040C\u040B\u040F" +
        "\u0452\u2018\u2019\u201C\u201D\u2022\u2013\u2014\uFFFD\u2122\u0459\u203A\u045A\u045C\u045B\u045F" +
        "\u00A0\u040E\u045E\u0408\u00A4\u0490\u00A6\u00A7\u0401\u00A9\u0404\u00AB\u00AC\u00AD\u00AE\u0407" +
        "\u00B0\u00B1\u0406\u0456\u0491\u00B5\u00B6\u00B7\u0451\u2116\u0454\u00BB\u0458\u0405\u0455\u0457"

internal const val ASCII_MOBI_CORRUPTION_CHARS = "abcefghjknopqrstuwyz"

internal enum class LocalizedMojibakeCharset {
    WINDOWS_1251,
    WINDOWS_1252
}

internal val LOCALIZED_UTF8_MOJIBAKE_SOURCE_CHARSETS = listOf(
    LocalizedMojibakeCharset.WINDOWS_1251,
    LocalizedMojibakeCharset.WINDOWS_1252
)

internal data class LocalizedMojibakeToken(
    val text: String,
    val sourceLength: Int
)

internal fun repairUtf8Mojibake(chunk: DecodedChunk): DecodedChunk {
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
                score = mobiScoreDecodedText(repairedText, Charsets.UTF_8)
            )
        }.getOrNull()
    }

    return repairedCandidates.maxByOrNull(DecodedChunk::score) ?: chunk
}

internal fun looksLikeUtf8Mojibake(text: String): Boolean {
    if (text.length < 6) return false
    return cyrillicMojibakeMarkerCount(text, stopAt = 3) >= 3
}

internal fun repairWholeTextMojibake(text: String): String {
    if (!looksLikeUtf8Mojibake(text)) return text

    val originalPenalty = cyrillicMojibakeMarkerCount(text)
    val originalScore = mobiScoreDecodedText(text, Charsets.UTF_8)
    val repaired = listOf(
        Charset.forName("windows-1251"),
        Charset.forName("windows-1252"),
        Charsets.ISO_8859_1
    ).mapNotNull { sourceCharset ->
        runCatching {
            val candidate = text.toByteArray(sourceCharset).toString(Charsets.UTF_8)
            Triple(candidate, cyrillicMojibakeMarkerCount(candidate), mobiScoreDecodedText(candidate, Charsets.UTF_8))
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

internal fun repairLocalizedUtf8Mojibake(text: String): String {
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

internal fun sanitizeResidualMobiCorruption(text: String): String =
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

internal fun needsResidualMobiCorruptionSanitizer(text: String): Boolean {
    text.forEachIndexed { index, ch ->
        if (isSuspiciousMobiSupplementGlyph(ch)) return true
        if (ch == '\u00B5') return true
        if (ch in '\u00C0'..'\u024F' && hasCyrillicNeighbor(text, index)) return true
        if (ch.lowercaseChar() in ASCII_MOBI_CORRUPTION_CHARS && hasCyrillicNeighbor(text, index)) return true
    }
    return false
}

internal fun hasCyrillicNeighbor(text: String, index: Int): Boolean {
    val previous = previousNonWhitespace(text, index - 1)
    val next = nextNonWhitespace(text, index + 1)
    return previous?.isCyrillicLetter() == true || next?.isCyrillicLetter() == true
}

internal fun previousNonWhitespace(text: String, start: Int): Char? {
    var index = start
    while (index >= 0) {
        val ch = text[index]
        if (!ch.isWhitespace()) return ch
        index--
    }
    return null
}

internal fun nextNonWhitespace(text: String, start: Int): Char? {
    var index = start
    while (index < text.length) {
        val ch = text[index]
        if (!ch.isWhitespace()) return ch
        index++
    }
    return null
}

internal fun Char.isCyrillicLetter(): Boolean =
    this in '\u0400'..'\u04FF'

internal fun mojibakeMarkerCount(text: String, stopAt: Int = Int.MAX_VALUE): Int {
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

internal fun cyrillicMojibakeMarkerCount(text: String, stopAt: Int = Int.MAX_VALUE): Int {
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

internal fun isLikelyCyrillicUtf8MojibakePairAt(text: String, index: Int): Boolean {
    if (index !in 0 until text.lastIndex) return false
    val next = text[index + 1]
    return when (text[index]) {
        'Р', 'С' -> singleByteInWindows1251(next) in 0x80..0xBF
        'Ð', 'Ñ' -> singleByteInWindows1252(next) in 0x80..0xBF
        else -> false
    }
}

internal fun decodeLocalizedUtf8MojibakeAt(text: String, index: Int): LocalizedMojibakeToken? {
    LOCALIZED_UTF8_MOJIBAKE_SOURCE_CHARSETS.forEach { charset ->
        decodeLocalizedUtf8MojibakeAt(text, index, charset)?.let { return it }
    }
    return null
}

internal fun decodeLocalizedUtf8MojibakeAt(
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

internal fun utf8SequenceLength(firstByte: Int): Int? =
    when (firstByte) {
        in 0xC2..0xDF -> 2
        in 0xE0..0xEF -> 3
        in 0xF0..0xF4 -> 4
        else -> null
    }

internal fun isLocalizedMojibakeLead(char: Char, charset: LocalizedMojibakeCharset): Boolean =
    when (charset) {
        LocalizedMojibakeCharset.WINDOWS_1251 -> char == 'Р' || char == 'С' || char == 'В' || char == 'в'
        LocalizedMojibakeCharset.WINDOWS_1252 -> char == 'Ð' || char == 'Ñ' || char == 'Â' || char == 'â'
    }

internal fun singleByteInLocalizedCharset(char: Char, charset: LocalizedMojibakeCharset): Int? =
    when (charset) {
        LocalizedMojibakeCharset.WINDOWS_1251 -> singleByteInWindows1251(char)
        LocalizedMojibakeCharset.WINDOWS_1252 -> singleByteInWindows1252(char)
    }

internal fun singleByteInWindows1251(char: Char): Int? =
    when {
        char.code in 0x00..0x7F -> char.code
        char in '\u0410'..'\u044F' -> char.code - 0x0410 + 0xC0
        char == '\u0401' -> 0xA8
        char == '\u0451' -> 0xB8
        else -> CP1251_UTF8_MOJIBAKE_CONTINUATIONS.indexOf(char)
            .takeIf { it >= 0 }
            ?.let { 0x80 + it }
    }

internal fun singleByteInWindows1252(char: Char): Int? =
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

internal fun isUsefulLocalizedMojibakeRepair(decoded: String, source: String): Boolean {
    if (decoded == source) return false
    return decoded.any { char ->
        char in '\u0400'..'\u04FF' ||
            char in setOf(
                '\u00A0', '\u00AB', '\u00BB', '\u2013', '\u2014', '\u2018', '\u2019',
                '\u201C', '\u201D', '\u2022', '\u2026', '\u2116'
            )
    }
}
