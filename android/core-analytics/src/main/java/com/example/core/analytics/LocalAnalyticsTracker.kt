package com.example.core.analytics

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Локальная реализация аналитики для разработки и тестирования
 * Логирует события в Logcat вместо отправки на внешние сервисы
 */
@Singleton
class LocalAnalyticsTracker @Inject constructor() : AnalyticsTracker {
    
    private var isTrackingEnabled = true
    private var currentUserId: String? = null
    private val userProperties = mutableMapOf<String, Any>()
    
    companion object {
        private const val TAG = "Analytics"
    }

    override suspend fun trackEvent(event: AnalyticsEvent) = withContext(Dispatchers.IO) {
        if (!isTrackingEnabled) return@withContext
        
        val logMessage = buildString {
            append("📊 EVENT: ${event.eventName}")
            if (event.parameters.isNotEmpty()) {
                append("\n   Parameters: ${event.parameters}")
            }
            currentUserId?.let { append("\n   User ID: $it") }
            if (userProperties.isNotEmpty()) {
                append("\n   User Properties: $userProperties")
            }
        }
        
        Log.d(TAG, logMessage)
        
        // В production здесь будет отправка на Firebase Analytics, Mixpanel и т.д.
    }

    override suspend fun setUserProperties(properties: Map<String, Any>) = withContext(Dispatchers.IO) {
        if (!isTrackingEnabled) return@withContext
        
        userProperties.putAll(properties)
        Log.d(TAG, "👤 USER PROPERTIES UPDATED: $userProperties")
    }

    override suspend fun setUserId(userId: String) = withContext(Dispatchers.IO) {
        if (!isTrackingEnabled) return@withContext
        
        currentUserId = userId
        Log.d(TAG, "🆔 USER ID SET: $userId")
    }

    override suspend fun setTrackingEnabled(enabled: Boolean) {
        withContext(Dispatchers.IO) {
            isTrackingEnabled = enabled
            Log.d(TAG, "🔄 TRACKING ${if (enabled) "ENABLED" else "DISABLED"}")
        }
    }

    override suspend fun clearUserData() {
        withContext(Dispatchers.IO) {
            currentUserId = null
            userProperties.clear()
            Log.d(TAG, "🗑️ USER DATA CLEARED")
        }
    }
}
