package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.charset.bomLength
import io.leostrange.mrcomic.engine.formats.base.charset.detectBomCharset
import io.leostrange.mrcomic.engine.formats.base.charset.isStrictUtf8
import io.leostrange.mrcomic.engine.formats.base.charset.looksLikeUtf16
import java.nio.charset.Charset

/**
 * Text charset detection, mojibake repair, and MIME type utilities.
 *
 * Extracted from TextFormatReader to reduce its size.
 * Pure functions with no instance state dependency.
 */

internal val SINGLE_BYTE_TEXT_CHARSETS = listOf(
    Charset.forName("windows-1252"),
    Charset.forName("windows-1251"),
    Charset.forName("KOI8-R"),
    Charset.forName("IBM866"),
    Charsets.ISO_8859_1
)

internal fun textReaderMimeTypeFor(extension: String): String = when (extension.lowercase()) {
    "html", "htm" -> "text/html"
    "css" -> "text/css"
    "js" -> "application/javascript"
    "txt" -> "text/plain"
    "xml" -> "application/xml"
    "svg" -> "image/svg+xml"
    "jpg", "jpeg" -> "image/jpeg"
    "png" -> "image/png"
    "gif" -> "image/gif"
    "webp" -> "image/webp"
    "avif" -> "image/avif"
    "bmp" -> "image/bmp"
    "ico" -> "image/x-icon"
    "ttf" -> "font/ttf"
    "otf" -> "font/otf"
    "woff" -> "font/woff"
    "woff2" -> "font/woff2"
    else -> "application/octet-stream"
}

internal fun decodeTextBytes(bytes: ByteArray): String {
    if (bytes.isEmpty()) return ""
    detectBomCharset(bytes)?.let { charset ->
        return repairCommonTextMojibake(bytes.copyOfRange(bomLength(bytes), bytes.size).toString(charset))
    }

    if (looksLikeUtf16(bytes, littleEndian = true)) return repairCommonTextMojibake(bytes.toString(Charsets.UTF_16LE))
    if (looksLikeUtf16(bytes, littleEndian = false)) return repairCommonTextMojibake(bytes.toString(Charsets.UTF_16BE))
    if (isStrictUtf8(bytes)) return repairCommonTextMojibake(bytes.toString(Charsets.UTF_8))

    // Single-byte-charset fallback. Apply repairCommonTextMojibake EXACTLY ONCE per
    // branch: a second unconditional pass over already-repaired text used to risk
    // picking a different candidate and corrupting valid text.
    val bestResult = SINGLE_BYTE_TEXT_CHARSETS
        .map { charset ->
            val text = bytes.toString(charset)
            val score = scoreDecodedText(text, charset)
            Triple(charset, text, score)
        }
        .maxByOrNull { it.third }

    return bestResult?.let { (charset, text, score) ->
        if (score >= 50) {
            repairCommonTextMojibake(text)
        } else {
            repairCommonTextMojibake(bytes.toString(Charsets.UTF_8))
        }
    } ?: repairCommonTextMojibake(bytes.toString(Charsets.UTF_8))
}

