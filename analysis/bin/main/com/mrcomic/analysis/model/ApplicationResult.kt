package com.mrcomic.analysis.model

import com.mrcomic.analysis.error.AnalysisError

/**
 * Result of applying improvements to the project.
 */
data class ApplicationResult(
    val appliedFixes: List<AppliedFix>,
    val failedFixes: List<FailedFix>,
    val overallSuccess: Boolean,
    val postApplicationAnalysis: AnalysisResult?,
    val applicationMetadata: ApplicationMetadata
)

/**
 * Information about a successfully applied fix.
 */
data class AppliedFix(
    val fix: Fix,
    val appliedTimestamp: Long,
    val changedFiles: List<String>,
    val backupLocation: String?
)

/**
 * Information about a fix that failed to apply.
 */
data class FailedFix(
    val fix: Fix,
    val error: AnalysisError,
    val attemptTimestamp: Long
)

/**
 * Metadata about the application process.
 */
data class ApplicationMetadata(
    val startTimestamp: Long,
    val endTimestamp: Long,
    val totalFixesAttempted: Int,
    val successRate: Double
)