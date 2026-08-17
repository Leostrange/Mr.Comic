package io.leostrange.mrcomic.engine.llm.services

import io.leostrange.mrcomic.engine.llm.LlmEngine
import io.leostrange.mrcomic.engine.llm.LlmGenerationConfig
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import java.util.LinkedHashMap
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Result produced by [AiServicesCenter] operations.
 */
sealed class AiServiceResult {
    data class Success(
        val content: String,
        val isCached: Boolean = false
    ) : AiServiceResult()

    data class Error(
        val message: String,
        val throwable: Throwable? = null
    ) : AiServiceResult()
}

/**
 * Central coordinator for AI-powered reader features:
 * - Contextual text & slang explanations
 * - Chapter summarization
 * - Term & character lookups
 *
 * Implements in-memory LRU caching to eliminate redundant LLM calls for repeated selections.
 */
@Singleton
class AiServicesCenter @Inject constructor(
    private val llmEngine: LlmEngine
) {
    private val responseCache = object : LinkedHashMap<String, String>(32, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, String>?): Boolean {
            return size > 50
        }
    }

    /**
     * Checks if the underlying AI inference engine is ready to accept requests.
     */
    suspend fun isReady(): Boolean = llmEngine.isReady()

    /**
     * Generates a contextual explanation of the selected [text].
     */
    fun explainSelection(
        text: String,
        sourceLang: String = "auto",
        targetLang: String = "ru",
        contextHint: String? = null
    ): Flow<AiServiceResult> = flow {
        val normalized = text.trim()
        if (normalized.isBlank()) {
            emit(AiServiceResult.Error("Empty text"))
            return@flow
        }

        val cacheKey = "explain:$sourceLang:$targetLang:$normalized:$contextHint"
        val cached = synchronized(responseCache) { responseCache[cacheKey] }
        if (cached != null) {
            emit(AiServiceResult.Success(content = cached, isCached = true))
            return@flow
        }

        val prompt = buildExplainPrompt(normalized, sourceLang, targetLang, contextHint)
        try {
            val result = llmEngine.generateText(
                prompt = prompt,
                config = LlmGenerationConfig(
                    maxTokens = 512,
                    temperature = 0.3f,
                    topP = 0.9f
                )
            ).trim()

            synchronized(responseCache) {
                responseCache[cacheKey] = result
            }
            emit(AiServiceResult.Success(content = result, isCached = false))
        } catch (e: kotlinx.coroutines.CancellationException) {
            throw e
        } catch (e: Exception) {
            emit(AiServiceResult.Error(message = e.message ?: "Explanation failed", throwable = e))
        }
    }

    /**
     * Generates a concise summary of a chapter or large section.
     */
    fun summarizeChapter(
        chapterText: String,
        targetLang: String = "ru",
        maxBulletPoints: Int = 4
    ): Flow<AiServiceResult> = flow {
        val normalized = chapterText.trim()
        if (normalized.isBlank()) {
            emit(AiServiceResult.Error("Empty chapter text"))
            return@flow
        }

        // Limit input size to prevent token context overflow (~4000 characters)
        val truncatedInput = if (normalized.length > 4000) {
            normalized.take(4000) + "..."
        } else {
            normalized
        }

        val cacheKey = "summary:$targetLang:${truncatedInput.hashCode()}:$maxBulletPoints"
        val cached = synchronized(responseCache) { responseCache[cacheKey] }
        if (cached != null) {
            emit(AiServiceResult.Success(content = cached, isCached = true))
            return@flow
        }

        val prompt = buildSummaryPrompt(truncatedInput, targetLang, maxBulletPoints)
        try {
            val result = llmEngine.generateText(
                prompt = prompt,
                config = LlmGenerationConfig(
                    maxTokens = 384,
                    temperature = 0.2f,
                    topP = 0.85f
                )
            ).trim()

            synchronized(responseCache) {
                responseCache[cacheKey] = result
            }
            emit(AiServiceResult.Success(content = result, isCached = false))
        } catch (e: kotlinx.coroutines.CancellationException) {
            throw e
        } catch (e: Exception) {
            emit(AiServiceResult.Error(message = e.message ?: "Summarization failed", throwable = e))
        }
    }

    /**
     * Looks up a specific [term] within its surrounding [sentenceContext].
     */
    fun lookupTerm(
        term: String,
        sentenceContext: String,
        targetLang: String = "ru"
    ): Flow<AiServiceResult> = flow {
        val normalizedTerm = term.trim()
        if (normalizedTerm.isBlank()) {
            emit(AiServiceResult.Error("Empty term"))
            return@flow
        }

        val cacheKey = "lookup:$targetLang:$normalizedTerm:${sentenceContext.trim()}"
        val cached = synchronized(responseCache) { responseCache[cacheKey] }
        if (cached != null) {
            emit(AiServiceResult.Success(content = cached, isCached = true))
            return@flow
        }

        val prompt = buildLookupPrompt(normalizedTerm, sentenceContext.trim(), targetLang)
        try {
            val result = llmEngine.generateText(
                prompt = prompt,
                config = LlmGenerationConfig(
                    maxTokens = 256,
                    temperature = 0.2f,
                    topP = 0.9f
                )
            ).trim()

            synchronized(responseCache) {
                responseCache[cacheKey] = result
            }
            emit(AiServiceResult.Success(content = result, isCached = false))
        } catch (e: kotlinx.coroutines.CancellationException) {
            throw e
        } catch (e: Exception) {
            emit(AiServiceResult.Error(message = e.message ?: "Term lookup failed", throwable = e))
        }
    }

    /**
     * Clears cached responses.
     */
    fun clearCache() {
        synchronized(responseCache) {
            responseCache.clear()
        }
    }

    private fun buildExplainPrompt(
        text: String,
        sourceLang: String,
        targetLang: String,
        contextHint: String?
    ): String = buildString {
        appendLine("You are an intelligent reading assistant. Explain the following text clearly and concisely.")
        if (!contextHint.isNullOrBlank()) {
            appendLine("Context: $contextHint")
        }
        appendLine("Source Language: $sourceLang")
        appendLine("Response Language: $targetLang")
        appendLine()
        appendLine("Text to explain:")
        appendLine("\"$text\"")
        appendLine()
        appendLine("Explanation:")
    }

    private fun buildSummaryPrompt(
        chapterText: String,
        targetLang: String,
        maxBulletPoints: Int
    ): String = buildString {
        appendLine("You are a reading assistant. Summarize the following chapter text in $targetLang.")
        appendLine("Format the output as maximum $maxBulletPoints key bullet points.")
        appendLine()
        appendLine("Text:")
        appendLine(chapterText)
        appendLine()
        appendLine("Summary:")
    }

    private fun buildLookupPrompt(
        term: String,
        sentenceContext: String,
        targetLang: String
    ): String = buildString {
        appendLine("Explain the term \"$term\" as used in the following context, in $targetLang.")
        appendLine("Context: \"$sentenceContext\"")
        appendLine("Provide a brief definition and its contextual meaning.")
        appendLine()
        appendLine("Definition:")
    }
}
