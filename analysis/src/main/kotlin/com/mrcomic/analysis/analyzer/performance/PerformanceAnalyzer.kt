package com.mrcomic.analysis.analyzer.performance

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue

/**
 * Main performance analyzer that coordinates all performance-related analysis.
 */
class PerformanceAnalyzer : Analyzer {
    
    override val id = "performance"
    override val name = "Performance Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val buildPerformanceAnalyzer = BuildPerformanceAnalyzer()
    private val memoryAnalyzer = MemoryAnalyzer()
    // private val imageOptimizationAnalyzer = ImageOptimizationAnalyzer()
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Starting comprehensive performance analysis...")
        
        val allIssues = mutableListOf<Issue>()
        
        try {
            // Run build performance analysis
            if (buildPerformanceAnalyzer.canAnalyze(context)) {
                context.logger.info("Running build performance analysis...")
                val buildIssues = buildPerformanceAnalyzer.analyze(context)
                allIssues.addAll(buildIssues)
                context.logger.info("Build performance analysis found ${buildIssues.size} issues")
            }
            
            // Run memory analysis
            if (memoryAnalyzer.canAnalyze(context)) {
                context.logger.info("Running memory analysis...")
                val memoryIssues = memoryAnalyzer.analyze(context)
                allIssues.addAll(memoryIssues)
                context.logger.info("Memory analysis found ${memoryIssues.size} issues")
            }
            
            // Image optimization analysis placeholder
            context.logger.info("Image optimization analysis skipped (placeholder)")
            
            // Generate performance summary
            generatePerformanceSummary(context, allIssues)
            
            context.logger.info("Performance analysis completed. Total issues found: ${allIssues.size}")
            
        } catch (e: Exception) {
            context.logger.error("Performance analysis failed", e)
        }
        
        return allIssues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return buildPerformanceAnalyzer.canAnalyze(context) ||
               memoryAnalyzer.canAnalyze(context)
    }
    
    private fun generatePerformanceSummary(context: AnalysisContext, issues: List<Issue>) {
        val performanceIssues = issues.filterIsInstance<com.mrcomic.analysis.model.PerformanceIssue>()
        
        val summary = PerformanceSummary(
            totalIssues = performanceIssues.size,
            buildIssues = performanceIssues.count { it.performanceType.name.contains("BUILD") },
            memoryIssues = performanceIssues.count { it.performanceType.name.contains("MEMORY") },
            resourceIssues = performanceIssues.count { it.performanceType.name.contains("RESOURCE") },
            estimatedMemoryImpactMb = performanceIssues.mapNotNull { it.impact.memoryImpactMb }.sum(),
            performanceScore = calculatePerformanceScore(performanceIssues)
        )
        
        context.setMetadata("performance-summary", summary)
        
        context.logger.info("Performance Summary:")
        context.logger.info("  Total performance issues: ${summary.totalIssues}")
        context.logger.info("  Estimated memory impact: ${String.format("%.2f", summary.estimatedMemoryImpactMb)}MB")
        context.logger.info("  Performance score: ${summary.performanceScore}/100")
    }
    
    private fun calculatePerformanceScore(issues: List<com.mrcomic.analysis.model.PerformanceIssue>): Int {
        var score = 100
        
        issues.forEach { issue ->
            when (issue.severity) {
                com.mrcomic.analysis.model.Severity.CRITICAL -> score -= 20
                com.mrcomic.analysis.model.Severity.ERROR -> score -= 15
                com.mrcomic.analysis.model.Severity.WARNING -> score -= 10
                com.mrcomic.analysis.model.Severity.INFO -> score -= 5
            }
        }
        
        return maxOf(0, score)
    }
}

data class PerformanceSummary(
    val totalIssues: Int,
    val buildIssues: Int,
    val memoryIssues: Int,
    val resourceIssues: Int,
    val estimatedMemoryImpactMb: Double,
    val performanceScore: Int
)