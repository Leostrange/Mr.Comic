package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.config.AnalysisConfig
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.core.ConsoleAnalysisLogger
import com.mrcomic.analysis.core.InMemoryAnalysisCache
import com.mrcomic.analysis.model.ArchitectureIssue
import com.mrcomic.analysis.model.Severity
import kotlinx.coroutines.test.runTest
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import kotlin.test.assertTrue

class ArchitectureAnalyzerTest {
    
    @Test
    fun `should run all sub-analyzers and combine results`(@TempDir tempDir: File) = runTest {
        val analyzer = ArchitectureAnalyzer()
        
        // Create a test project structure
        createTestProjectStructure(tempDir)
        
        val context = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        val issues = analyzer.analyze(context)
        
        // Should have found some issues from the test structure
        assertTrue(issues.isNotEmpty())
        
        // Should have architecture summary metadata
        val summary = context.getMetadata<ArchitectureSummary>("architecture-summary")
        assertTrue(summary != null)
        assertTrue(summary.totalModules > 0)
        assertTrue(summary.architectureScore >= 0 && summary.architectureScore <= 100)
    }
    
    @Test
    fun `should calculate architecture score correctly`(@TempDir tempDir: File) = runTest {
        val analyzer = ArchitectureAnalyzer()
        
        // Create a well-structured project
        createWellStructuredProject(tempDir)
        
        val context = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        val issues = analyzer.analyze(context)
        
        val summary = context.getMetadata<ArchitectureSummary>("architecture-summary")
        assertTrue(summary != null)
        
        // Well-structured project should have a decent score
        assertTrue(summary.architectureScore >= 70)
    }
    
    @Test
    fun `should handle project without settings file gracefully`(@TempDir tempDir: File) = runTest {
        val analyzer = ArchitectureAnalyzer()
        
        // Don't create settings file
        val context = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        val canAnalyze = analyzer.canAnalyze(context)
        assertTrue(!canAnalyze)
        
        val issues = analyzer.analyze(context)
        // Should not crash and return empty or minimal issues
        assertTrue(issues.isEmpty() || issues.all { it.severity != Severity.CRITICAL })
    }
    
    @Test
    fun `should provide detailed module type breakdown`(@TempDir tempDir: File) = runTest {
        val analyzer = ArchitectureAnalyzer()
        
        createDiverseProjectStructure(tempDir)
        
        val context = AnalysisContext(
            projectPath = tempDir.absolutePath,
            projectRoot = tempDir,
            config = AnalysisConfig(),
            logger = ConsoleAnalysisLogger(),
            cache = InMemoryAnalysisCache()
        )
        
        analyzer.analyze(context)
        
        val summary = context.getMetadata<ArchitectureSummary>("architecture-summary")
        assertTrue(summary != null)
        
        // Should have different module types
        assertTrue(summary.modulesByType.isNotEmpty())
        assertTrue(summary.modulesByType.containsKey(ModuleType.APPLICATION))
        assertTrue(summary.modulesByType.containsKey(ModuleType.FEATURE))
        assertTrue(summary.modulesByType.containsKey(ModuleType.CORE))
    }
    
    private fun createTestProjectStructure(tempDir: File) {
        // Create settings.gradle.kts
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            rootProject.name = "TestProject"
            
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:feature-library")
            project(":android:feature-library").projectDir = file("android/feature-library")
            
            include(":android:core-domain")
            project(":android:core-domain").projectDir = file("android/core-domain")
        """.trimIndent())
        
        // Create module directories and build files
        createModuleBuildFile(tempDir, "android/app", """
            plugins {
                id("com.android.application")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test"
            }
            
            dependencies {
                implementation(project(":android:feature-library"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/feature-library", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.feature.library"
            }
            
            dependencies {
                implementation(project(":android:core-domain"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-domain", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.domain"
            }
        """.trimIndent())
    }
    
    private fun createWellStructuredProject(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            rootProject.name = "WellStructuredProject"
            
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:feature-library")
            project(":android:feature-library").projectDir = file("android/feature-library")
            
            include(":android:core-domain")
            project(":android:core-domain").projectDir = file("android/core-domain")
            
            include(":android:core-data")
            project(":android:core-data").projectDir = file("android/core-data")
            
            include(":android:core-model")
            project(":android:core-model").projectDir = file("android/core-model")
        """.trimIndent())
        
        // Create proper Clean Architecture structure
        createModuleBuildFile(tempDir, "android/app", """
            plugins {
                id("com.android.application")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test"
            }
            
            dependencies {
                implementation(project(":android:feature-library"))
                implementation(project(":android:core-data"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/feature-library", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.feature.library"
            }
            
            dependencies {
                implementation(project(":android:core-domain"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-domain", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.domain"
            }
            
            dependencies {
                implementation(project(":android:core-model"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-data", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.data"
            }
            
            dependencies {
                implementation(project(":android:core-domain"))
                implementation(project(":android:core-model"))
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-model", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.model"
            }
        """.trimIndent())
    }
    
    private fun createDiverseProjectStructure(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            rootProject.name = "DiverseProject"
            
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:feature-library")
            project(":android:feature-library").projectDir = file("android/feature-library")
            
            include(":android:feature-reader")
            project(":android:feature-reader").projectDir = file("android/feature-reader")
            
            include(":android:core-domain")
            project(":android:core-domain").projectDir = file("android/core-domain")
            
            include(":android:core-data")
            project(":android:core-data").projectDir = file("android/core-data")
            
            include(":android:shared")
            project(":android:shared").projectDir = file("android/shared")
            
            include(":analysis")
        """.trimIndent())
        
        // Create diverse module types
        createModuleBuildFile(tempDir, "android/app", """
            plugins {
                id("com.android.application")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/feature-library", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.feature.library"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/feature-reader", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.feature.reader"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-domain", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.domain"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/core-data", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.core.data"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "android/shared", """
            plugins {
                id("com.android.library")
                kotlin("android")
            }
            
            android {
                compileSdk = 33
                namespace = "com.test.shared"
            }
        """.trimIndent())
        
        createModuleBuildFile(tempDir, "analysis", """
            plugins {
                kotlin("jvm")
            }
            
            kotlin {
                jvmToolchain(17)
            }
        """.trimIndent())
    }
    
    private fun createModuleBuildFile(tempDir: File, modulePath: String, content: String) {
        val moduleDir = File(tempDir, modulePath)
        moduleDir.mkdirs()
        
        val buildFile = File(moduleDir, "build.gradle.kts")
        buildFile.writeText(content)
    }
}