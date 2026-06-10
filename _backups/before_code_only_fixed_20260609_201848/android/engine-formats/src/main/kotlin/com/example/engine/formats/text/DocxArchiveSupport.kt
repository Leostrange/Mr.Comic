package com.example.engine.formats.text

import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser as JsoupXmlParser
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.util.Base64
import java.util.zip.ZipInputStream

private const val MAX_DOCX_MAIN_XML_ENTRY_BYTES = 16 * 1024 * 1024
private const val MAX_DOCX_AUX_XML_ENTRY_BYTES = 4 * 1024 * 1024
private const val MAX_DOCX_MEDIA_ENTRY_BYTES = 8 * 1024 * 1024
private const val MAX_DOCX_FONT_ENTRY_BYTES = 4 * 1024 * 1024
private const val MAX_DOCX_OTHER_ENTRY_BYTES = 512 * 1024

internal data class DocxArchive(
    val entries: Map<String, ByteArray>,
    val relationships: Map<String, String>,
    val styleContext: DocxStyleContext,
    val footnotes: Map<String, String> = emptyMap(),
    val endnotes: Map<String, String> = emptyMap()
)

internal data class DocxRunStyle(
    val bold: Boolean = false,
    val italic: Boolean = false,
    val underline: Boolean = false,
    val strike: Boolean = false,
    val superscript: Boolean = false,
    val subscript: Boolean = false,
    val colorHex: String? = null,
    val highlight: String? = null,
    val fontFamily: String? = null
)

internal data class DocxStyleContext(
    val embeddedFontCss: String = "",
    val defaultFontFamily: String? = null,
    val paragraphStyleFonts: Map<String, String> = emptyMap(),
    val runStyleFonts: Map<String, String> = emptyMap()
)

private data class DocxStyleDefinition(
    val styleId: String,
    val type: String,
    val basedOn: String? = null,
    val linkedStyleId: String? = null,
    val isDefault: Boolean = false,
    val directFontFamily: String? = null
)

private data class DocxFontFace(
    val cssFontFamily: String,
    val fontWeight: String,
    val fontStyle: String,
    val dataUri: String
)

internal fun buildDocxArchive(
    entries: Map<String, ByteArray>,
    relationships: Map<String, String>
): DocxArchive {
    val stylesXml = entries["word/styles.xml"]?.toString(Charsets.UTF_8)
    val fontTableXml = entries["word/fontTable.xml"]?.toString(Charsets.UTF_8)
    val fontRelationships = parseDocxRelationships(
        entries["word/_rels/fontTable.xml.rels"]?.toString(Charsets.UTF_8)
    )
    val embeddedFaces = parseEmbeddedFonts(
        fontTableXml = fontTableXml,
        fontRelationships = fontRelationships,
        entries = entries
    )
    return DocxArchive(
        entries = entries,
        relationships = relationships,
        styleContext = parseDocxStyleContext(stylesXml, embeddedFaces),
        footnotes = parseDocxNotes(entries["word/footnotes.xml"]?.toString(Charsets.UTF_8), "w:footnote"),
        endnotes = parseDocxNotes(entries["word/endnotes.xml"]?.toString(Charsets.UTF_8), "w:endnote")
    )
}

private fun parseDocxNotes(xml: String?, noteTag: String): Map<String, String> {
    if (xml.isNullOrBlank()) return emptyMap()
    val document = Jsoup.parse(xml, "", JsoupXmlParser.xmlParser())
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    return buildMap {
        document.getElementsByTag(noteTag).forEach { note ->
            val id = note.attr("w:id").trim()
            if (id.isBlank() || id.startsWith("-")) return@forEach
            val plainText = xmlTextToPlain(note.outerHtml())
                .replace(Regex("\\s+"), " ")
                .trim()
            if (plainText.isNotBlank()) {
                put(id, plainText)
            }
        }
    }
}

internal fun parseDocxRelationships(xml: String?): Map<String, String> {
    if (xml.isNullOrBlank()) return emptyMap()
    val document = Jsoup.parse(xml, "", JsoupXmlParser.xmlParser())
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    return buildMap {
        document.getElementsByTag("Relationship").forEach { relationship ->
            val id = relationship.attr("Id").trim()
            val target = relationship.attr("Target").trim()
            if (id.isNotBlank() && target.isNotBlank()) {
                put(id, target)
            }
        }
    }
}

internal fun resolveDocxFontFamily(rFonts: Element?, fallbackFamily: String? = null): String? {
    listOf("w:ascii", "w:hAnsi", "w:cs", "w:eastAsia").forEach { attr ->
        rFonts?.attr(attr)
            ?.trim()
            ?.takeIf { it.isNotBlank() }
            ?.let { return it }
    }
    return fallbackFamily?.takeIf { it.isNotBlank() }
}

