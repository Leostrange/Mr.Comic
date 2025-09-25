package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.config.AnalysisConfig
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.core.ConsoleAnalysisLogger
import com.mrcomic.analysis.core.InMemoryAnalysisCache
import com.mrcomic.analysis.model.ArchitectureIssue
import com.mrcomic.analysis.model.ArchitectureViolationType
import com.mrcomic.analysis.model.Severity
import kotlinx.coroutines.test.runTest
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import kotlin.test.assertEquals
import kotlin.test.assertFalse
import kotlin.test.assertTrue

class CircularDependencyAnalyzerTest {
    
    @Test
    fun `should detect simple circular dependency`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        // Create simple cycle: A -> B -> A
        val graph = createGraphWithSimpleCycle()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        assertTrue(issues.isNotEmpty())
        val circularIssue = issues.filterIsInstance<ArchitectureIssue>()
            .find { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY }
        
        assertTrue(circularIssue != null)
        assertTrue(circularIssue.affectedModules.containsAll(listOf(":android:feature-a", ":android:feature-b")))
        assertEquals(Severity.ERROR, circularIssue.severity)
    }
    
    @Test
    fun `should detect complex circular dependency`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        // Create complex cycle: A -> B -> C -> A
        val graph = createGraphWithComplexCycle()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        assertTrue(issues.isNotEmpty())
        val circularIssue = issues.filterIsInstance<ArchitectureIssue>()
            .find { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY }
        
        assertTrue(circularIssue != null)
        assertTrue(circularIssue.affectedModules.containsAll(listOf(":android:feature-a", ":android:feature-b", ":android:core-c")))
    }
    
    @Test
    fun `should prioritize API dependencies in cycles`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        // Create cycle with API dependency: A -api-> B -impl-> A
        val graph = createGraphWithApiCycle()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        val circularIssue = issues.filterIsInstance<ArchitectureIssue>()
            .find { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY }
        
        assertTrue(circularIssue != null)
        assertEquals(Severity.CRITICAL, circularIssue.severity)
    }
    
    @Test
    fun `should detect potential circular dependencies`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        // Create indirect mutual dependency: A -> C -> B and B -> D -> A
        val graph = createGraphWithPotentialCycle()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        val potentialIssues = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.description.contains("Potential circular dependency") }
        
        assertTrue(potentialIssues.isNotEmpty())
        assertEquals(Severity.WARNING, potentialIssues.first().severity)
    }
    
    @Test
    fun `should provide breaking suggestions`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        val graph = createGraphWithSimpleCycle()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        val circularIssue = issues.filterIsInstance<ArchitectureIssue>()
            .find { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY }
        
        assertTrue(circularIssue != null)
        assertTrue(circularIssue.suggestion?.contains("interfaces") == true)
        assertTrue(circularIssue.suggestion?.contains("dependency injection") == true || 
                  circularIssue.suggestion?.contains("shared module") == true)
    }
    
    @Test
    fun `should not analyze without dependency graph`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        // Don't set dependency graph metadata
        
        assertFalse(analyzer.canAnalyze(context))
        
        val issues = analyzer.analyze(context)
        assertTrue(issues.isEmpty())
    }
    
    @Test
    fun `should handle empty dependency graph`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        val emptyGraph = ModuleDependencyGraph()
        context.setMetadata("dependency-graph", emptyGraph)
        
        val issues = analyzer.analyze(context)
        assertTrue(issues.isEmpty())
    }
    
    @Test
    fun `should distinguish direct and indirect cycles`() = runTest {
        val analyzer = CircularDependencyAnalyzer()
        val context = createTestContext()
        
        // Create both direct cycle (A -> B -> A) and indirect mutual dependency (A -> C -> D and D -> E -> A)
        val graph = createGraphWithMixedCycles()
        context.setMetadata("dependency-graph", graph)
        
        val issues = analyzer.analyze(context)
        
        val directCycles = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.violationType == ArchitectureViolationType.CIRCULAR_DEPENDENCY && !it.description.contains("Potential") }
        
        val potentialCycles = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.description.contains("Potential circular dependency") }
        
        assertTrue(directCycles.isNotEmpty())
        assertTrue(potentialCycles.isNotEmpty())
        
        // Direct cycles should be more severe
        assertTrue(directCycles.any { it.severity == Severity.ERROR || it.severity == Severity.CRITICAL })
        assertTrue(potentialCycles.all { it.severity == Severity.WARNING })
    }
    
    private fun createTestContext(@TempDir tempDir: File = kotlin.io.path.createTempDirectory().toFile()): AnalysisContext {
        return AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
    }
    
    private fun createGraphWithSimpleCycle(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val moduleA = ModuleBuildInfo(
            name = ":android:feature-a",
            path = "android/feature-a",
            buildFile = File("android/feature-a/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-b", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.a"),
            kotlinConfig = null
        )
        
        val moduleB = ModuleBuildInfo(
            name = ":android:feature-b",
            path = "android/feature-b",
            buildFile = File("android/feature-b/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(moduleA, moduleB))
        return graph
    }
    
    private fun createGraphWithComplexCycle(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val moduleA = ModuleBuildInfo(
            name = ":android:feature-a",
            path = "android/feature-a",
            buildFile = File("android/feature-a/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-b", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.a"),
            kotlinConfig = null
        )
        
        val moduleB = ModuleBuildInfo(
            name = ":android:feature-b",
            path = "android/feature-b",
            buildFile = File("android/feature-b/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-c", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
            kotlinConfig = null
        )
        
        val moduleC = ModuleBuildInfo(
            name = ":android:core-c",
            path = "android/core-c",
            buildFile = File("android/core-c/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.c"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(moduleA, moduleB, moduleC))
        return graph
    }
    
    private fun createGraphWithApiCycle(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val moduleA = ModuleBuildInfo(
            name = ":android:feature-a",
            path = "android/feature-a",
            buildFile = File("android/feature-a/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "api", ":android:feature-b", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.a"),
            kotlinConfig = null
        )
        
        val moduleB = ModuleBuildInfo(
            name = ":android:feature-b",
            path = "android/feature-b",
            buildFile = File("android/feature-b/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(moduleA, moduleB))
        return graph
    }
    
    private fun createGraphWithPotentialCycle(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val modules = listOf(
            ModuleBuildInfo(
                name = ":android:feature-a",
                path = "android/feature-a",
                buildFile = File("android/feature-a/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-c", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.a"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:feature-b",
                path = "android/feature-b",
                buildFile = File("android/feature-b/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-d", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:core-c",
                path = "android/core-c",
                buildFile = File("android/core-c/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-b", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.c"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:core-d",
                path = "android/core-d",
                buildFile = File("android/core-d/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.d"),
                kotlinConfig = null
            )
        )
        
        graph.buildGraph(modules)
        return graph
    }
    
    private fun createGraphWithMixedCycles(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val modules = listOf(
            // Direct cycle: A -> B -> A
            ModuleBuildInfo(
                name = ":android:feature-a",
                path = "android/feature-a",
                buildFile = File("android/feature-a/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-b", null),
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-c", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.a"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:feature-b",
                path = "android/feature-b",
                buildFile = File("android/feature-b/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
                kotlinConfig = null
            ),
            // Indirect cycle: A -> C -> D -> E -> A
            ModuleBuildInfo(
                name = ":android:core-c",
                path = "android/core-c",
                buildFile = File("android/core-c/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-d", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.c"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:core-d",
                path = "android/core-d",
                buildFile = File("android/core-d/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-e", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.d"),
                kotlinConfig = null
            ),
            ModuleBuildInfo(
                name = ":android:core-e",
                path = "android/core-e",
                buildFile = File("android/core-e/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-a", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.e"),
                kotlinConfig = null
            )
        )
        
        graph.buildGraph(modules)
        return graph
    }
}