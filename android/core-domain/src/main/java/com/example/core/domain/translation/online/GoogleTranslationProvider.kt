package com.example.core.domain.translation.online

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URL
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Google Cloud Translation API v2 provider.
 * Supports 130+ languages — widest coverage.
 */
@Singleton
class GoogleTranslationProvider @Inject constructor() : OnlineTranslationProvider {

    override val providerName = "Google Cloud"
    override val providerId = "google"
    override val maxCharsPerRequest = 30_000
    override val costPer1kChars = 0.00002

    var apiKey: String = ""

    override suspend fun isConfigured() = apiKey.isNotBlank()

    override suspend fun isLanguagePairSupported(sourceLang: String, targetLang: String) = true

    override suspend fun translate(text: String, sourceLang: String, targetLang: String): String = withContext(Dispatchers.IO) {
        if (apiKey.isBlank()) throw OnlineTranslationException("Google API key not set", providerId)

        val body = JSONObject().apply {
            put("q", JSONArray().put(text))
            put("source", sourceLang.take(2))
            put("target", targetLang.take(2))
            put("format", "text")
        }

        val conn = URL("https://translation.googleapis.com/language/translate/v2?key=$apiKey").openConnection() as HttpURLConnection
        try {
            conn.requestMethod = "POST"
            conn.setRequestProperty("Content-Type", "application/json")
            conn.doOutput = true
            conn.connectTimeout = 15_000
            conn.readTimeout = 30_000

            OutputStreamWriter(conn.outputStream).use { it.write(body.toString()) }

            val responseBody = conn.inputStream.bufferedReader().use { it.readText() }
            if (conn.responseCode == 429) throw OnlineTranslationException("Rate limited", providerId, 429, isRateLimited = true)
            if (conn.responseCode !in 200..299) throw OnlineTranslationException("HTTP ${conn.responseCode}", providerId, conn.responseCode)

            JSONObject(responseBody).getJSONObject("data").getJSONArray("translations").getJSONObject(0).getString("translatedText")
        } finally {
            conn.disconnect()
        }
    }
}
