package com.example.core.ui.error

import android.content.Context
import com.example.core.ui.R
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Centralized error handling for the application
 */
@Singleton
class ErrorHandler @Inject constructor(
    private val context: Context
) {
    
    /**
     * Convert application errors to user-friendly messages
     */
    fun handleError(error: Throwable): String {
        return when (error) {
            is SecurityException -> context.getString(R.string.error_permission_denied, error.message)
            is OutOfMemoryError -> context.getString(R.string.error_out_of_memory)
            is java.io.FileNotFoundException -> context.getString(R.string.error_file_not_found)
            is java.io.IOException -> context.getString(R.string.error_io_exception, error.message)
            is UnsupportedOperationException -> context.getString(R.string.error_unsupported_operation)
            else -> context.getString(R.string.error_unknown, error.message ?: "Unknown error")
        }
    }
    
    /**
     * Check if error should be reported to analytics
     */
    fun shouldReportToAnalytics(error: Throwable): Boolean {
        return when (error) {
            is SecurityException, is OutOfMemoryError, is java.io.IOException -> true
            else -> false
        }
    }
}

/**
 * Sealed class for application errors
 */
sealed class AppError : Exception() {
    object FileNotFoundError : AppError()
    data class CorruptedFile(override val message: String) : AppError()
    data class PermissionDenied(val uri: String) : AppError()
    data class OutOfMemory(val required: Long, val available: Long) : AppError()
    data class UnsupportedFormat(val format: String) : AppError()
    data class NetworkError(override val message: String) : AppError()
    data class ValidationError(val field: String, val value: String) : AppError()
}