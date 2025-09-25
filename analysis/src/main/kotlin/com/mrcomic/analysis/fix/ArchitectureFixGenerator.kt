package com.mrcomic.analysis.fix

import com.mrcomic.analysis.model.*

/**
 * Generates fixes for architecture-related issues.
 */
class ArchitectureFixGenerator : AutoFixGenerator {
    
    override suspend fun generateFixes(analysisResult: AnalysisResult): List<Fix> {
        val fixes = mutableListOf<Fix>()
        
        analysisResult.architectureIssues.forEach { issue ->
            when (issue.violationType) {
                ArchitectureViolationType.CIRCULAR_DEPENDENCY -> {
                    fixes.add(createCircularDependencyFix(issue))
                }
                ArchitectureViolationType.LAYER_VIOLATION -> {
                    fixes.add(createLayerViolationFix(issue))
                }
                ArchitectureViolationType.DEPENDENCY_DIRECTION -> {
                    fixes.add(createDependencyDirectionFix(issue))
                }
                ArchitectureViolationType.MODULE_COUPLING -> {
                    fixes.add(createModuleCouplingFix(issue))
                }
                ArchitectureViolationType.INTERFACE_SEGREGATION -> {
                    fixes.add(createInterfaceSegregationFix(issue))
                }
            }
        }
        
        return fixes
    }
    
    override fun canGenerateFixFor(issue: Issue): Boolean {
        return issue is ArchitectureIssue
    }
    
    override fun getPriority(): Int = 70
    
    private fun createCircularDependencyFix(issue: ArchitectureIssue): ArchitectureFix {
        val moduleChanges = mutableListOf<ModuleChange>()
        val codeChanges = mutableListOf<CodeChange>()
        
        // Suggest breaking the cycle by removing one dependency
        if (issue.affectedModules.size >= 2) {
            val fromModule = issue.affectedModules[0]
            val toModule = issue.affectedModules[1]
            
            moduleChanges.add(ModuleChange(
                moduleName = fromModule,
                changeType = ChangeType.MODIFY,
                description = "Remove direct dependency on $toModule"
            ))
            
            codeChanges.add(CodeChange(
                filePath = "$fromModule/build.gradle.kts",
                changeType = ChangeType.DELETE,
                lineNumber = null,
                oldCode = "implementation(project(\":$toModule\"))",
                newCode = ""
            ))
        }
        
        return ArchitectureFix(
            id = "fix-circular-dependency-${issue.id}",
            description = "Break circular dependency between ${issue.affectedModules.joinToString(" and ")}",
            impact = Impact(
                riskLevel = RiskLevel.HIGH,
                estimatedTimeMinutes = 60,
                affectedFiles = issue.affectedModules.map { "$it/build.gradle.kts" },
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            moduleChanges = moduleChanges,
            codeChanges = codeChanges
        )
    }
    
    private fun createLayerViolationFix(issue: ArchitectureIssue): ArchitectureFix {
        return ArchitectureFix(
            id = "fix-layer-violation-${issue.id}",
            description = "Fix layer violation by introducing proper interfaces",
            impact = Impact(
                riskLevel = RiskLevel.HIGH,
                estimatedTimeMinutes = 90,
                affectedFiles = issue.affectedModules.map { "$it/src/main/kotlin" },
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            moduleChanges = listOf(
                ModuleChange(
                    moduleName = issue.affectedModules.firstOrNull() ?: "unknown",
                    changeType = ChangeType.MODIFY,
                    description = "Introduce interface to invert dependency"
                )
            ),
            codeChanges = listOf(
                CodeChange(
                    filePath = "${issue.affectedModules.firstOrNull()}/src/main/kotlin/Repository.kt",
                    changeType = ChangeType.ADD,
                    lineNumber = 1,
                    oldCode = null,
                    newCode = "interface Repository { /* Define interface methods */ }"
                )
            )
        )
    }
    
    private fun createDependencyDirectionFix(issue: ArchitectureIssue): ArchitectureFix {
        return ArchitectureFix(
            id = "fix-dependency-direction-${issue.id}",
            description = "Fix dependency direction to follow Clean Architecture principles",
            impact = Impact(
                riskLevel = RiskLevel.MEDIUM,
                estimatedTimeMinutes = 45,
                affectedFiles = issue.affectedModules.map { "$it/build.gradle.kts" },
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            moduleChanges = listOf(
                ModuleChange(
                    moduleName = issue.affectedModules.firstOrNull() ?: "unknown",
                    changeType = ChangeType.MODIFY,
                    description = "Invert dependency direction"
                )
            ),
            codeChanges = emptyList()
        )
    }
    
    private fun createModuleCouplingFix(issue: ArchitectureIssue): ArchitectureFix {
        return ArchitectureFix(
            id = "fix-module-coupling-${issue.id}",
            description = "Reduce module coupling by extracting shared functionality",
            impact = Impact(
                riskLevel = RiskLevel.MEDIUM,
                estimatedTimeMinutes = 30,
                affectedFiles = issue.affectedModules.map { "$it/build.gradle.kts" },
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            moduleChanges = listOf(
                ModuleChange(
                    moduleName = "shared-module",
                    changeType = ChangeType.ADD,
                    description = "Create shared module for common functionality"
                )
            ),
            codeChanges = emptyList()
        )
    }
    
    private fun createInterfaceSegregationFix(issue: ArchitectureIssue): ArchitectureFix {
        return ArchitectureFix(
            id = "fix-interface-segregation-${issue.id}",
            description = "Apply Interface Segregation Principle",
            impact = Impact(
                riskLevel = RiskLevel.LOW,
                estimatedTimeMinutes = 20,
                affectedFiles = issue.affectedModules.map { "$it/src/main/kotlin" },
                requiresManualReview = true
            ),
            autoApplicable = false,
            relatedIssues = listOf(issue.id),
            moduleChanges = emptyList(),
            codeChanges = listOf(
                CodeChange(
                    filePath = "${issue.affectedModules.firstOrNull()}/src/main/kotlin/Interface.kt",
                    changeType = ChangeType.MODIFY,
                    lineNumber = null,
                    oldCode = "interface LargeInterface",
                    newCode = "interface SpecificInterface"
                )
            )
        )
    }
}