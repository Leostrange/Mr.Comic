package com.mrcomic.analysis.core

import com.mrcomic.analysis.config.AnalysisConfig
import com.mrcomic.analysis.error.AnalysisError
import com.mrcomic.analysis.error.ErrorHandler
import com.mrcomic.analysis.error.ProjectNotFoundError
import com.mrcomic.analysis.error.InvalidProjectStructureError
import com.mrcomic.analysis.model.*
import java.io.File

/**
 * Default implementation of ProjectAnalyzer.
 */
class DefaultProjectAnalyzer(
    private val analyzerRegistry: AnalyzerRegistry,
    private val improvementPlanGenerator: ImprovementPlanGenerator,
    private val fixApplicator: FixApplicator,
    private val logger: AnalysisLogger = ConsoleAnalysisLogger(),
    private val cache: AnalysisCache = InMemoryAnalysisCache(),
    private val errorHandler: ErrorHandler = ErrorHandler()
) : ProjectAnalyzer {
    
    override suspend fun analyzeProject(projectPath: String): AnalysisResult {
        logger.info("Starting analysis of project at: $projectPath")
        val startTime = System.currentTimeMillis()
        
        try {
            // Validate project exists and is accessible
            val projectRoot = File(projectPath)
            if (!projectRoot.exists() || !projectRoot.isDirectory) {
                throw ProjectNotFoundError(projectPath, "Directory does not exist or is not accessible")
            }
            
            // Validate project structure
            validateProjectStructure(projectRoot)
            
            // Load configuration
            val config = loadConfiguration(projectRoot)
            
            // Create analysis context
            val context = AnalysisContext(
                projectPath = projectPath,
                projectRoot = projectRoot,
                config = config,
                logger = logger,
                cache = cache
            )
            
            // Get applicable analyzers
            val applicableAnalyzers = analyzerRegistry.getApplicableAnalyzers(context)
            logger.info("Found ${applicableAnalyzers.size} applicable analyzers")
            
            // Execute analyzers
            val executionResult = analyzerRegistry.executeAnalyzers(applicableAnalyzers, context)
            
            // Collect all issues
            val allIssues = executionResult.results.values.flatMap { it.issues }
            
            // Categorize issues
            val architectureIssues = allIssues.filterIsInstance<ArchitectureIssue>()
            val dependencyIssues = allIssues.filterIsInstance<DependencyIssue>()
            val codeQualityIssues = allIssues.filterIsInstance<CodeQualityIssue>()
            val securityIssues = allIssues.filterIsInstance<SecurityIssue>()
            val performanceIssues = allIssues.filterIsInstance<PerformanceIssue>()
            
            // Generate test coverage report (placeholder for now)
            val testCoverage = generateTestCoverageReport(context)
            
            // Calculate overall score
            val overallScore = calculateOverallScore(allIssues, testCoverage)
            
            val endTime = System.currentTimeMillis()
            val executionTime = endTime - startTime
            
            logger.info("Analysis completed in ${executionTime}ms. Found ${allIssues.size} issues. Score: $overallScore")
            
            return AnalysisResult(
                architectureIssues = architectureIssues,
                dependencyIssues = dependencyIssues,
                codeQualityIssues = codeQualityIssues,
                securityIssues = securityIssues,
                performanceIssues = performanceIssues,
                testCoverage = testCoverage,
                overallScore = overallScore,
                analysisMetadata = AnalysisMetadata(
                    projectPath = projectPath,
                    analysisTimestamp = startTime,
                    analyzerVersions = executionResult.results.mapValues { it.value.analyzerVersion },
                    executionTimeMs = executionTime
                )
            )
            
        } catch (error: AnalysisError) {
            logger.error("Analysis failed: ${error.userMessage}", error)
            throw error
        } catch (exception: Exception) {
            logger.error("Unexpected error during analysis", exception)
            throw InvalidProjectStructureError(
                reason = "Unexpected error: ${exception.message}",
                technicalDetails = exception.stackTraceToString()
            )
        }
    }
    
    override suspend fun generateImprovementPlan(result: AnalysisResult): ImprovementPlan {
        logger.info("Generating improvement plan based on analysis results")
        return improvementPlanGenerator.generatePlan(result)
    }
    
    override suspend fun applyImprovements(plan: ImprovementPlan): ApplicationResult {
        logger.info("Applying ${plan.fixes.size} improvements")
        return fixApplicator.applyFixes(plan)
    }
    
    private fun validateProjectStructure(projectRoot: File) {
        // Check for essential Android project files
        val buildGradle = File(projectRoot, "build.gradle.kts").takeIf { it.exists() }
            ?: File(projectRoot, "build.gradle").takeIf { it.exists() }
        
        if (buildGradle == null) {
            throw InvalidProjectStructureError(
                reason = "No build.gradle or build.gradle.kts found in project root",
                technicalDetails = "Expected to find build configuration file in ${projectRoot.absolutePath}"
            )
        }
        
        val settingsGradle = File(projectRoot, "settings.gradle.kts").takeIf { it.exists() }
            ?: File(projectRoot, "settings.gradle").takeIf { it.exists() }
        
        if (settingsGradle == null) {
            throw InvalidProjectStructureError(
                reason = "No settings.gradle or settings.gradle.kts found in project root",
                technicalDetails = "Expected to find settings configuration file in ${projectRoot.absolutePath}"
            )
        }
    }
    
    private fun loadConfiguration(projectRoot: File): AnalysisConfig {
        // For now, return default configuration
        // TODO: Load from .kiro/analysis-config.json or similar
        return AnalysisConfig()
    }
    
    private suspend fun generateTestCoverageReport(context: AnalysisContext): TestCoverageReport {
        // Placeholder implementation
        // TODO: Implement actual test coverage analysis
        return TestCoverageReport(
            overallCoverage = 0.0,
            moduleCoverage = emptyMap(),
            uncoveredFiles = emptyList(),
            criticalUncoveredCode = emptyList(),
            coverageMetrics = CoverageMetrics(
                totalLines = 0,
                coveredLines = 0,
                totalBranches = 0,
                coveredBranches = 0,
                totalMethods = 0,
                coveredMethods = 0
            )
        )
    }
    
    private fun calculateOverallScore(issues: List<Issue>, testCoverage: TestCoverageReport): Int {
        // Simple scoring algorithm
        val criticalIssues = issues.count { it.severity == Severity.CRITICAL }
        val errorIssues = issues.count { it.severity == Severity.ERROR }
        val warningIssues = issues.count { it.severity == Severity.WARNING }
        
        var score = 100
        score -= criticalIssues * 20
        score -= errorIssues * 10
        score -= warningIssues * 5
        
        // Factor in test coverage
        val coveragePenalty = ((100 - testCoverage.overallCoverage) / 10).toInt()
        score -= coveragePenalty
        
        return maxOf(0, score)
    }
}

/**
 * Interface for generating improvement plans.
 */
interface ImprovementPlanGenerator {
    suspend fun generatePlan(analysisResult: AnalysisResult): ImprovementPlan
}

/**
 * Interface for applying fixes.
 */
interface FixApplicator {
    suspend fun applyFixes(plan: ImprovementPlan): ApplicationResult
}