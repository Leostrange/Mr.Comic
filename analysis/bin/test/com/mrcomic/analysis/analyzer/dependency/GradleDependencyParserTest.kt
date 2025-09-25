package com.mrcomic.analysis.analyzer.dependency

import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class GradleDependencyParserTest {
    
    @Test
    fun `should parse project dependencies with version catalog`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        // Create version catalog
        createVersionCatalog(tempDir)
        
        // Create project structure
        createProjectStructure(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        // Test version catalog parsing
        assertTrue(projectDependencies.versionCatalog != null)
        val catalog = projectDependencies.versionCatalog!!
        
        assertTrue(catalog.libraries.containsKey("androidx-core-ktx"))
        assertEquals("1.12.0", catalog.libraries["androidx-core-ktx"]?.version)
        
        // Test module dependencies
        assertTrue(projectDependencies.moduleDependencies.containsKey(":android:app"))
        val appDependencies = projectDependencies.moduleDependencies[":android:app"]!!
        
        // Should have both version catalog and direct dependencies
        val catalogDeps = appDependencies.dependencies.filter { it.source == DependencySource.VERSION_CATALOG }
        val directDeps = appDependencies.dependencies.filter { it.source == DependencySource.DIRECT }
        val projectDeps = appDependencies.dependencies.filter { it.type == DependencyType.PROJECT }
        
        assertTrue(catalogDeps.isNotEmpty())
        assertTrue(directDeps.isNotEmpty())
        assertTrue(projectDeps.isNotEmpty())
        
        // Test external dependencies aggregation
        assertTrue(projectDependencies.allExternalDependencies.containsKey("androidx.core:core-ktx"))
        val coreKtxInfo = projectDependencies.allExternalDependencies["androidx.core:core-ktx"]!!
        assertTrue(coreKtxInfo.usedInModules.contains(":android:app"))
    }
    
    @Test
    fun `should parse direct dependencies correctly`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        createSimpleProjectStructure(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        val appDependencies = projectDependencies.moduleDependencies[":android:app"]!!
        
        // Find direct dependency
        val directDep = appDependencies.dependencies.find { 
            it.group == "junit" && it.artifact == "junit" 
        }
        
        assertTrue(directDep != null)
        assertEquals("4.13.2", directDep.version)
        assertEquals("testImplementation", directDep.configuration)
        assertEquals(DependencyType.EXTERNAL, directDep.type)
        assertEquals(DependencySource.DIRECT, directDep.source)
    }
    
    @Test
    fun `should parse project dependencies correctly`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        createMultiModuleProject(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        val appDependencies = projectDependencies.moduleDependencies[":android:app"]!!
        
        // Find project dependency
        val projectDep = appDependencies.dependencies.find { 
            it.type == DependencyType.PROJECT && it.artifact == ":android:core"
        }
        
        assertTrue(projectDep != null)
        assertEquals("implementation", projectDep.configuration)
        assertEquals(":android:core", projectDep.coordinate)
    }
    
    @Test
    fun `should handle platform dependencies`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        createProjectWithPlatformDependencies(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        val appDependencies = projectDependencies.moduleDependencies[":android:app"]!!
        
        // Find platform dependency
        val platformDep = appDependencies.dependencies.find { 
            it.type == DependencyType.PLATFORM 
        }
        
        assertTrue(platformDep != null)
        assertEquals("androidx.compose", platformDep.group)
        assertEquals("compose-bom", platformDep.artifact)
        assertEquals("implementation", platformDep.configuration)
    }
    
    @Test
    fun `should aggregate external dependencies across modules`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        createMultiModuleProjectWithSharedDependencies(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        // Test that shared dependencies are aggregated
        val coreKtxInfo = projectDependencies.allExternalDependencies["androidx.core:core-ktx"]
        assertTrue(coreKtxInfo != null)
        assertTrue(coreKtxInfo.usedInModules.size > 1)
        assertTrue(coreKtxInfo.usedInModules.contains(":android:app"))
        assertTrue(coreKtxInfo.usedInModules.contains(":android:core"))
    }
    
    @Test
    fun `should handle project without version catalog`(@TempDir tempDir: File) {
        val parser = GradleDependencyParser()
        
        // Create project without libs.versions.toml
        createSimpleProjectStructure(tempDir)
        
        val projectDependencies = parser.parseProjectDependencies(tempDir)
        
        // Should work without version catalog
        assertTrue(projectDependencies.versionCatalog == null)
        assertTrue(projectDependencies.moduleDependencies.isNotEmpty())
        
        val appDependencies = projectDependencies.moduleDependencies[":android:app"]!!
        assertTrue(appDependencies.dependencies.all { it.source == DependencySource.DIRECT })
    }
    
    private fun createVersionCatalog(tempDir: File) {
        val gradleDir = File(tempDir, "gradle")
        gradleDir.mkdirs()
        
        val libsFile = File(gradleDir, "libs.versions.toml")
        libsFile.writeText("""
            [versions]
            kotlin = "1.9.25"
            compose-bom = "2023.10.01"
            androidx-core = "1.12.0"
            
            [libraries]
            androidx-core-ktx = { group = "androidx.core", name = "core-ktx", version.ref = "androidx-core" }
            compose-bom = { group = "androidx.compose", name = "compose-bom", version.ref = "compose-bom" }
            compose-ui = { group = "androidx.compose", name = "ui", version.ref = "compose-bom" }
            
            [bundles]
            compose = ["compose-ui"]
        """.trimIndent())
    }
    
    private fun createProjectStructure(tempDir: File) {
        // Create settings.gradle.kts
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
        """.trimIndent())
        
        // Create app module
        val appDir = File(tempDir, "android/app")
        appDir.mkdirs()
        
        val appBuildFile = File(appDir, "build.gradle.kts")
        appBuildFile.writeText("""
            plugins {
                id("com.android.application")
                kotlin("android")
            }
            
            dependencies {
                implementation(libs.androidx.core.ktx)
                implementation(platform(libs.compose.bom))
                implementation(libs.bundles.compose)
                testImplementation("junit:junit:4.13.2")
            }
        """.trimIndent())
    }
    
    private fun createSimpleProjectStructure(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
        """.trimIndent())
        
        val appDir = File(tempDir, "android/app")
        appDir.mkdirs()
        
        val appBuildFile = File(appDir, "build.gradle.kts")
        appBuildFile.writeText("""
            plugins {
                id("com.android.application")
                kotlin("android")
            }
            
            dependencies {
                implementation("androidx.core:core-ktx:1.12.0")
                testImplementation("junit:junit:4.13.2")
            }
        """.trimIndent())
    }
    
    private fun createMultiModuleProject(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:core")
            project(":android:core").projectDir = file("android/core")
        """.trimIndent())
        
        // App module
        val appDir = File(tempDir, "android/app")
        appDir.mkdirs()
        val appBuildFile = File(appDir, "build.gradle.kts")
        appBuildFile.writeText("""
            dependencies {
                implementation(project(":android:core"))
                implementation("androidx.core:core-ktx:1.12.0")
            }
        """.trimIndent())
        
        // Core module
        val coreDir = File(tempDir, "android/core")
        coreDir.mkdirs()
        val coreBuildFile = File(coreDir, "build.gradle.kts")
        coreBuildFile.writeText("""
            dependencies {
                api("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
            }
        """.trimIndent())
    }
    
    private fun createProjectWithPlatformDependencies(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
        """.trimIndent())
        
        val appDir = File(tempDir, "android/app")
        appDir.mkdirs()
        
        val appBuildFile = File(appDir, "build.gradle.kts")
        appBuildFile.writeText("""
            dependencies {
                implementation(platform("androidx.compose:compose-bom:2023.10.01"))
                implementation("androidx.compose:compose-ui")
            }
        """.trimIndent())
    }
    
    private fun createMultiModuleProjectWithSharedDependencies(tempDir: File) {
        val settingsFile = File(tempDir, "settings.gradle.kts")
        settingsFile.writeText("""
            include(":android:app")
            project(":android:app").projectDir = file("android/app")
            
            include(":android:core")
            project(":android:core").projectDir = file("android/core")
        """.trimIndent())
        
        // App module
        val appDir = File(tempDir, "android/app")
        appDir.mkdirs()
        val appBuildFile = File(appDir, "build.gradle.kts")
        appBuildFile.writeText("""
            dependencies {
                implementation("androidx.core:core-ktx:1.12.0")
                implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
            }
        """.trimIndent())
        
        // Core module
        val coreDir = File(tempDir, "android/core")
        coreDir.mkdirs()
        val coreBuildFile = File(coreDir, "build.gradle.kts")
        coreBuildFile.writeText("""
            dependencies {
                api("androidx.core:core-ktx:1.12.0")
                implementation("com.squareup.retrofit2:retrofit:2.9.0")
            }
        """.trimIndent())
    }
}