package com.example.engine.formats.epub

import com.example.engine.formats.base.charset.detectBomCharset
import com.example.engine.formats.base.charset.hasUtf8Bom
import com.example.engine.formats.base.charset.isStrictUtf8
import java.nio.charset.Charset

/**
 * EPUB-specific charset detection and text decoding.
 *
 * Extracted from EpubFormatReader to isolate the charset detection logic
 * from the ZIP/archive handling. Uses base charset helpers from
 * [com.example.engine.formats.base.charset].
 */

internal fun decodeEpubText(bytes: ByteArray): String =
    bytes.toString(detectEpubTextCharset(bytes)).removePrefix("\uFEFF")

internal fun detectEpubTextCharset(bytes: ByteArray): Charset {
    detectBomCharset(bytes)?.let { return it }

    val declared = declaredEpubCharset(bytes) ?: Charsets.UTF_8
    if (declared != Charsets.UTF_8) {
        return declared
    }

    val payload = if (hasUtf8Bom(bytes)) bytes.copyOfRange(3, bytes.size) else bytes
    if (isStrictUtf8(payload)) {
        return Charsets.UTF_8
    }

    return chooseReadableEpubFallbackCharset(bytes)
}

internal fun declaredEpubCharset(bytes: ByteArray): Charset? {
    val peekLength = bytes.size.coerceAtMost(2048)
    if (peekLength <= 0) return null
    val peek = bytes.copyOfRange(0, peekLength).toString(Charsets.ISO_8859_1)
    val name = Regex(
        """(?:encoding|charset)\s*=\s*["']?([A-Za-z0-9._:-]+)""",
        RegexOption.IGNORE_CASE
    ).find(peek)?.groupValues?.getOrNull(1)?.trim()?.trim('"', '\'')
        ?.takeIf { it.isNotBlank() }
        ?: return null
    return runCatching { Charset.forName(name) }.getOrNull()
}

internal fun chooseReadableEpubFallbackCharset(bytes: ByteArray): Charset {
    // Use lowercased name for dedup to avoid losing cp1251 when
    // Charset.forName("windows-1251").name() != Charset.forName("cp1251").name() (P1 #5)
    val candidates = listOfNotNull(
        charsetOrNull("windows-1251"),
        charsetOrNull("windows-1252"),
        Charsets.ISO_8859_1,
        charsetOrNull("KOI8-R"),
        charsetOrNull("IBM866"),
        charsetOrNull("Shift_JIS"),
        charsetOrNull("GB18030"),
        charsetOrNull("Big5"),
        charsetOrNull("EUC-KR")
    ).distinctBy { it.name().lowercase() }

    return candidates
        .map { charset -> charset to scoreEpubDecodedText(bytes.toString(charset), charset) }
        .maxByOrNull { it.second }
        ?.first
        ?: charsetOrNull("windows-1252")
        ?: Charsets.ISO_8859_1
}

internal fun charsetOrNull(name: String): Charset? =
    runCatching { Charset.forName(name) }.getOrNull()

internal fun scoreEpubDecodedText(text: String, charset: Charset): Int {
    var score = 0
    var basicLatinLetters = 0
    var extendedLatinLetters = 0
    var cyrillicLetters = 0
    var cjkLetters = 0
    var kanaLetters = 0
    var hangulLetters = 0
    var controls = 0
    var replacement = 0

    text.forEach { ch ->
        when {
            ch == '\uFFFD' -> {
                replacement++
                score -= 160
            }
            ch == '\n' || ch == '\r' || ch == '\t' -> score += 1
            ch.isISOControl() -> {
                controls++
                score -= 48
            }
            ch.isLetter() -> {
                score += 7
                when (ch) {
                    in '\u0041'..'\u007A' -> basicLatinLetters++
                    in '\u00C0'..'\u024F' -> extendedLatinLetters++
                    in '\u0400'..'\u04FF' -> cyrillicLetters++
                    in '\u3040'..'\u30FF' -> kanaLetters++
                    in '\u3400'..'\u9FFF' -> cjkLetters++
                    in '\uAC00'..'\uD7AF' -> hangulLetters++
                }
            }
            ch.isDigit() -> score += 3
            ch.isWhitespace() -> score += 1
            ch in listOf('<', '>', '/', '=', '"', '\'', '-', '_', '.', ',', ':', ';', '&') -> score += 2
            else -> score += 1
        }
    }

    if (text.contains("<html", ignoreCase = true) || text.contains("<package", ignoreCase = true)) score += 60
    if (text.contains("<body", ignoreCase = true) || text.contains("<manifest", ignoreCase = true)) score += 40

    val visibleText = Regex("<[^>]+>").replace(text, " ")
    val visibleBasicLatinLetters = visibleText.count { it in '\u0041'..'\u007A' }
    val visibleExtendedLatinLetters = visibleText.count { it in '\u00C0'..'\u024F' }
    val visibleCyrillicLetters = visibleText.count { it in '\u0400'..'\u04FF' }
    val visibleCjkLetters = visibleText.count { it in '\u3400'..'\u9FFF' }
    val visibleKanaLetters = visibleText.count { it in '\u3040'..'\u30FF' }
    val visibleHangulLetters = visibleText.count { it in '\uAC00'..'\uD7AF' }
    val visibleLatinLetters = visibleBasicLatinLetters + visibleExtendedLatinLetters

    if (
        visibleCyrillicLetters >= 4 &&
        (visibleCyrillicLetters >= visibleLatinLetters * 2 || visibleCyrillicLetters > visibleBasicLatinLetters)
    ) {
        score += visibleCyrillicLetters * 4
        if (charset.name().equals("windows-1251", ignoreCase = true)) score += 80
        if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 35
        if (charset.name().equals("IBM866", ignoreCase = true)) score += 20
    }
    if (
        visibleExtendedLatinLetters >= 2 &&
        visibleExtendedLatinLetters <= visibleBasicLatinLetters &&
        visibleCyrillicLetters == 0 &&
        charset.name().equals("windows-1252", ignoreCase = true)
    ) {
        score += visibleExtendedLatinLetters * 5 + 45
    }
    if (
        visibleExtendedLatinLetters > visibleBasicLatinLetters &&
        charset.name().equals("windows-1252", ignoreCase = true)
    ) {
        score -= visibleExtendedLatinLetters * 8
    }
    if (
        visibleCyrillicLetters in 1..visibleLatinLetters &&
        charset.name().equals("windows-1251", ignoreCase = true)
    ) {
        score -= visibleCyrillicLetters * 14
    }
    if (visibleCjkLetters + visibleKanaLetters + visibleHangulLetters >= 2) {
        score += (visibleCjkLetters + visibleKanaLetters + visibleHangulLetters) * 6
        val charsetName = charset.name().lowercase()
        if (charsetName.contains("jis") || charsetName.contains("gb") ||
            charsetName.contains("big5") || charsetName.contains("euc")
        ) {
            score += 70
        }
    }

    score -= controls * 12
    score -= replacement * 25
    return score
}
