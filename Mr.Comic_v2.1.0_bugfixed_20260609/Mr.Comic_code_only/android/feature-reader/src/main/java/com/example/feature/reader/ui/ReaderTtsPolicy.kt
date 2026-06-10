package com.example.feature.reader.ui

private val TTS_BLOCK_TAG_REGEX = Regex("(?is)<(script|style)[^>]*>.*?</\\1>")
private val TTS_BREAK_TAG_REGEX = Regex("(?i)<\\s*/?\\s*(br|p|div|li|h1|h2|h3|h4|h5|h6)\\b[^>]*>")
private val TTS_ANY_TAG_REGEX = Regex("(?is)<[^>]+>")
private val TTS_WHITESPACE_REGEX = Regex("[\\t\\x0B\\f\\r ]+")

internal fun extractReaderTtsText(rawHtml: String?): String {
    if (rawHtml.isNullOrBlank()) return ""
    return rawHtml
        .replace(TTS_BLOCK_TAG_REGEX, " ")
        .replace(TTS_BREAK_TAG_REGEX, "\n")
        .replace(TTS_ANY_TAG_REGEX, " ")
        .replace("&nbsp;", " ")
        .replace("&amp;", "&")
        .replace("&lt;", "<")
        .replace("&gt;", ">")
        .replace("&quot;", "\"")
        .replace("&#39;", "'")
        .lineSequence()
        .map {
            it.replace(TTS_WHITESPACE_REGEX, " ")
                .replace(Regex("\\s+([.,!?;:])"), "$1")
                .trim()
        }
        .filter { it.isNotBlank() }
        .joinToString("\n")
}

internal fun buildReaderTtsChunks(
    rawHtml: String?,
    maxChars: Int = 220
): List<String> {
    val normalizedMax = maxChars.coerceAtLeast(40)
    val text = extractReaderTtsText(rawHtml)
    if (text.isBlank()) return emptyList()
    val result = mutableListOf<String>()
    text.split('\n')
        .map { it.trim() }
        .filter { it.isNotBlank() }
        .forEach { paragraph ->
            appendReaderTtsParagraphChunks(
                paragraph = paragraph,
                maxChars = normalizedMax,
                output = result
            )
        }
    return result
}

private fun appendReaderTtsParagraphChunks(
    paragraph: String,
    maxChars: Int,
    output: MutableList<String>
) {
    if (paragraph.length <= maxChars) {
        output += paragraph
        return
    }
    val sentences = paragraph.split(Regex("(?<=[.!?。！？])\\s+"))
        .map { it.trim() }
        .filter { it.isNotBlank() }
    if (sentences.isEmpty()) {
        appendReaderTtsWordChunks(paragraph, maxChars, output)
        return
    }
    var current = StringBuilder()
    sentences.forEach { sentence ->
        if (sentence.length > maxChars) {
            if (current.isNotBlank()) {
                output += current.toString().trim()
                current = StringBuilder()
            }
            appendReaderTtsWordChunks(sentence, maxChars, output)
            return@forEach
        }
        val candidate = if (current.isBlank()) sentence else "${current} $sentence"
        if (candidate.length > maxChars) {
            output += current.toString().trim()
            current = StringBuilder(sentence)
        } else {
            current = StringBuilder(candidate)
        }
    }
    if (current.isNotBlank()) {
        output += current.toString().trim()
    }
}

private fun appendReaderTtsWordChunks(
    text: String,
    maxChars: Int,
    output: MutableList<String>
) {
    val words = text.split(' ')
        .map { it.trim() }
        .filter { it.isNotBlank() }
    if (words.isEmpty()) return
    var current = StringBuilder()
    words.forEach { word ->
        if (word.length > maxChars) {
            if (current.isNotBlank()) {
                output += current.toString().trim()
                current = StringBuilder()
            }
            word.chunked(maxChars).forEach { output += it }
            return@forEach
        }
        val candidate = if (current.isBlank()) word else "${current} $word"
        if (candidate.length > maxChars) {
            output += current.toString().trim()
            current = StringBuilder(word)
        } else {
            current = StringBuilder(candidate)
        }
    }
    if (current.isNotBlank()) {
        output += current.toString().trim()
    }
}
