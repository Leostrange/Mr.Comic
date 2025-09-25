package com.mrcomic.analysis.error

/**
 * Base class for all analysis-related errors.
 */
sealed class AnalysisError : Exception() {
    abstract val errorCode: String
    abstract val userMessage: String
    abstract val technicalDetails: String?
    abstract val recoverable: Boolean
}

/**
 * Error when project is not found or inaccessible.
 */
data class ProjectNotFoundError(
    val projectPath: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "PROJECT_NOT_FOUND"
    override val userMessage = "Project not found at path: $projectPath"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when project structure is invalid.
 */
data class InvalidProjectStructureError(
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "INVALID_PROJECT_STRUCTURE"
    override val userMessage = "Invalid project structure: $reason"
    override val recoverable = false
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when dependency resolution fails.
 */
data class DependencyResolutionError(
    val dependencyName: String,
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "DEPENDENCY_RESOLUTION_FAILED"
    override val userMessage = "Failed to resolve dependency '$dependencyName': $reason"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when security scanning fails.
 */
data class SecurityScanError(
    val scanType: String,
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "SECURITY_SCAN_FAILED"
    override val userMessage = "Security scan failed for $scanType: $reason"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when network operations fail.
 */
data class NetworkError(
    val service: String,
    val operation: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "NETWORK_ERROR"
    override val userMessage = "Network error accessing $service for $operation"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when configuration is invalid.
 */
data class ConfigurationError(
    val configKey: String,
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "CONFIGURATION_ERROR"
    override val userMessage = "Configuration error for '$configKey': $reason"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when analyzer execution fails.
 */
data class AnalyzerExecutionError(
    val analyzerName: String,
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "ANALYZER_EXECUTION_FAILED"
    override val userMessage = "Analyzer '$analyzerName' failed: $reason"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}

/**
 * Error when fix application fails.
 */
data class FixApplicationError(
    val fixId: String,
    val reason: String,
    override val technicalDetails: String? = null
) : AnalysisError() {
    override val errorCode = "FIX_APPLICATION_FAILED"
    override val userMessage = "Failed to apply fix '$fixId': $reason"
    override val recoverable = true
    override val message = "$userMessage${technicalDetails?.let { " - $it" } ?: ""}"
}