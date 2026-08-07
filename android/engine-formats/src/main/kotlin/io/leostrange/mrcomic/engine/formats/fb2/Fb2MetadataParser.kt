package io.leostrange.mrcomic.engine.formats.fb2

/**
 * FB2 metadata extraction (title, author, language, genre) from XML header.
 * Extracted from Fb2FormatReader.kt.
 */
internal object Fb2MetadataParser {
    private val tagRe = Regex("<([A-Za-z0-9:_-]+)(?:\\s[^>]*)?>(.*?)</\\1>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val descriptionRe = Regex("<description(?:\\s[^>]*)?>(.*?)</description>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val titleInfoRe = Regex("<title-info(?:\\s[^>]*)?>(.*?)</title-info>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val authorRe = Regex("<author(?:\\s[^>]*)?>(.*?)</author>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))

    fun extract(xml: String): Map<String, String> {
        val description = descriptionRe.find(xml)?.groupValues?.get(1).orEmpty()
        val titleInfo = titleInfoRe.find(description)?.groupValues?.get(1).orEmpty()
        return buildMap {
            findTag(titleInfo, "book-title")?.let { put("title", it) }
            findTag(titleInfo, "lang")?.let { put("language", it) }
            findTag(titleInfo, "genre")?.let { put("genre", it) }
            extractAuthor(titleInfo)?.let { put("author", it) }
        }
    }

    private fun extractAuthor(titleInfo: String): String? {
        val author = authorRe.find(titleInfo)?.groupValues?.get(1).orEmpty()
        val parts = listOf("first-name", "middle-name", "last-name", "nickname")
            .mapNotNull { findTag(author, it) }
        return parts.joinToString(" ").takeIf { it.isNotBlank() }
    }

    private fun findTag(xml: String, tag: String): String? =
        tagRe.findAll(xml)
            .firstOrNull { it.groupValues[1].equals(tag, ignoreCase = true) }
            ?.groupValues
            ?.get(2)
            ?.stripTags()
            ?.xmlUnescape()
            ?.trim()
            ?.takeIf { it.isNotBlank() }

    private fun String.stripTags(): String = replace(Regex("<[^>]+>"), " ")

    private fun String.xmlUnescape(): String =
        replace("&lt;", "<")
            .replace("&gt;", ">")
            .replace("&quot;", "\"")
            .replace("&apos;", "'")
            .replace("&amp;", "&")
}
