package io.leostrange.mrcomic.core.domain.translation.online

/**
 * Interface for a single online translation provider (DeepL, Google, Yandex, etc.).
 *
 * Each provider has its own API key, rate limits, and language support.
 * The [MultiProviderTranslatorEngine] tries providers in priority order
 * with automatic fallback.
 */
interface OnlineTranslationProvider {

    /** Human-readable name for UI display. */
    val providerName: String

    /** Unique identifier for this provider. */
    val providerId: String

    /** Whether this provider is configured (API key present). */
    suspend fun isConfigured(): Boolean

    /** Whether this provider supports the given language pair. */
    suspend fun isLanguagePairSupported(sourceLang: String, targetLang: String): Boolean

    /**
     * Translate text using this provider's API.
     *
     * @param text Text to translate (already chunked to provider's max size).
     * @param sourceLang BCP-47 language code.
     * @param targetLang BCP-47 language code.
     * @return Translated text.
     * @throws OnlineTranslationException on API errors.
     */
    suspend fun translate(text: String, sourceLang: String, targetLang: String): String

    /** Maximum characters per single API request. */
    val maxCharsPerRequest: Int

    /** Approximate cost per 1000 characters (for UI display). null if free. */
    val costPer1kChars: Double? get() = null
}

/**
 * Exception thrown by online translation providers.
 */
class OnlineTranslationException(
    message: String,
    val providerId: String,
    val httpCode: Int? = null,
    val isRateLimited: Boolean = false,
    val isQuotaExceeded: Boolean = false,
    cause: Throwable? = null
) : Exception(message, cause)
