package com.example.core.domain.translation.online

import android.util.Log
import com.example.core.domain.translation.TranslatorEngine
import com.example.core.domain.translation.TranslationErrorCode
import com.example.core.domain.translation.TranslationException
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Online [TranslatorEngine] that tries multiple providers in priority order
 * with automatic fallback on failure.
 *
 * Provider priority:
 * 1. DeepL (best quality for EU languages)
 * 2. Google Cloud (widest language coverage)
 * 3. Yandex (best for Russian pairs)
 *
 * If a provider fails with a rate limit or quota error, it's skipped for
 * the remainder of the request batch. Network errors trigger fallback to
 * the next provider.
 */
@Singleton
class MultiProviderTranslatorEngine @Inject constructor(
    private val deepL: DeepLTranslationProvider,
    private val google: GoogleTranslationProvider,
    private val yandex: YandexTranslationProvider,
    private val policy: OnlineTranslationPolicy
) : TranslatorEngine {

    override val engineName: String = "Online (Multi-Provider)"
    override val requiresNetwork: Boolean = true

    /** Preferred provider order. Can be changed via settings. */
    var providerOrder: List<String> = listOf("deepl", "google", "yandex")

    /** Providers that are temporarily disabled due to rate limits. */
    private val disabledProviders = mutableSetOf<String>()

    override suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean {
        return getAvailableProviders(sourceLang, targetLang).isNotEmpty()
    }

    override suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean {
        return isLanguagePairAvailable(sourceLang, targetLang)
    }

    override suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String
    ): String {
        val normalized = text.trim()
        if (normalized.isEmpty()) {
            throw TranslationException("Empty input", TranslationErrorCode.EMPTY_INPUT)
        }

        // Privacy/cost check
        val blockReason = policy.checkAllowed()
        if (blockReason != null) {
            throw TranslationException(
                "Online translation blocked: $blockReason",
                TranslationErrorCode.NETWORK_ERROR
            )
        }

        val providers = getAvailableProviders(sourceLang, targetLang)
        if (providers.isEmpty()) {
            throw TranslationException(
                "No online translation providers configured",
                TranslationErrorCode.ENGINE_UNAVAILABLE
            )
        }

        var lastException: Exception? = null

        for (provider in providers) {
            if (provider.providerId in disabledProviders) continue

            // Retry with exponential backoff for transient errors
            var attempt = 0
            while (attempt <= MAX_RETRIES) {
                try {
                    val chunks = chunkText(normalized, provider.maxCharsPerRequest)
                    val translatedChunks = chunks.map { chunk ->
                        provider.translate(chunk, sourceLang, targetLang)
                    }
                    val result = translatedChunks.joinToString(" ")
                    policy.recordUsage(normalized.length)
                    return result
                } catch (e: OnlineTranslationException) {
                    Log.w("MultiProviderTranslator", "${provider.providerName} attempt ${attempt + 1} failed: ${e.message}")
                    lastException = e

                    if (e.isRateLimited || e.isQuotaExceeded) {
                        disabledProviders.add(provider.providerId)
                        Log.w("MultiProviderTranslator", "Disabling ${provider.providerName} due to limits")
                        break // Don't retry rate-limited providers
                    }

                    if (e.isRateLimited && attempt < MAX_RETRIES) {
                        val delay = RETRY_BASE_DELAY_MS * (1L shl attempt) // exponential backoff
                        Log.d("MultiProviderTranslator", "Retrying ${provider.providerName} in ${delay}ms")
                        kotlinx.coroutines.delay(delay)
                        attempt++
                        continue
                    }
                    break
                } catch (e: Exception) {
                    Log.w("MultiProviderTranslator", "${provider.providerName} error: ${e.message}")
                    lastException = e

                    if (attempt < MAX_RETRIES) {
                        val delay = RETRY_BASE_DELAY_MS * (1L shl attempt)
                        kotlinx.coroutines.delay(delay)
                        attempt++
                        continue
                    }
                    break
                }
            }
        }

        throw TranslationException(
            "All online providers failed: ${lastException?.message}",
            TranslationErrorCode.ENGINE_UNAVAILABLE,
            lastException
        )
    }

    private suspend fun getAvailableProviders(
        sourceLang: String,
        targetLang: String
    ): List<OnlineTranslationProvider> {
        val all = mapOf(
            "deepl" to deepL,
            "google" to google,
            "yandex" to yandex
        )

        return providerOrder
            .mapNotNull { id -> all[id] }
            .filter { provider ->
                try {
                    provider.isConfigured() && provider.isLanguagePairSupported(sourceLang, targetLang)
                } catch (e: Exception) {
                    false
                }
            }
    }

    /** Re-enable providers that were disabled by rate limits. */
    fun resetDisabledProviders() {
        disabledProviders.clear()
    }

    companion object {
        const val MAX_RETRIES = 2
        const val RETRY_BASE_DELAY_MS = 1000L

        fun chunkText(text: String, maxSize: Int): List<String> {
            if (text.length <= maxSize) return listOf(text)

            val chunks = mutableListOf<String>()
            var start = 0

            while (start < text.length) {
                var end = minOf(start + maxSize, text.length)

                // Try to break at sentence boundary
                if (end < text.length) {
                    val lastSentence = text.lastIndexOfAny(
                        charArrayOf('.', '!', '?', '。', '！', '？', '\n'),
                        end - 1
                    )
                    if (lastSentence > start + maxSize / 2) {
                        end = lastSentence + 1
                    }
                }

                chunks.add(text.substring(start, end))
                start = end
            }

            return chunks
        }
    }
}
