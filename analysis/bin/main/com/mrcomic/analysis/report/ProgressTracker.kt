package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.AnalysisResult
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import java.io.File
import java.time.Instant

/**
 * Tracks analysis progress over time and generates comparison reports.
 */
class ProgressTracker(
    private val historyFile: File = File("analysis-history.json")
) {
    
    private val json = Json {
        prettyPrint = true
        ignoreUnknownKeys = true
    }
    
    /**
     * Saves analysis result to history.
     */
    suspend fun saveAnalysisResult(result: AnalysisResult) {
        val history = loadHistory()
        val entry = AnalysisHistoryEntry(
            timestamp = result.analysisMetadata.analysisTimestamp,
            overallScore = result.overallScore,
            testCoverage = result.testCoverage.overallCoverage,
            issueCount = AnalysisIssueCount(
                architecture = result.architectureIssues.size,
                dependencies = result.dependencyIssues.size,
                security = result.securityIssues.size,
                performance = result.performanceIssues.size,
                codeQuality = result.codeQualityIssues.size
            ),
            severityCount = AnalysisSeverityCount(
                critical = getAllIssues(result).count { it.severity.name == "CRITICAL" },
                error = getAllIssues(result).count { it.severity.name == "ERROR" },
                warning = getAllIssues(result).count { it.severity.name == "WARNING" },
                info = getAllIssues(result).count { it.severity.name == "INFO" }
            ),
            executionTimeMs = result.analysisMetadata.executionTimeMs
        )
        
        history.entries.add(entry)
        
        // Keep only last 50 entries
        if (history.entries.size > 50) {
            history.entries.removeAt(0)
        }
        
        saveHistory(history)
    }
    
    /**
     * Generates a progress report comparing current and previous results.
     */
    suspend fun generateProgressReport(currentResult: AnalysisResult): ProgressReport {
        val history = loadHistory()
        
        if (history.entries.isEmpty()) {
            return ProgressReport(
                currentScore = currentResult.overallScore,
                previousScore = null,
                scoreChange = null,
                trend = ProgressTrend.UNKNOWN,
                improvements = emptyList(),
                regressions = emptyList(),
                recommendations = listOf("This is your first analysis. Run analysis regularly to track progress.")
            )
        }
        
        val previousEntry = history.entries.lastOrNull()
        val scoreChange = if (previousEntry != null) {
            currentResult.overallScore - previousEntry.overallScore
        } else null
        
        val trend = when {
            scoreChange == null -> ProgressTrend.UNKNOWN
            scoreChange > 5 -> ProgressTrend.IMPROVING
            scoreChange < -5 -> ProgressTrend.DECLINING
            else -> ProgressTrend.STABLE
        }
        
        val improvements = findImprovements(currentResult, previousEntry)
        val regressions = findRegressions(currentResult, previousEntry)
        val recommendations = generateProgressRecommendations(currentResult, history, trend)
        
        return ProgressReport(
            currentScore = currentResult.overallScore,
            previousScore = previousEntry?.overallScore,
            scoreChange = scoreChange,
            trend = trend,
            improvements = improvements,
            regressions = regressions,
            recommendations = recommendations
        )
    }
    
    /**
     * Gets analysis history for trend analysis.
     */
    fun getAnalysisHistory(): AnalysisHistory {
        return loadHistory()
    }
    
    /**
     * Generates trend data for charts and visualizations.
     */
    fun generateTrendData(): TrendData {
        val history = loadHistory()
        
        return TrendData(
            scoreHistory = history.entries.map { 
                TrendPoint(it.timestamp, it.overallScore.toDouble()) 
            },
            coverageHistory = history.entries.map { 
                TrendPoint(it.timestamp, it.testCoverage) 
            },
            issueHistory = history.entries.map { entry ->
                TrendPoint(entry.timestamp, entry.issueCount.total().toDouble())
            },
            executionTimeHistory = history.entries.map { 
                TrendPoint(it.timestamp, it.executionTimeMs.toDouble()) 
            }
        )
    }
    
    private fun loadHistory(): AnalysisHistory {
        return if (historyFile.exists()) {
            try {
                val content = historyFile.readText()
                json.decodeFromString<AnalysisHistory>(content)
            } catch (e: Exception) {
                AnalysisHistory(mutableListOf())
            }
        } else {
            AnalysisHistory(mutableListOf())
        }
    }
    
    private fun saveHistory(history: AnalysisHistory) {
        historyFile.parentFile?.mkdirs()
        val content = json.encodeToString(history)
        historyFile.writeText(content)
    }
    
    private fun getAllIssues(result: AnalysisResult): List<com.mrcomic.analysis.model.Issue> {
        return listOf(
            result.architectureIssues,
            result.dependencyIssues,
            result.securityIssues,
            result.performanceIssues,
            result.codeQualityIssues
        ).flatten()
    }
    
    private fun findImprovements(current: AnalysisResult, previous: AnalysisHistoryEntry?): List<String> {
        if (previous == null) return emptyList()
        
        val improvements = mutableListOf<String>()
        
        // Score improvement
        val scoreChange = current.overallScore - previous.overallScore
        if (scoreChange > 0) {
            improvements.add("Overall score improved by $scoreChange points")
        }
        
        // Coverage improvement
        val coverageChange = current.testCoverage.overallCoverage - previous.testCoverage
        if (coverageChange > 1.0) {
            improvements.add("Test coverage increased by ${String.format("%.1f", coverageChange)}%")
        }
        
        // Issue count improvements
        val currentIssues = AnalysisIssueCount(
            architecture = current.architectureIssues.size,
            dependencies = current.dependencyIssues.size,
            security = current.securityIssues.size,
            performance = current.performanceIssues.size,
            codeQuality = current.codeQualityIssues.size
        )
        
        if (currentIssues.architecture < previous.issueCount.architecture) {
            improvements.add("Reduced architecture issues by ${previous.issueCount.architecture - currentIssues.architecture}")
        }
        if (currentIssues.security < previous.issueCount.security) {
            improvements.add("Fixed ${previous.issueCount.security - currentIssues.security} security issues")
        }
        if (currentIssues.dependencies < previous.issueCount.dependencies) {
            improvements.add("Resolved ${previous.issueCount.dependencies - currentIssues.dependencies} dependency issues")
        }
        
        return improvements
    }
    
    private fun findRegressions(current: AnalysisResult, previous: AnalysisHistoryEntry?): List<String> {
        if (previous == null) return emptyList()
        
        val regressions = mutableListOf<String>()
        
        // Score regression
        val scoreChange = current.overallScore - previous.overallScore
        if (scoreChange < -5) {
            regressions.add("Overall score decreased by ${-scoreChange} points")
        }
        
        // Coverage regression
        val coverageChange = current.testCoverage.overallCoverage - previous.testCoverage
        if (coverageChange < -1.0) {
            regressions.add("Test coverage decreased by ${String.format("%.1f", -coverageChange)}%")
        }
        
        // New critical issues
        val currentCritical = getAllIssues(current).count { it.severity.name == "CRITICAL" }
        if (currentCritical > previous.severityCount.critical) {
            regressions.add("${currentCritical - previous.severityCount.critical} new critical issues introduced")
        }
        
        return regressions
    }
    
    private fun generateProgressRecommendations(
        current: AnalysisResult,
        history: AnalysisHistory,
        trend: ProgressTrend
    ): List<String> {
        val recommendations = mutableListOf<String>()
        
        when (trend) {
            ProgressTrend.IMPROVING -> {
                recommendations.add("Great progress! Keep up the good work.")
                recommendations.add("Consider setting up automated analysis in CI/CD to maintain quality.")
            }
            ProgressTrend.DECLINING -> {
                recommendations.add("Quality is declining. Focus on addressing critical issues immediately.")
                recommendations.add("Review recent changes that may have introduced new problems.")
            }
            ProgressTrend.STABLE -> {
                recommendations.add("Quality is stable. Look for opportunities to make incremental improvements.")
            }
            ProgressTrend.UNKNOWN -> {
                recommendations.add("Continue running analysis regularly to establish trends.")
            }
        }
        
        // Specific recommendations based on current state
        if (current.overallScore < 70) {
            recommendations.add("Overall score is below 70. Prioritize fixing critical and error-level issues.")
        }
        
        if (current.testCoverage.overallCoverage < 80) {
            recommendations.add("Test coverage is below 80%. Focus on adding tests for uncovered code.")
        }
        
        val criticalIssues = getAllIssues(current).count { it.severity.name == "CRITICAL" }
        if (criticalIssues > 0) {
            recommendations.add("Address all $criticalIssues critical issues as soon as possible.")
        }
        
        return recommendations
    }
}