internal fun docxCssFontFamilyValue(fontFamily: String): String =
    "'${fontFamily.replace("\\", "\\\\").replace("'", "\\'")}'"

internal fun docxTargetToDataUri(target: String, archive: DocxArchive): String? {
    if (target.startsWith("http://") || target.startsWith("https://")) return target
    val normalizedTarget = when {
        target.startsWith("word/") -> target
        target.startsWith("media/") -> "word/$target"
        target.startsWith("../") -> target.removePrefix("../")
        else -> "word/$target"
    }
    val bytes = archive.entries[normalizedTarget] ?: return null
    if (bytes.size > maxDocxEntryBytes(normalizedTarget)) return null
    return "data:${docxMimeType(normalizedTarget)};base64,${Base64.getEncoder().encodeToString(bytes)}"
}

internal fun readDocxZipEntries(bytes: ByteArray): Map<String, ByteArray> {
    val result = linkedMapOf<String, ByteArray>()
    runCatching {
        ZipInputStream(ByteArrayInputStream(bytes)).use { zip ->
            generateSequence { zip.nextEntry }.forEach { entry ->
                if (!entry.isDirectory) {
                    readBoundedDocxEntry(zip, maxDocxEntryBytes(entry.name))
                        ?.let { result[entry.name] = it }
                }
            }
        }
    }
    return result
}

private fun maxDocxEntryBytes(entryName: String): Int {
    val normalized = entryName.replace('\\', '/').lowercase()
    return when {
        normalized == "word/document.xml" -> MAX_DOCX_MAIN_XML_ENTRY_BYTES
        normalized.endsWith(".rels") ||
            normalized == "[content_types].xml" ||
            normalized in setOf(
                "word/styles.xml",
                "word/numbering.xml",
                "word/fonttable.xml",
                "word/footnotes.xml",
                "word/endnotes.xml",
                "word/settings.xml"
            ) -> MAX_DOCX_AUX_XML_ENTRY_BYTES
        normalized.startsWith("word/media/") -> MAX_DOCX_MEDIA_ENTRY_BYTES
        normalized.startsWith("word/fonts/") -> MAX_DOCX_FONT_ENTRY_BYTES
        else -> MAX_DOCX_OTHER_ENTRY_BYTES
    }
}

private fun readBoundedDocxEntry(zip: ZipInputStream, maxBytes: Int): ByteArray? {
    val output = ByteArrayOutputStream(minOf(maxBytes, 64 * 1024))
    val buffer = ByteArray(16 * 1024)
    var total = 0
    while (true) {
        val read = zip.read(buffer)
        if (read < 0) break
        total += read
        if (total > maxBytes) {
            return null
        }
        output.write(buffer, 0, read)
    }
    return output.toByteArray()
}

private fun docxMimeType(path: String): String = when (path.substringAfterLast('.', "").lowercase()) {
    "png" -> "image/png"
    "jpg", "jpeg" -> "image/jpeg"
    "gif" -> "image/gif"
    "bmp" -> "image/bmp"
    "webp" -> "image/webp"
    "svg" -> "image/svg+xml"
    else -> "application/octet-stream"
}

