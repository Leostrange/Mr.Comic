package io.leostrange.mrcomic.translation

import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.ExplainResult
import io.leostrange.mrcomic.core.model.TranslationProviderType
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.engine.llm.LlmEngine
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton

/**
 * LLM-powered explain engine that uses the on-device LLM (or online fallback)
 * to provide rich, contextual explanations of selected text.
 *
 * This replaces the heuristic-based [SafeLlmExplainEngine] when the LLM is available.
 */
@Singleton
class LlmPoweredExplainEngine @Inject constructor(
    private val llmEngine: LlmEngine
) : LlmExplainEngine {

    override suspend fun isConfigured(): Result<Boolean> {
        return Result.Success(llmEngine.isReady())
    }

    override suspend fun explain(request: ExplainRequest): Result<ExplainResult> {
        val text = request.text.trim()
        if (text.isEmpty()) {
            return Result.Error(IllegalArgumentException("Text is empty"))
        }

        val sourceLang = request.sourceLanguage ?: "auto"
        val targetLang = request.targetLanguage ?: "en"

        val prompt = buildExplainPrompt(text, sourceLang, targetLang, request)

        return try {
            val explanation = llmEngine.generateText(prompt)
            Result.Success(
                ExplainResult(
                    requestId = request.id,
                    explanation = explanation,
                    provider = TranslationProviderType.LLM_PROVIDER,
                    isOffline = llmEngine.isModelAvailable(),
                    confidence = 0.9f,
                    cached = false,
                    cleanedText = text
                )
            )
        } catch (e: Exception) {
            Result.Error(e)
        }
    }

    private fun buildExplainPrompt(
        text: String,
        sourceLang: String,
        targetLang: String,
        request: ExplainRequest
    ): String {
        val contextHint = when (request.sourceType) {
            TranslationSourceType.COMIC_BLOCK ->
                "This text is from a comic/manga speech bubble."
            TranslationSourceType.OCR_TEXT ->
                "This text was extracted via OCR and may contain recognition errors."
            else ->
                "This text is from a book."
        }

        return """You are a helpful reading assistant. Explain the following text to the reader.

$contextHint

Text to explain: "$text"

Source language: $sourceLang
Respond in: $targetLang

Provide:
1. A direct translation/meaning
2. Cultural context if relevant
3. Tone or nuance (formal, informal, slang, literary, etc.)
4. Any idiomatic meaning

Keep the explanation concise and helpful for a reader who may not be familiar with the language or culture."""
    }
}
