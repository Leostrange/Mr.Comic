package com.mrcomic.analysis.model

/**
 * Base interface for all analysis issues.
 */
sealed interface Issue {
    val id: String
    val severity: Severity
    val description: String
    val location: String
    val suggestion: String?
}

/**
 * Severity levels for issues.
 */
enum class Severity {
    INFO, WARNING, ERROR, CRITICAL
}

/**
 * Architecture-related issues.
 */
data class ArchitectureIssue(
    override val id: String,
    override val severity: Severity,
    override val description: String,
    override val location: String,
    override val suggestion: String?,
    val violationType: ArchitectureViolationType,
    val affectedModules: List<String>
) : Issue

enum class ArchitectureViolationType {
    CIRCULAR_DEPENDENCY,
    LAYER_VIOLATION,
    DEPENDENCY_DIRECTION,
    MODULE_COUPLING,
    INTERFACE_SEGREGATION
}

/**
 * Dependency-related issues.
 */
data class DependencyIssue(
    override val id: String,
    override val severity: Severity,
    override val description: String,
    override val location: String,
    override val suggestion: String?,
    val dependencyName: String,
    val currentVersion: String?,
    val recommendedVersion: String?,
    val issueType: DependencyIssueType
) : Issue

enum class DependencyIssueType {
    OUTDATED,
    VULNERABLE,
    CONFLICTING,
    UNUSED,
    MISSING
}

/**
 * Code quality issues.
 */
data class CodeQualityIssue(
    override val id: String,
    override val severity: Severity,
    override val description: String,
    override val location: String,
    override val suggestion: String?,
    val qualityType: CodeQualityType,
    val metrics: Map<String, Any>
) : Issue

enum class CodeQualityType {
    LOW_TEST_COVERAGE,
    CODE_SMELL,
    COMPLEXITY,
    DUPLICATION,
    STYLE_VIOLATION
}

/**
 * Security-related issues.
 */
data class SecurityIssue(
    override val id: String,
    override val severity: Severity,
    override val description: String,
    override val location: String,
    override val suggestion: String?,
    val securityType: SecurityIssueType,
    val cveId: String?
) : Issue

enum class SecurityIssueType {
    VULNERABILITY,
    PERMISSION_MISUSE,
    DATA_EXPOSURE,
    ENCRYPTION_WEAKNESS,
    NETWORK_SECURITY
}

/**
 * Performance-related issues.
 */
data class PerformanceIssue(
    override val id: String,
    override val severity: Severity,
    override val description: String,
    override val location: String,
    override val suggestion: String?,
    val performanceType: PerformanceIssueType,
    val impact: PerformanceImpact
) : Issue

enum class PerformanceIssueType {
    MEMORY_LEAK,
    SLOW_OPERATION,
    INEFFICIENT_ALGORITHM,
    RESOURCE_WASTE,
    BUILD_PERFORMANCE
}

data class PerformanceImpact(
    val estimatedSlowdownMs: Long?,
    val memoryImpactMb: Double?,
    val affectedOperations: List<String>
)