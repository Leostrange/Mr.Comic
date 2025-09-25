package com.mrcomic.analysis.model

/**
 * Base class for all types of fixes.
 */
sealed class Fix {
    abstract val id: String
    abstract val description: String
    abstract val impact: Impact
    abstract val autoApplicable: Boolean
    abstract val relatedIssues: List<String>
}

/**
 * Impact assessment for a fix.
 */
data class Impact(
    val riskLevel: RiskLevel,
    val estimatedTimeMinutes: Int,
    val affectedFiles: List<String>,
    val requiresManualReview: Boolean
)

/**
 * Fix for dependency-related issues.
 */
data class DependencyFix(
    override val id: String,
    override val description: String,
    override val impact: Impact,
    override val autoApplicable: Boolean,
    override val relatedIssues: List<String>,
    val dependencyName: String,
    val oldVersion: String?,
    val newVersion: String,
    val gradleChanges: List<GradleChange>
) : Fix()

/**
 * Fix for architecture-related issues.
 */
data class ArchitectureFix(
    override val id: String,
    override val description: String,
    override val impact: Impact,
    override val autoApplicable: Boolean,
    override val relatedIssues: List<String>,
    val moduleChanges: List<ModuleChange>,
    val codeChanges: List<CodeChange>
) : Fix()

/**
 * Fix for security-related issues.
 */
data class SecurityFix(
    override val id: String,
    override val description: String,
    override val impact: Impact,
    override val autoApplicable: Boolean,
    override val relatedIssues: List<String>,
    val securityType: SecurityIssueType,
    val configChanges: List<ConfigChange>
) : Fix()

/**
 * Fix for performance-related issues.
 */
data class PerformanceFix(
    override val id: String,
    override val description: String,
    override val impact: Impact,
    override val autoApplicable: Boolean,
    override val relatedIssues: List<String>,
    val optimizationType: PerformanceOptimizationType,
    val expectedImprovement: PerformanceImprovement
) : Fix()

/**
 * Fix for code quality issues.
 */
data class CodeQualityFix(
    override val id: String,
    override val description: String,
    override val impact: Impact,
    override val autoApplicable: Boolean,
    override val relatedIssues: List<String>,
    val qualityType: CodeQualityType,
    val refactoringSteps: List<RefactoringStep>
) : Fix()

// Supporting data classes
data class GradleChange(
    val file: String,
    val changeType: ChangeType,
    val oldContent: String?,
    val newContent: String
)

data class ModuleChange(
    val moduleName: String,
    val changeType: ChangeType,
    val description: String
)

data class CodeChange(
    val filePath: String,
    val changeType: ChangeType,
    val lineNumber: Int?,
    val oldCode: String?,
    val newCode: String
)

data class ConfigChange(
    val configFile: String,
    val property: String,
    val oldValue: String?,
    val newValue: String
)

data class RefactoringStep(
    val description: String,
    val filePath: String,
    val automated: Boolean
)

enum class ChangeType {
    ADD, MODIFY, DELETE, MOVE
}

enum class PerformanceOptimizationType {
    MEMORY, CPU, IO, NETWORK, BUILD
}

data class PerformanceImprovement(
    val expectedSpeedupPercent: Double?,
    val expectedMemorySavingMb: Double?,
    val description: String
)