package io.leostrange.mrcomic.core.model

/**
 * Configuration for a custom OpenAI-compatible AI provider.
 * 
 * The [id] follows the format "custom:<uuid>" to distinguish from built-in providers.
 * API keys are stored encrypted via SettingsSecretStore, referenced here by alias.
 */
data class CustomAiProviderConfig(
    val id: String,                          // "custom:<uuid>"
    val name: String,                        // User-friendly name
    val baseUrl: String,                     // e.g. "https://api.openrouter.ai/v1"
    val apiKeyAlias: String,                 // Key alias for encrypted storage
    val models: List<String>,                // Available models from this provider
    val selectedModel: String,               // Currently selected model
    val enabled: Boolean = true,             // User toggle
    val extraHeaders: Map<String, String> = emptyMap(),  // Optional custom headers
    val createdAt: Long,
    val updatedAt: Long
) {
    companion object {
        fun generateId(): String = "custom:${java.util.UUID.randomUUID()}"
        
        fun generateApiKeyAlias(providerId: String): String = "custom_ai_$providerId"
    }
    
    /**
     * Validates minimal configuration completeness.
     * Does not validate connectivity — use [io.leostrange.mrcomic.core.domain.translation.CustomAiProvider.testConnection].
     */
    fun isValid(): Boolean {
        if (name.isBlank() || baseUrl.isBlank() || apiKeyAlias.isBlank()) return false
        if (!id.startsWith("custom:")) return false
        if (models.isEmpty() || selectedModel.isBlank()) return false
        return true
    }
    
    /**
     * Basic URL format validation — must start with http:// or https://
     */
    fun hasValidUrl(): Boolean {
        val trimmed = baseUrl.trim()
        return trimmed.startsWith("https://") || trimmed.startsWith("http://")
    }
}
