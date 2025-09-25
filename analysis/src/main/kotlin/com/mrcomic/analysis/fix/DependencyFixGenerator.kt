package com.mrcomic.analysis.fix

import com.mrcomic.analysis.model.*

/**
 * Generates fixes for dependency-related issues.
 */
class DependencyFixGenerator : AutoFixGenerator {
    
    override suspend fun generateFixes(analysisResult: AnalysisResult): List<Fix> {
        val fixes = mutableListOf<Fix>()
        
        analysisResult.dependencyIssues.forEach { issue ->
            when (issue.issueType) {
                DependencyIssueType.OUTDATED -> {
                    fixes.add(createVersionUpdateFix(issue))
                }
                DependencyIssueType.VULNERABLE -> {
                    fixes.add(createSecurityUpdateFix(issue))
                }
                DependencyIssueType.CONFLICTING -> {
                    fixes.add(createConflictResolutionFix(issue))
                }
                DependencyIssueType.UNUSED -> {
                    fixes.add(createRemovalFix(issue))
                }
                DependencyIssueType.MISSING -> {
                    fixes.add(createAdditionFix(issue))
                }
            }
        }
        
        return fixes
    }
    
    override fun canGenerateFixFor(issue: Issue): Boolean {
        return issue is DependencyIssue
    }
    
    override fun getPriority(): Int = 80
    
    private fun createVersionUpdateFix(issue: DependencyIssue): DependencyFix {
        val gradleChanges = if (issue.recommendedVersion != null) {
            listOf(
                GradleChange(
                    file = "gradle/libs.versions.toml",
                    changeType = ChangeType.MODIFY,
                    oldContent = "${issue.dependencyName} = \"${issue.currentVersion}\"",
                    newContent = "${issue.dependencyName} = \"${issue.recommendedVersion}\""
                )
            )
        } else {
            emptyList()
        }
        
        return DependencyFix(
            id = "update-${issue.dependencyName.replace(":", "-")}",
            description = "Update ${issue.dependencyName} from ${issue.currentVersion} to ${issue.recommendedVersion}",
            impact = Impact(
                riskLevel = RiskLevel.LOW,
                estimatedTimeMinutes = 5,
                affectedFiles = listOf("gradle/libs.versions.toml"),
                requiresManualReview = false
            ),
            autoApplicable = true,
            relatedIssues = listOf(issue.id),
            dependencyName = issue.dependencyName,
            oldVersion = issue.currentVersion,
            newVersion = issue.recommendedVersion ?: "latest",
            gradleChanges = gradleChanges
        )
    }
    
    private fun createSecurityUpdateFix(issue: DependencyIssue): DependencyFix {
        return DependencyFix(
            id = "security-update-${issue.dependencyName.replace(":", "-")}",
            description = "Security update for ${issue.dependencyName} to fix vulnerabilities",
            impact = Impact(
                riskLevel = RiskLevel.MEDIUM,
                estimatedTimeMinutes = 10,
                affectedFiles = listOf("gradle/libs.versions.toml"),
                requiresManualReview = true
            ),
            autoApplicable = true,
            relatedIssues = listOf(issue.id),
            dependencyName = issue.dependencyName,
            oldVersion = issue.currentVersion,
            newVersion = issue.recommendedVersion ?: "latest-secure",
            gradleChanges = listOf(
                GradleChange(
                    file = "gradle/libs.versions.toml",
                    changeType = ChangeType.MODIFY,
                    oldContent = "${issue.dependencyName} = \"${issue.currentVersion}\"",
                    newContent = "${issue.dependencyName} = \"${issue.recommendedVersion}\""
                )
            )
        )
    }
    
    private fun createConflictResolutionFix(issue: DependencyIssue): DependencyFix {
        return DependencyFix(
            id = "resolve-conflict-${issue.dependencyName.replace(":", "-")}",
            description = "Resolve version conflict for ${issue.dependencyName}",
            impact = Impact(
                riskLevel = RiskLevel.HIGH,
                estimatedTimeMinutes = 20,
                affectedFiles = listOf("build.gradle.kts", "gradle/libs.versions.toml"),
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            dependencyName = issue.dependencyName,
            oldVersion = issue.currentVersion,
            newVersion = issue.recommendedVersion ?: "resolved",
            gradleChanges = listOf(
                GradleChange(
                    file = "build.gradle.kts",
                    changeType = ChangeType.ADD,
                    oldContent = null,
                    newContent = """
                        configurations.all {
                            resolutionStrategy {
                                force("${issue.dependencyName}:${issue.recommendedVersion}")
                            }
                        }
                    """.trimIndent()
                )
            )
        )
    }
    
    private fun createRemovalFix(issue: DependencyIssue): DependencyFix {
        return DependencyFix(
            id = "remove-unused-${issue.dependencyName.replace(":", "-")}",
            description = "Remove unused dependency ${issue.dependencyName}",
            impact = Impact(
                riskLevel = RiskLevel.LOW,
                estimatedTimeMinutes = 3,
                affectedFiles = listOf("build.gradle.kts"),
                requiresManualReview = false
            ),
            autoApplicable = true,
            relatedIssues = listOf(issue.id),
            dependencyName = issue.dependencyName,
            oldVersion = issue.currentVersion,
            newVersion = "",
            gradleChanges = listOf(
                GradleChange(
                    file = "build.gradle.kts",
                    changeType = ChangeType.DELETE,
                    oldContent = "implementation(\"${issue.dependencyName}:${issue.currentVersion}\")",
                    newContent = ""
                )
            )
        )
    }
    
    private fun createAdditionFix(issue: DependencyIssue): DependencyFix {
        return DependencyFix(
            id = "add-missing-${issue.dependencyName.replace(":", "-")}",
            description = "Add missing dependency ${issue.dependencyName}",
            impact = Impact(
                riskLevel = RiskLevel.MEDIUM,
                estimatedTimeMinutes = 5,
                affectedFiles = listOf("build.gradle.kts", "gradle/libs.versions.toml"),
                requiresManualReview = true
            ),
            autoApplicable = true,
            relatedIssues = listOf(issue.id),
            dependencyName = issue.dependencyName,
            oldVersion = null,
            newVersion = issue.recommendedVersion ?: "latest",
            gradleChanges = listOf(
                GradleChange(
                    file = "gradle/libs.versions.toml",
                    changeType = ChangeType.ADD,
                    oldContent = null,
                    newContent = "${issue.dependencyName.replace(":", "-")} = \"${issue.recommendedVersion}\""
                ),
                GradleChange(
                    file = "build.gradle.kts",
                    changeType = ChangeType.ADD,
                    oldContent = null,
                    newContent = "implementation(libs.${issue.dependencyName.replace(":", ".")})"
                )
            )
        )
    }
}