package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.*
import java.io.File

/**
 * Generates analysis reports for console output.
 */
class ConsoleReportGenerator : ReportGenerator {
    
    override suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    ) {
        val content = buildString {
            appendLine("=" * 80)
            appendLine("Mr.Comic Project Analysis Report")
            appendLine("=" * 80)
            appendLine()
            
            // Summary
            appendLine("SUMMARY")
            appendLine("-" * 40)
            appendLine("Overall Score: ${analysisResult.overallScore}/100 ${getScoreIndicator(analysisResult.overallScore)}")
            appendLine("Test Coverage: ${String.format("%.1f", analysisResult.testCoverage.overallCoverage)}%")
            appendLine("Analysis Time: ${analysisResult.analysisMetadata.executionTimeMs}ms")
            appendLine()
            
            // Issues Overview
            val totalIssues = getTotalIssues(analysisResult)
            appendLine("ISSUES OVERVIEW")
            appendLine("-" * 40)
            appendLine("Total Issues: $totalIssues")
            
            if (totalIssues > 0) {
                appendLine()
                appendIssuesSummary(analysisResult)
                appendLine()
                
                // Critical Issues First
                val criticalIssues = getAllIssues(analysisResult).filter { it.severity == Severity.CRITICAL }
                if (criticalIssues.isNotEmpty()) {
                    appendLine("CRITICAL ISSUES (${criticalIssues.size})")
                    appendLine("-" * 40)
                    criticalIssues.forEach { issue ->
                        appendLine("🔴 ${issue.description}")
                        appendLine("   Location: ${issue.location}")
                        if (issue.suggestion != null) {
                            appendLine("   Fix: ${issue.suggestion}")
                        }
                        appendLine()
                    }
                }
                
                // Error Issues
                val errorIssues = getAllIssues(analysisResult).filter { it.severity == Severity.ERROR }
                if (errorIssues.isNotEmpty()) {
                    appendLine("ERROR ISSUES (${errorIssues.size})")
                    appendLine("-" * 40)
                    errorIssues.take(5).forEach { issue ->
                        appendLine("🟠 ${issue.description}")
                        appendLine("   Location: ${issue.location}")
                        appendLine()
                    }
                    if (errorIssues.size > 5) {
                        appendLine("   ... and ${errorIssues.size - 5} more error issues")
                        appendLine()
                    }
                }
                
                // Warning Issues (top 3)
                val warningIssues = getAllIssues(analysisResult).filter { it.severity == Severity.WARNING }
                if (warningIssues.isNotEmpty()) {
                    appendLine("TOP WARNING ISSUES (showing 3 of ${warningIssues.size})")
                    appendLine("-" * 40)
                    warningIssues.take(3).forEach { issue ->
                        appendLine("🟡 ${issue.description}")
                        appendLine("   Location: ${issue.location}")
                        appendLine()
                    }
                }
            }
            
            // Test Coverage Details
            if (analysisResult.testCoverage.moduleCoverage.isNotEmpty()) {
                appendLine("TEST COVERAGE BY MODULE")
                appendLine("-" * 40)
                analysisResult.testCoverage.moduleCoverage.forEach { (module, coverage) ->
                    val indicator = getCoverageIndicator(coverage.lineCoverage)
                    appendLine("$indicator $module: ${String.format("%.1f", coverage.lineCoverage)}%")
                }
                appendLine()
            }
            
            // Improvement Plan Summary
            if (improvementPlan != null) {
                appendLine("IMPROVEMENT PLAN")
                appendLine("-" * 40)
                appendLine("Expected Score Improvement: +${improvementPlan.estimatedImpact.expectedScoreImprovement} points")
                appendLine("Risk Level: ${improvementPlan.estimatedImpact.riskLevel}")
                appendLine("Estimated Time: ${improvementPlan.estimatedImpact.estimatedTimeHours} hours")
                appendLine()
                
                val topActions = improvementPlan.prioritizedActions.take(5)
                if (topActions.isNotEmpty()) {
                    appendLine("TOP PRIORITY ACTIONS:")
                    topActions.forEach { action ->
                        val priorityIcon = getPriorityIcon(action.priority)
                        appendLine("$priorityIcon ${action.title}")
                        appendLine("   ${action.description}")
                        appendLine("   Effort: ${action.estimatedEffort.timeHours}h")
                        appendLine()
                    }
                }
            }
            
            // Recommendations
            appendLine("RECOMMENDATIONS")
            appendLine("-" * 40)
            val recommendations = generateRecommendations(analysisResult)
            recommendations.forEach { recommendation ->
                appendLine("• $recommendation")
            }
            
            appendLine()
            appendLine("=" * 80)
            appendLine("Report generated at: ${java.time.Instant.now()}")
            appendLine("=" * 80)
        }
        
        outputFile.parentFile?.mkdirs()
        outputFile.writeText(content)
    }
    
    override fun getSupportedExtension(): String = "txt"
    override fun getMimeType(): String = "text/plain"
    
    private fun StringBuilder.appendIssuesSummary(result: AnalysisResult) {
        val categories = listOf(
            "Architecture" to result.architectureIssues,
            "Dependencies" to result.dependencyIssues,
            "Security" to result.securityIssues,
            "Performance" to result.performanceIssues,
            "Code Quality" to result.codeQualityIssues
        )
        
        categories.forEach { (category, issues) ->
            if (issues.isNotEmpty()) {
                val critical = issues.count { it.severity == Severity.CRITICAL }
                val error = issues.count { it.severity == Severity.ERROR }
                val warning = issues.count { it.severity == Severity.WARNING }
                val info = issues.count { it.severity == Severity.INFO }
                
                appendLine("$category: ${issues.size} total (🔴$critical 🟠$error 🟡$warning 🔵$info)")
            }
        }
    }
    
    private fun getTotalIssues(result: AnalysisResult): Int {
        return result.architectureIssues.size + result.dependencyIssues.size + 
               result.securityIssues.size + result.performanceIssues.size + 
               result.codeQualityIssues.size
    }
    
    private fun getAllIssues(result: AnalysisResult): List<Issue> {
        return listOf(
            result.architectureIssues,
            result.dependencyIssues,
            result.securityIssues,
            result.performanceIssues,
            result.codeQualityIssues
        ).flatten()
    }
    
    private fun getScoreIndicator(score: Int): String {
        return when {
            score >= 90 -> "🟢 Excellent"
            score >= 80 -> "🟡 Good"
            score >= 70 -> "🟠 Fair"
            else -> "🔴 Needs Improvement"
        }
    }
    
    private fun getCoverageIndicator(coverage: Double): String {
        return when {
            coverage >= 90 -> "🟢"
            coverage >= 80 -> "🟡"
            coverage >= 70 -> "🟠"
            else -> "🔴"
        }
    }
    
    private fun getPriorityIcon(priority: Priority): String {
        return when (priority) {
            Priority.CRITICAL -> "🔴"
            Priority.HIGH -> "🟠"
            Priority.MEDIUM -> "🟡"
            Priority.LOW -> "🔵"
        }
    }
    
    private fun generateRecommendations(result: AnalysisResult): List<String> {
        val recommendations = mutableListOf<String>()
        
        if (result.overallScore < 70) {
            recommendations.add("Focus on critical and error-level issues to improve overall score")
        }
        
        if (result.testCoverage.overallCoverage < 80) {
            recommendations.add("Increase test coverage to at least 80% for better code quality")
        }
        
        val criticalIssues = getAllIssues(result).count { it.severity == Severity.CRITICAL }
        if (criticalIssues > 0) {
            recommendations.add("Address all $criticalIssues critical issues immediately")
        }
        
        if (result.securityIssues.isNotEmpty()) {
            recommendations.add("Review and fix security vulnerabilities to protect user data")
        }
        
        if (result.performanceIssues.isNotEmpty()) {
            recommendations.add("Optimize performance issues to improve user experience")
        }
        
        if (recommendations.isEmpty()) {
            recommendations.add("Great job! Continue maintaining code quality and monitoring for new issues")
        }
        
        return recommendations
    }
    
    private operator fun String.times(count: Int): String {
        return this.repeat(count)
    }
}