private fun parseDocxStyleContext(
    stylesXml: String?,
    embeddedFaces: Map<String, List<DocxFontFace>>
): DocxStyleContext {
    if (stylesXml.isNullOrBlank()) {
        return DocxStyleContext(
            embeddedFontCss = buildEmbeddedFontCss(embeddedFaces)
        )
    }
    val document = Jsoup.parse(stylesXml, "", JsoupXmlParser.xmlParser())
    document.outputSettings(Document.OutputSettings().prettyPrint(false))

    val defaultFontFamily = resolveDocxThemeFontFamily(
        document.getElementsByTag("w:docDefaults")
            .firstOrNull()
            ?.let { findNestedChild(it, "w:rPrDefault", "w:rPr", "w:rFonts") }
    )

    val styleDefinitions = document.getElementsByTag("w:style")
        .mapNotNull { style ->
            val styleId = style.attr("w:styleId").trim()
            val styleType = style.attr("w:type").trim().lowercase()
            if (styleId.isBlank() || styleType.isBlank()) return@mapNotNull null
            DocxStyleDefinition(
                styleId = styleId,
                type = styleType,
                basedOn = styleReference(style, "w:basedOn"),
                linkedStyleId = styleReference(style, "w:link"),
                isDefault = style.attr("w:default").equals("1", ignoreCase = true) ||
                    style.attr("w:default").equals("true", ignoreCase = true),
                directFontFamily = resolveDocxFontFamily(
                    findNestedChild(style, "w:rPr", "w:rFonts")
                )
            )
        }
        .associateBy { it.styleId }

    val defaultParagraphStyleId = styleDefinitions.values
        .firstOrNull { it.type == "paragraph" && it.isDefault }
        ?.styleId
        ?: styleDefinitions.values
            .firstOrNull { it.type == "paragraph" && it.styleId.equals("Normal", ignoreCase = true) }
            ?.styleId
    val defaultCharacterStyleId = styleDefinitions.values
        .firstOrNull { it.type == "character" && it.isDefault }
        ?.styleId
        ?: styleDefinitions.values
            .firstOrNull { it.type == "character" && it.styleId.equals("DefaultParagraphFont", ignoreCase = true) }
            ?.styleId

    fun resolveExplicitStyleFont(styleId: String?, visited: Set<String> = emptySet()): String? {
        val normalizedId = styleId?.takeIf { it.isNotBlank() } ?: return null
        if (normalizedId in visited) return null
        val definition = styleDefinitions[normalizedId] ?: return null
        val nextVisited = visited + normalizedId
        val isImplicitDefault = when (definition.type) {
            "paragraph" -> definition.isDefault || normalizedId.equals(defaultParagraphStyleId, ignoreCase = true)
            "character" -> definition.isDefault || normalizedId.equals(defaultCharacterStyleId, ignoreCase = true)
            else -> definition.isDefault
        }
        val directFont = definition.directFontFamily?.takeIf { !isImplicitDefault }
        return directFont
            ?: resolveExplicitStyleFont(definition.linkedStyleId, nextVisited)
            ?: resolveExplicitStyleFont(definition.basedOn, nextVisited)
    }

    val paragraphFonts = linkedMapOf<String, String>()
    val runFonts = linkedMapOf<String, String>()
    styleDefinitions.values.forEach { definition ->
        val fontFamily = resolveExplicitStyleFont(definition.styleId) ?: return@forEach
        when (definition.type) {
            "paragraph" -> paragraphFonts[definition.styleId] = fontFamily
            "character" -> runFonts[definition.styleId] = fontFamily
        }
    }
    return DocxStyleContext(
        embeddedFontCss = buildEmbeddedFontCss(embeddedFaces),
        defaultFontFamily = defaultFontFamily,
        paragraphStyleFonts = paragraphFonts,
        runStyleFonts = runFonts
    )
}

private fun resolveDocxThemeFontFamily(rFonts: Element?): String? {
    val theme = listOf("w:asciiTheme", "w:hAnsiTheme", "w:csTheme", "w:eastAsiaTheme")
        .firstNotNullOfOrNull { attr -> rFonts?.attr(attr)?.trim()?.takeIf(String::isNotBlank) }
        ?: return null
    return when {
        theme.contains("minor", ignoreCase = true) -> "Calibri"
        theme.contains("major", ignoreCase = true) -> "Cambria"
        else -> null
    }
}

private fun styleReference(style: Element, tagName: String): String? =
    style.getElementsByTag(tagName)
        .firstOrNull()
        ?.attr("w:val")
        ?.trim()
        ?.takeIf { it.isNotBlank() }

private fun parseEmbeddedFonts(
    fontTableXml: String?,
    fontRelationships: Map<String, String>,
    entries: Map<String, ByteArray>
): Map<String, List<DocxFontFace>> {
    if (fontTableXml.isNullOrBlank()) return emptyMap()
    val document = Jsoup.parse(fontTableXml, "", JsoupXmlParser.xmlParser())
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val result = linkedMapOf<String, MutableList<DocxFontFace>>()

    data class FontVariant(val tagName: String, val fontWeight: String, val fontStyle: String)
    val variants = listOf(
        FontVariant("w:embedRegular", "400", "normal"),
        FontVariant("w:embedBold", "700", "normal"),
        FontVariant("w:embedItalic", "400", "italic"),
        FontVariant("w:embedBoldItalic", "700", "italic")
    )

    document.getElementsByTag("w:font").forEach { font ->
        val family = font.attr("w:name").trim()
        if (family.isBlank()) return@forEach
        variants.forEach { variant ->
            val embedding = font.getElementsByTag(variant.tagName).firstOrNull() ?: return@forEach
            val relationshipId = embedding.attr("r:id").trim()
            if (relationshipId.isBlank()) return@forEach
            val target = fontRelationships[relationshipId] ?: return@forEach
            val rawBytes = entries[normalizeDocxEntryTarget(target)] ?: return@forEach
            val fontBytes = resolveEmbeddedFontBytes(
                rawBytes = rawBytes,
                fontKey = embedding.attr("w:fontKey").trim()
            ) ?: return@forEach
            val dataUri = "data:${detectEmbeddedFontMimeType(fontBytes)};base64,${Base64.getEncoder().encodeToString(fontBytes)}"
            result.getOrPut(family) { mutableListOf() } += DocxFontFace(
                cssFontFamily = family,
                fontWeight = variant.fontWeight,
                fontStyle = variant.fontStyle,
                dataUri = dataUri
            )
        }
    }
    return result
}

