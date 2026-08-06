package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.FormatReader
import java.nio.charset.Charset

// ── RTF non-content destination groups ────────────────────────────────────────
private val RTF_SKIP_DESTINATIONS = setOf(
    "fonttbl", "colortbl", "stylesheet", "info", "pict",
    "header", "footer", "headerl", "headerr", "headerf",
    "footerl", "footerr", "footerf", "revtbl", "rsidtbl",
    "listtable", "listoverridetable", "pgdsctbl", "latentstyles",
    "mmathPr", "fldinst"
)

/**
 * State-machine RTF → plain-text converter.
 *
 * Handles:
 *  • \'XX  hex-encoded bytes decoded via the document codepage (\ansicpgN, default cp1252)
 *  • \uN   Unicode escapes (signed short, negative → +65536)
 *  • Group depth tracking — non-content destinations (\fonttbl, \pict, \fldinst, …) are skipped
 *  • \*    ignorable-destination marker
 *  • Smart quotes, dashes, bullets mapped to Unicode
 */
internal fun TextFormatReader.rtfToPlainText(raw: String): String {
    val codepage = Regex("""\\ansicpg(\d+)""").find(raw)
        ?.groupValues?.get(1)?.toIntOrNull() ?: 1252
    val charset = runCatching { Charset.forName("cp$codepage") }
        .getOrElse { Charsets.ISO_8859_1 }

    val out = StringBuilder(raw.length / 4)
    var i = 0
    var depth = 0
    // Stack: stores the `skipping` flag that was active when each '{' was entered,
    // so we can restore it correctly on '}'.
    val groupSkipStack = ArrayDeque<Boolean>()
    var skipping = false

    while (i < raw.length) {
        when (raw[i]) {
            '{' -> {
                groupSkipStack.addLast(skipping)
                depth++
                i++
                // Peek at the first control word in this group to detect destinations.
                if (!skipping) {
                    val peek = raw.substring(i, minOf(i + 60, raw.length))
                    val destMatch = Regex("""^\s*\\(\*\s*\\[a-z]+|[a-z]+)""").find(peek)
                    if (destMatch != null) {
                        val firstWord = destMatch.groupValues[1]
                            .trimStart().removePrefix("*").trimStart().removePrefix("\\")
                        if (firstWord.startsWith("*") || firstWord in RTF_SKIP_DESTINATIONS) {
                            skipping = true
                        }
                    }
                }
            }
            '}' -> {
                skipping = groupSkipStack.removeLastOrNull() ?: false
                depth--
                i++
            }
            '\\' -> {
                i++
                if (i >= raw.length) break
                val nc = raw[i]
                when {
                    nc == '\'' -> {
                        // \'XX — single byte encoded in current codepage
                        if (!skipping && i + 2 < raw.length) {
                            val hex = raw.substring(i + 1, i + 3)
                            val b = hex.toIntOrNull(16)?.and(0xFF)?.toByte()
                            if (b != null) out.append(byteArrayOf(b).toString(charset))
                        }
                        i += 3
                    }
                    nc == '*' -> {
                        // \* — mark current group as ignorable destination
                        skipping = true
                        i++
                    }
                    nc == '-' -> i++   // optional hyphen — discard
                    nc == '_' -> { if (!skipping) out.append('\u2011'); i++ }  // non-breaking hyphen
                    nc == '~' -> { if (!skipping) out.append('\u00A0'); i++ }  // non-breaking space
                    nc == '{' || nc == '}' || nc == '\\' -> { if (!skipping) out.append(nc); i++ }
                    nc == '\r' || nc == '\n' -> { if (!skipping) out.append("\n\n"); i++ }
                    nc.isLetter() -> {
                        val wStart = i
                        while (i < raw.length && raw[i].isLetter()) i++
                        val word = raw.substring(wStart, i)
                        // Parse optional signed integer parameter
                        val pStart = i
                        if (i < raw.length && (raw[i] == '-' || raw[i] == '+')) i++
                        while (i < raw.length && raw[i].isDigit()) i++
                        val param = if (i > pStart) raw.substring(pStart, i).toIntOrNull() else null
                        if (i < raw.length && raw[i] == ' ') i++   // consume space delimiter

                        // Check non-content destinations that appear without being in a group header
                        if (!skipping && word in RTF_SKIP_DESTINATIONS) {
                            skipping = true
                        }

                        if (!skipping) {
                            when (word) {
                                "u" -> {
                                    // Unicode escape: signed short (negative → +65536)
                                    val cp = param?.let { if (it < 0) it + 65536 else it } ?: 63
                                    out.append(runCatching { Character.toChars(cp).concatToString() }.getOrDefault("?"))
                                    // Skip the replacement character(s) that follow
                                    if (i < raw.length) {
                                        if (raw[i] == '\\' && i + 1 < raw.length && raw[i + 1] == '\'') {
                                            i += 4  // skip \'XX replacement
                                        } else if (raw[i] != '{' && raw[i] != '}' && raw[i] != '\\') {
                                            i++     // skip single-char replacement
                                        }
                                    }
                                }
                                "par", "pard"      -> out.append("\n\n")
                                "line"             -> out.append('\n')
                                "tab"              -> out.append('\t')
                                "page", "sect",
                                "column"           -> out.append("\n\n")
                                "cell", "nestcell" -> out.append('\t')
                                "row", "nestrow"   -> out.append('\n')
                                "bullet"           -> out.append('\u2022')
                                "endash"           -> out.append('\u2013')
                                "emdash"           -> out.append('\u2014')
                                "lquote"           -> out.append('\u2018')
                                "rquote"           -> out.append('\u2019')
                                "ldblquote"        -> out.append('\u201C')
                                "rdblquote"        -> out.append('\u201D')
                                "enspace",
                                "emspace",
                                "qmspace"          -> out.append(' ')
                            }
                        }
                    }
                    else -> i++
                }
            }
            '\r', '\n' -> i++   // bare newlines are not content in RTF
            else -> {
                if (!skipping) out.append(raw[i])
                i++
            }
        }
    }

    return out.toString()
        .replace(Regex("""[ \t]+(?=\n)"""), "")
        .replace(Regex("""\n{3,}"""), "\n\n")
        .replace('\u00A0', ' ')
        .trim()
}
