package io.leostrange.mrcomic.core.domain.translation.online

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
 * Yandex Translate API v2 provider.
 * Best for Russian language pairs. Free tier: 10M chars/month.
 */
@Singleton
class YandexTranslationProvider @Inject constructor() : OnlineTranslationProvider {

    override val providerName = "Yandex"
    override val providerId = "yandex"
    override val maxCharsPerRequest = 10_000
    override val costPer1kChars = 0.00015

    var apiKey: String = ""
    var folderId: String = ""

    override suspend fun isConfigured() = apiKey.isNotBlank() && folderId.isNotBlank()

    override suspend fun isLanguagePairSupported(sourceLang: String, targetLang: String) = true

    override suspend fun translate(text: String, sourceLang: String, targetLang: String): String = withContext(Dispatchers.IO) {
        if (apiKey.isBlank()) throw OnlineTranslationException("Yandex API key not set", providerId)

        val body = JSONObject().apply {
            put("sourceLanguageCode", normalizeLang(sourceLang))
            put("targetLanguageCode", normalizeLang(targetLang))
            put("texts", JSONArray().put(text))
            put("folderId", folderId)
        }

        val conn = URL("https://translate.api.cloud.yandex.net/translate/v2/translate").openConnection() as HttpURLConnection
        try {
            conn.requestMethod = "POST"
            conn.setRequestProperty("Content-Type", "application/json")
            conn.setRequestProperty("Authorization", "Api-Key $apiKey")
            conn.doOutput = true
            conn.connectTimeout = 15_000
            conn.readTimeout = 30_000

            OutputStreamWriter(conn.outputStream).use { it.write(body.toString()) }

            val responseBody = conn.inputStream.bufferedReader().use { it.readText() }
            if (conn.responseCode == 429) throw OnlineTranslationException("Rate limited", providerId, 429, isRateLimited = true)
            if (conn.responseCode !in 200..299) throw OnlineTranslationException("HTTP ${conn.responseCode}", providerId, conn.responseCode)

            JSONObject(responseBody).getJSONArray("translations").getJSONObject(0).getString("text")
        } finally {
            conn.disconnect()
        }
    }

    private fun normalizeLang(lang: String) = when (lang.lowercase().take(2)) {
        "zh","cmn" -> "zh"; "nb","nn" -> "no"; else -> lang.lowercase().take(2)
    }
}
