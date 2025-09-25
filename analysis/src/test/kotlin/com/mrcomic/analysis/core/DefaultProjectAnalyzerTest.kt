package com.mrcomic.analysis.core

import com.mrcomic.analysis.config.AnalysisConfig
import com.mrcomic.analysis.error.ProjectNotFoundError
import com.mrcomic.analysis.model.*
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import java.io.File
import kotlin.test.assertEquals
import kotlin.test.assertNotNull
import kotlin.test.assertTrue

class DefaultProjectAnalyzerTest {
    
    @Test
    fun `should throw ProjectNotFoundError for non-existent project`() {
        val analyzerRegistry = mockk<AnalyzerRegistry>()
        val improvementPlanGenerator = mockk<ImprovementPlanGenerator>()
        val fixApplicator = mockk<FixApplicator>()
        
        val analyzer = DefaultProjectAnalyzer(
            analyzerRegistry = analyzerRegistry,
            improvementPlanGenerator = improvementPlanGenerator,
            fixApplicator = fixApplicator
        )
        
        assertThrows<ProjectNotFoundError> {
            runTest {
                analyzer.analyzeProject("/non/existent/path")
            }
        }
    }
    
    @Test
    fun `should create analysis context with correct configuration`() {
        val config = AnalysisConfig(
            enabledAnalyzers = setOf("test-analyzer"),
            timeoutMinutes = 15
        )
        
        assertEquals(setOf("test-analyzer"), config.enabledAnalyzers)
        assertEquals(15, config.timeoutMinutes)
    }
    
    @Test
    fun `should register and retrieve analyzers`() {
        val registry = AnalyzerRegistry()
        val testAnalyzer = TestAnalyzer()
        
        registry.register(testAnalyzer)
        
        val retrieved = registry.getAnalyzer("test-analyzer")
        assertNotNull(retrieved)
        assertEquals("test-analyzer", retrieved.id)
    }
    
    @Test
    fun `should execute analyzers and collect results`() = runTest {
        val registry = AnalyzerRegistry()
        val testAnalyzer = TestAnalyzer()
        registry.register(testAnalyzer)
        
        val context = AnalysisContext(
            projectPath = "/test/path",
            projectRoot = File("/test/path"),
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        val result = registry.executeAnalyzers(listOf(testAnalyzer), context)
        
        assertTrue(result.results.isNotEmpty())
        assertEquals("test-analyzer", result.results.keys.first())
    }
}

class TestAnalyzer : Analyzer {
    override val id = "test-analyzer"
    override val name = "Test Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        return listOf(
            ArchitectureIssue(
                id = "test-issue-1",
                severity = Severity.WARNING,
                description = "Test architecture issue",
                location = "test/location",
                suggestion = "Fix this test issue",
                violationType = ArchitectureViolationType.CIRCULAR_DEPENDENCY,
                affectedModules = listOf("test-module")
            )
        )
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean = true
}