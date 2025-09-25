package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.*
import java.io.File
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

/**
 * Generates analysis reports in Markdown format.
 */
class MarkdownReportGenerator : ReportGenerator {
    
    override suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    ) {
        val content = buildString {
            appendLine("# Mr.Comic Project Analysis Report")
            appendLine()
            appendLine("Generated on: ${formatTimestamp(analysisResult.analysisMetadata.analysisTimestamp)}")
            appendLine("Analysis duration: ${analysisResult.analysisMetadata.executionTimeMs}ms")
            appendLine("Overall score: **${analysisResult.overallScore}/100**")
            appendLine()
            
            // Executive Summary
            appendLine("## Executive Summary")
            appendLine()
            appendExecutiveSummary(analysisResult)
            appendLine()
            
            // Issues by Category
            appendLine("## Issues by Category")
            appendLine()
            appendIssuesByCategory(analysisResult)
            appendLine()
            
            // Architecture Issues
            if (analysisResult.architectureIssues.isNotEmpty()) {
                appendLine("## Architecture Issues")
                appendLine()
                appendArchitectureIssues(analysisResult.architectureIssues)
                appendLine()
            }
            
            // Dependency Issues
            if (analysisResult.dependencyIssues.isNotEmpty()) {
                appendLine("## Dependency Issues")
                appendLine()
                appendDependencyIssues(analysisResult.dependencyIssues)
                appendLine()
            }
            
            // Security Issues
            if (analysisResult.securityIssues.isNotEmpty()) {
                appendLine("## Security Issues")
                appendLine()
                appendSecurityIssues(analysisResult.securityIssues)
                appendLine()
            }
            
            // Performance Issues
            if (analysisResult.performanceIssues.isNotEmpty()) {
                appendLine("## Performance Issues")
                appendLine()
                appendPerformanceIssues(analysisResult.performanceIssues)
                appendLine()
            }
            
            // Code Quality Issues
            if (analysisResult.codeQualityIssues.isNotEmpty()) {
                appendLine("## Code Quality Issues")
                appendLine()
                appendCodeQualityIssues(analysisResult.codeQualityIssues)
                appendLine()
            }
            
            // Test Coverage
            appendLine("## Test Coverage")
            appendLine()
            appendTestCoverage(analysisResult.testCoverage)
            appendLine()
            
            // Improvement Plan
            if (improvementPlan != null) {
                appendLine("## Improvement Plan")
                appendLine()
                appendImprovementPlan(improvementPlan)
                appendLine()
            }
            
            // Recommendations
            appendLine("## Recommendations")
            appendLine()
            appendRecommendations(analysisResult)
        }
        
        outputFile.parentFile?.mkdirs()
        outputFile.writeText(content)
    }
    
    override fun getSupportedExtension(): String = "md"
    override fun getMimeType(): String = "text/markdown"
    
    private fun StringBuilder.appendExecutiveSummary(result: AnalysisResult) {
        val totalIssues = result.architectureIssues.size + result.dependencyIssues.size + 
                         result.securityIssues.size + result.performanceIssues.size + 
                         result.codeQualityIssues.size
        
        val criticalIssues = listOf(
            result.architectureIssues,
            result.dependencyIssues,
            result.securityIssues,
            result.performanceIssues,
            result.codeQualityIssues
        ).flatten().count { it.severity == Severity.CRITICAL }
        
        appendLine("- **Total Issues Found**: $totalIssues")
        appendLine("- **Critical Issues**: $criticalIssues")
        appendLine("- **Test Coverage**: ${String.format("%.1f", result.testCoverage.overallCoverage)}%")
        appendLine("- **Project Health**: ${getHealthStatus(result.overallScore)}")
    }
    
    private fun StringBuilder.appendIssuesByCategory(result: AnalysisResult) {
        appendLine("| Category | Critical | Error | Warning | Info | Total |")
        appendLine("|----------|----------|-------|---------|------|-------|")
        
        appendIssueRow("Architecture", result.architectureIssues)
        appendIssueRow("Dependencies", result.dependencyIssues)
        appendIssueRow("Security", result.securityIssues)
        appendIssueRow("Performance", result.performanceIssues)
        appendIssueRow("Code Quality", result.codeQualityIssues)
    }
    
    private fun StringBuilder.appendIssueRow(category: String, issues: List<Issue>) {
        val critical = issues.count { it.severity == Severity.CRITICAL }
        val error = issues.count { it.severity == Severity.ERROR }
        val warning = issues.count { it.severity == Severity.WARNING }
        val info = issues.count { it.severity == Severity.INFO }
        val total = issues.size
        
        appendLine("| $category | $critical | $error | $warning | $info | $total |")
    }
    
    private fun StringBuilder.appendArchitectureIssues(issues: List<ArchitectureIssue>) {
        issues.forEach { issue ->
            appendLine("### ${getSeverityIcon(issue.severity)} ${issue.description}")
            appendLine()
            appendLine("**Location**: `${issue.location}`")
            appendLine("**Affected Modules**: ${issue.affectedModules.joinToString(", ")}")
            if (issue.suggestion != null) {
                appendLine("**Suggestion**: ${issue.suggestion}")
            }
            appendLine()
        }
    }
    
    private fun StringBuilder.appendDependencyIssues(issues: List<DependencyIssue>) {
        issues.forEach { issue ->
            appendLine("### ${getSeverityIcon(issue.severity)} ${issue.description}")
            appendLine()
            appendLine("**Dependency**: `${issue.dependencyName}`")
            appendLine("**Current Version**: ${issue.currentVersion ?: "Unknown"}")
            if (issue.recommendedVersion != null) {
                appendLine("**Recommended Version**: ${issue.recommendedVersion}")
            }
            if (issue.suggestion != null) {
                appendLine("**Suggestion**: ${issue.suggestion}")
            }
            appendLine()
        }
    }
    
    private fun StringBuilder.appendSecurityIssues(issues: List<SecurityIssue>) {
        issues.forEach { issue ->
            appendLine("### ${getSeverityIcon(issue.severity)} ${issue.description}")
            appendLine()
            appendLine("**Location**: `${issue.location}`")
            appendLine("**Security Type**: ${issue.securityType}")
            if (issue.cveId != null) {
                appendLine("**CVE ID**: ${issue.cveId}")
            }
            if (issue.suggestion != null) {
                appendLine("**Suggestion**: ${issue.suggestion}")
            }
            appendLine()
        }
    }
    
    private fun StringBuilder.appendPerformanceIssues(issues: List<PerformanceIssue>) {
        issues.forEach { issue ->
            appendLine("### ${getSeverityIcon(issue.severity)} ${issue.description}")
            appendLine()
            appendLine("**Location**: `${issue.location}`")
            appendLine("**Performance Type**: ${issue.performanceType}")
            if (issue.impact.memoryImpactMb != null) {
                appendLine("**Memory Impact**: ${String.format("%.2f", issue.impact.memoryImpactMb)}MB")
            }
            if (issue.suggestion != null) {
                appendLine("**Suggestion**: ${issue.suggestion}")
            }
            appendLine()
        }
    }
    
    private fun StringBuilder.appendCodeQualityIssues(issues: List<CodeQualityIssue>) {
        issues.forEach { issue ->
            appendLine("### ${getSeverityIcon(issue.severity)} ${issue.description}")
            appendLine()
            appendLine("**Location**: `${issue.location}`")
            appendLine("**Quality Type**: ${issue.qualityType}")
            if (issue.suggestion != null) {
                appendLine("**Suggestion**: ${issue.suggestion}")
            }
            appendLine()
        }
    }
    
    private fun StringBuilder.appendTestCoverage(coverage: TestCoverageReport) {
        appendLine("**Overall Coverage**: ${String.format("%.1f", coverage.overallCoverage)}%")
        appendLine()
        
        if (coverage.moduleCoverage.isNotEmpty()) {
            appendLine("### Coverage by Module")
            appendLine()
            appendLine("| Module | Line Coverage | Branch Coverage | Method Coverage |")
            appendLine("|--------|---------------|-----------------|-----------------|")
            
            coverage.moduleCoverage.forEach { (module, moduleCoverage) ->
                appendLine("| $module | ${String.format("%.1f", moduleCoverage.lineCoverage)}% | ${String.format("%.1f", moduleCoverage.branchCoverage)}% | ${String.format("%.1f", moduleCoverage.methodCoverage)}% |")
            }
            appendLine()
        }
        
        if (coverage.uncoveredFiles.isNotEmpty()) {
            appendLine("### Files Without Coverage")
            appendLine()
            coverage.uncoveredFiles.take(10).forEach { file ->
                appendLine("- `${file.filePath}` (${file.lineCount} lines, importance: ${file.importance})")
            }
            if (coverage.uncoveredFiles.size > 10) {
                appendLine("- ... and ${coverage.uncoveredFiles.size - 10} more files")
            }
        }
    }
    
    private fun StringBuilder.appendImprovementPlan(plan: ImprovementPlan) {
        appendLine("**Estimated Impact**: ${plan.estimatedImpact.expectedScoreImprovement} points improvement")
        appendLine("**Risk Level**: ${plan.estimatedImpact.riskLevel}")
        appendLine("**Estimated Time**: ${plan.estimatedImpact.estimatedTimeHours} hours")
        appendLine()
        
        if (plan.prioritizedActions.isNotEmpty()) {
            appendLine("### Prioritized Actions")
            appendLine()
            plan.prioritizedActions.take(10).forEach { action ->
                appendLine("${getPriorityIcon(action.priority)} **${action.title}**")
                appendLine("   - ${action.description}")
                appendLine("   - Estimated effort: ${action.estimatedEffort.timeHours} hours")
                appendLine()
            }
        }
    }
    
    private fun StringBuilder.appendRecommendations(result: AnalysisResult) {
        val recommendations = generateRecommendations(result)
        recommendations.forEach { recommendation ->
            appendLine("- $recommendation")
        }
    }
    
    private fun generateRecommendations(result: AnalysisResult): List<String> {
        val recommendations = mutableListOf<String>()
        
        if (result.overallScore < 70) {
            recommendations.add("Focus on addressing critical and error-level issues first")
        }
        
        if (result.testCoverage.overallCoverage < 80) {
            recommendations.add("Improve test coverage to at least 80%")
        }
        
        if (result.securityIssues.any { it.severity == Severity.CRITICAL }) {
            recommendations.add("Address critical security vulnerabilities immediately")
        }
        
        if (result.architectureIssues.any { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY }) {
            recommendations.add("Break circular dependencies to improve maintainability")
        }
        
        return recommendations
    }
    
    private fun getSeverityIcon(severity: Severity): String {
        return when (severity) {
            Severity.CRITICAL -> "🔴"
            Severity.ERROR -> "🟠"
            Severity.WARNING -> "🟡"
            Severity.INFO -> "🔵"
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
    
    private fun getHealthStatus(score: Int): String {
        return when {
            score >= 90 -> "Excellent 🟢"
            score >= 80 -> "Good 🟡"
            score >= 70 -> "Fair 🟠"
            else -> "Needs Improvement 🔴"
        }
    }
    
    private fun formatTimestamp(timestamp: Long): String {
        return Instant.ofEpochMilli(timestamp)
            .atZone(ZoneId.systemDefault())
            .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))
    }
}