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

class ModuleStructureAnalyzerTest {
    
    @Test
    fun `should detect circular dependencies`() = runTest {
        val analyzer = ModuleStructureAnalyzer()
        
        // Create a simple circular dependency: A -> B -> A
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
        
        val circularDependencies = graph.detectCircularDependencies()
        
        assertTrue(circularDependencies.isNotEmpty())
        assertEquals(1, circularDependencies.size)
        assertTrue(circularDependencies.first().modules.containsAll(listOf(":android:feature-a", ":android:feature-b")))
    }
    
    @Test
    fun `should validate module structure`() {
        val graph = ModuleDependencyGraph()
        
        // Create modules with structure violations
        val appModule = ModuleBuildInfo(
            name = ":android:app",
            path = "android/app",
            buildFile = File("android/app/build.gradle.kts"),
            plugins = listOf("com.android.application"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic"),
            kotlinConfig = null
        )
        
        val featureA = ModuleBuildInfo(
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
        
        val featureB = ModuleBuildInfo(
            name = ":android:feature-b",
            path = "android/feature-b",
            buildFile = File("android/feature-b/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.b"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(appModule, featureA, featureB))
        
        val violations = graph.validateStructure()
        
        // Should detect feature-to-feature dependency
        val featureToFeatureViolation = violations.find { it.type == ViolationType.FEATURE_TO_FEATURE_DEPENDENCY }
        assertTrue(featureToFeatureViolation != null)
        assertEquals(":android:feature-a", featureToFeatureViolation.module)
    }
    
    @Test
    fun `should parse gradle build file correctly`() {
        val parser = GradleBuildParser()
        
        val buildFileContent = """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.mrcomic.core"
                
                defaultConfig {
                    minSdk = 21
                    targetSdk = 33
                }
            }
            
            dependencies {
                implementation(project(":android:core-model"))
                api("androidx.core:core-ktx:1.9.0")
                testImplementation("junit:junit:4.13.2")
            }
        """.trimIndent()
        
        // Create temporary file
        val tempFile = kotlin.io.path.createTempFile("build", ".gradle.kts").toFile()
        tempFile.writeText(buildFileContent)
        
        try {
            val buildInfo = parser.parseBuildFile(tempFile)
            
            assertTrue(buildInfo.plugins.contains("com.android.library"))
            assertTrue(buildInfo.plugins.contains("org.jetbrains.kotlin.android"))
            assertEquals(33, buildInfo.androidConfig?.compileSdk)
            assertEquals("com.mrcomic.core", buildInfo.androidConfig?.namespace)
            
            val projectDep = buildInfo.dependencies.find { it.type == DependencyType.PROJECT }
            assertEquals(":android:core-model", projectDep?.identifier)
            
            val externalDep = buildInfo.dependencies.find { it.identifier == "androidx.core:core-ktx" }
            assertEquals("1.9.0", externalDep?.version)
            
        } finally {
            tempFile.delete()
        }
    }
    
    @Test
    fun `should parse settings file correctly`() {
        val parser = GradleBuildParser()
        
        val settingsContent = """
            rootProject.name = "MrComic"
            
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:core")
            project(":android:core").projectDir = file("android/core")
            
            include(":analysis")
        """.trimIndent()
        
        val tempFile = kotlin.io.path.createTempFile("settings", ".gradle.kts").toFile()
        tempFile.writeText(settingsContent)
        
        try {
            val modules = parser.parseSettingsFile(tempFile)
            
            assertEquals(3, modules.size)
            
            val appModule = modules.find { it.name == ":android:app" }
            assertEquals("android/app", appModule?.path)
            
            val coreModule = modules.find { it.name == ":android:core" }
            assertEquals("android/core", coreModule?.path)
            
            val analysisModule = modules.find { it.name == ":analysis" }
            assertEquals(":analysis", analysisModule?.path)
            
        } finally {
            tempFile.delete()
        }
    }
    
    @Test
    fun `should identify module types correctly`() {
        val graph = ModuleDependencyGraph()
        
        val appModule = ModuleBuildInfo(
            name = ":android:app",
            path = "android/app",
            buildFile = File("android/app/build.gradle.kts"),
            plugins = listOf("com.android.application"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic"),
            kotlinConfig = null
        )
        
        val featureModule = ModuleBuildInfo(
            name = ":android:feature-library",
            path = "android/feature-library",
            buildFile = File("android/feature-library/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.feature.library"),
            kotlinConfig = null
        )
        
        val coreModule = ModuleBuildInfo(
            name = ":android:core-data",
            path = "android/core-data",
            buildFile = File("android/core-data/build.gradle.kts"),
            plugins = listOf("com.android.library"),
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.data"),
            kotlinConfig = null
        )
        
        val jvmModule = ModuleBuildInfo(
            name = ":analysis",
            path = "analysis",
            buildFile = File("analysis/build.gradle.kts"),
            plugins = listOf("org.jetbrains.kotlin.jvm"),
            dependencies = emptyList(),
            androidConfig = null,
            kotlinConfig = KotlinConfig(17)
        )
        
        graph.buildGraph(listOf(appModule, featureModule, coreModule, jvmModule))
        
        val modules = graph.getModules()
        
        assertEquals(ModuleType.APPLICATION, modules.find { it.name == ":android:app" }?.type)
        assertEquals(ModuleType.FEATURE, modules.find { it.name == ":android:feature-library" }?.type)
        assertEquals(ModuleType.CORE, modules.find { it.name == ":android:core-data" }?.type)
        assertEquals(ModuleType.KOTLIN_JVM, modules.find { it.name == ":analysis" }?.type)
    }
    
    @Test
    fun `should detect transitive dependencies`() {
        val graph = ModuleDependencyGraph()
        
        // Create chain: A -> B -> C
        val moduleA = ModuleBuildInfo(
            name = ":android:app",
            path = "android/app",
            buildFile = File("android/app/build.gradle.kts"),
            plugins = listOf("com.android.application"),
            dependencies = listOf(
                ModuleDependency(DependencyType.PROJECT, "implementation", ":android:feature-b", null)
            ),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic"),
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
            dependencies = emptyList(),
            androidConfig = AndroidConfig(33, 21, 33, "com.mrcomic.core.c"),
            kotlinConfig = null
        )
        
        graph.buildGraph(listOf(moduleA, moduleB, moduleC))
        
        val transitiveDeps = graph.getTransitiveDependencies(":android:app")
        
        assertTrue(transitiveDeps.contains(":android:feature-b"))
        assertTrue(transitiveDeps.contains(":android:core-c"))
        assertEquals(2, transitiveDeps.size)
    }
    
    @Test
    fun `should check if analyzer can analyze project`(@TempDir tempDir: File) {
        val analyzer = ModuleStructureAnalyzer()
        
        // Create context without settings file
        val contextWithoutSettings = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        assertFalse(analyzer.canAnalyze(contextWithoutSettings))
        
        // Create settings file
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("rootProject.name = \"TestProject\"")
        
        val contextWithSettings = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        assertTrue(analyzer.canAnalyze(contextWithSettings))
    }
}