package com.mrcomic.analysis.error

/**
 * Handles analysis errors and provides recovery suggestions.
 */
class ErrorHandler {
    
    /**
     * Handles an analysis error and returns an appropriate response.
     */
    fun handleError(error: AnalysisError): ErrorResponse {
        return when (error) {
            is ProjectNotFoundError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Please verify the project path exists and is accessible",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is InvalidProjectStructureError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Ensure this is a valid Android project with proper Gradle configuration",
                recoverable = error.recoverable,
                retryable = false,
                technicalDetails = error.technicalDetails
            )
            
            is DependencyResolutionError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Check network connectivity and repository accessibility",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is SecurityScanError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Try running the analysis with reduced security scan scope",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is NetworkError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Check internet connection and try again later",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is ConfigurationError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Review and correct the configuration file",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is AnalyzerExecutionError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Try disabling the failing analyzer or check its configuration",
                recoverable = error.recoverable,
                retryable = true,
                technicalDetails = error.technicalDetails
            )
            
            is FixApplicationError -> ErrorResponse(
                errorCode = error.errorCode,
                message = error.userMessage,
                suggestion = "Review the fix details and apply manually if needed",
                recoverable = error.recoverable,
                retryable = false,
                technicalDetails = error.technicalDetails
            )
        }
    }
    
    /**
     * Determines if an error should trigger a retry.
     */
    fun shouldRetry(error: AnalysisError, attemptCount: Int, maxAttempts: Int = 3): Boolean {
        if (attemptCount >= maxAttempts) return false
        
        return when (error) {
            is NetworkError -> true
            is DependencyResolutionError -> true
            is SecurityScanError -> attemptCount < 2 // Only retry once for security scans
            else -> false
        }
    }
}

/**
 * Response containing error information and recovery suggestions.
 */
data class ErrorResponse(
    val errorCode: String,
    val message: String,
    val suggestion: String,
    val recoverable: Boolean,
    val retryable: Boolean,
    val technicalDetails: String? = null
)