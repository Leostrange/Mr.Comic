package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry

data class SingleWordDictionaryMatch(
    val sourceLanguage: String,
    val entry: DictionaryEntry
)

suspend fun resolveBestSingleWordDictionaryMatch(
    rawWord: String,
    targetLanguage: String,
    dictionaryEngine: DictionaryEngine,
    preferredSourceLanguage: String? = null,
    detectedLanguage: String? = null,
    detectedCandidates: List<String> = emptyList(),
    fallbackSourceLanguages: List<String> = emptyList()
): SingleWordDictionaryMatch? {
    val normalizedTargetLanguage = targetLanguage.normalizeLookupLanguageCode() ?: return null
    val normalizedWord = rawWord.trim().replace(Regex("\\s+"), " ")
    if (normalizedWord.isBlank()) return null

    val candidateLanguages = linkedSetOf<String>().apply {
        addNormalized(preferredSourceLanguage)
        addNormalized(detectedLanguage)
        detectedCandidates.forEach(::addNormalized)
        inferSingleWordSourceLanguages(normalizedWord).forEach(::add)
        fallbackSourceLanguages.forEach(::addNormalized)
    }.filter { it != normalizedTargetLanguage }

    var firstSuccessfulMatch: SingleWordDictionaryMatch? = null

    for (sourceLanguage in candidateLanguages) {
        val lookupAvailable = when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = normalizedTargetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }
        if (!lookupAvailable) continue

        when (
            val lookup = dictionaryEngine.lookup(
                rawWord = normalizedWord,
                sourceLanguage = sourceLanguage,
                targetLanguage = normalizedTargetLanguage
            )
        ) {
            is Result.Success -> {
                val match = SingleWordDictionaryMatch(
                    sourceLanguage = sourceLanguage,
                    entry = lookup.data
                )
                if (firstSuccessfulMatch == null) {
                    firstSuccessfulMatch = match
                }
                if (lookup.data.hasMeaningfulTranslationFor(normalizedWord)) {
                    return match
                }
            }

            is Result.Error -> Unit
            Result.Loading -> Unit
        }
    }

    return firstSuccessfulMatch
}

fun DictionaryEntry.hasMeaningfulTranslationFor(rawWord: String): Boolean {
    val sourceForms = buildSet {
        add(rawWord.normalizeLookupSurface())
        add(lemma.normalizeLookupSurface())
        add(normalizedLemma.normalizeLookupSurface())
        forms.mapTo(this) { it.normalizeLookupSurface() }
    }.filter { it.isNotBlank() }.toSet()

    return translations.any { translation ->
        val normalizedTranslation = translation.normalizeLookupSurface()
        normalizedTranslation.isNotBlank() && normalizedTranslation !in sourceForms
    }
}

private fun String.normalizeLookupSurface(): String =
    trim()
        .replace(Regex("\\s+"), " ")
        .lowercase()

private fun String?.normalizeLookupLanguageCode(): String? =
    this
        ?.trim()
        ?.replace('_', '-')
        ?.lowercase()
        ?.substringBefore('-')
        ?.takeIf { it.isNotBlank() && it != "und" }

private fun LinkedHashSet<String>.addNormalized(rawLanguageCode: String?) {
    rawLanguageCode.normalizeLookupLanguageCode()?.let(::add)
}

private fun inferSingleWordSourceLanguages(rawWord: String): List<String> {
    val normalized = rawWord.trim().lowercase()
    if (normalized.isBlank()) return emptyList()

    return buildList {
        if (normalized.any { it in POLISH_HINT_CHARS }) add("pl")
        if (normalized.any { it in TURKISH_HINT_CHARS }) add("tr")
        if (normalized.any { it in PORTUGUESE_HINT_CHARS }) add("pt")
        if (normalized.any { it in FRENCH_HINT_CHARS }) add("fr")
        if (normalized.any { it in JAPANESE_HINT_CHARS }) add("ja")
        if (normalized.any { it in KOREAN_HINT_CHARS }) add("ko")
        if (normalized.any { it in CYRILLIC_HINT_CHARS }) add("ru")
        if (normalized.any { it in CJK_HINT_CHARS }) add("zh")
    }.distinct()
}

private val POLISH_HINT_CHARS = setOf('ą', 'ć', 'ę', 'ł', 'ń', 'ó', 'ś', 'ź', 'ż')
private val TURKISH_HINT_CHARS = setOf('ç', 'ğ', 'ı', 'İ', 'ö', 'ş', 'ü')
private val PORTUGUESE_HINT_CHARS = setOf('ã', 'õ')
private val FRENCH_HINT_CHARS = setOf('à', 'â', 'æ', 'ç', 'è', 'é', 'ê', 'ë', 'î', 'ï', 'ô', 'œ', 'ù', 'û', 'ü', 'ÿ')
private val CYRILLIC_HINT_CHARS = ('а'..'я').toSet() + setOf('ё')
private val JAPANESE_HINT_CHARS = ('ぁ'..'ゖ').toSet() + ('ァ'..'ヺ').toSet()
private val KOREAN_HINT_CHARS = ('가'..'힣').toSet()
private val CJK_HINT_CHARS = ('一'..'龯').toSet()
