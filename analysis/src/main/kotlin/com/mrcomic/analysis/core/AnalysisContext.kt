package com.mrcomic.analysis.core

import com.mrcomic.analysis.config.AnalysisConfig
import java.io.File

/**
 * Context information for analysis execution.
 */
data class AnalysisContext(
    val projectPath: String,
    val projectRoot: File,
    val config: AnalysisConfig,
    val logger: AnalysisLogger,
    val cache: AnalysisCache,
    val metadata: MutableMap<String, Any> = mutableMapOf()
) {
    /**
     * Gets a cached value or computes it if not present.
     */
    suspend fun <T> getOrCompute(key: String, computation: suspend () -> T): T {
        return cache.getOrCompute(key, computation)
    }
    
    /**
     * Stores metadata for use by other analyzers.
     */
    fun setMetadata(key: String, value: Any) {
        metadata[key] = value
    }
    
    /**
     * Retrieves metadata set by other analyzers.
     */
    @Suppress("UNCHECKED_CAST")
    fun <T> getMetadata(key: String): T? {
        return metadata[key] as? T
    }
}