@Serializable
data class AnalysisHistory(
    val entries: MutableList<AnalysisHistoryEntry>
)

@Serializable
data class AnalysisHistoryEntry(
    val timestamp: Long,
    val overallScore: Int,
    val testCoverage: Double,
    val issueCount: AnalysisIssueCount,
    val severityCount: AnalysisSeverityCount,
    val executionTimeMs: Long
)

@Serializable
data class AnalysisIssueCount(
    val architecture: Int,
    val dependencies: Int,
    val security: Int,
    val performance: Int,
    val codeQuality: Int
) {
    fun total(): Int = architecture + dependencies + security + performance + codeQuality
}

@Serializable
data class AnalysisSeverityCount(
    val critical: Int,
    val error: Int,
    val warning: Int,
    val info: Int
) {
    fun total(): Int = critical + error + warning + info
}

data class ProgressReport(
    val currentScore: Int,
    val previousScore: Int?,
    val scoreChange: Int?,
    val trend: ProgressTrend,
    val improvements: List<String>,
    val regressions: List<String>,
    val recommendations: List<String>
)

enum class ProgressTrend {
    IMPROVING,
    STABLE,
    DECLINING,
    UNKNOWN
}

data class TrendData(
    val scoreHistory: List<TrendPoint>,
    val coverageHistory: List<TrendPoint>,
    val issueHistory: List<TrendPoint>,
    val executionTimeHistory: List<TrendPoint>
)

data class TrendPoint(
    val timestamp: Long,
    val value: Double
)