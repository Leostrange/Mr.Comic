package com.mrcomic.analysis.analyzer.dependency

import kotlinx.coroutines.delay
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import java.io.IOException
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.time.Duration
import java.time.Instant
import java.util.concurrent.ConcurrentHashMap

/**
 * Client for interacting with Maven Central API to get dependency version information.
 */
class MavenCentralClient(
    private val httpClient: HttpClient = HttpClient.newBuilder()
        .connectTimeout(Duration.ofSeconds(10))
        .build(),
    private val json: Json = Json { ignoreUnknownKeys = true }
) {
    
    private val baseUrl = "https://search.maven.org/solrsearch/select"
    private val rateLimiter = RateLimiter(maxRequestsPerSecond = 10)
    private val cache = ConcurrentHashMap<String, CachedResponse<ArtifactSearchResponse>>()
    
    /**
     * Gets the latest version information for an artifact.
     */
    suspend fun getLatestVersion(group: String, artifact: String): LatestVersionInfo? {
        val cacheKey = "$group:$artifact"
        
        // Check cache first
        val cached = cache[cacheKey]
        if (cached != null && !cached.isExpired()) {
            return cached.data.response.docs.firstOrNull()?.let { doc ->
                LatestVersionInfo(
                    group = group,
                    artifact = artifact,
                    latestVersion = doc.latestVersion,
                    lastUpdated = doc.timestamp,
                    allVersions = listOf(doc.latestVersion) // API only returns latest in this call
                )
            }
        }
        
        return try {
            rateLimiter.acquire()
            
            val query = "g:\"$group\" AND a:\"$artifact\""
            val url = "$baseUrl?q=${java.net.URLEncoder.encode(query, "UTF-8")}&rows=1&wt=json"
            
            val request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Accept", "application/json")
                .header("User-Agent", "MrComic-Analysis-Tool/1.0")
                .GET()
                .build()
            
            val response = httpClient.send(request, HttpResponse.BodyHandlers.ofString())
            
            if (response.statusCode() == 200) {
                val searchResponse = json.decodeFromString<ArtifactSearchResponse>(response.body())
                
                // Cache the response
                cache[cacheKey] = CachedResponse(searchResponse, Instant.now().plusSeconds(3600)) // 1 hour cache
                
                searchResponse.response.docs.firstOrNull()?.let { doc ->
                    LatestVersionInfo(
                        group = group,
                        artifact = artifact,
                        latestVersion = doc.latestVersion,
                        lastUpdated = doc.timestamp,
                        allVersions = listOf(doc.latestVersion)
                    )
                }
            } else {
                null
            }
        } catch (e: Exception) {
            // Log error but don't fail the analysis
            println("Warning: Failed to get latest version for $group:$artifact - ${e.message}")
            null
        }
    }
    
    /**
     * Gets all available versions for an artifact.
     */
    suspend fun getAllVersions(group: String, artifact: String): List<String> {
        return try {
            rateLimiter.acquire()
            
            val query = "g:\"$group\" AND a:\"$artifact\""
            val url = "$baseUrl?q=${java.net.URLEncoder.encode(query, "UTF-8")}&rows=50&wt=json&core=gav"
            
            val request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Accept", "application/json")
                .header("User-Agent", "MrComic-Analysis-Tool/1.0")
                .GET()
                .build()
            
            val response = httpClient.send(request, HttpResponse.BodyHandlers.ofString())
            
            if (response.statusCode() == 200) {
                val searchResponse = json.decodeFromString<ArtifactSearchResponse>(response.body())
                searchResponse.response.docs.map { it.v }.distinct().sortedDescending()
            } else {
                emptyList()
            }
        } catch (e: Exception) {
            println("Warning: Failed to get all versions for $group:$artifact - ${e.message}")
            emptyList()
        }
    }
    
    /**
     * Checks if an artifact exists in Maven Central.
     */
    suspend fun artifactExists(group: String, artifact: String): Boolean {
        return getLatestVersion(group, artifact) != null
    }
    
    /**
     * Batch check for multiple artifacts.
     */
    suspend fun batchCheckVersions(artifacts: List<Pair<String, String>>): Map<String, LatestVersionInfo?> {
        val results = mutableMapOf<String, LatestVersionInfo?>()
        
        artifacts.forEach { (group, artifact) ->
            val key = "$group:$artifact"
            results[key] = getLatestVersion(group, artifact)
            
            // Small delay between requests to be respectful
            delay(100)
        }
        
        return results
    }
}

/**
 * Simple rate limiter to avoid overwhelming Maven Central API.
 */
class RateLimiter(private val maxRequestsPerSecond: Int) {
    private val requestTimes = mutableListOf<Long>()
    
    suspend fun acquire() {
        val now = System.currentTimeMillis()
        
        // Remove requests older than 1 second
        requestTimes.removeAll { it < now - 1000 }
        
        // If we're at the limit, wait
        if (requestTimes.size >= maxRequestsPerSecond) {
            val oldestRequest = requestTimes.minOrNull() ?: now
            val waitTime = 1000 - (now - oldestRequest)
            if (waitTime > 0) {
                delay(waitTime)
            }
        }
        
        requestTimes.add(System.currentTimeMillis())
    }
}

/**
 * Cached response with expiration.
 */
data class CachedResponse<T>(
    val data: T,
    val expiresAt: Instant
) {
    fun isExpired(): Boolean = Instant.now().isAfter(expiresAt)
}

/**
 * Information about the latest version of an artifact.
 */
data class LatestVersionInfo(
    val group: String,
    val artifact: String,
    val latestVersion: String,
    val lastUpdated: Long,
    val allVersions: List<String>
)

/**
 * Maven Central API response structures.
 */
@Serializable
data class ArtifactSearchResponse(
    val response: SearchResponse
)

@Serializable
data class SearchResponse(
    val numFound: Int,
    val docs: List<ArtifactDoc>
)

@Serializable
data class ArtifactDoc(
    val id: String,
    val g: String, // group
    val a: String, // artifact
    val v: String, // version
    val latestVersion: String,
    val timestamp: Long
)