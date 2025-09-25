package com.mrcomic.analysis.analyzer.performance

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.PerformanceIssue
import com.mrcomic.analysis.model.PerformanceIssueType
import com.mrcomic.analysis.model.PerformanceImpact
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes build performance and Gradle configuration for optimization opportunities.
 */
class BuildPerformanceAnalyzer : Analyzer {
    
    override val id = "build-performance"
    override val name = "Build Performance Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing build performance...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Analyze Gradle configuration
            issues.addAll(analyzeGradleConfiguration(context))
            
            // Analyze build scripts optimization
            issues.addAll(analyzeBuildScriptsOptimization(context))
            
            // Analyze dependency configuration
            issues.addAll(analyzeDependencyConfiguration(context))
            
            // Analyze module structure for build performance
            issues.addAll(analyzeModuleStructurePerformance(context))
            
            // Analyze resource optimization
            issues.addAll(analyzeResourceOptimization(context))
            
            context.logger.info("Build performance analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze build performance", e)
            issues.add(PerformanceIssue(
                id = "build-performance-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze build performance: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project structure is valid",
                performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                impact = PerformanceImpact(null, null, emptyList())
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return File(context.projectRoot, "build.gradle.kts").exists() ||
               File(context.projectRoot, "build.gradle").exists()
    }
    
    private fun analyzeGradleConfiguration(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        // Check gradle.properties
        val gradlePropsFile = File(context.projectRoot, "gradle.properties")
        if (gradlePropsFile.exists()) {
            val content = gradlePropsFile.readText()
            
            // Check for parallel builds
            if (!content.contains("org.gradle.parallel=true")) {
                issues.add(PerformanceIssue(
                    id = "parallel-builds-disabled",
                    severity = Severity.WARNING,
                    description = "Parallel builds are not enabled",
                    location = "gradle.properties",
                    suggestion = "Add org.gradle.parallel=true to enable parallel builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 30000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("build", "test")
                    )
                ))
            }
            
            // Check for build cache
            if (!content.contains("org.gradle.caching=true")) {
                issues.add(PerformanceIssue(
                    id = "build-cache-disabled",
                    severity = Severity.WARNING,
                    description = "Build cache is not enabled",
                    location = "gradle.properties",
                    suggestion = "Add org.gradle.caching=true to enable build caching",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 60000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("clean build", "incremental build")
                    )
                ))
            }
            
            // Check for daemon
            if (!content.contains("org.gradle.daemon=true")) {
                issues.add(PerformanceIssue(
                    id = "gradle-daemon-disabled",
                    severity = Severity.WARNING,
                    description = "Gradle daemon is not enabled",
                    location = "gradle.properties",
                    suggestion = "Add org.gradle.daemon=true to enable Gradle daemon",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 15000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("all gradle tasks")
                    )
                ))
            }
            
