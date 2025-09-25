package com.mrcomic.analysis.analyzer.dependency

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.DependencyIssue
import com.mrcomic.analysis.model.DependencyIssueType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Main dependency analyzer that coordinates all dependency-related analysis.
 */
class DependencyAnalyzer : Analyzer {
    
    override val id = "dependency"
    override val name = "Dependency Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val gradleDependencyParser = GradleDependencyParser()
    private val versionAnalyzer = VersionAnalyzer()
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Starting dependency analysis...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Parse project dependencies
            val projectDependencies = gradleDependencyParser.parseProjectDependencies(context.projectRoot)
            context.setMetadata("project-dependencies", projectDependencies)
            
            // Analyze version issues
            val versionAnalysisResult = versionAnalyzer.analyzeVersions(projectDependencies)
            context.setMetadata("version-analysis", versionAnalysisResult)
            
            // Convert version issues to dependency issues
            issues.addAll(convertVersionIssuesToDependencyIssues(versionAnalysisResult))
            
            // Analyze dependency usage patterns
            issues.addAll(analyzeDependencyUsagePatterns(projectDependencies))
            
            // Analyze version catalog usage
            issues.addAll(analyzeVersionCatalogUsage(projectDependencies))
            
            // Generate dependency summary
            generateDependencySummary(context, projectDependencies, versionAnalysisResult)
            
