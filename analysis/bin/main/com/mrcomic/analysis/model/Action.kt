package com.mrcomic.analysis.model

/**
 * Prioritized action that should be taken to improve the project.
 */
data class Action(
    val id: String,
    val title: String,
    val description: String,
    val priority: Priority,
    val category: ActionCategory,
    val relatedFixes: List<String>,
    val estimatedEffort: EstimatedEffort,
    val prerequisites: List<String>,
    val manualSteps: List<ManualStep>
)

/**
 * Priority levels for actions.
 */
enum class Priority {
    LOW, MEDIUM, HIGH, CRITICAL
}

/**
 * Categories of actions.
 */
enum class ActionCategory {
    ARCHITECTURE,
    DEPENDENCIES,
    SECURITY,
    PERFORMANCE,
    CODE_QUALITY,
    TESTING,
    DOCUMENTATION
}

/**
 * Estimated effort required for an action.
 */
data class EstimatedEffort(
    val timeHours: Double,
    val complexity: Complexity,
    val skillLevel: SkillLevel,
    val riskLevel: RiskLevel
)

enum class Complexity {
    SIMPLE, MODERATE, COMPLEX, VERY_COMPLEX
}

enum class SkillLevel {
    JUNIOR, INTERMEDIATE, SENIOR, EXPERT
}

/**
 * Manual step that requires human intervention.
 */
data class ManualStep(
    val stepNumber: Int,
    val description: String,
    val estimatedTimeMinutes: Int,
    val verificationCriteria: String
)