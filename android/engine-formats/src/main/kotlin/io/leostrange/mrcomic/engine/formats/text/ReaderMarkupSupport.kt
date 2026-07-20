package io.leostrange.mrcomic.engine.formats.text

internal fun xmlTextToPlain(xml: String): String {
    val lineBreaksRestored = xml
        .replace(Regex("""<w:(?:tab)\b[^>]*/>""", RegexOption.IGNORE_CASE), "\t")
        .replace(Regex("""<w:(?:br|cr)\b[^>]*/>""", RegexOption.IGNORE_CASE), "\n")
        .replace(Regex("""<text:tab\b[^>]*/>""", RegexOption.IGNORE_CASE), "\t")
        .replace(Regex("""<text:line-break\b[^>]*/>""", RegexOption.IGNORE_CASE), "\n")
    val stripped = lineBreaksRestored
        .replace(Regex("""<[^>]+>"""), "")
        .replace('\u00A0', ' ')
    return decodeXmlEntities(stripped)
        .replace(Regex("""[ \t]+\n"""), "\n")
        .replace(Regex("""\n{3,}"""), "\n\n")
        .trim()
}

internal fun decodeXmlEntities(text: String): String {
    val numericDecoded = Regex("""&#(x?[0-9A-Fa-f]+);""").replace(text) { match ->
        val raw = match.groupValues[1]
        val codePoint = if (raw.startsWith("x", ignoreCase = true)) {
            raw.drop(1).toIntOrNull(16)
        } else {
            raw.toIntOrNull()
        }
        codePoint?.let { runCatching { Character.toChars(it).concatToString() }.getOrNull() } ?: match.value
    }
    return numericDecoded
        .replace("&amp;", "&")
        .replace("&lt;", "<")
        .replace("&gt;", ">")
        .replace("&quot;", "\"")
        .replace("&apos;", "'")
}

internal fun visibleReaderText(html: String): String = html
    .replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
    .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
    .replace(Regex("<[^>]+>"), " ")
    .replace(Regex("\\s+"), " ")
    .trim()
