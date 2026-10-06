package io.leostrange.mrcomic.feature.reader.ui

/** Simplified EPUB CFI (Content Fragment Identifier) helpers. */
internal object EpubProgressCalculator {

    /**
     * Generates a simplified CFI (Content Fragment Identifier) for progress persistence.
     *
     * Format: `epubcfi(/6/{spineIndex}!/4/2/1/{domPath}:{charOffset})`
     * - `/6/{spineIndex}` — spine item index (EPUB CFI convention: /6 = spine)
     * - `!/4/2/1/{domPath}` — simplified DOM path to the text node
     * - `:{charOffset}` — character offset within the text node
     *
     * This is a simplified CFI that's stable across font size/screen changes,
     * unlike page-number-based progress which breaks when pagination changes.
     */
    fun generateCfi(
        spineIndex: Int,
        domPath: List<Int> = emptyList(),
        charOffset: Int = 0
    ): String {
        val pathStr = if (domPath.isEmpty()) "" else "/" + domPath.joinToString("/")
        return "epubcfi(/6/$spineIndex!/4/2/1$pathStr:$charOffset)"
    }

    /**
     * Parses a simplified CFI string and extracts spine index, DOM path, and char offset.
     *
     * Returns null if the CFI is invalid or doesn't match the expected format.
     */
    fun parseCfi(cfi: String?): CfiComponents? {
        if (cfi.isNullOrBlank()) return null
        val match = CFI_REGEX.matchEntire(cfi.trim()) ?: return null
        val spineIndex = match.groupValues[1].toIntOrNull() ?: return null
        val domPathStr = match.groupValues[2]
        val charOffset = match.groupValues[3].toIntOrNull() ?: 0
        val domPath = if (domPathStr.isBlank()) {
            emptyList()
        } else {
            domPathStr.split("/").mapNotNull { it.toIntOrNull() }
        }
        return CfiComponents(
            spineIndex = spineIndex,
            domPath = domPath,
            charOffset = charOffset
        )
    }

    private val CFI_REGEX = Regex("""epubcfi\(/6/(\d+)(?:!/4/2/1(?:/(\d+(?:/\d+)*))?)?:(\d+)\)""")

    data class CfiComponents(
        val spineIndex: Int,
        val domPath: List<Int>,
        val charOffset: Int
    )
}
