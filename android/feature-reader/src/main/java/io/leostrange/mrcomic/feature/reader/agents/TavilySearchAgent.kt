package io.leostrange.mrcomic.feature.reader.agents

import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.URL
import org.json.JSONArray

/**
 * Tavily Search — умный веб-поиск.
 * Используется для поиска багов, документации, решений в реальном времени.
 */
internal class TavilySearchAgent {

    private val apiKey = "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"
    private val apiUrl = "https://api.tavily.com"

    data class SearchResult(
        val title: String,
        val url: String,
        val content: String,
        val score: Double
    )

    /**
     * Поиск в интернете через Tavily.
     * Используется для:
     * - Поиска документации по API
     * - Поиска багов в коде
     * - Поиска решений для проблем
     * - Поиска примеров кода
     */
    fun search(query: String, depth: String = "comprehensive"): List<SearchResult> {
        val url = URL("$apiUrl/search")
        val connection = url.openConnection() as HttpURLConnection
        connection.requestMethod = "POST"
        connection.setRequestProperty("Content-Type", "application/json")
        connection.setRequestProperty("Authorization", "Bearer $apiKey")

        val body = """
            {
                "query": "$query",
                "search_depth": "$depth",
                "include_answer": true,
                "max_results": 5
            }
        """.trimIndent()

        connection.doOutput = true
        connection.outputStream.write(body.toByteArray())

        val response = connection.inputStream.bufferedReader().readText()
        val json = JSONObject(response)
        val results = json.getJSONArray("results")

        return (0 until results.length()).map { i ->
            val item = results.getJSONObject(i)
            SearchResult(
                title = item.getString("title"),
                url = item.getString("url"),
                content = item.getString("content"),
                score = item.getDouble("score")
            )
        }
    }

    /**
     * Извлекает контент с веб-страниц.
     * Используется для глубокого анализа документации.
     */
    fun extract(urls: List<String>): String {
        val url = URL("$apiUrl/extract")
        val connection = url.openConnection() as HttpURLConnection
        connection.requestMethod = "POST"
        connection.setRequestProperty("Content-Type", "application/json")
        connection.setRequestProperty("Authorization", "Bearer $apiKey")

        val body = """
            {
                "urls": ${JSONArray(urls)},
                "include_images": false
            }
        """.trimIndent()

        connection.doOutput = true
        connection.outputStream.write(body.toByteArray())

        return connection.inputStream.bufferedReader().readText()
    }
}