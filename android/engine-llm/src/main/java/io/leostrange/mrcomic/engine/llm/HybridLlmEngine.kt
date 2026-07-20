package io.leostrange.mrcomic.engine.llm

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.util.concurrent.TimeUnit
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Hybrid LLM engine that prefers local inference when a model is available,
 * and falls back to OpenRouter API for online inference.
 *
 * This provides an immediate working path (online) while the local model
 * infrastructure is being set up.
 */
@Singleton
class HybridLlmEngine @Inject constructor(
    private val modelManager: LlmModelManager
) : LlmEngine {

    private val httpClient = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .build()

    private var apiKey: String = ""
    private var model: String = "openrouter/auto"

    fun configure(apiKey: String, model: String) {
        this.apiKey = apiKey
        this.model = model
    }

    override suspend fun isReady(): Boolean {
        // Ready if local model is available OR online API is configured
        return isModelAvailable() || apiKey.isNotBlank()
    }

    override suspend fun isModelAvailable(): Boolean {
        return modelManager.getDownloadedModels().isNotEmpty()
    }

    override suspend fun loadModel(): Boolean {
        // TODO: Load local model via MediaPipe or llama.cpp
        // For now, return true if online API is available
        return apiKey.isNotBlank()
    }

    override suspend fun unloadModel() {
        // TODO: Unload local model
    }

    override fun generate(prompt: String, config: LlmGenerationConfig): Flow<String> = flow {
        // Try local model first (TODO: implement)
        // Fall back to online
        if (apiKey.isNotBlank()) {
            val result = generateOnline(prompt, config)
            emit(result)
        } else {
            emit("[LLM not configured. Set an API key in Settings > AI Services]")
        }
    }

    override suspend fun generateText(prompt: String, config: LlmGenerationConfig): String {
        if (apiKey.isNotBlank()) {
            return generateOnline(prompt, config)
        }
        return "[LLM not configured]"
    }

    private suspend fun generateOnline(prompt: String, config: LlmGenerationConfig): String = withContext(Dispatchers.IO) {
        try {
            val messages = JSONArray().apply {
                put(JSONObject().apply {
                    put("role", "user")
                    put("content", prompt)
                })
            }

            val body = JSONObject().apply {
                put("model", model)
                put("messages", messages)
                put("max_tokens", config.maxTokens)
                put("temperature", config.temperature.toDouble())
                put("top_p", config.topP.toDouble())
            }

            val request = Request.Builder()
                .url("https://openrouter.ai/api/v1/chat/completions")
                .addHeader("Authorization", "Bearer $apiKey")
                .addHeader("HTTP-Referer", "https://mrcomic.local")
                .addHeader("X-Title", "Mr.Comic")
                .post(body.toString().toRequestBody("application/json".toMediaType()))
                .build()

            val response = httpClient.newCall(request).execute()
            val responseBody = response.body?.string() ?: ""

            if (!response.isSuccessful) {
                Log.w("HybridLlmEngine", "API error ${response.code}: $responseBody")
                return@withContext "[API error: ${response.code}]"
            }

            val json = JSONObject(responseBody)
            json.getJSONArray("choices")
                .getJSONObject(0)
                .getJSONObject("message")
                .getString("content")
                .trim()
        } catch (e: Exception) {
            Log.e("HybridLlmEngine", "Online generation failed", e)
            "[Error: ${e.message}]"
        }
    }
}