private fun resolveEmbeddedFontBytes(rawBytes: ByteArray, fontKey: String): ByteArray? {
    if (rawBytes.isEmpty()) return null
    if (hasValidEmbeddedFontSignature(rawBytes)) return rawBytes
    if (fontKey.isBlank()) return null
    val decoded = deobfuscateEmbeddedFont(rawBytes, fontKey)
    return decoded.takeIf(::hasValidEmbeddedFontSignature)
}

private fun buildEmbeddedFontCss(embeddedFaces: Map<String, List<DocxFontFace>>): String {
    if (embeddedFaces.isEmpty()) return ""
    return embeddedFaces.values.flatten().joinToString(separator = "\n") { face ->
        """
        @font-face {
          font-family: ${docxCssFontFamilyValue(face.cssFontFamily)};
          src: url('${face.dataUri}') format('${fontFormatHint(face.dataUri)}');
          font-weight: ${face.fontWeight};
          font-style: ${face.fontStyle};
        }
        """.trimIndent()
    }
}

private fun normalizeDocxEntryTarget(target: String): String = when {
    target.startsWith("word/") -> target
    target.startsWith("../") -> target.removePrefix("../")
    else -> "word/$target"
}

private fun deobfuscateEmbeddedFont(rawBytes: ByteArray, fontKey: String): ByteArray {
    val keyBytes = fontKeyBytes(fontKey) ?: return rawBytes
    if (rawBytes.isEmpty()) return rawBytes
    val decoded = rawBytes.copyOf()
    val limit = minOf(32, decoded.size)
    for (index in 0 until limit) {
        decoded[index] = (decoded[index].toInt() xor keyBytes[index % keyBytes.size].toInt()).toByte()
    }
    return decoded
}

private fun fontKeyBytes(fontKey: String): ByteArray? {
    val hex = fontKey.trim().removePrefix("{").removeSuffix("}").replace("-", "")
    if (hex.length != 32 || !hex.matches(Regex("[0-9A-Fa-f]{32}"))) return null
    val bytes = ByteArray(16) { index ->
        hex.substring(index * 2, index * 2 + 2).toInt(16).toByte()
    }
    return byteArrayOf(
        bytes[15], bytes[14], bytes[13], bytes[12],
        bytes[11], bytes[10], bytes[9], bytes[8],
        bytes[6], bytes[7], bytes[4], bytes[5],
        bytes[0], bytes[1], bytes[2], bytes[3]
    )
}

private fun detectEmbeddedFontMimeType(bytes: ByteArray): String {
    if (bytes.size >= 4) {
        val header = bytes.copyOfRange(0, 4).decodeToString()
        if (header == "OTTO") return "font/otf"
        if (header == "wOFF") return "font/woff"
        if (header == "wOF2") return "font/woff2"
    }
    return "font/ttf"
}

private fun hasValidEmbeddedFontSignature(bytes: ByteArray): Boolean {
    if (bytes.size < 4) return false
    val header = bytes.copyOfRange(0, 4).decodeToString()
    return header == "OTTO" ||
        header == "wOFF" ||
        header == "wOF2" ||
        header == "ttcf" ||
        (bytes[0] == 0x00.toByte() &&
            bytes[1] == 0x01.toByte() &&
            bytes[2] == 0x00.toByte() &&
            bytes[3] == 0x00.toByte())
}

private fun fontFormatHint(dataUri: String): String = when {
    dataUri.startsWith("data:font/otf") -> "opentype"
    dataUri.startsWith("data:font/woff2") -> "woff2"
    dataUri.startsWith("data:font/woff") -> "woff"
    else -> "truetype"
}

private fun findNestedChild(element: Element?, vararg tagPath: String): Element? {
    var current = element ?: return null
    for (tagName in tagPath) {
        current = current.children().firstOrNull { it.tagName() == tagName } ?: return null
    }
    return current
}
