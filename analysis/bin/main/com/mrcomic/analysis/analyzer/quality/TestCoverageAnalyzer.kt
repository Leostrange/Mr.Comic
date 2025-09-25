package com.mrcomic.analysis.analyzer.quality

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.CodeQualityIssue
import com.mrcomic.analysis.model.CodeQualityType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes test coverage using JaCoCo reports.
 */
class TestCoverageAnalyzer : Analyzer {
    
    override val id = "test-coverage"
    override val name = "Test Coverage Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val jacocoParser = JacocoReportParser()
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing test coverage...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Find JaCoCo report files
            val reportFiles = findJacocoReports(context.projectRoot)
            
            if (reportFiles.isEmpty()) {
                context.logger.warn("No JaCoCo reports found. Run tests with coverage first.")
                issues.add(createNoReportsIssue(context))
                return issues
            }
            
            // Parse coverage reports
            val coverageReport = if (reportFiles.size == 1) {
                jacocoParser.parseReport(reportFiles.values.first())
            } else {
                jacocoParser.parseMultiModuleReports(reportFiles)
            }
            
            context.setMetadata("test-coverage-report", coverageReport)
            
            // Analyze overall coverage
            issues.addAll(analyzeOverallCoverage(coverageReport, context))
            
            // Analyze module coverage
            issues.addAll(analyzeModuleCoverage(coverageReport, context))
            
            // Analyze uncovered files
            issues.addAll(analyzeUncoveredFiles(coverageReport, context))
            
            // Analyze critical uncovered code
            issues.addAll(analyzeCriticalUncoveredCode(coverageReport, context))
            