            context.logger.info("Dependency analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Dependency analysis failed", e)
            issues.add(DependencyIssue(
                id = "dependency-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze dependencies: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project has valid Gradle configuration files",
                dependencyName = "unknown",
                currentVersion = null,
                recommendedVersion = null,
                issueType = DependencyIssueType.MISSING
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        val settingsFile = File(context.projectRoot, "settings.gradle.kts")
            .takeIf { it.exists() } ?: File(context.projectRoot, "settings.gradle")
        
        return settingsFile.exists()
    }
    
    private fun convertVersionIssuesToDependencyIssues(
        versionAnalysisResult: VersionAnalysisResult
    ): List<DependencyIssue> {
        val issues = mutableListOf<DependencyIssue>()
        
        // Convert outdated dependencies
        versionAnalysisResult.outdatedDependencies.forEach { outdated ->
            val severity = when (outdated.severity) {
                UpdateSeverity.PATCH -> Severity.INFO
                UpdateSeverity.MINOR -> Severity.WARNING
                UpdateSeverity.MAJOR -> Severity.WARNING
                UpdateSeverity.BREAKING -> Severity.ERROR
            }
            
            issues.add(DependencyIssue(
                id = "outdated-dependency-${outdated.coordinate.hashCode()}",
                severity = severity,
                description = "Dependency '${outdated.coordinate}' is outdated. Current: ${outdated.currentVersion}, Latest: ${outdated.latestVersion} (${outdated.versionsBehind} versions behind)",
                location = outdated.usedInModules.joinToString(", "),
                suggestion = "Update to version ${outdated.latestVersion}. ${getSeverityAdvice(outdated.severity)}",
                dependencyName = outdated.coordinate,
                currentVersion = outdated.currentVersion,
                recommendedVersion = outdated.latestVersion,
                issueType = DependencyIssueType.OUTDATED
            ))
        }
        
        // Convert version conflicts
        versionAnalysisResult.versionConflicts.forEach { conflict ->
            val severity = when (conflict.severity) {
                ConflictSeverity.PATCH -> Severity.WARNING
                ConflictSeverity.MINOR -> Severity.WARNING
                ConflictSeverity.MAJOR -> Severity.ERROR
            }
            
            issues.add(DependencyIssue(
                id = "version-conflict-${conflict.coordinate.hashCode()}",
                severity = severity,
                description = "Version conflict for '${conflict.coordinate}'. Conflicting versions: ${conflict.conflictingVersions.joinToString(", ")}. Resolved to: ${conflict.resolvedVersion}",
                location = conflict.affectedModules.joinToString(", "),
                suggestion = "Align all modules to use the same version (${conflict.resolvedVersion}) or use dependency constraints",
                dependencyName = conflict.coordinate,
                currentVersion = conflict.conflictingVersions.minOrNull(),
                recommendedVersion = conflict.resolvedVersion,
                issueType = DependencyIssueType.CONFLICTING
            ))
        }
        
        // Convert breaking changes
        versionAnalysisResult.breakingChanges.forEach { breakingChange ->
            issues.add(DependencyIssue(
                id = "breaking-change-${breakingChange.coordinate.hashCode()}",
                severity = Severity.ERROR,
                description = "Potential breaking changes in '${breakingChange.coordinate}' from ${breakingChange.fromVersion} to ${breakingChange.toVersion}. Type: ${breakingChange.breakingChangeType}",
                location = breakingChange.affectedModules.joinToString(", "),
                suggestion = "Review migration guide and test thoroughly. Migration complexity: ${breakingChange.migrationComplexity}",
                dependencyName = breakingChange.coordinate,
                currentVersion = breakingChange.fromVersion,
                recommendedVersion = breakingChange.toVersion,
                issueType = DependencyIssueType.CONFLICTING
            ))
        }
        
        return issues
    }
    
    private fun analyzeDependencyUsagePatterns(
        projectDependencies: ProjectDependencies
    ): List<DependencyIssue> {
        val issues = mutableListOf<DependencyIssue>()
        
        // Analyze unused dependencies (simplified - would need more sophisticated analysis)
        projectDependencies.moduleDependencies.forEach { (moduleName, moduleDeps) ->
            // Check for test dependencies in main configuration
            val testDepsInMain = moduleDeps.dependencies.filter { dependency ->
                dependency.configuration == "implementation" && isTestLibrary(dependency.coordinate)
            }
            
            testDepsInMain.forEach { testDep ->
                issues.add(DependencyIssue(
                    id = "test-dep-in-main-${moduleName.hashCode()}-${testDep.coordinate.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Test library '${testDep.coordinate}' is declared as 'implementation' in module '$moduleName'",
                    location = moduleName,
                    suggestion = "Move to 'testImplementation' or 'androidTestImplementation' configuration",
                    dependencyName = testDep.coordinate,
                    currentVersion = testDep.version,
                    recommendedVersion = null,
                    issueType = DependencyIssueType.CONFLICTING
                ))
            }
            
            // Check for excessive API dependencies
            val apiDependencies = moduleDeps.dependencies.filter { it.configuration == "api" }
            if (apiDependencies.size > 5) {
                issues.add(DependencyIssue(
                    id = "excessive-api-deps-${moduleName.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Module '$moduleName' has ${apiDependencies.size} 'api' dependencies, which may cause unnecessary transitive dependencies",
                    location = moduleName,
                    suggestion = "Consider using 'implementation' instead of 'api' for dependencies that don't need to be exposed to consumers",
                    dependencyName = "multiple",
                    currentVersion = null,
                    recommendedVersion = null,
                    issueType = DependencyIssueType.CONFLICTING
                ))
            }
        }
        
        // Check for duplicate dependencies across modules
        val duplicateDependencies = findDuplicateDependencies(projectDependencies)
        duplicateDependencies.forEach { (coordinate, modules) ->
            if (modules.size > 3) { // Only report if used in many modules
                issues.add(DependencyIssue(
                    id = "duplicate-dependency-${coordinate.hashCode()}",
                    severity = Severity.INFO,
                    description = "Dependency '$coordinate' is used in ${modules.size} modules: ${modules.joinToString(", ")}",
                    location = modules.joinToString(", "),
                    suggestion = "Consider moving common dependencies to a shared module or using version catalog bundles",
                    dependencyName = coordinate,
                    currentVersion = null,
                    recommendedVersion = null,
                    issueType = DependencyIssueType.CONFLICTING
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeVersionCatalogUsage(
        projectDependencies: ProjectDependencies
    ): List<DependencyIssue> {
        val issues = mutableListOf<DependencyIssue>()
        
        val hasVersionCatalog = projectDependencies.versionCatalog != null
        
        if (!hasVersionCatalog) {
            // Recommend using version catalog for large projects
            val totalExternalDeps = projectDependencies.allExternalDependencies.size
            if (totalExternalDeps > 10) {
                issues.add(DependencyIssue(
                    id = "missing-version-catalog",
                    severity = Severity.WARNING,
                    description = "Project has $totalExternalDeps external dependencies but no version catalog (libs.versions.toml)",
                    location = "gradle/libs.versions.toml",
                    suggestion = "Consider using Gradle version catalogs to centralize dependency management",
                    dependencyName = "version-catalog",
                    currentVersion = null,
                    recommendedVersion = null,
                    issueType = DependencyIssueType.MISSING
                ))
            }
        } else {
            // Analyze version catalog usage
            val catalogDependencies = projectDependencies.moduleDependencies.values
                .flatMap { it.dependencies }
                .filter { it.source == DependencySource.VERSION_CATALOG }
                .size
            
            val directDependencies = projectDependencies.moduleDependencies.values
                .flatMap { it.dependencies }
                .filter { it.source == DependencySource.DIRECT && it.type == DependencyType.EXTERNAL }
                .size
            
            if (directDependencies > catalogDependencies) {
                issues.add(DependencyIssue(
                    id = "underutilized-version-catalog",
                    severity = Severity.INFO,
                    description = "Version catalog is available but $directDependencies dependencies are declared directly vs $catalogDependencies from catalog",
                    location = "build files",
                    suggestion = "Migrate more dependencies to use the version catalog for better consistency",
                    dependencyName = "version-catalog",
                    currentVersion = null,
                    recommendedVersion = null,
                    issueType = DependencyIssueType.CONFLICTING
                ))
            }
        }
        
        return issues
    }
    
    private fun generateDependencySummary(
        context: AnalysisContext,
        projectDependencies: ProjectDependencies,
        versionAnalysisResult: VersionAnalysisResult
    ) {
        val summary = DependencySummary(
            totalExternalDependencies = projectDependencies.allExternalDependencies.size,
            totalModules = projectDependencies.moduleDependencies.size,
            hasVersionCatalog = projectDependencies.versionCatalog != null,
            outdatedDependencies = versionAnalysisResult.outdatedDependencies.size,
            versionConflicts = versionAnalysisResult.versionConflicts.size,
            breakingChanges = versionAnalysisResult.breakingChanges.size,
            updateRecommendations = versionAnalysisResult.updateRecommendations.size,
            dependencyScore = calculateDependencyScore(projectDependencies, versionAnalysisResult)
        )
        
        context.setMetadata("dependency-summary", summary)
        
        context.logger.info("Dependency Summary:")
        context.logger.info("  Total external dependencies: ${summary.totalExternalDependencies}")
        context.logger.info("  Outdated dependencies: ${summary.outdatedDependencies}")
        context.logger.info("  Version conflicts: ${summary.versionConflicts}")
        context.logger.info("  Dependency score: ${summary.dependencyScore}/100")
    }
    
    private fun calculateDependencyScore(
        projectDependencies: ProjectDependencies,
        versionAnalysisResult: VersionAnalysisResult
    ): Int {
        var score = 100
        
        // Deduct points for issues
        score -= versionAnalysisResult.outdatedDependencies.size * 2
        score -= versionAnalysisResult.versionConflicts.size * 5
        score -= versionAnalysisResult.breakingChanges.size * 10
        
        // Bonus for good practices
        if (projectDependencies.versionCatalog != null) {
            score += 10
        }
        
        val catalogUsageRatio = if (projectDependencies.versionCatalog != null) {
            val catalogDeps = projectDependencies.moduleDependencies.values
                .flatMap { it.dependencies }
                .count { it.source == DependencySource.VERSION_CATALOG }
            val totalExternalDeps = projectDependencies.moduleDependencies.values
                .flatMap { it.dependencies }
                .count { it.type == DependencyType.EXTERNAL }
            
            if (totalExternalDeps > 0) catalogDeps.toDouble() / totalExternalDeps else 0.0
        } else 0.0
        
        score += (catalogUsageRatio * 10).toInt()
        
        return maxOf(0, minOf(100, score))
    }
    
    private fun getSeverityAdvice(severity: UpdateSeverity): String {
        return when (severity) {
            UpdateSeverity.PATCH -> "This is a patch update and should be safe to apply."
            UpdateSeverity.MINOR -> "This is a minor update. Review changelog for new features."
            UpdateSeverity.MAJOR -> "This is a major update. Review breaking changes carefully."
            UpdateSeverity.BREAKING -> "This update contains breaking changes. Migration may be required."
        }
    }
    
    private fun isTestLibrary(coordinate: String): Boolean {
        val testLibraries = setOf(
            "junit:junit",
            "org.jetbrains.kotlin:kotlin-test",
            "org.mockito:mockito-core",
            "io.mockk:mockk",
            "org.robolectric:robolectric",
            "androidx.test:core",
            "androidx.test.ext:junit",
            "androidx.test.espresso:espresso-core",
            "org.jetbrains.kotlinx:kotlinx-coroutines-test"
        )
        
        return testLibraries.any { coordinate.startsWith(it) }
    }
    
    private fun findDuplicateDependencies(
        projectDependencies: ProjectDependencies
    ): Map<String, List<String>> {
        val dependencyToModules = mutableMapOf<String, MutableList<String>>()
        
        projectDependencies.moduleDependencies.forEach { (moduleName, moduleDeps) ->
            moduleDeps.dependencies
                .filter { it.type == DependencyType.EXTERNAL }
                .forEach { dependency ->
                    val coordinate = "${dependency.group}:${dependency.artifact}"
                    dependencyToModules.computeIfAbsent(coordinate) { mutableListOf() }.add(moduleName)
                }
        }
        
        return dependencyToModules.filter { it.value.size > 1 }
    }
}

/**
 * Summary of dependency analysis results.
 */
data class DependencySummary(
    val totalExternalDependencies: Int,
    val totalModules: Int,
    val hasVersionCatalog: Boolean,
    val outdatedDependencies: Int,
    val versionConflicts: Int,
    val breakingChanges: Int,
    val updateRecommendations: Int,
    val dependencyScore: Int
)