package io.leostrange.mrcomic.shared.translation

/**
 * Routes translation requests to the appropriate engine.
 * Platform-agnostic.
 */
interface LookupRouter {
    suspend fun lookup(
        text: String,
        sourceLanguage: String?,
        targetLanguage: String
    ): LookupResult
}

data class LookupResult(
    val translatedText: String,
    val sourceLanguage: String?,
    val engine: String
)