            context.logger.info("Test coverage analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze test coverage", e)
            issues.add(CodeQualityIssue(
                id = "test-coverage-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze test coverage: ${e.message}",
                location = context.projectPath,
                suggestion = "Ensure JaCoCo reports are generated and accessible",
                qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                metrics = mapOf("error" to e.message.orEmpty())
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return findJacocoReports(context.projectRoot).isNotEmpty() ||
               hasTestSourceSets(context.projectRoot)
    }
    
    private fun findJacocoReports(projectRoot: File): Map<String, File> {
        val reportFiles = mutableMapOf<String, File>()
        
        // Common JaCoCo report locations
        val commonPaths = listOf(
            "build/reports/jacoco/test/jacocoTestReport.xml",
            "build/reports/jacoco/testDebugUnitTest/testDebugUnitTest.xml",
            "app/build/reports/jacoco/testDebugUnitTest/testDebugUnitTest.xml"
        )
        
        commonPaths.forEach { path ->
            val reportFile = File(projectRoot, path)
            if (reportFile.exists()) {
                val moduleName = extractModuleName(path)
                reportFiles[moduleName] = reportFile
            }
        }
        
        // Search for reports in all modules
        searchForReportsRecursively(projectRoot, reportFiles)
        
        return reportFiles
    }
    
    private fun searchForReportsRecursively(dir: File, reportFiles: MutableMap<String, File>) {
        if (!dir.isDirectory) return
        
        dir.listFiles()?.forEach { file ->
            when {
                file.name == "jacocoTestReport.xml" -> {
                    val moduleName = extractModuleNameFromPath(file.absolutePath)
                    reportFiles[moduleName] = file
                }
                file.isDirectory && !file.name.startsWith(".") -> {
                    searchForReportsRecursively(file, reportFiles)
                }
            }
        }
    }
    
    private fun extractModuleName(path: String): String {
        return when {
            path.contains("app/") -> "app"
            path.contains("/") -> path.split("/").first()
            else -> "root"
        }
    }
    
    private fun extractModuleNameFromPath(absolutePath: String): String {
        val parts = absolutePath.split(File.separator)
        val buildIndex = parts.indexOfLast { it == "build" }
        return if (buildIndex > 0) parts[buildIndex - 1] else "unknown"
    }
    
    private fun hasTestSourceSets(projectRoot: File): Boolean {
        val testDirs = listOf(
            "src/test",
            "src/androidTest",
            "app/src/test",
            "app/src/androidTest"
        )
        
        return testDirs.any { File(projectRoot, it).exists() }
    }
    
    private fun analyzeOverallCoverage(
        coverageReport: com.mrcomic.analysis.model.TestCoverageReport,
        context: AnalysisContext
    ): List<CodeQualityIssue> {
        val issues = mutableListOf<CodeQualityIssue>()
        val threshold = context.config.performanceThresholds.minTestCoveragePercent
        
        if (coverageReport.overallCoverage < threshold) {
            val severity = when {
                coverageReport.overallCoverage < threshold * 0.5 -> Severity.CRITICAL
                coverageReport.overallCoverage < threshold * 0.7 -> Severity.ERROR
                else -> Severity.WARNING
            }
            
            issues.add(CodeQualityIssue(
                id = "low-overall-coverage",
                severity = severity,
                description = "Overall test coverage is ${String.format("%.1f", coverageReport.overallCoverage)}%, below threshold of ${String.format("%.1f", threshold)}%",
                location = context.projectPath,
                suggestion = "Increase test coverage by writing more unit tests and integration tests",
                qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                metrics = mapOf(
                    "currentCoverage" to coverageReport.overallCoverage,
                    "threshold" to threshold,
                    "totalLines" to coverageReport.coverageMetrics.totalLines,
                    "coveredLines" to coverageReport.coverageMetrics.coveredLines
                )
            ))
        }
        
        return issues
    }
    
    private fun analyzeModuleCoverage(
        coverageReport: com.mrcomic.analysis.model.TestCoverageReport,
        context: AnalysisContext
    ): List<CodeQualityIssue> {
        val issues = mutableListOf<CodeQualityIssue>()
        val threshold = context.config.performanceThresholds.minTestCoveragePercent
        
        coverageReport.moduleCoverage.forEach { (moduleName, coverage) ->
            if (coverage.lineCoverage < threshold) {
                val severity = when {
                    coverage.lineCoverage < threshold * 0.3 -> Severity.ERROR
                    coverage.lineCoverage < threshold * 0.6 -> Severity.WARNING
                    else -> Severity.INFO
                }
                
                issues.add(CodeQualityIssue(
                    id = "low-module-coverage-${moduleName.hashCode()}",
                    severity = severity,
                    description = "Module '$moduleName' has low test coverage: ${String.format("%.1f", coverage.lineCoverage)}%",
                    location = moduleName,
                    suggestion = "Add more tests for this module, focusing on critical business logic",
                    qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                    metrics = mapOf(
                        "lineCoverage" to coverage.lineCoverage,
                        "branchCoverage" to coverage.branchCoverage,
                        "methodCoverage" to coverage.methodCoverage,
                        "testCount" to coverage.testCount,
                        "sourceFileCount" to coverage.sourceFileCount
                    )
                ))
            }
            
            // Check for modules with no tests
            if (coverage.testCount == 0 && coverage.sourceFileCount > 0) {
                issues.add(CodeQualityIssue(
                    id = "no-tests-${moduleName.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Module '$moduleName' has no tests but contains ${coverage.sourceFileCount} source files",
                    location = moduleName,
                    suggestion = "Create test files for this module to ensure code quality",
                    qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                    metrics = mapOf(
                        "sourceFileCount" to coverage.sourceFileCount,
                        "testCount" to coverage.testCount
                    )
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeUncoveredFiles(
        coverageReport: com.mrcomic.analysis.model.TestCoverageReport,
        context: AnalysisContext
    ): List<CodeQualityIssue> {
        val issues = mutableListOf<CodeQualityIssue>()
        
        coverageReport.uncoveredFiles.forEach { uncoveredFile ->
            val severity = when (uncoveredFile.importance) {
                com.mrcomic.analysis.model.FileImportance.CRITICAL -> Severity.ERROR
                com.mrcomic.analysis.model.FileImportance.HIGH -> Severity.WARNING
                com.mrcomic.analysis.model.FileImportance.MEDIUM -> Severity.INFO
                com.mrcomic.analysis.model.FileImportance.LOW -> Severity.INFO
            }
            
            issues.add(CodeQualityIssue(
                id = "uncovered-file-${uncoveredFile.filePath.hashCode()}",
                severity = severity,
                description = "File '${uncoveredFile.filePath}' has insufficient test coverage (${uncoveredFile.importance.name.lowercase()} importance)",
                location = uncoveredFile.filePath,
                suggestion = "Add tests for this ${uncoveredFile.importance.name.lowercase()} importance file",
                qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                metrics = mapOf(
                    "lineCount" to uncoveredFile.lineCount,
                    "complexity" to uncoveredFile.complexity,
                    "importance" to uncoveredFile.importance.name
                )
            ))
        }
        
        return issues
    }
    
    private fun analyzeCriticalUncoveredCode(
        coverageReport: com.mrcomic.analysis.model.TestCoverageReport,
        context: AnalysisContext
    ): List<CodeQualityIssue> {
        val issues = mutableListOf<CodeQualityIssue>()
        
        coverageReport.criticalUncoveredCode.forEach { criticalCode ->
            issues.add(CodeQualityIssue(
                id = "critical-uncovered-${criticalCode.filePath.hashCode()}-${criticalCode.methodName.hashCode()}",
                severity = Severity.CRITICAL,
                description = "Critical method '${criticalCode.methodName}' in '${criticalCode.filePath}' has no test coverage",
                location = "${criticalCode.filePath}:${criticalCode.lineNumbers.first}",
                suggestion = "Add comprehensive tests for this critical method: ${criticalCode.reason}",
                qualityType = CodeQualityType.LOW_TEST_COVERAGE,
                metrics = mapOf(
                    "methodName" to criticalCode.methodName,
                    "lineStart" to criticalCode.lineNumbers.first,
                    "lineEnd" to criticalCode.lineNumbers.last,
                    "reason" to criticalCode.reason
                )
            ))
        }
        
        return issues
    }
    
    private fun createNoReportsIssue(context: AnalysisContext): CodeQualityIssue {
        return CodeQualityIssue(
            id = "no-coverage-reports",
            severity = Severity.WARNING,
            description = "No JaCoCo coverage reports found",
            location = context.projectPath,
            suggestion = "Enable JaCoCo in your build.gradle files and run tests with coverage: './gradlew testDebugUnitTestCoverage'",
            qualityType = CodeQualityType.LOW_TEST_COVERAGE,
            metrics = mapOf("reportsFound" to 0)
        )
    }
}