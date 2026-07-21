package io.leostrange.mrcomic.feature.ocr.data

private val OCR_LOOKUP_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
private val OCR_SENTENCE_PUNCTUATION_REGEX = "[.,;:!?…。！？、，：；]".toRegex()
private val CJK_LOOKUP_LANGUAGES = setOf("ja", "zh", "ko")
private val OCR_LOOKUP_EDGE_PUNCTUATION = charArrayOf(
    '"', '\'', '“', '”', '„', '«', '»',
    '(', ')', '[', ']', '{', '}',
    '<', '>', '‹', '›',
    '.', ',', ';', ':', '!', '?', '…',
    '。', '！', '？', '、', '，', '：', '；'
)

fun shouldUseOcrDictionaryFallback(
    rawText: String,
    sourceLanguage: String?
): Boolean {
    return resolveOcrDictionaryLookupPolicy(rawText, sourceLanguage).prioritizeDictionaryFallback
}

fun shouldAllowOcrDictionaryLookup(
    rawText: String,
    sourceLanguage: String?
): Boolean {
    return resolveOcrDictionaryLookupPolicy(rawText, sourceLanguage).allowDictionaryLookup
}

private fun resolveOcrDictionaryLookupPolicy(
    rawText: String,
    sourceLanguage: String?
): OcrDictionaryLookupPolicy {
    val normalizedLanguage = normalizeOcrLookupLanguage(sourceLanguage)
    val hasSentencePunctuation = OCR_SENTENCE_PUNCTUATION_REGEX.containsMatchIn(rawText.trim())
    val normalizedCandidate = rawText
        .trim()
        .replace(Regex("\\s+"), " ")
        .trim(*OCR_LOOKUP_EDGE_PUNCTUATION)

    if (normalizedCandidate.isBlank()) return OcrDictionaryLookupPolicy(
        prioritizeDictionaryFallback = false,
        allowDictionaryLookup = false
    )

    val tokenCount = OCR_LOOKUP_TOKEN_REGEX.findAll(normalizedCandidate).count()
        .coerceAtLeast(if (normalizedCandidate.isBlank()) 0 else 1)
    val hasWhitespace = normalizedCandidate.any(Char::isWhitespace)

    return when (normalizedLanguage) {
        in CJK_LOOKUP_LANGUAGES -> {
            val compactLookup =
                tokenCount == 1 &&
                !hasWhitespace &&
                !hasSentencePunctuation &&
                normalizedCandidate.length <= 8
            OcrDictionaryLookupPolicy(
                prioritizeDictionaryFallback = compactLookup,
                allowDictionaryLookup = compactLookup
            )
        }

        else -> {
            val singleWordLookup = tokenCount == 1 && !hasWhitespace
            val shortPhraseLookup =
                tokenCount in 2..SHORT_LOOKUP_TOKEN_LIMIT &&
                    hasWhitespace &&
                    !hasSentencePunctuation
            OcrDictionaryLookupPolicy(
                prioritizeDictionaryFallback = singleWordLookup,
                allowDictionaryLookup = singleWordLookup || shortPhraseLookup
            )
        }
    }
}

private fun normalizeOcrLookupLanguage(rawCode: String?): String? =
    rawCode
        ?.trim()
        ?.replace('_', '-')
        ?.lowercase()
        ?.substringBefore('-')
        ?.takeIf { it.isNotBlank() && it != "und" }

private data class OcrDictionaryLookupPolicy(
    val prioritizeDictionaryFallback: Boolean,
    val allowDictionaryLookup: Boolean
)

private const val SHORT_LOOKUP_TOKEN_LIMIT = 3
