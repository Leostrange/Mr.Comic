package com.example.mrcomic.translation

import android.content.Context
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationResult
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
class OpenRouterOnlineTranslationEngine @Inject constructor(
    @ApplicationContext context: Context,
    private val offlineTranslationEngine: OfflineTranslationEngine
) : OnlineTranslationEngine {

    private val preferences = UserPreferences(context.dataStore)
    private val client = OkHttpClient()

    override suspend fun isConfigured(): Result<Boolean> = runCatchingResult {
        readApiKey().isNotBlank()
    }

    override suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult> = runCatchingResult {
        require(request.mode == TranslationMode.ONLINE_MT) {
            "OpenRouterOnlineTranslationEngine supports only ONLINE_MT requests"
        }

        val apiKey = readApiKey()
        if (apiKey.isBlank()) {
            return@runCatchingResult fallbackOfflineOrThrow(request)
        }

        val model = readModel()
        val response = runCatching {
            executeOpenRouterTranslation(
                apiKey = apiKey,
                model = model,
                request = request
            )
        }.getOrElse {
            return@runCatchingResult fallbackOfflineOrThrow(request)
        }

        TranslationResult(
            requestId = request.id,
            translatedText = response,
            provider = TranslationProviderType.ONLINE_PROVIDER,
            isOffline = false,
            cached = false
        )
    }

    private suspend fun readApiKey(): String =
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY, "").first().trim()

    private suspend fun readModel(): String =
        preferences.get(PreferencesKeys.TRANSLATION_OPENROUTER_MODEL, DEFAULT_OPENROUTER_MODEL)
            .first()
            .trim()
            .ifBlank { DEFAULT_OPENROUTER_MODEL }

    private suspend fun fallbackOfflineOrThrow(
        request: TranslationRequest
    ): TranslationResult {
        return when (
            val fallback = offlineTranslationEngine.translate(
                request.copy(mode = TranslationMode.OFFLINE_MT)
            )
        ) {
            is Result.Success -> fallback.data
            is Result.Error -> throw TranslationBackendUnavailableException(
                sourceLanguage = request.sourceLanguage,
                targetLanguage = request.targetLanguage
            )
            Result.Loading -> error("Offline fallback entered loading state unexpectedly")
        }
    }

    private suspend fun executeOpenRouterTranslation(
        apiKey: String,
        model: String,
        request: TranslationRequest
    ): String {
        val payload = JSONObject().apply {
            put("model", model)
            put("temperature", 0.2)
            put("messages", JSONArray().apply {
                put(
                    JSONObject().apply {
                        put("role", "system")
                        put("content", buildSystemPrompt(request))
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
                    "OpenRouter request failed (${response.code}): ${extractOpenRouterError(body)}"
                )
            }
            return parseOpenRouterTranslation(body)
        }
    }

    private fun buildSystemPrompt(request: TranslationRequest): String = buildString {
        append("You are a literary translation engine. ")
        append("Translate the user text from ")
        append(request.sourceLanguage)
        append(" to ")
        append(request.targetLanguage)
        append(". Preserve paragraph breaks, punctuation, numbering, emphasis, and inline formatting where possible. ")
        append("Do not explain anything. Do not add notes. Return only the translated text.")
    }

    private fun parseOpenRouterTranslation(body: String): String {
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
            throw IllegalStateException("OpenRouter returned an empty translation")
        }
        return content
    }

    private fun extractOpenRouterError(body: String): String {
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