internal fun repairCommonTextMojibake(text: String): String {
    if (!looksLikeCommonMojibake(text)) return text
    // Also attempt repair for valid UTF-8 that may be double-encoded
    val candidates = buildList {
        add(text)
        listOf("windows-1252", "windows-1251", "ISO-8859-1", "ISO-8859-5", "KOI8-R").forEach { charsetName ->
            val repaired = runCatching {
                text.toByteArray(Charset.forName(charsetName)).toString(Charsets.UTF_8)
            }.getOrNull()
            if (!repaired.isNullOrBlank() && '\uFFFD' !in repaired) add(repaired)
        }
    }
    val originalScore = scoreDecodedText(text, Charsets.UTF_8)
    // Lower threshold for short texts: minimum 30, scale up for longer texts
    val threshold = if (text.length < 500) 30 else 80
    // Pick the best candidate.  Tie-breaking rule: when two candidates score
    // equally the one that is NOT mojibake wins.  This matters for double-encoded
    // Cyrillic (UTF-8 → misread as windows-1252 → re-encoded UTF-8) where the
    // mojibake "ÐŸÑ€Ð¸Ð²ÐµÑ‚" and the clean recovery "Привет" score identically
    // (the Latin letters Ð/Ñ count as valid), and the original text won — recovery
    // never happened.
    var best = candidates.firstOrNull() ?: return text
    var bestScore = scoreDecodedText(best, Charsets.UTF_8)
    var bestIsMojibake = looksLikeCommonMojibake(best)
    for (i in 1 until candidates.size) {
        val c = candidates[i]
        val s = scoreDecodedText(c, Charsets.UTF_8)
        val m = looksLikeCommonMojibake(c)
        if (s > bestScore || (s == bestScore && !m && bestIsMojibake)) {
            best = c; bestScore = s; bestIsMojibake = m
        }
    }
    if (best == text) return text
    // Standard improvement-based acceptance.
    if (bestScore > originalScore + threshold) return best
    // looksLikeCommonMojibake already proved the text is corrupted, and the candidate
    // decoded cleanly without replacement glyphs (filtered above). For the common
    // UTF-8-as-windows-1252 Cyrillic case the mojibake scores deceptively high (Latin
    // letters Ð/Ñ each count as valid), so a tiny gap can still mean real recovery.
    // Trust a clean (non-mojibake) candidate when it is at least as good as the
    // mojibake; the tie-break above already preferred it over the input.
    if ('\uFFFD' !in best && !bestIsMojibake && bestScore >= originalScore) return best
    return text
}

internal fun looksLikeCommonMojibake(text: String): Boolean {
    if (text.length < 4) return false
    // Cyrillic mojibake patterns (UTF-8 read as windows-1252)
    val suspiciousMarkers = listOf("Ð", "Ñ", "Рџ", "Рђ", "СЂ", "СЃ", "Рё", "Рµ")
    val markerHits = suspiciousMarkers.count { it in text }
    if (markerHits >= 2) return true
    val cyrillicLetters = text.count { it in '\u0400'..'\u04FF' }
    val mojibakePairs = Regex("""[РС][\u0400-\u04FF]""").findAll(text).count()
    if (cyrillicLetters > 0 && mojibakePairs >= 3) return true
    // Double-encoding detection: UTF-8 bytes that were decoded as latin-1 and re-encoded
    // Pattern: \xC3\x90\xC2 or \xC3\x91\xC2 (common in double-encoded Cyrillic)
    if (text.contains("\u00C3\u0090") || text.contains("\u00C3\u0091") ||
        text.contains("\u00C3\u00C2")) return true
    // Latin supplement characters that shouldn't appear in normal text
    val latinSupplement = text.count { it in '\u0080'..'\u00FF' }
    if (latinSupplement > text.length / 4 && latinSupplement >= 3) return true
    return false
}

internal fun scoreDecodedText(text: String, charset: Charset): Int {
    var score = 0
    var latinLetters = 0
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
                if (ch in '\u0041'..'\u024F') latinLetters++
                if (ch in '\u0400'..'\u04FF') cyrillicLetters++
                if (ch in "аеинorstклмп".toSet()) score += 2
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
            ch in setOf('\u003F', '\uFFFD', '\u00A4', '\u00A6', '\u00A8', '\u00AC', '\u00AF') -> {
                suspicious++
                score -= 8
            }
            ch in setOf('.', ',', ':', ';', '!', '?') -> score += 1
            else -> {
                printable++
                score += 2
            }
        }
    }

    if (cyrillicLetters > latinLetters * 2) {
        score += cyrillicLetters * 3
        if (charset.name().equals("windows-1251", ignoreCase = true)) score += 60
        if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 40
        if (charset.name().equals("IBM866", ignoreCase = true)) score += 30
    } else if (latinLetters >= cyrillicLetters) {
        if (charset.name().equals("windows-1252", ignoreCase = true)) score += 20
        if (charset == Charsets.ISO_8859_1) score += 10
    }

    score += printable
    score -= suspicious * 6
    score -= controls * 10
    return score
}
