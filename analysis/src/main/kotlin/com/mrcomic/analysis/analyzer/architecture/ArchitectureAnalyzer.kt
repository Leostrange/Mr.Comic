package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue

/**
 * Main architecture analyzer that coordinates all architecture-related analysis.
 */
class ArchitectureAnalyzer : Analyzer {
    
    override val id = "architecture"
    override val name = "Architecture Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val moduleStructureAnalyzer = ModuleStructureAnalyzer()
    private val circularDependencyAnalyzer = CircularDependencyAnalyzer()
    private val cleanArchitectureAnalyzer = CleanArchitectureAnalyzer()
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Starting comprehensive architecture analysis...")
        
        val allIssues = mutableListOf<Issue>()
        
        try {
            // Run module structure analysis first (provides foundation for other analyzers)
            if (moduleStructureAnalyzer.canAnalyze(context)) {
                context.logger.info("Running module structure analysis...")
                val moduleIssues = moduleStructureAnalyzer.analyze(context)
                allIssues.addAll(moduleIssues)
                context.logger.info("Module structure analysis found ${moduleIssues.size} issues")
            }
            
            // Run circular dependency analysis (depends on module structure)
            if (circularDependencyAnalyzer.canAnalyze(context)) {
                context.logger.info("Running circular dependency analysis...")
                val circularIssues = circularDependencyAnalyzer.analyze(context)
                allIssues.addAll(circularIssues)
                context.logger.info("Circular dependency analysis found ${circularIssues.size} issues")
            }
            
            // Run Clean Architecture analysis (depends on module structure)
            if (cleanArchitectureAnalyzer.canAnalyze(context)) {
                context.logger.info("Running Clean Architecture analysis...")
                val cleanArchIssues = cleanArchitectureAnalyzer.analyze(context)
                allIssues.addAll(cleanArchIssues)
                context.logger.info("Clean Architecture analysis found ${cleanArchIssues.size} issues")
            }
            
            // Generate architecture summary
            generateArchitectureSummary(context, allIssues)
            
            context.logger.info("Architecture analysis completed. Total issues found: ${allIssues.size}")
            
        } catch (e: Exception) {
            context.logger.error("Architecture analysis failed", e)
            // Individual analyzers handle their own errors, so we don't add additional error issues here
        }
        
        return allIssues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        // Can analyze if at least one sub-analyzer can analyze
        return moduleStructureAnalyzer.canAnalyze(context) ||
               circularDependencyAnalyzer.canAnalyze(context) ||
               cleanArchitectureAnalyzer.canAnalyze(context)
    }
    
    private fun generateArchitectureSummary(context: AnalysisContext, issues: List<Issue>) {
        val dependencyGraph = context.getMetadata<ModuleDependencyGraph>("dependency-graph")
        val layerStructure = context.getMetadata<LayerStructure>("layer-structure")
        
        if (dependencyGraph != null) {
            val summary = ArchitectureSummary(
                totalModules = dependencyGraph.getModules().size,
                modulesByType = dependencyGraph.getModules().groupBy { it.type }.mapValues { it.value.size },
                totalDependencies = dependencyGraph.getDependencies().size,
                layerDistribution = layerStructure?.layers?.mapValues { it.value.size } ?: emptyMap(),
                issuesByType = issues.groupBy { it::class.simpleName }.mapValues { it.value.size },
                architectureScore = calculateArchitectureScore(dependencyGraph, issues)
            )
            
            context.setMetadata("architecture-summary", summary)
            
            context.logger.info("Architecture Summary:")
            context.logger.info("  Total modules: ${summary.totalModules}")
            context.logger.info("  Total dependencies: ${summary.totalDependencies}")
            context.logger.info("  Architecture score: ${summary.architectureScore}/100")
            
            summary.modulesByType.forEach { (type, count) ->
                context.logger.info("  ${type.name} modules: $count")
            }
        }
    }
    
    private fun calculateArchitectureScore(dependencyGraph: ModuleDependencyGraph, issues: List<Issue>): Int {
        var score = 100
        
        // Deduct points for issues
        issues.forEach { issue ->
            when (issue.severity) {
                com.mrcomic.analysis.model.Severity.CRITICAL -> score -= 15
                com.mrcomic.analysis.model.Severity.ERROR -> score -= 10
                com.mrcomic.analysis.model.Severity.WARNING -> score -= 5
                com.mrcomic.analysis.model.Severity.INFO -> score -= 1
            }
        }
        
        // Bonus points for good architecture practices
        val modules = dependencyGraph.getModules()
        val hasProperLayering = modules.any { it.name.contains("core-domain") } &&
                               modules.any { it.name.contains("core-data") }
        
        if (hasProperLayering) {
            score += 10
        }
        
        val hasFeatureModules = modules.any { it.type == ModuleType.FEATURE }
        if (hasFeatureModules) {
            score += 5
        }
        
        return maxOf(0, minOf(100, score))
    }
}

/**
 * Summary of architecture analysis results.
 */
data class ArchitectureSummary(
    val totalModules: Int,
    val modulesByType: Map<ModuleType, Int>,
    val totalDependencies: Int,
    val layerDistribution: Map<ArchitectureLayer, Int>,
    val issuesByType: Map<String?, Int>,
    val architectureScore: Int
)