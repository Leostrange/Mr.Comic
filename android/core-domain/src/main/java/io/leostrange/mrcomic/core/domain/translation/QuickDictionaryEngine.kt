package io.leostrange.mrcomic.core.domain.translation

import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.content.Context
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationProviderType
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.InputStream
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class QuickDictionaryEngine(
    private val assetOpener: (String) -> InputStream?,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val networkAvailableProvider: () -> Boolean = { true }
) : DictionaryEngine {

    @Inject
    constructor(
        @ApplicationContext context: Context,
        offlineTranslationEngine: OfflineTranslationEngine,
        onlineTranslationEngine: OnlineTranslationEngine
    ) : this(
        assetOpener = { assetPath -> context.assets.open(assetPath) },
        offlineTranslationEngine = offlineTranslationEngine,
        onlineTranslationEngine = onlineTranslationEngine,
        networkAvailableProvider = {
            val connectivityManager = context.getSystemService(ConnectivityManager::class.java)
            val network = connectivityManager?.activeNetwork
            val capabilities = network?.let(connectivityManager::getNetworkCapabilities)
            capabilities?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) == true &&
                capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
        }
    )

    private val dictionaryCache = ConcurrentHashMap<String, Map<String, LocalDictionaryRecord>>()

    override suspend fun isLookupAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = runCatchingResult {
        val normalizedSource = normalizeLanguageCode(sourceLanguage)
        val normalizedTarget = normalizeLanguageCode(targetLanguage)
        require(normalizedSource != null) { "Unsupported dictionary source language: $sourceLanguage" }
        require(normalizedTarget != null) { "Unsupported dictionary target language: $targetLanguage" }
        if (normalizedSource == normalizedTarget) {
            return@runCatchingResult true
        }
        if (resolveBundledPair(normalizedSource, normalizedTarget) != null) {
            return@runCatchingResult true
        }

        val offlineAvailable = when (
            val availability = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = normalizedSource,
                targetLanguage = normalizedTarget
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val onlineConfigured = when (val configured = onlineTranslationEngine.isConfigured()) {
            is Result.Success -> configured.data
            is Result.Error -> false
            Result.Loading -> false
        }
        val onlineAvailable = onlineConfigured && networkAvailableProvider()

        offlineAvailable || onlineAvailable
    }

    override suspend fun lookup(
        rawWord: String,
        sourceLanguage: String,
        targetLanguage: String
    ): Result<DictionaryEntry> = runCatchingResult {
        val normalizedSource = normalizeLanguageCode(sourceLanguage)
        val normalizedTarget = normalizeLanguageCode(targetLanguage)
        require(normalizedSource != null) { "Unsupported dictionary source language: $sourceLanguage" }
        require(normalizedTarget != null) { "Unsupported dictionary target language: $targetLanguage" }

        val originalWord = rawWord.trim()
        val cleanedWord = sanitizeLookupWord(originalWord)
        require(cleanedWord.isNotBlank()) { "No lookup word was provided" }
        val tokenCount = cleanedWord.countLookupTokens()
        require(tokenCount <= SHORT_LOOKUP_TOKEN_LIMIT) {
            "Dictionary lookup supports only a short word or phrase"
        }

        val lookupText = normalizeLookupText(cleanedWord, normalizedSource)
        val guessedPartOfSpeech = if (tokenCount == 1) {
            guessPartOfSpeech(lookupText, normalizedSource)
        } else {
            null
        }
        val forms = buildList {
            if (!originalWord.equals(cleanedWord, ignoreCase = false)) add(originalWord)
            if (!cleanedWord.equals(lookupText, ignoreCase = false)) add(cleanedWord)
        }.distinct()

        if (normalizedSource == normalizedTarget) {
            return@runCatchingResult DictionaryEntry(
                id = buildDictionaryId(normalizedSource, normalizedTarget, lookupText),
                languageFrom = normalizedSource,
                languageTo = normalizedTarget,
                lemma = lookupText,
                normalizedLemma = lookupText,
                partOfSpeech = guessedPartOfSpeech,
                translations = listOf(lookupText),
                forms = forms
            )
        }

        val bundledEntry = resolveBundledPair(normalizedSource, normalizedTarget)
            ?.let { loadDictionary(it)[lookupText] }
        if (bundledEntry != null) {
            return@runCatchingResult DictionaryEntry(
                id = buildDictionaryId(normalizedSource, normalizedTarget, lookupText),
                languageFrom = normalizedSource,
                languageTo = normalizedTarget,
                lemma = lookupText,
                normalizedLemma = lookupText,
                partOfSpeech = bundledEntry.partOfSpeech ?: guessedPartOfSpeech,
                translations = bundledEntry.translations,
                forms = forms
            )
        }

        val translation = translateSnippet(lookupText, normalizedSource, normalizedTarget)
        val translatedText = translation.translatedText
            .trim()
            .takeIf { it.isNotBlank() }
            ?: throw IllegalStateException("Dictionary lookup returned an empty translation")

        DictionaryEntry(
            id = buildDictionaryId(normalizedSource, normalizedTarget, lookupText),
            languageFrom = normalizedSource,
            languageTo = normalizedTarget,
            lemma = lookupText,
            normalizedLemma = lookupText,
            partOfSpeech = guessedPartOfSpeech,
            translations = listOf(translatedText),
            glosses = if (translation.provider == TranslationProviderType.ML_KIT) {
                listOf("machine-assisted")
            } else {
                listOf("fallback")
            },
            forms = forms
        )
    }

    private suspend fun translateSnippet(
        text: String,
        sourceLanguage: String,
        targetLanguage: String
    ) = when (
        val offlineResult = offlineTranslationEngine.translate(
            TranslationRequest(
                id = "dictionary-${System.currentTimeMillis()}",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = text,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage,
                mode = TranslationMode.OFFLINE_MT,
                createdAt = System.currentTimeMillis()
            )
        )
    ) {
        is Result.Success -> offlineResult.data
        is Result.Error -> when (
            val onlineResult = onlineTranslationEngine.translate(
                TranslationRequest(
                    id = "dictionary-${System.currentTimeMillis()}",
                    sourceType = TranslationSourceType.BOOK_TEXT,
                    text = text,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = TranslationMode.ONLINE_MT,
                    createdAt = System.currentTimeMillis()
                )
            )
        ) {
            is Result.Success -> onlineResult.data
            is Result.Error -> throw onlineResult.exception
            Result.Loading -> throw IllegalStateException("Dictionary lookup is still loading")
        }

        Result.Loading -> throw IllegalStateException("Dictionary lookup is still loading")
    }

    private fun loadDictionary(pair: String): Map<String, LocalDictionaryRecord> =
        dictionaryCache.getOrPut(pair) {
            val assetPath = "$ASSET_BASE_PATH/$pair.tsv"
            val stream = assetOpener(assetPath) ?: return@getOrPut emptyMap()
            stream.bufferedReader().useLines { lines ->
                lines
                    .drop(1)
                    .mapNotNull { line ->
                        val parts = line.split('\t')
                        if (parts.size < 3) return@mapNotNull null
                        val lemma = parts[0].trim().lowercase()
                        if (lemma.isBlank()) return@mapNotNull null
                        val pos = parts[1].trim().ifBlank { null }
                        val translations = parts[2]
                            .split('|')
                            .map { it.trim() }
                            .filter { it.isNotBlank() }
                            .distinct()
                        if (translations.isEmpty()) return@mapNotNull null
                        lemma to LocalDictionaryRecord(
                            partOfSpeech = pos,
                            translations = translations
                        )
                    }
                    .toMap(LinkedHashMap())
            }
        }

    private fun resolveBundledPair(
        sourceLanguage: String,
        targetLanguage: String
    ): String? = BUNDLED_PAIRS["$sourceLanguage-$targetLanguage"]

    private fun sanitizeLookupWord(rawWord: String): String =
        rawWord
            .trim()
            .trim(*EDGE_PUNCTUATION)
            .replace(CURLY_APOSTROPHE, STRAIGHT_APOSTROPHE)
            .replace(WHITESPACE_REGEX, " ")

    private fun normalizeLookupText(text: String, language: String): String {
        val normalized = text.trim().replace(WHITESPACE_REGEX, " ")
        return if (normalized.countLookupTokens() == 1) {
            normalizeLemma(normalized, language)
        } else {
            normalized.lowercase()
        }
    }

    private fun String.countLookupTokens(): Int =
        LOOKUP_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private fun normalizeLemma(word: String, language: String): String {
        val lowercase = word.lowercase()
        return when (language) {
            "en" -> normalizeEnglishLemma(lowercase)
            "ru" -> lowercase.replace('ё', 'е')
            else -> lowercase
        }
    }

    private fun normalizeEnglishLemma(word: String): String {
        if (word.length <= 2) return word
        return when {
            word.endsWith("'s") && word.length > 3 -> word.dropLast(2)
            word.endsWith("ies") && word.length > 4 -> word.dropLast(3) + "y"
            word.endsWith("sses") && word.length > 5 -> word.dropLast(2)
            word.endsWith("ses") && word.length > 4 -> word.dropLast(2)
            word.endsWith("s") && word.length > 3 && !word.endsWith("ss") -> word.dropLast(1)
            word.endsWith("ing") && word.length > 5 -> word.dropLast(3)
            word.endsWith("ed") && word.length > 4 -> word.dropLast(2)
            else -> word
        }
    }

    private fun guessPartOfSpeech(lemma: String, language: String): String? = when (language) {
        "en" -> guessEnglishPartOfSpeech(lemma)
        "ru" -> guessRussianPartOfSpeech(lemma)
        else -> null
    }

    private fun guessEnglishPartOfSpeech(lemma: String): String? {
        if (lemma in ENGLISH_ARTICLES) return "article"
        if (lemma in ENGLISH_PRONOUNS) return "pronoun"
        if (lemma in ENGLISH_PREPOSITIONS) return "preposition"
        if (lemma in ENGLISH_CONJUNCTIONS) return "conjunction"
        if (lemma in ENGLISH_INTERJECTIONS) return "interjection"
        return when {
            lemma.endsWith("ly") -> "adverb"
            lemma.endsWith("ing") || lemma.endsWith("ed") -> "verb"
            lemma.endsWith("tion") || lemma.endsWith("ment") || lemma.endsWith("ness") || lemma.endsWith("ity") -> "noun"
            lemma.endsWith("ous") || lemma.endsWith("ful") || lemma.endsWith("able") || lemma.endsWith("ible") ||
                lemma.endsWith("ive") || lemma.endsWith("less") || lemma.endsWith("al") || lemma.endsWith("ic") -> "adjective"
            else -> "noun"
        }
    }

    private fun guessRussianPartOfSpeech(lemma: String): String? {
        if (lemma in RUSSIAN_PRONOUNS) return "pronoun"
        if (lemma in RUSSIAN_PREPOSITIONS) return "preposition"
        if (lemma in RUSSIAN_CONJUNCTIONS) return "conjunction"
        return when {
            lemma.endsWith("ться") || lemma.endsWith("ить") || lemma.endsWith("ать") || lemma.endsWith("еть") -> "verb"
            lemma.endsWith("ость") || lemma.endsWith("ение") || lemma.endsWith("ция") || lemma.endsWith("изм") -> "noun"
            lemma.endsWith("ый") || lemma.endsWith("ий") || lemma.endsWith("ая") || lemma.endsWith("ое") || lemma.endsWith("ее") -> "adjective"
            lemma.endsWith("о") || lemma.endsWith("е") -> "adverb"
            else -> null
        }
    }

    private fun normalizeLanguageCode(rawCode: String?): String? =
        rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.takeIf { it.isNotBlank() && it != "und" }

    private fun buildDictionaryId(
        sourceLanguage: String,
        targetLanguage: String,
        lemma: String
    ): String = "dict-$sourceLanguage-$targetLanguage-$lemma"

    private data class LocalDictionaryRecord(
        val partOfSpeech: String? = null,
        val translations: List<String>
    )

    private companion object {
        const val ASSET_BASE_PATH = "dictionaries/freedict"
        const val CURLY_APOSTROPHE = '’'
        const val STRAIGHT_APOSTROPHE = '\''
        val EDGE_PUNCTUATION = charArrayOf(
            '"', '\'', '«', '»', '“', '”', '„', '‘', '’',
            '(', ')', '[', ']', '{', '}', '<', '>',
            '.', ',', ';', ':', '!', '?', '…', '。', '、', '，', '！', '？'
        )
        val WHITESPACE_REGEX = "\\s+".toRegex()
        val LOOKUP_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
        const val SHORT_LOOKUP_TOKEN_LIMIT = 3

        val BUNDLED_PAIRS = mapOf(
            "en-ru" to "en-ru",
            "ru-en" to "ru-en",
            "en-ja" to "en-ja",
            "ja-en" to "ja-en",
            "ja-ru" to "ja-ru",
            "en-zh" to "en-zh",
            "zh-ru" to "zh-ru"
        )

        val ENGLISH_ARTICLES = setOf("a", "an", "the")
        val ENGLISH_PRONOUNS = setOf("i", "you", "he", "she", "it", "we", "they", "me", "him", "her", "us", "them")
        val ENGLISH_PREPOSITIONS = setOf("in", "on", "at", "to", "from", "with", "for", "by", "of", "about", "over", "under")
        val ENGLISH_CONJUNCTIONS = setOf("and", "or", "but", "if", "because", "while", "though", "although")
        val ENGLISH_INTERJECTIONS = setOf("oh", "wow", "hey", "ah", "hmm")

        val RUSSIAN_PRONOUNS = setOf("я", "ты", "он", "она", "оно", "мы", "вы", "они", "меня", "тебя", "его", "ее", "их")
        val RUSSIAN_PREPOSITIONS = setOf("в", "на", "с", "к", "от", "для", "без", "под", "над", "при", "из")
        val RUSSIAN_CONJUNCTIONS = setOf("и", "или", "но", "если", "потому", "хотя", "чтобы")
    }
}