            // Check JVM heap size
            val jvmArgsPattern = Regex("""org\.gradle\.jvmargs=.*-Xmx(\d+)([gGmM])""")
            val match = jvmArgsPattern.find(content)
            if (match != null) {
                val size = match.groupValues[1].toInt()
                val unit = match.groupValues[2].lowercase()
                val sizeInMb = when (unit) {
                    "g" -> size * 1024
                    "m" -> size
                    else -> size
                }
                
                if (sizeInMb < 2048) {
                    issues.add(PerformanceIssue(
                        id = "low-jvm-heap-size",
                        severity = Severity.WARNING,
                        description = "JVM heap size is set to ${size}${unit}, which may be too low for large projects",
                        location = "gradle.properties",
                        suggestion = "Consider increasing heap size to at least 2GB (-Xmx2g)",
                        performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 20000L,
                            memoryImpactMb = null,
                            affectedOperations = listOf("compilation", "dexing")
                        )
                    ))
                }
            } else {
                issues.add(PerformanceIssue(
                    id = "missing-jvm-heap-config",
                    severity = Severity.INFO,
                    description = "JVM heap size is not configured",
                    location = "gradle.properties",
                    suggestion = "Add org.gradle.jvmargs=-Xmx2g to set appropriate heap size",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 10000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("compilation")
                    )
                ))
            }
            
            // Check for configuration cache
            if (!content.contains("org.gradle.configuration-cache=true")) {
                issues.add(PerformanceIssue(
                    id = "configuration-cache-disabled",
                    severity = Severity.INFO,
                    description = "Configuration cache is not enabled (Gradle 6.6+)",
                    location = "gradle.properties",
                    suggestion = "Add org.gradle.configuration-cache=true for faster builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 5000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("configuration phase")
                    )
                ))
            }
        } else {
            issues.add(PerformanceIssue(
                id = "missing-gradle-properties",
                severity = Severity.WARNING,
                description = "gradle.properties file is missing",
                location = "project root",
                suggestion = "Create gradle.properties with performance optimizations",
                performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                impact = PerformanceImpact(
                    estimatedSlowdownMs = 45000L,
                    memoryImpactMb = null,
                    affectedOperations = listOf("all builds")
                )
            ))
        }
        
        return issues
    }
    
    private fun analyzeBuildScriptsOptimization(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val buildFiles = findBuildFiles(context.projectRoot)
        
        buildFiles.forEach { file ->
            val content = file.readText()
            
            // Check for expensive operations in build scripts
            if (content.contains("exec {") || content.contains("project.exec")) {
                issues.add(PerformanceIssue(
                    id = "exec-in-build-script-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Exec operations in build script can slow down configuration: ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Move exec operations to tasks or use lazy evaluation",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 2000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("configuration phase")
                    )
                ))
            }
            
            // Check for file operations during configuration
            val fileOperationPatterns = listOf(
                "File(",
                "file(",
                "files(",
                "fileTree("
            )
            
            fileOperationPatterns.forEach { pattern ->
                if (content.contains(pattern) && !content.contains("lazy") && !content.contains("provider")) {
                    issues.add(PerformanceIssue(
                        id = "eager-file-operations-${pattern.hashCode()}-${file.name.hashCode()}",
                        severity = Severity.INFO,
                        description = "Eager file operations during configuration in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use lazy evaluation for file operations",
                        performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 1000L,
                            memoryImpactMb = null,
                            affectedOperations = listOf("configuration phase")
                        )
                    ))
                }
            }
            
            // Check for version catalogs usage
            if (content.contains("implementation(") && !content.contains("libs.")) {
                val dependencyCount = Regex("""implementation\s*\(""").findAll(content).count()
                if (dependencyCount > 5) {
                    issues.add(PerformanceIssue(
                        id = "no-version-catalog-${file.name.hashCode()}",
                        severity = Severity.INFO,
                        description = "Many dependencies without version catalog in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use version catalogs (libs.versions.toml) for better dependency management",
                        performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 500L,
                            memoryImpactMb = null,
                            affectedOperations = listOf("dependency resolution")
                        )
                    ))
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeDependencyConfiguration(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val buildFiles = findBuildFiles(context.projectRoot)
        
        buildFiles.forEach { file ->
            val content = file.readText()
            
            // Check for dynamic versions
            val dynamicVersionPattern = Regex("""["'][^"']+:\+["']""")
            if (dynamicVersionPattern.containsMatchIn(content)) {
                issues.add(PerformanceIssue(
                    id = "dynamic-versions-${file.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Dynamic versions ('+') found in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use specific versions instead of dynamic versions",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 10000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("dependency resolution")
                    )
                ))
            }
            
            // Check for SNAPSHOT versions in release builds
            if (content.contains("SNAPSHOT") && !file.path.contains("debug")) {
                issues.add(PerformanceIssue(
                    id = "snapshot-versions-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "SNAPSHOT versions can slow down builds in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use stable versions for release builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 5000L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("dependency resolution")
                    )
                ))
            }
            
            // Check for excessive dependencies
            val implementationCount = Regex("""implementation\s*\(""").findAll(content).count()
            if (implementationCount > 20) {
                issues.add(PerformanceIssue(
                    id = "excessive-dependencies-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "High number of dependencies ($implementationCount) in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Review dependencies and remove unused ones",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = implementationCount * 200L,
                        memoryImpactMb = implementationCount * 2.0,
                        affectedOperations = listOf("dependency resolution", "compilation")
                    )
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeModuleStructurePerformance(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val settingsFile = File(context.projectRoot, "settings.gradle.kts")
            .takeIf { it.exists() } ?: File(context.projectRoot, "settings.gradle")
        
        if (settingsFile.exists()) {
            val content = settingsFile.readText()
            val moduleCount = Regex("""include\s*\(""").findAll(content).count()
            
            if (moduleCount > 50) {
                issues.add(PerformanceIssue(
                    id = "excessive-modules",
                    severity = Severity.WARNING,
                    description = "High number of modules ($moduleCount) may impact build performance",
                    location = "settings.gradle.kts",
                    suggestion = "Consider consolidating related modules or using composite builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = moduleCount * 100L,
                        memoryImpactMb = moduleCount * 1.0,
                        affectedOperations = listOf("configuration", "task graph creation")
                    )
                ))
            }
            
            // Check for deep module hierarchy
            val maxDepth = Regex("""include\s*\(\s*["']:([^"']+)["']\s*\)""")
                .findAll(content)
                .map { it.groupValues[1].count { char -> char == ':' } }
                .maxOrNull() ?: 0
            
            if (maxDepth > 4) {
                issues.add(PerformanceIssue(
                    id = "deep-module-hierarchy",
                    severity = Severity.INFO,
                    description = "Deep module hierarchy (depth: $maxDepth) may impact build performance",
                    location = "settings.gradle.kts",
                    suggestion = "Consider flattening module structure",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = maxDepth * 500L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("dependency resolution")
                    )
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeResourceOptimization(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val buildFiles = findBuildFiles(context.projectRoot)
        
        buildFiles.forEach { file ->
            val content = file.readText()
            
            // Check for resource shrinking
            if (content.contains("android {") && !content.contains("shrinkResources true")) {
                issues.add(PerformanceIssue(
                    id = "resource-shrinking-disabled-${file.name.hashCode()}",
                    severity = Severity.INFO,
                    description = "Resource shrinking is not enabled in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Enable shrinkResources true in release builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = null,
                        affectedOperations = listOf("APK size optimization")
                    )
                ))
            }
            
            // Check for code shrinking
            if (content.contains("android {") && !content.contains("minifyEnabled true")) {
                issues.add(PerformanceIssue(
                    id = "code-shrinking-disabled-${file.name.hashCode()}",
                    severity = Severity.INFO,
                    description = "Code shrinking is not enabled in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Enable minifyEnabled true in release builds",
                    performanceType = PerformanceIssueType.BUILD_PERFORMANCE,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = null,
                        affectedOperations = listOf("APK size optimization")
                    )
                ))
            }
        }
        
        return issues
    }
    
    private fun findBuildFiles(directory: File): List<File> {
        val buildFiles = mutableListOf<File>()
        
        directory.walkTopDown()
            .filter { it.isFile && (it.name == "build.gradle" || it.name == "build.gradle.kts") }
            .forEach { buildFiles.add(it) }
        
        return buildFiles
    }
}