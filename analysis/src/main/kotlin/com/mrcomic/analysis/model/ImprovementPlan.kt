package com.mrcomic.analysis.model

/**
 * Plan for improving the project based on analysis results.
 */
data class ImprovementPlan(
    val fixes: List<Fix>,
    val prioritizedActions: List<Action>,
    val estimatedImpact: ImpactAssessment,
    val planMetadata: PlanMetadata
)

/**
 * Assessment of the expected impact of applying the improvement plan.
 */
data class ImpactAssessment(
    val expectedScoreImprovement: Int,
    val riskLevel: RiskLevel,
    val estimatedTimeHours: Double,
    val affectedModules: List<String>
)

/**
 * Metadata about the improvement plan.
 */
data class PlanMetadata(
    val generatedTimestamp: Long,
    val basedOnAnalysis: String, // Analysis ID or hash
    val planVersion: String
)

/**
 * Risk level for applying improvements.
 */
enum class RiskLevel {
    LOW, MEDIUM, HIGH, CRITICAL
}