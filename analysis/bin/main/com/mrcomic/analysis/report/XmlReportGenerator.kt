package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.*
import java.io.File

/**
 * Generates analysis reports in XML format.
 */
class XmlReportGenerator : ReportGenerator {
    
    override suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    ) {
        val content = buildString {
            appendLine("<?xml version=\"1.0\" encoding=\"UTF-8\"?>")
            appendLine("<analysisReport>")
            
            // Metadata
            appendLine("  <metadata>")
            appendLine("    <generatedAt>${System.currentTimeMillis()}</generatedAt>")
            appendLine("    <analysisTimestamp>${analysisResult.analysisMetadata.analysisTimestamp}</analysisTimestamp>")
            appendLine("    <executionTimeMs>${analysisResult.analysisMetadata.executionTimeMs}</executionTimeMs>")
            appendLine("    <overallScore>${analysisResult.overallScore}</overallScore>")
            appendLine("    <projectPath>${escapeXml(analysisResult.analysisMetadata.projectPath)}</projectPath>")
            appendLine("  </metadata>")
            
            // Summary
            appendLine("  <summary>")
            val totalIssues = getTotalIssues(analysisResult)
            appendLine("    <totalIssues>$totalIssues</totalIssues>")
            appendLine("    <testCoverage>${analysisResult.testCoverage.overallCoverage}</testCoverage>")
            
            val issuesBySeverity = getIssuesBySeverity(analysisResult)
            appendLine("    <issuesBySeverity>")
            issuesBySeverity.forEach { (severity, count) ->
                appendLine("      <${severity.lowercase()}>$count</${severity.lowercase()}>")
            }
            appendLine("    </issuesBySeverity>")
            
            val issuesByCategory = getIssuesByCategory(analysisResult)
            appendLine("    <issuesByCategory>")
            issuesByCategory.forEach { (category, count) ->
                appendLine("      <$category>$count</$category>")
            }
            appendLine("    </issuesByCategory>")
            appendLine("  </summary>")
            
            // Issues
            appendLine("  <issues>")
            
            // Architecture Issues
            if (analysisResult.architectureIssues.isNotEmpty()) {
                appendLine("    <architecture>")
                analysisResult.architectureIssues.forEach { issue ->
                    appendIssueXml(issue, "architectureIssue")
                }
                appendLine("    </architecture>")
            }
            
            // Dependency Issues
            if (analysisResult.dependencyIssues.isNotEmpty()) {
                appendLine("    <dependencies>")
                analysisResult.dependencyIssues.forEach { issue ->
                    appendLine("      <dependencyIssue>")
                    appendIssueXml(issue, null)
                    appendLine("        <dependencyName>${escapeXml(issue.dependencyName)}</dependencyName>")
                    appendLine("        <currentVersion>${escapeXml(issue.currentVersion ?: "")}</currentVersion>")
                    appendLine("        <recommendedVersion>${escapeXml(issue.recommendedVersion ?: "")}</recommendedVersion>")
                    appendLine("        <issueType>${issue.issueType}</issueType>")
                    appendLine("      </dependencyIssue>")
                }
                appendLine("    </dependencies>")
            }
            
            // Security Issues
            if (analysisResult.securityIssues.isNotEmpty()) {
                appendLine("    <security>")
                analysisResult.securityIssues.forEach { issue ->
                    appendLine("      <securityIssue>")
                    appendIssueXml(issue, null)
                    appendLine("        <securityType>${issue.securityType}</securityType>")
                    if (issue.cveId != null) {
                        appendLine("        <cveId>${escapeXml(issue.cveId)}</cveId>")
                    }
                    appendLine("      </securityIssue>")
                }
                appendLine("    </security>")
            }
            
            // Performance Issues
            if (analysisResult.performanceIssues.isNotEmpty()) {
                appendLine("    <performance>")
                analysisResult.performanceIssues.forEach { issue ->
                    appendLine("      <performanceIssue>")
                    appendIssueXml(issue, null)
                    appendLine("        <performanceType>${issue.performanceType}</performanceType>")
                    appendLine("        <impact>")
                    if (issue.impact.estimatedSlowdownMs != null) {
                        appendLine("          <estimatedSlowdownMs>${issue.impact.estimatedSlowdownMs}</estimatedSlowdownMs>")
                    }
                    if (issue.impact.memoryImpactMb != null) {
                        appendLine("          <memoryImpactMb>${issue.impact.memoryImpactMb}</memoryImpactMb>")
                    }
                    appendLine("          <affectedOperations>")
                    issue.impact.affectedOperations.forEach { operation ->
                        appendLine("            <operation>${escapeXml(operation)}</operation>")
                    }
                    appendLine("          </affectedOperations>")
                    appendLine("        </impact>")
                    appendLine("      </performanceIssue>")
                }
                appendLine("    </performance>")
            }
            
            // Code Quality Issues
            if (analysisResult.codeQualityIssues.isNotEmpty()) {
                appendLine("    <codeQuality>")
                analysisResult.codeQualityIssues.forEach { issue ->
                    appendLine("      <codeQualityIssue>")
                    appendIssueXml(issue, null)
                    appendLine("        <qualityType>${issue.qualityType}</qualityType>")
                    if (issue.metrics.isNotEmpty()) {
                        appendLine("        <metrics>")
                        issue.metrics.forEach { (key, value) ->
                            appendLine("          <metric name=\"${escapeXml(key)}\">${escapeXml(value.toString())}</metric>")
                        }
                        appendLine("        </metrics>")
                    }
                    appendLine("      </codeQualityIssue>")
                }
                appendLine("    </codeQuality>")
            }
            
            appendLine("  </issues>")
            
            // Test Coverage
            appendLine("  <testCoverage>")
            appendLine("    <overall>${analysisResult.testCoverage.overallCoverage}</overall>")
            
            if (analysisResult.testCoverage.moduleCoverage.isNotEmpty()) {
                appendLine("    <modules>")
                analysisResult.testCoverage.moduleCoverage.forEach { (module, coverage) ->
                    appendLine("      <module name=\"${escapeXml(module)}\">")
                    appendLine("        <lineCoverage>${coverage.lineCoverage}</lineCoverage>")
                    appendLine("        <branchCoverage>${coverage.branchCoverage}</branchCoverage>")
                    appendLine("        <methodCoverage>${coverage.methodCoverage}</methodCoverage>")
                    appendLine("        <testCount>${coverage.testCount}</testCount>")
                    appendLine("      </module>")
                }
                appendLine("    </modules>")
            }
            
            if (analysisResult.testCoverage.uncoveredFiles.isNotEmpty()) {
                appendLine("    <uncoveredFiles>")
                analysisResult.testCoverage.uncoveredFiles.forEach { file ->
                    appendLine("      <file path=\"${escapeXml(file.filePath)}\" lineCount=\"${file.lineCount}\" importance=\"${file.importance}\"/>")
                }
                appendLine("    </uncoveredFiles>")
            }
            
            appendLine("  </testCoverage>")
            
            // Improvement Plan
            if (improvementPlan != null) {
                appendLine("  <improvementPlan>")
                appendLine("    <estimatedImpact>")
                appendLine("      <expectedScoreImprovement>${improvementPlan.estimatedImpact.expectedScoreImprovement}</expectedScoreImprovement>")
                appendLine("      <riskLevel>${improvementPlan.estimatedImpact.riskLevel}</riskLevel>")
                appendLine("      <estimatedTimeHours>${improvementPlan.estimatedImpact.estimatedTimeHours}</estimatedTimeHours>")
                appendLine("    </estimatedImpact>")
                
                if (improvementPlan.prioritizedActions.isNotEmpty()) {
                    appendLine("    <actions>")
                    improvementPlan.prioritizedActions.forEach { action ->
                        appendLine("      <action id=\"${escapeXml(action.id)}\">")
                        appendLine("        <title>${escapeXml(action.title)}</title>")
                        appendLine("        <description>${escapeXml(action.description)}</description>")
                        appendLine("        <priority>${action.priority}</priority>")
                        appendLine("        <category>${action.category}</category>")
                        appendLine("        <estimatedHours>${action.estimatedEffort.timeHours}</estimatedHours>")
                        appendLine("      </action>")
                    }
                    appendLine("    </actions>")
                }
                
                if (improvementPlan.fixes.isNotEmpty()) {
                    appendLine("    <fixes>")
                    improvementPlan.fixes.forEach { fix ->
                        appendLine("      <fix id=\"${escapeXml(fix.id)}\">")
                        appendLine("        <description>${escapeXml(fix.description)}</description>")
                        appendLine("        <autoApplicable>${fix.autoApplicable}</autoApplicable>")
                        appendLine("        <riskLevel>${fix.impact.riskLevel}</riskLevel>")
                        appendLine("        <estimatedTimeMinutes>${fix.impact.estimatedTimeMinutes}</estimatedTimeMinutes>")
                        appendLine("        <affectedFiles>")
                        fix.impact.affectedFiles.forEach { file ->
                            appendLine("          <file>${escapeXml(file)}</file>")
                        }
                        appendLine("        </affectedFiles>")
                        appendLine("      </fix>")
                    }
                    appendLine("    </fixes>")
                }
                
                appendLine("  </improvementPlan>")
            }
            
            appendLine("</analysisReport>")
        }
        
        outputFile.parentFile?.mkdirs()
        outputFile.writeText(content)
    }
    
    override fun getSupportedExtension(): String = "xml"
    override fun getMimeType(): String = "application/xml"
    
    private fun StringBuilder.appendIssueXml(issue: Issue, wrapperTag: String?) {
        val indent = if (wrapperTag != null) "      " else "        "
        
        if (wrapperTag != null) {
            appendLine("      <$wrapperTag>")
        }
        
        appendLine("${indent}<id>${escapeXml(issue.id)}</id>")
        appendLine("${indent}<severity>${issue.severity}</severity>")
        appendLine("${indent}<description>${escapeXml(issue.description)}</description>")
        appendLine("${indent}<location>${escapeXml(issue.location)}</location>")
        issue.suggestion?.let { suggestion ->
            appendLine("${indent}<suggestion>${escapeXml(suggestion)}</suggestion>")
        }
        
        if (wrapperTag != null) {
            appendLine("      </$wrapperTag>")
        }
    }
    
    private fun getTotalIssues(result: AnalysisResult): Int {
        return result.architectureIssues.size + result.dependencyIssues.size + 
               result.securityIssues.size + result.performanceIssues.size + 
               result.codeQualityIssues.size
    }
    
    private fun getIssuesBySeverity(result: AnalysisResult): Map<String, Int> {
        val allIssues = listOf(
            result.architectureIssues,
            result.dependencyIssues,
            result.securityIssues,
            result.performanceIssues,
            result.codeQualityIssues
        ).flatten()
        
        return mapOf(
            "CRITICAL" to allIssues.count { it.severity.name == "CRITICAL" },
            "ERROR" to allIssues.count { it.severity.name == "ERROR" },
            "WARNING" to allIssues.count { it.severity.name == "WARNING" },
            "INFO" to allIssues.count { it.severity.name == "INFO" }
        )
    }
    
    private fun getIssuesByCategory(result: AnalysisResult): Map<String, Int> {
        return mapOf(
            "architecture" to result.architectureIssues.size,
            "dependencies" to result.dependencyIssues.size,
            "security" to result.securityIssues.size,
            "performance" to result.performanceIssues.size,
            "codeQuality" to result.codeQualityIssues.size
        )
    }
    
    private fun escapeXml(text: String): String {
        return text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\"", "&quot;")
            .replace("'", "&apos;")
    }
}