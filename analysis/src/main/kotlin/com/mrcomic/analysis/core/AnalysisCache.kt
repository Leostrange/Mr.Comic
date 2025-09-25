package com.mrcomic.analysis.core

import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import java.util.concurrent.ConcurrentHashMap

/**
 * Cache interface for analysis results.
 */
interface AnalysisCache {
    suspend fun <T> get(key: String): T?
    suspend fun <T> put(key: String, value: T)
    suspend fun <T> getOrCompute(key: String, computation: suspend () -> T): T
    suspend fun invalidate(key: String)
    suspend fun clear()
}

/**
 * In-memory implementation of AnalysisCache.
 */
class InMemoryAnalysisCache : AnalysisCache {
    private val cache = ConcurrentHashMap<String, Any>()
    private val computationMutexes = ConcurrentHashMap<String, Mutex>()
    
    @Suppress("UNCHECKED_CAST")
    override suspend fun <T> get(key: String): T? {
        return cache[key] as? T
    }
    
    override suspend fun <T> put(key: String, value: T) {
        if (value != null) {
            cache[key] = value as Any
        }
    }
    
    override suspend fun <T> getOrCompute(key: String, computation: suspend () -> T): T {
        // Check if value already exists
        get<T>(key)?.let { return it }
        
        // Use mutex to prevent duplicate computation
        val mutex = computationMutexes.computeIfAbsent(key) { Mutex() }
        
        return mutex.withLock {
            // Double-check after acquiring lock
            get<T>(key) ?: run {
                val computed = computation()
                put(key, computed)
                computed
            }
        }
    }
    
    override suspend fun invalidate(key: String) {
        cache.remove(key)
        computationMutexes.remove(key)
    }
    
    override suspend fun clear() {
        cache.clear()
        computationMutexes.clear()
    }
}