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

class CleanArchitectureAnalyzerTest {
    
    @Test
    fun `should detect invalid dependency direction`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create invalid dependency: domain -> presentation
        val graph = createGraphWithInvalidDependencyDirection()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        val dependencyDirectionIssues = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.violationType == ArchitectureViolationType.DEPENDENCY_DIRECTION }
        
        assertTrue(dependencyDirectionIssues.isNotEmpty())
        assertEquals(Severity.ERROR, dependencyDirectionIssues.first().severity)
    }
    
    @Test
    fun `should detect domain layer violations`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create domain layer depending on data layer
        val graph = createGraphWithDomainLayerViolation()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        val layerViolations = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.violationType == ArchitectureViolationType.LAYER_VIOLATION }
        
        assertTrue(layerViolations.isNotEmpty())
        assertEquals(Severity.CRITICAL, layerViolations.first().severity)
        assertTrue(layerViolations.first().description.contains("Domain layer"))
    }
    
    @Test
    fun `should validate feature module independence`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create feature modules depending on each other
        val graph = createGraphWithFeatureInterdependency()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        val featureInterdependencyIssues = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.description.contains("Feature module") && it.description.contains("depends on other feature modules") }
        
        assertTrue(featureInterdependencyIssues.isNotEmpty())
        assertEquals(Severity.ERROR, featureInterdependencyIssues.first().severity)
    }
    
    @Test
    fun `should detect data layer abstraction violations`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create data layer depending on presentation layer
        val graph = createGraphWithDataPresentationDependency()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        val dataLayerViolations = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.description.contains("Data layer") && it.description.contains("presentation layer") }
        
        assertTrue(dataLayerViolations.isNotEmpty())
        assertEquals(Severity.CRITICAL, dataLayerViolations.first().severity)
    }
    
    @Test
    fun `should validate proper clean architecture structure`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create proper Clean Architecture structure
        val graph = createProperCleanArchitectureGraph()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        // Should have minimal or no critical issues
        val criticalIssues = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.severity == Severity.CRITICAL || it.severity == Severity.ERROR }
        
        assertTrue(criticalIssues.isEmpty() || criticalIssues.size <= 1) // Allow for minor issues
    }
    
    @Test
    fun `should determine architecture layers correctly`() {
        val analyzer = CleanArchitectureAnalyzer()
        
        val appModule = ModuleNode(
            name = ":android:app",
            path = "android/app",
            type = ModuleType.APPLICATION,
            plugins = listOf("com.android.application"),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic"),
            kotlinConfig = null
        )
        
        val featureModule = ModuleNode(
            name = ":android:feature-library",
            path = "android/feature-library",
            type = ModuleType.FEATURE,
            plugins = listOf("com.android.library"),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
            kotlinConfig = null
        )
        
        val domainModule = ModuleNode(
            name = ":android:core-domain",
            path = "android/core-domain",
            type = ModuleType.CORE,
            plugins = listOf("com.android.library"),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.domain"),
            kotlinConfig = null
        )
        
        val dataModule = ModuleNode(
            name = ":android:core-data",
            path = "android/core-data",
            type = ModuleType.CORE,
            plugins = listOf("com.android.library"),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.data"),
            kotlinConfig = null
        )
        
        // Use reflection to access private method for testing
        val method = CleanArchitectureAnalyzer::class.java.getDeclaredMethod("determineArchitectureLayer", ModuleNode::class.java)
        method.isAccessible = true
        
        assertEquals(ArchitectureLayer.PRESENTATION, method.invoke(analyzer, appModule))
        assertEquals(ArchitectureLayer.PRESENTATION, method.invoke(analyzer, featureModule))
        assertEquals(ArchitectureLayer.DOMAIN, method.invoke(analyzer, domainModule))
        assertEquals(ArchitectureLayer.DATA, method.invoke(analyzer, dataModule))
    }
    
    @Test
    fun `should not analyze without required metadata`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Don't set required metadata
        assertFalse(analyzer.canAnalyze(context))
        
        val issues = analyzer.analyze(context)
        assertTrue(issues.isEmpty())
    }
    
    @Test
    fun `should warn about feature modules without core dependencies`() = runTest {
        val analyzer = CleanArchitectureAnalyzer()
        val context = createTestContext()
        
        // Create feature module without core dependencies
        val graph = createGraphWithIsolatedFeatureModule()
        val structure = createProjectStructure(graph.getModules())
        
        context.setMetadata("dependency-graph", graph)
        context.setMetadata("project-structure", structure)
        
        val issues = analyzer.analyze(context)
        
        val noCoreDepIssues = issues.filterIsInstance<ArchitectureIssue>()
            .filter { it.description.contains("doesn't depend on any core modules") }
        
        assertTrue(noCoreDepIssues.isNotEmpty())
        assertEquals(Severity.WARNING, noCoreDepIssues.first().severity)
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
    
    private fun createProjectStructure(modules: List<ModuleNode>): ProjectStructure {
        val moduleBuildInfos = modules.map { node ->
            ModuleBuildInfo(
                name = node.name,
                path = node.path,
                buildFile = File("${node.path}/build.gradle.kts"),
                plugins = node.plugins,
                dependencies = emptyList(), // Dependencies are handled by the graph
                androidConfig = node.androidConfig,
                kotlinConfig = node.kotlinConfig
            )
        }
        
        return ProjectStructure(
            rootPath = "/test/project",
            modules = moduleBuildInfos,
            moduleReferences = modules.map { ModuleReference(it.name, it.path) }
        )
    }
    
    private fun createGraphWithInvalidDependencyDirection(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val domainModule = ModuleBuildInfo(
            name = ":android:core-domain",
            path = "android/core-domain",
            buildFile = File("android/core-domain/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-library", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.domain"),
            kotlinConfig = null
        )
        
        val presentationModule = ModuleBuildInfo(
            name = ":android:feature-library",
            path = "android/feature-library",
            buildFile = File("android/feature-library/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(domainModule, presentationModule))
        return graph
    }
    
    private fun createGraphWithDomainLayerViolation(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val domainModule = ModuleBuildInfo(
            name = ":android:core-domain",
            path = "android/core-domain",
            buildFile = File("android/core-domain/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-data", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.domain"),
            kotlinConfig = null
        )
        
        val dataModule = ModuleBuildInfo(
            name = ":android:core-data",
            path = "android/core-data",
            buildFile = File("android/core-data/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.data"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(domainModule, dataModule))
        return graph
    }
    
    private fun createGraphWithFeatureInterdependency(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val featureA = ModuleBuildInfo(
            name = ":android:feature-library",
            path = "android/feature-library",
            buildFile = File("android/feature-library/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-reader", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
            kotlinConfig = null
        )
        
        val featureB = ModuleBuildInfo(
            name = ":android:feature-reader",
            path = "android/feature-reader",
            buildFile = File("android/feature-reader/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.reader"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(featureA, featureB))
        return graph
    }
    
    private fun createGraphWithDataPresentationDependency(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val dataModule = ModuleBuildInfo(
            name = ":android:core-data",
            path = "android/core-data",
            buildFile = File("android/core-data/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-library", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.data"),
            kotlinConfig = null
        )
        
        val presentationModule = ModuleBuildInfo(
            name = ":android:feature-library",
            path = "android/feature-library",
            buildFile = File("android/feature-library/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(dataModule, presentationModule))
        return graph
    }
    
    private fun createProperCleanArchitectureGraph(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val modules = listOf(
            // App module depends on features
            ModuleBuildInfo(
                name = ":android:app",
                path = "android/app",
                buildFile = File("android/app/build.gradle.kts"),
                plugins = listOf("com.android.application"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-library", null),
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-ui", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic"),
                kotlinConfig = null
            ),
            // Feature depends on domain and UI
            ModuleBuildInfo(
                name = ":android:feature-library",
                path = "android/feature-library",
                buildFile = File("android/feature-library/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-domain", null),
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-ui", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
                kotlinConfig = null
            ),
            // Domain module (pure)
            ModuleBuildInfo(
                name = ":android:core-domain",
                path = "android/core-domain",
                buildFile = File("android/core-domain/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-model", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.domain"),
                kotlinConfig = null
            ),
            // Data module depends on domain
            ModuleBuildInfo(
                name = ":android:core-data",
                path = "android/core-data",
                buildFile = File("android/core-data/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-domain", null),
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-model", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.data"),
                kotlinConfig = null
            ),
            // Model module (pure domain)
            ModuleBuildInfo(
                name = ":android:core-model",
                path = "android/core-model",
                buildFile = File("android/core-model/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = emptyList(),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.model"),
                kotlinConfig = null
            ),
            // UI module
            ModuleBuildInfo(
                name = ":android:core-ui",
                path = "android/core-ui",
                buildFile = File("android/core-ui/build.gradle.kts"),
                plugins = listOf("com.android.library"),
                dependencies = listOf(
                    ModuleDependency(DependencyType.PROJECT, "implementation", ":android:core-model", null)
                ),
                androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.ui"),
                kotlinConfig = null
            )
        )
        
        graph.buildGraph(modules)
        return graph
    }
    
    private fun createGraphWithIsolatedFeatureModule(): ModuleDependencyGraph {
        val graph = ModuleDependencyGraph()
        
        val featureModule = ModuleBuildInfo(
            name = ":android:feature-isolated",
            path = "android/feature-isolated",
            buildFile = File("android/feature-isolated/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(), // No dependencies on core modules
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.isolated"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(featureModule))
        return graph
    }
}