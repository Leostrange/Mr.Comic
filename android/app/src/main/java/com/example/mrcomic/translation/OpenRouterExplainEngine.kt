package com.example.mrcomic.translation

import android.content.Context
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.domain.translation.LlmExplainEngine
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.ExplainRequest
import com.example.core.model.ExplainResult
import com.example.core.model.TranslationProviderType
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.first
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class OpenRouterExplainEngine @Inject constructor(
    @ApplicationContext context: Context
) : LlmExplainEngine {

    private val preferences = UserPreferences(context.dataStore)
    private val client = OkHttpClient()

    override suspend fun isConfigured(): Result<Boolean> = runCatchingResult {
        readApiKey().isNotBlank()
    }

    override suspend fun explain(
        request: ExplainRequest
    ): Result<ExplainResult> = runCatchingResult {
        val normalizedText = request.text.trim()
        require(normalizedText.isNotEmpty()) { "Explain request text is empty" }

        val apiKey = readApiKey()
        if (apiKey.isBlank()) {
            return@runCatchingResult ExplainResult(
                requestId = request.id,
                explanation = "Online explain is not configured. Please set an OpenRouter API key in Settings.",
                provider = TranslationProviderType.ONLINE_PROVIDER,
                isOffline = false,
                confidence = 0f,
                cached = false,
                cleanedText = normalizedText
            )
        }

        val model = readModel()
        val language = request.targetLanguage ?: request.sourceLanguage ?: "en"
        val response = executeOpenRouterExplain(
            apiKey = apiKey,
            model = model,
            request = request,
            language = language
        )

        ExplainResult(
            requestId = request.id,
            explanation = response,
            provider = TranslationProviderType.ONLINE_PROVIDER,
            isOffline = false,
            confidence = 0.92f,
            cached = false,
            cleanedText = normalizedText
        )
    }

    private suspend fun readApiKey(): String =
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY, "").first().trim()

    private suspend fun readModel(): String =
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_MODEL, DEFAULT_OPENROUTER_MODEL)
            .first()
            .trim()
            .ifBlank { DEFAULT_OPENROUTER_MODEL }

    private fun executeOpenRouterExplain(
        apiKey: String,
        model: String,
        request: ExplainRequest,
        language: String
    ): String {
        val payload = JSONObject().apply {
            put("model", model)
            put("temperature", 0.3)
            put("max_tokens", 800)
            put("messages", JSONArray().apply {
                put(
                    JSONObject().apply {
                        put("role", "system")
                        put("content", buildSystemPrompt(request, language))
                    }
                )
                put(
                    JSONObject().apply {
                        put("role", "user")
                        put("content", request.text)
                    }
                )
            })
        }

        val httpRequest = Request.Builder()
            .url(OPENROUTER_CHAT_COMPLETIONS_URL)
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("Content-Type", "application/json")
            .addHeader("HTTP-Referer", OPENROUTER_REFERER)
            .addHeader("X-Title", OPENROUTER_APP_TITLE)
            .post(payload.toString().toRequestBody(JSON_MEDIA_TYPE))
            .build()

        client.newCall(httpRequest).execute().use { response ->
            val body = response.body?.string().orEmpty()
            if (!response.isSuccessful) {
                throw IllegalStateException(
                    "OpenRouter explain request failed (${response.code}): ${extractError(body)}"
                )
            }
            return parseResponse(body)
        }
    }

    private fun buildSystemPrompt(request: ExplainRequest, language: String): String = buildString {
        val langInstruction = when (language.lowercase()) {
            "ru" -> "Отвечай на русском языке."
            "ja" -> "日本語で回答してください。"
            "zh" -> "请用中文回答。"
            "ko" -> "한국어로 답변해주세요."
            else -> "Answer in English."
        }
        append("You are a knowledgeable literary and cultural assistant. ")
        append(langInstruction)
        append(" ")
        when (request.sourceType) {
            com.example.core.model.TranslationSourceType.COMIC_BLOCK ->
                append("The text comes from a comic page speech bubble or text block. ")
            com.example.core.model.TranslationSourceType.OCR_TEXT ->
                append("The text was extracted from an image using OCR. ")
            com.example.core.model.TranslationSourceType.BOOK_TEXT ->
                append("The text is a selected fragment from a book. ")
        }
        append("Explain the meaning, context, and cultural significance of the text. ")
        append("If the text contains idioms, wordplay, or cultural references, explain them. ")
        append("Keep the explanation concise (2-4 sentences). ")
        if (request.sourceLanguage != null && request.targetLanguage != null &&
            request.sourceLanguage != request.targetLanguage
        ) {
            append("The text is in ${request.sourceLanguage} and the user reads in ${request.targetLanguage}. ")
            append("Provide the explanation in ${request.targetLanguage}. ")
        }
    }

    private fun parseResponse(body: String): String {
        val root = JSONObject(body)
        val choices = root.optJSONArray("choices")
        val message = choices?.optJSONObject(0)?.optJSONObject("message")
        val content = when (val rawContent = message?.opt("content")) {
            is String -> rawContent
            is JSONArray -> buildString {
                for (index in 0 until rawContent.length()) {
                    val item = rawContent.opt(index)
                    when (item) {
                        is String -> append(item)
                        is JSONObject -> append(item.optString("text"))
                    }
                }
            }
            else -> ""
        }.trim()
        if (content.isBlank()) {
            throw IllegalStateException("OpenRouter returned an empty explanation")
        }
        return content
    }

    private fun extractError(body: String): String {
        return runCatching {
            val root = JSONObject(body)
            root.optJSONObject("error")
                ?.optString("message")
                ?.takeIf { it.isNotBlank() }
                ?: body
        }.getOrDefault(body.ifBlank { "Unknown error" })
    }

    companion object {
        private const val DEFAULT_OPENROUTER_MODEL = "openrouter/auto"
        private const val OPENROUTER_CHAT_COMPLETIONS_URL = "https://openrouter.ai/api/v1/chat/completions"
        private const val OPENROUTER_REFERER = "https://mrcomic.local"
        private const val OPENROUTER_APP_TITLE = "Mr.Comic"
        private val JSON_MEDIA_TYPE = "application/json; charset=utf-8".toMediaType()
    }
}
