package com.mrcomic.analysis.model

/**
 * Comprehensive result of project analysis containing all found issues and metrics.
 */
data class AnalysisResult(
    val architectureIssues: List<ArchitectureIssue>,
    val dependencyIssues: List<DependencyIssue>,
    val codeQualityIssues: List<CodeQualityIssue>,
    val securityIssues: List<SecurityIssue>,
    val performanceIssues: List<PerformanceIssue>,
    val testCoverage: TestCoverageReport,
    val overallScore: Int,
    val analysisMetadata: AnalysisMetadata
)

/**
 * Metadata about the analysis execution.
 */
data class AnalysisMetadata(
    val projectPath: String,
    val analysisTimestamp: Long,
    val analyzerVersions: Map<String, String>,
    val executionTimeMs: Long
)