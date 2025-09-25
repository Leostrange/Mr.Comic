package com.mrcomic.analysis.model

/**
 * Comprehensive test coverage report.
 */
data class TestCoverageReport(
    val overallCoverage: Double,
    val moduleCoverage: Map<String, ModuleCoverage>,
    val uncoveredFiles: List<UncoveredFile>,
    val criticalUncoveredCode: List<CriticalUncoveredCode>,
    val coverageMetrics: CoverageMetrics
)

/**
 * Coverage information for a specific module.
 */
data class ModuleCoverage(
    val moduleName: String,
    val lineCoverage: Double,
    val branchCoverage: Double,
    val methodCoverage: Double,
    val classCoverage: Double,
    val testCount: Int,
    val sourceFileCount: Int
)

/**
 * Information about files without test coverage.
 */
data class UncoveredFile(
    val filePath: String,
    val lineCount: Int,
    val complexity: Int,
    val importance: FileImportance
)

enum class FileImportance {
    LOW, MEDIUM, HIGH, CRITICAL
}

/**
 * Critical code that lacks test coverage.
 */
data class CriticalUncoveredCode(
    val filePath: String,
    val methodName: String,
    val lineNumbers: IntRange,
    val reason: String
)

/**
 * Overall coverage metrics.
 */
data class CoverageMetrics(
    val totalLines: Int,
    val coveredLines: Int,
    val totalBranches: Int,
    val coveredBranches: Int,
    val totalMethods: Int,
    val coveredMethods: Int
)