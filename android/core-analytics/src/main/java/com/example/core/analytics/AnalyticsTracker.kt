package com.example.core.analytics

/**
 * Интерфейс для отслеживания событий аналитики
 */
interface AnalyticsTracker {
    /**
     * Отправить событие аналитики
     * @param event событие для отправки
     */
    suspend fun trackEvent(event: AnalyticsEvent)

    /**
     * Установить пользовательские свойства
     * @param properties свойства пользователя
     */
    suspend fun setUserProperties(properties: Map<String, Any>)

    /**
     * Установить идентификатор пользователя
     * @param userId уникальный идентификатор пользователя
     */
    suspend fun setUserId(userId: String)

    /**
     * Включить/выключить отслеживание аналитики
     * @param enabled true для включения, false для отключения
     */
    suspend fun setTrackingEnabled(enabled: Boolean)

    /**
     * Очистить все данные аналитики (например, при выходе из аккаунта)
     */
    suspend fun clearUserData()
}