package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.AnalysisResult
import com.mrcomic.analysis.model.ImprovementPlan
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import java.io.File

/**
 * Generates analysis reports in JSON format.
 */
class JsonReportGenerator : ReportGenerator {
    
    private val json = Json {
        prettyPrint = true
        ignoreUnknownKeys = true
    }
    
    override suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    ) {
        val report = JsonReport(
            metadata = JsonReportMetadata(
                generatedAt = System.currentTimeMillis(),
                analysisTimestamp = analysisResult.analysisMetadata.analysisTimestamp,
                executionTimeMs = analysisResult.analysisMetadata.executionTimeMs,
                overallScore = analysisResult.overallScore
            ),
            summary = JsonSummary(
                totalIssues = getTotalIssues(analysisResult),
                issuesBySeverity = getIssuesBySeverity(analysisResult),
                issuesByCategory = getIssuesByCategory(analysisResult),
                testCoverage = analysisResult.testCoverage.overallCoverage
            ),
            issues = JsonIssues(
                architecture = analysisResult.architectureIssues.map { it.toJsonIssue() },
                dependencies = analysisResult.dependencyIssues.map { it.toJsonIssue() },
                security = analysisResult.securityIssues.map { it.toJsonIssue() },
                performance = analysisResult.performanceIssues.map { it.toJsonIssue() },
                codeQuality = analysisResult.codeQualityIssues.map { it.toJsonIssue() }
            ),
            testCoverage = JsonTestCoverage(
                overall = analysisResult.testCoverage.overallCoverage,
                modules = analysisResult.testCoverage.moduleCoverage.mapValues { (_, coverage) ->
                    JsonModuleCoverage(
                        lineCoverage = coverage.lineCoverage,
                        branchCoverage = coverage.branchCoverage,
                        methodCoverage = coverage.methodCoverage,
                        testCount = coverage.testCount
                    )
                },
                uncoveredFiles = analysisResult.testCoverage.uncoveredFiles.map { file ->
                    JsonUncoveredFile(
                        path = file.filePath,
                        lineCount = file.lineCount,
                        importance = file.importance.name
                    )
                }
            ),
            improvementPlan = improvementPlan?.let { plan ->
                JsonImprovementPlan(
                    estimatedImpact = JsonImpactAssessment(
                        expectedScoreImprovement = plan.estimatedImpact.expectedScoreImprovement,
                        riskLevel = plan.estimatedImpact.riskLevel.name,
                        estimatedTimeHours = plan.estimatedImpact.estimatedTimeHours
                    ),
                    prioritizedActions = plan.prioritizedActions.map { action ->
                        JsonAction(
                            id = action.id,
                            title = action.title,
                            description = action.description,
                            priority = action.priority.name,
                            category = action.category.name,
                            estimatedHours = action.estimatedEffort.timeHours
                        )
                    },
                    fixes = plan.fixes.map { fix ->
                        JsonFix(
                            id = fix.id,
                            description = fix.description,
                            autoApplicable = fix.autoApplicable,
                            riskLevel = fix.impact.riskLevel.name,
                            estimatedTimeMinutes = fix.impact.estimatedTimeMinutes,
                            affectedFiles = fix.impact.affectedFiles
                        )
                    }
                )
            }
        )
        
        val jsonContent = json.encodeToString(report)
        outputFile.parentFile?.mkdirs()
        outputFile.writeText(jsonContent)
    }
    
    override fun getSupportedExtension(): String = "json"
    override fun getMimeType(): String = "application/json"
    
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
    
    private fun com.mrcomic.analysis.model.Issue.toJsonIssue(): JsonIssue {
        return JsonIssue(
            id = this.id,
            severity = this.severity.name,
            description = this.description,
            location = this.location,
            suggestion = this.suggestion
        )
    }
}

@Serializable
data class JsonReport(
    val metadata: JsonReportMetadata,
    val summary: JsonSummary,
    val issues: JsonIssues,
    val testCoverage: JsonTestCoverage,
    val improvementPlan: JsonImprovementPlan?
)

@Serializable
data class JsonReportMetadata(
    val generatedAt: Long,
    val analysisTimestamp: Long,
    val executionTimeMs: Long,
    val overallScore: Int
)

@Serializable
data class JsonSummary(
    val totalIssues: Int,
    val issuesBySeverity: Map<String, Int>,
    val issuesByCategory: Map<String, Int>,
    val testCoverage: Double
)

@Serializable
data class JsonIssues(
    val architecture: List<JsonIssue>,
    val dependencies: List<JsonIssue>,
    val security: List<JsonIssue>,
    val performance: List<JsonIssue>,
    val codeQuality: List<JsonIssue>
)

@Serializable
data class JsonIssue(
    val id: String,
    val severity: String,
    val description: String,
    val location: String,
    val suggestion: String?
)

@Serializable
data class JsonTestCoverage(
    val overall: Double,
    val modules: Map<String, JsonModuleCoverage>,
    val uncoveredFiles: List<JsonUncoveredFile>
)

@Serializable
data class JsonModuleCoverage(
    val lineCoverage: Double,
    val branchCoverage: Double,
    val methodCoverage: Double,
    val testCount: Int
)

@Serializable
data class JsonUncoveredFile(
    val path: String,
    val lineCount: Int,
    val importance: String
)

@Serializable
data class JsonImprovementPlan(
    val estimatedImpact: JsonImpactAssessment,
    val prioritizedActions: List<JsonAction>,
    val fixes: List<JsonFix>
)

@Serializable
data class JsonImpactAssessment(
    val expectedScoreImprovement: Int,
    val riskLevel: String,
    val estimatedTimeHours: Double
)

@Serializable
data class JsonAction(
    val id: String,
    val title: String,
    val description: String,
    val priority: String,
    val category: String,
    val estimatedHours: Double
)

@Serializable
data class JsonFix(
    val id: String,
    val description: String,
    val autoApplicable: Boolean,
    val riskLevel: String,
    val estimatedTimeMinutes: Int,
    val affectedFiles: List<String>
)