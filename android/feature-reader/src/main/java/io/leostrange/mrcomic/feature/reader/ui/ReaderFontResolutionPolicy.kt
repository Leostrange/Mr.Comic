package io.leostrange.mrcomic.feature.reader.ui

/**
 * ARC-11 S6: pure-Kotlin font resolution policy.
 *
 * Extracted from [ReaderTextFontCatalog.resolve] in core-ui. The catalog
 * handles Android filesystem I/O (scanning custom fonts, importing, deleting);
 * this policy handles only the name-matching decision and fallback logic.
 *
 * ## Resolution order
 *
 * 1. If the selected family is blank or null → fallback.
 * 2. If the selected family matches a built-in font → exact match, return it.
 * 3. If the selected family matches a custom font → exact match, return it.
 * 4. Otherwise → fallback.
 */
internal object ReaderFontResolutionPolicy {

    /** Default fallback font when no match is found. */
    const val FALLBACK_FAMILY = "Georgia"

    /**
     * Resolves a font family name to the actual family to use.
     *
     * @param selectedFamily the user's chosen font (may be null or blank).
     * @param builtInFamilies set of supported built-in font names.
     * @param customFamilies set of installed custom font names.
     * @return the resolved family name, never blank.
     */
    fun resolveFamily(
        selectedFamily: String?,
        builtInFamilies: Set<String>,
        customFamilies: Set<String>,
    ): String {
        val requested = selectedFamily?.trim().orEmpty()
        if (requested.isBlank()) return FALLBACK_FAMILY
        if (requested in builtInFamilies) return requested
        if (requested in customFamilies) return requested
        return FALLBACK_FAMILY
    }

    /** Returns true if [familyName] is a built-in font (not custom, not fallback). */
    fun isBuiltIn(familyName: String, builtInFamilies: Set<String>): Boolean =
        familyName in builtInFamilies

    /** Returns true if [familyName] is a custom/imported font. */
    fun isCustom(familyName: String, builtInFamilies: Set<String>, customFamilies: Set<String>): Boolean =
        familyName !in builtInFamilies && familyName in customFamilies
}
