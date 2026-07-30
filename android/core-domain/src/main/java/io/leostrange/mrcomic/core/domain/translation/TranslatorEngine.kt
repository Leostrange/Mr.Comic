package io.leostrange.mrcomic.core.domain.translation

/**
 * Unified translation interface that all translation engines implement.
 *
 * This provides a single entry point for text translation regardless of the
 * underlying engine (ML Kit, NLLB, online provider, LLM, etc.).
 */
interface TranslatorEngine {

    /** Human-readable name of this engine for UI display. */
    val engineName: String

    /** Whether this engine can translate the given language pair. */
    suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean

    /** Whether this engine requires network access. */
    val requiresNetwork: Boolean

    /**
     * Translate text from source language to target language.
     *
     * @param text The text to translate. Should be chunked to reasonable length.
     * @param sourceLang BCP-47 language code (e.g. "en", "ja", "ru").
     * @param targetLang BCP-47 language code. Defaults to "ru".
     * @return The translated text.
     * @throws TranslationException if translation fails.
     */
    suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String = "ru"
    ): String

    /**
     * Prepare the engine for a language pair (e.g. download model).
     * Returns true if the pair is ready after preparation.
     */
    suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean
}

/**
 * Exception thrown when translation fails.
 */
class TranslationException(
    message: String,
    val errorCode: TranslationErrorCode = TranslationErrorCode.UNKNOWN,
    cause: Throwable? = null
) : Exception(message, cause)

enum class TranslationErrorCode {
    UNKNOWN,
    LANGUAGE_PAIR_NOT_SUPPORTED,
    MODEL_NOT_DOWNLOADED,
    NETWORK_ERROR,
    RATE_LIMITED,
    TEXT_TOO_LONG,
    EMPTY_INPUT,
    ENGINE_UNAVAILABLE
}
