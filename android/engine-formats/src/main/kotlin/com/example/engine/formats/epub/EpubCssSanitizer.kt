package com.example.engine.formats.epub

import java.net.URLDecoder

/**
 * Pure CSS sanitization for EPUB content.
 *
 * Extracted from EpubFormatReader so the string-manipulation logic can be
 * tested without ZIP/archive dependencies. The functions are stateless and
 * side-effect-free.
 */
internal object EpubCssSanitizer {

    val CSS_URL_REGEX = Regex("""url\(\s*(['"]?)([^'")]+)\1\s*\)""", RegexOption.IGNORE_CASE)
    val FONT_FACE_BLOCK_REGEX = Regex(
        """@font-face\s*[{][\s\S]*?[}]""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )

    /**
     * Sanitizes inline EPUB CSS: strips @font-face blocks, removes dominant
     * #id scope prefixes, and clamps dangerously small line-height values.
     */
    fun sanitizeInline(css: String): String = sanitize(css, stripFontFace = true)

    /**
     * Sanitizes asset-backed EPUB CSS: keeps @font-face blocks but strips
     * broken/unsafe font URLs and OTF/TTF references.
     */
    fun sanitizeAssetBacked(
        css: String,
        cssEntryPath: String? = null,
        assetExists: (String) -> Boolean = { true }
    ): String {
        val sanitized = sanitize(css, stripFontFace = false)
        return sanitizeAssetBackedFontFaces(sanitized, cssEntryPath, assetExists)
    }

    private fun sanitize(css: String, stripFontFace: Boolean): String {
        var result = css.trim()
        if (stripFontFace) {
            result = FONT_FACE_BLOCK_REGEX.replace(result, "").trim()
        }

        // Strip dominant #id scope prefix (e.g. O'Reilly "#sbo-rt-content").
        val idScopeRegex = Regex("""#([\w-]+)\s+""")
        val counts = idScopeRegex.findAll(result).groupingBy { it.groupValues[1] }.eachCount()
        val dominant = counts.maxByOrNull { it.value }
        if (dominant != null && dominant.value >= 10) {
            result = result.replace(Regex("""#${Regex.escape(dominant.key)}\s+"""), "")
        }

        // Clamp dangerously small line-height values
        result = result.replace(
            Regex("""line-height\s*:\s*0\.\d+""", RegexOption.IGNORE_CASE),
            "line-height: 1.2"
        )

        return result
    }

    private fun sanitizeAssetBackedFontFaces(
        css: String,
        cssEntryPath: String?,
        assetExists: (String) -> Boolean
    ): String {
        return FONT_FACE_BLOCK_REGEX.replace(css) { match ->
            val block = match.value
            var keptUrls = 0
            val cleanedBlock = CSS_URL_REGEX.replace(block) { urlMatch ->
                val rawUrl = urlMatch.groupValues[2].trim()
                val lower = rawUrl.lowercase()
                val isOtfTtf = lower.endsWith(".otf") || lower.endsWith(".ttf") ||
                    lower.endsWith(".otc") || lower.endsWith(".ttc")
                if (isOtfTtf) {
                    "/* mrcomic-stripped-otf-font */"
                } else if (isSafeAssetBackedCssUrl(rawUrl, cssEntryPath, assetExists)) {
                    keptUrls += 1
                    urlMatch.value
                } else {
                    "/* mrcomic-stripped-font-url */"
                }
            }
                .replace(Regex("""\s*,\s*/\* mrcomic-stripped-font-url \*/"""), "")
                .replace(Regex("""/\* mrcomic-stripped-font-url \*/\s*,\s*"""), "")
                .replace("/* mrcomic-stripped-font-url */", "")
                .replace(Regex("""\s*,\s*/\* mrcomic-stripped-otf-font \*/"""), "")
                .replace(Regex("""/\* mrcomic-stripped-otf-font \*/\s*,\s*"""), "")
                .replace("/* mrcomic-stripped-otf-font */", "")
            if (keptUrls <= 0) "" else cleanedBlock
        }
    }

    fun isSafeAssetBackedCssUrl(
        rawUrl: String,
        cssEntryPath: String?,
        assetExists: (String) -> Boolean
    ): Boolean {
        if (rawUrl.isBlank()) return false
        val decoded = try { URLDecoder.decode(rawUrl, "UTF-8") } catch (_: Exception) { rawUrl }
        val lower = decoded.lowercase()
        if (lower.startsWith("javascript:")) return false
        if (lower.startsWith("file:")) return false
        if (lower.startsWith("content:")) return false
        if (lower.startsWith("android_asset:")) return false
        if (lower.startsWith("res:")) return false
        if (lower.startsWith("data:")) return true
        if (lower.startsWith("http://") || lower.startsWith("https://")) return true
        val baseDir = cssEntryPath
            ?.substringBeforeLast('/', "")
            .orEmpty()
        val normalized = normalizeAssetPath(
            if (decoded.startsWith("/")) decoded.trimStart('/')
            else if (baseDir.isEmpty()) decoded else "$baseDir/$decoded"
        )
        return assetExists(normalized)
    }

    /**
     * Normalizes a relative asset path by resolving `..` and `.` components.
     */
    fun normalizeAssetPath(path: String): String {
        val stack = ArrayDeque<String>()
        for (part in path.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }
}
