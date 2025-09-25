package com.mrcomic.analysis.fix

import com.mrcomic.analysis.model.*

/**
 * Interface for generating automatic fixes for analysis issues.
 */
interface AutoFixGenerator {
    /**
     * Generates fixes for the given analysis result.
     */
    suspend fun generateFixes(analysisResult: AnalysisResult): List<Fix>
    
    /**
     * Checks if this generator can create fixes for the given issue type.
     */
    fun canGenerateFixFor(issue: Issue): Boolean
    
    /**
     * Gets the priority of this generator (higher = more important).
     */
    fun getPriority(): Int = 0
}

/**
 * Main implementation that coordinates all fix generators.
 */
class DefaultAutoFixGenerator(
    private val generators: List<AutoFixGenerator> = emptyList()
) : AutoFixGenerator {
    
    override suspend fun generateFixes(analysisResult: AnalysisResult): List<Fix> {
        val allFixes = mutableListOf<Fix>()
        
        // Collect all issues
        val allIssues = listOf(
            analysisResult.architectureIssues,
            analysisResult.dependencyIssues,
            analysisResult.codeQualityIssues,
            analysisResult.securityIssues,
            analysisResult.performanceIssues
        ).flatten()
        
        // Generate fixes for each issue
        allIssues.forEach { issue ->
            val applicableGenerators = generators
                .filter { it.canGenerateFixFor(issue) }
                .sortedByDescending { it.getPriority() }
            
            applicableGenerators.forEach { generator ->
                val fixes = generator.generateFixes(analysisResult)
                allFixes.addAll(fixes.filter { fix ->
                    fix.relatedIssues.contains(issue.id)
                })
            }
        }
        
        // Remove duplicates and prioritize
        return prioritizeFixes(allFixes.distinctBy { it.id })
    }
    
    override fun canGenerateFixFor(issue: Issue): Boolean {
        return generators.any { it.canGenerateFixFor(issue) }
    }
    
    private fun prioritizeFixes(fixes: List<Fix>): List<Fix> {
        return fixes.sortedWith(compareBy<Fix> { fix ->
            when (fix.impact.riskLevel) {
                RiskLevel.LOW -> 0
                RiskLevel.MEDIUM -> 1
                RiskLevel.HIGH -> 2
                RiskLevel.CRITICAL -> 3
            }
        }.thenBy { !it.autoApplicable }
         .thenBy { it.impact.estimatedTimeMinutes })
    }
}