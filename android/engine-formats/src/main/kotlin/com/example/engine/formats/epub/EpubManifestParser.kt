package com.example.engine.formats.epub

import java.net.URLDecoder

/**
 * Pure OPF manifest/spine parser for EPUB files.
 *
 * Extracted from EpubFormatReader so the XML/regex parsing logic can be
 * tested without ZIP/archive dependencies. All functions are stateless
 * and side-effect-free.
 */
internal object EpubManifestParser {

    /** Result of parsing an OPF document. */
    data class OpfManifest(
        /** id → href mapping from <item> elements. */
        val manifest: Map<String, String>,
        /** Ordered list of idref values from <itemref> elements (linear only). */
        val spine: List<String>,
        /** id of the NCX (EPUB2) or nav (EPUB3) document, if found. */
        val ncxId: String?
    )

    /**
     * Parses OPF XML using regex to extract manifest, spine, and NCX id.
     *
     * This is a fallback parser that works even when the XML is malformed.
     * The primary XML parser ([parseOpfXml]) is more accurate but requires
     * a proper XML parser.
     */
    fun parseOpfRegex(rawOpf: String, existingNcxId: String? = null): OpfManifest {
        val manifest = linkedMapOf<String, String>()
        val spine = mutableListOf<String>()
        var ncxId = existingNcxId

        val itemRegex = Regex("""<item\b([^>]*)/?>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val itemRefRegex = Regex("""<itemref\b([^>]*)/?>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val spineRegex = Regex("""<spine\b([^>]*)>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))

        spineRegex.find(rawOpf)?.groupValues?.getOrNull(1)?.let { attrs ->
            ncxId = ncxId ?: attrValue(attrs, "toc")
        }

        itemRegex.findAll(rawOpf).forEach { match ->
            val attrs = match.groupValues[1]
            val id = attrValue(attrs, "id") ?: return@forEach
            val href = attrValue(attrs, "href") ?: return@forEach
            manifest[id] = href
            val mediaType = attrValue(attrs, "media-type").orEmpty()
            val properties = attrValue(attrs, "properties").orEmpty()
            if (ncxId == null && mediaType.equals("application/x-dtbncx+xml", ignoreCase = true)) {
                ncxId = id
            }
            if (ncxId == null && properties.contains("nav", ignoreCase = true)) {
                ncxId = id
            }
        }

        itemRefRegex.findAll(rawOpf).forEach { match ->
            val attrs = match.groupValues[1]
            val idRef = attrValue(attrs, "idref") ?: return@forEach
            val linear = attrValue(attrs, "linear").orEmpty()
            if (!linear.equals("no", ignoreCase = true)) {
                spine += idRef
            }
        }

        return OpfManifest(manifest = manifest, spine = spine, ncxId = ncxId)
    }

    /**
     * Detects whether the EPUB was produced by a publisher (O'Reilly, etc.)
     * based on OPF text content and manifest structure.
     */
    fun detectPublisherEpub(
        opfText: String,
        manifest: Map<String, String>,
        spine: List<String>
    ): Boolean {
        val lowerOpf = opfText.lowercase()
        if ("oreilly" in lowerOpf || "early release" in lowerOpf) return true
        if (manifest.values.any { href ->
                href.contains("titlepage", ignoreCase = true) ||
                    href.contains("copyright-page", ignoreCase = true) ||
                    href.contains("toc01.html", ignoreCase = true)
            }) {
            return true
        }
        return spine.size >= 4 && manifest.values.any { it.contains("cover.xhtml", ignoreCase = true) }
    }

    /**
     * Detects whether the EPUB needs front-matter repair (cover/title page
     * not in the expected positions).
     */
    fun shouldRepairFrontMatter(
        opfText: String,
        manifest: Map<String, String>,
        spine: List<String>
    ): Boolean {
        if (!opfText.contains("cover.xhtml", ignoreCase = true)) return false
        if (!opfText.contains("ch1.xhtml", ignoreCase = true)) return false
        val normalizedEntries = spine.mapNotNull { idRef ->
            manifest[idRef]
                ?.substringBefore('#')
                ?.let { rawHref ->
                    val decoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
                    normalizePath(decoded)
                }
        }
        val coverIndex = normalizedEntries.indexOfFirst { it.endsWith("cover.xhtml", ignoreCase = true) }
        val titleIndex = normalizedEntries.indexOfFirst { it.endsWith("ch1.xhtml", ignoreCase = true) }
        if (coverIndex < 0 || titleIndex < 0) return false
        return coverIndex != 0 || titleIndex != 1
    }

    /**
     * Extracts the OPF path from container.xml content.
     */
    fun extractOpfPathFromContainer(containerXml: String): String? {
        return Regex("""full-path\s*=\s*["']([^"']+\.opf)["']""", RegexOption.IGNORE_CASE)
            .find(containerXml)
            ?.groupValues
            ?.getOrNull(1)
            ?.let { rawPath ->
                try { URLDecoder.decode(rawPath, "UTF-8") } catch (_: Exception) { rawPath }
            }
    }

    private fun attrValue(attrs: String, name: String): String? =
        Regex("""\b$name\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(attrs)
            ?.groupValues
            ?.getOrNull(1)
            ?.trim()
            ?.takeIf { it.isNotEmpty() }

    private fun normalizePath(path: String): String {
        val stack = ArrayDeque<String>()
        for (part in path.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }
}
