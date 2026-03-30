package com.example.core.data.preferences

import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey

object PerformancePreferencesKeys {
    val PERF_PROFILE = stringPreferencesKey("perf_profile")
    val PERF_RENDER_QUALITY = stringPreferencesKey("perf_render_quality")
    val PERF_COVER_CACHE_MB = intPreferencesKey("perf_cover_cache_mb")
    val PERF_PAGE_CACHE_COUNT = intPreferencesKey("perf_page_cache_count")
    val PERF_FTS_SEARCH_ENABLED = booleanPreferencesKey("perf_fts_search_enabled")
    val PERF_STARTUP_PRELOAD_ENABLED = booleanPreferencesKey("perf_startup_preload_enabled")
    val PERF_REDUCED_ANIMATIONS = booleanPreferencesKey("perf_reduced_animations")
}

object PerformanceDefaults {
    const val PROFILE = "AUTO"
    const val RENDER_QUALITY = "AUTO"
    const val COVER_CACHE_MB = 256
    const val PAGE_CACHE_COUNT = 5
    const val FTS_SEARCH = true
    const val STARTUP_PRELOAD = true
    const val REDUCED_ANIM = false
}

enum class PerfProfile(val storedValue: String) {
    AUTO("AUTO"),
    QUALITY("QUALITY"),
    BALANCED("BALANCED"),
    ECONOMY("ECONOMY");

    companion object {
        fun fromStored(value: String?) = entries.firstOrNull { it.storedValue == value } ?: AUTO
    }
}

enum class PerfRenderQuality(val storedValue: String) {
    AUTO("AUTO"),
    HIGH("HIGH"),
    MEDIUM("MEDIUM"),
    LOW("LOW");

    companion object {
        fun fromStored(value: String?) = entries.firstOrNull { it.storedValue == value } ?: AUTO
    }
}
