package com.mrcomic.analysis.config

/**
 * Configuration for analysis execution.
 */
data class AnalysisConfig(
    val enabledAnalyzers: Set<String> = emptySet(),
    val disabledAnalyzers: Set<String> = emptySet(),
    val securityScanLevel: SecurityScanLevel = SecurityScanLevel.STANDARD,
    val performanceThresholds: PerformanceThresholds = PerformanceThresholds.DEFAULT,
    val autoFixLevel: AutoFixLevel = AutoFixLevel.SAFE_ONLY,
    val reportFormat: ReportFormat = ReportFormat.MARKDOWN,
    val excludePatterns: List<String> = emptyList(),
    val includePatterns: List<String> = emptyList(),
    val parallelExecution: Boolean = true,
    val maxConcurrentAnalyzers: Int = 4,
    val cacheEnabled: Boolean = true,
    val timeoutMinutes: Int = 30,
    val outputDirectory: String = "analysis-output",
    val customSettings: Map<String, Any> = emptyMap()
)

/**
 * Security scan levels.
 */
enum class SecurityScanLevel {
    BASIC,      // Only basic security checks
    STANDARD,   // Standard security analysis
    THOROUGH,   // Deep security analysis
    PARANOID    // Maximum security checks
}

/**
 * Performance thresholds for analysis.
 */
data class PerformanceThresholds(
    val maxBuildTimeMinutes: Int,
    val maxMemoryUsageMb: Int,
    val minTestCoveragePercent: Double,
    val maxMethodComplexity: Int,
    val maxClassSize: Int
) {
    companion object {
        val DEFAULT = PerformanceThresholds(
            maxBuildTimeMinutes = 10,
            maxMemoryUsageMb = 512,
            minTestCoveragePercent = 80.0,
            maxMethodComplexity = 10,
            maxClassSize = 500
        )
    }
}

/**
 * Auto-fix application levels.
 */
enum class AutoFixLevel {
    NONE,           // No automatic fixes
    SAFE_ONLY,      // Only safe, non-breaking fixes
    MODERATE,       // Moderate risk fixes with user confirmation
    AGGRESSIVE      // All available fixes (use with caution)
}

/**
 * Report output formats.
 */
enum class ReportFormat {
    MARKDOWN,
    HTML,
    JSON,
    XML,
    CONSOLE
}