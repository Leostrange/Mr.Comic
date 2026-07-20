package com.example.core.domain.translation.online

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URL
import java.net.URLEncoder
import javax.inject.Inject
import javax.inject.Singleton

/**
 * DeepL API translation provider.
 * Best quality for EU languages. Supports free and pro API keys.
 */
@Singleton
class DeepLTranslationProvider @Inject constructor() : OnlineTranslationProvider {

    override val providerName = "DeepL"
    override val providerId = "deepl"
    override val maxCharsPerRequest = 128_000
    override val costPer1kChars = 0.00002

    var apiKey: String = ""
    var useFreeApi: Boolean = true

    private val baseUrl get() = if (useFreeApi) "https://api-free.deepl.com" else "https://api.deepl.com"

    override suspend fun isConfigured() = apiKey.isNotBlank()

    override suspend fun isLanguagePairSupported(sourceLang: String, targetLang: String): Boolean {
        val supported = setOf("bg","cs","da","de","el","en","es","et","fi","fr","hu","id","it","ja","ko","lt","lv","nb","nl","pl","pt","ro","ru","sk","sl","sv","tr","uk","zh")
        return normalizeLang(sourceLang) in supported && normalizeLang(targetLang) in supported
    }

    override suspend fun translate(text: String, sourceLang: String, targetLang: String): String = withContext(Dispatchers.IO) {
        if (apiKey.isBlank()) throw OnlineTranslationException("DeepL API key not set", providerId)

        val formData = "text=${URLEncoder.encode(text, "UTF-8")}&source_lang=${normalizeLang(sourceLang).uppercase()}&target_lang=${normalizeLang(targetLang).uppercase()}&preserve_formatting=1"

        val conn = URL("$baseUrl/v2/translate").openConnection() as HttpURLConnection
        try {
            conn.requestMethod = "POST"
            conn.setRequestProperty("Authorization", "DeepL-Auth-Key $apiKey")
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded")
            conn.doOutput = true
            conn.connectTimeout = 15_000
            conn.readTimeout = 30_000

            OutputStreamWriter(conn.outputStream).use { it.write(formData) }

            val body = conn.inputStream.bufferedReader().use { it.readText() }
            if (conn.responseCode == 429) throw OnlineTranslationException("Rate limited", providerId, 429, isRateLimited = true)
            if (conn.responseCode == 456) throw OnlineTranslationException("Quota exceeded", providerId, 456, isQuotaExceeded = true)
            if (conn.responseCode !in 200..299) throw OnlineTranslationException("HTTP ${conn.responseCode}", providerId, conn.responseCode)

            JSONObject(body).getJSONArray("translations").getJSONObject(0).getString("text")
        } finally {
            conn.disconnect()
        }
    }

    private fun normalizeLang(lang: String) = when (lang.lowercase().take(2)) {
        "zh","cmn" -> "zh"; "nb","nn" -> "nb"; else -> lang.lowercase().take(2)
    }
}
