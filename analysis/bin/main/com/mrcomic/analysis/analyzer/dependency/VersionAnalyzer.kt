package com.mrcomic.analysis.analyzer.dependency

import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope

/**
 * Analyzes dependency versions and checks for updates and compatibility issues.
 */
class VersionAnalyzer(
    private val mavenCentralClient: MavenCentralClient = MavenCentralClient()
) {
    
    /**
     * Analyzes all dependencies in the project for version issues.
     */
    suspend fun analyzeVersions(projectDependencies: ProjectDependencies): VersionAnalysisResult = coroutineScope {
        val externalDependencies = projectDependencies.allExternalDependencies
        
        // Check for version updates in parallel
        val versionChecks = externalDependencies.map { (coordinate, dependencyInfo) ->
            async {
                checkDependencyVersions(coordinate, dependencyInfo)
            }
        }
        
        val versionIssues = versionChecks.awaitAll().flatten()
        
        // Analyze version conflicts
        val conflictIssues = analyzeVersionConflicts(externalDependencies)
        
        // Analyze breaking changes
        val breakingChangeIssues = analyzeBreakingChanges(externalDependencies, versionIssues)
        
        VersionAnalysisResult(
            outdatedDependencies = versionIssues.filterIsInstance<OutdatedDependencyIssue>(),
            versionConflicts = conflictIssues,
            breakingChanges = breakingChangeIssues,
            totalDependenciesChecked = externalDependencies.size,
            updateRecommendations = generateUpdateRecommendations(versionIssues, conflictIssues)
        )
    }
    
    private suspend fun checkDependencyVersions(
        coordinate: String, 
        dependencyInfo: ExternalDependencyInfo
    ): List<VersionIssue> {
        val issues = mutableListOf<VersionIssue>()
        
        try {
            val latestVersionInfo = mavenCentralClient.getLatestVersion(
                dependencyInfo.group, 
                dependencyInfo.artifact
            )
            
            if (latestVersionInfo != null) {
                dependencyInfo.versions.forEach { currentVersion ->
                    val comparison = compareVersions(currentVersion, latestVersionInfo.latestVersion)
                    
                    when {
                        comparison < 0 -> {
                            val severity = calculateUpdateSeverity(currentVersion, latestVersionInfo.latestVersion)
                            issues.add(OutdatedDependencyIssue(
                                coordinate = coordinate,
                                currentVersion = currentVersion,
                                latestVersion = latestVersionInfo.latestVersion,
                                severity = severity,
                                usedInModules = dependencyInfo.usedInModules.toList(),
                                versionsBehind = calculateVersionsBehind(currentVersion, latestVersionInfo.latestVersion),
                                lastUpdated = latestVersionInfo.lastUpdated
                            ))
                        }
                        comparison > 0 -> {
                            // Current version is newer than "latest" - might be a pre-release
                            issues.add(PreReleaseVersionIssue(
                                coordinate = coordinate,
                                currentVersion = currentVersion,
                                stableVersion = latestVersionInfo.latestVersion,
                                usedInModules = dependencyInfo.usedInModules.toList()
                            ))
                        }
                    }
                }
            }
        } catch (e: Exception) {
            // Log but don't fail the analysis
            println("Warning: Failed to check versions for $coordinate: ${e.message}")
        }
        
        return issues
    }
    
    private fun analyzeVersionConflicts(
        dependencies: Map<String, ExternalDependencyInfo>
    ): List<VersionConflictIssue> {
        val conflicts = mutableListOf<VersionConflictIssue>()
        
        dependencies.values.forEach { dependency ->
            if (dependency.versions.size > 1) {
                val sortedVersions = dependency.versions.sortedWith(::compareVersions).reversed()
                
                conflicts.add(VersionConflictIssue(
                    coordinate = "${dependency.group}:${dependency.artifact}",
                    conflictingVersions = dependency.versions.toList(),
                    resolvedVersion = sortedVersions.first(), // Gradle uses highest version
                    affectedModules = dependency.usedInModules.toList(),
                    severity = calculateConflictSeverity(dependency.versions)
                ))
            }
        }
        
        return conflicts
    }
    
    private fun analyzeBreakingChanges(
        dependencies: Map<String, ExternalDependencyInfo>,
        versionIssues: List<VersionIssue>
    ): List<BreakingChangeIssue> {
        val breakingChanges = mutableListOf<BreakingChangeIssue>()
        
        versionIssues.filterIsInstance<OutdatedDependencyIssue>().forEach { outdated ->
            val dependency = dependencies.values.find { 
                "${it.group}:${it.artifact}" == outdated.coordinate 
            }
            
            if (dependency != null) {
                val hasBreakingChanges = checkForBreakingChanges(
                    outdated.currentVersion, 
                    outdated.latestVersion
                )
                
                if (hasBreakingChanges) {
                    breakingChanges.add(BreakingChangeIssue(
                        coordinate = outdated.coordinate,
                        fromVersion = outdated.currentVersion,
                        toVersion = outdated.latestVersion,
                        breakingChangeType = determineBreakingChangeType(
                            outdated.currentVersion, 
                            outdated.latestVersion
                        ),
                        affectedModules = outdated.usedInModules,
                        migrationComplexity = estimateMigrationComplexity(
                            outdated.coordinate,
                            outdated.currentVersion,
                            outdated.latestVersion
                        )
                    ))
                }
            }
        }
        
        return breakingChanges
    }
    
    private fun generateUpdateRecommendations(
        versionIssues: List<VersionIssue>,
        conflictIssues: List<VersionConflictIssue>
    ): List<UpdateRecommendation> {
        val recommendations = mutableListOf<UpdateRecommendation>()
        
        // Recommend updates for outdated dependencies
        versionIssues.filterIsInstance<OutdatedDependencyIssue>()
            .filter { it.severity != UpdateSeverity.BREAKING }
            .forEach { outdated ->
                recommendations.add(UpdateRecommendation(
                    coordinate = outdated.coordinate,
                    currentVersion = outdated.currentVersion,
                    recommendedVersion = outdated.latestVersion,
                    updateType = when (outdated.severity) {
                        UpdateSeverity.PATCH -> UpdateType.PATCH
                        UpdateSeverity.MINOR -> UpdateType.MINOR
                        UpdateSeverity.MAJOR -> UpdateType.MAJOR
                        UpdateSeverity.BREAKING -> UpdateType.BREAKING
                    },
                    priority = calculateUpdatePriority(outdated),
                    affectedModules = outdated.usedInModules,
                    estimatedRisk = estimateUpdateRisk(outdated)
                ))
            }
        
        // Recommend conflict resolutions
        conflictIssues.forEach { conflict ->
            recommendations.add(UpdateRecommendation(
                coordinate = conflict.coordinate,
                currentVersion = conflict.conflictingVersions.minOrNull() ?: "",
                recommendedVersion = conflict.resolvedVersion,
                updateType = UpdateType.CONFLICT_RESOLUTION,
                priority = UpdatePriority.HIGH,
                affectedModules = conflict.affectedModules,
                estimatedRisk = UpdateRisk.MEDIUM
            ))
        }
        
        return recommendations.sortedByDescending { it.priority }
    }
    
    private fun compareVersions(version1: String, version2: String): Int {
        val v1Parts = parseVersion(version1)
        val v2Parts = parseVersion(version2)
        
        for (i in 0 until maxOf(v1Parts.size, v2Parts.size)) {
            val v1Part = v1Parts.getOrNull(i) ?: 0
            val v2Part = v2Parts.getOrNull(i) ?: 0
            
            when {
                v1Part < v2Part -> return -1
                v1Part > v2Part -> return 1
            }
        }
        
        return 0
    }
    
    private fun parseVersion(version: String): List<Int> {
        return version.split(".", "-", "_")
            .mapNotNull { part ->
                part.filter { it.isDigit() }.toIntOrNull()
            }
    }
    
    private fun calculateUpdateSeverity(currentVersion: String, latestVersion: String): UpdateSeverity {
        val current = parseVersion(currentVersion)
        val latest = parseVersion(latestVersion)
        
        return when {
            current.isEmpty() || latest.isEmpty() -> UpdateSeverity.MINOR
            current[0] != latest[0] -> UpdateSeverity.MAJOR
            current.size > 1 && latest.size > 1 && current[1] != latest[1] -> UpdateSeverity.MINOR
            else -> UpdateSeverity.PATCH
        }
    }
    
    private fun calculateVersionsBehind(currentVersion: String, latestVersion: String): Int {
        // Simplified calculation - in reality this would be more complex
        val current = parseVersion(currentVersion)
        val latest = parseVersion(latestVersion)
        
        if (current.isEmpty() || latest.isEmpty()) return 1
        
        return when {
            current[0] != latest[0] -> (latest[0] - current[0]) * 100
            current.size > 1 && latest.size > 1 -> latest[1] - current[1]
            else -> 1
        }
    }
    
    private fun calculateConflictSeverity(versions: Set<String>): ConflictSeverity {
        val parsedVersions = versions.map { parseVersion(it) }
        val majorVersions = parsedVersions.map { it.firstOrNull() ?: 0 }.toSet()
        
        return when {
            majorVersions.size > 1 -> ConflictSeverity.MAJOR
            parsedVersions.map { it.getOrNull(1) ?: 0 }.toSet().size > 1 -> ConflictSeverity.MINOR
            else -> ConflictSeverity.PATCH
        }
    }
    
    private fun checkForBreakingChanges(currentVersion: String, latestVersion: String): Boolean {
        val current = parseVersion(currentVersion)
        val latest = parseVersion(latestVersion)
        
        // Major version change usually indicates breaking changes
        return current.isNotEmpty() && latest.isNotEmpty() && current[0] != latest[0]
    }
    
    private fun determineBreakingChangeType(currentVersion: String, latestVersion: String): BreakingChangeType {
        val current = parseVersion(currentVersion)
        val latest = parseVersion(latestVersion)
        
        return when {
            current.isEmpty() || latest.isEmpty() -> BreakingChangeType.UNKNOWN
            latest[0] - current[0] >= 2 -> BreakingChangeType.MAJOR_API_CHANGE
            latest[0] - current[0] == 1 -> BreakingChangeType.API_DEPRECATION
            else -> BreakingChangeType.MINOR_BREAKING_CHANGE
        }
    }
    
    private fun estimateMigrationComplexity(
        coordinate: String, 
        currentVersion: String, 
        latestVersion: String
    ): MigrationComplexity {
        // This would be enhanced with actual knowledge about specific libraries
        val versionDiff = calculateVersionsBehind(currentVersion, latestVersion)
        
        return when {
            versionDiff >= 100 -> MigrationComplexity.VERY_HIGH
            versionDiff >= 50 -> MigrationComplexity.HIGH
            versionDiff >= 10 -> MigrationComplexity.MEDIUM
            else -> MigrationComplexity.LOW
        }
    }
    
    private fun calculateUpdatePriority(outdated: OutdatedDependencyIssue): UpdatePriority {
        return when {
            outdated.severity == UpdateSeverity.MAJOR -> UpdatePriority.LOW
            outdated.versionsBehind > 50 -> UpdatePriority.HIGH
            outdated.versionsBehind > 10 -> UpdatePriority.MEDIUM
            else -> UpdatePriority.LOW
        }
    }
    
    private fun estimateUpdateRisk(outdated: OutdatedDependencyIssue): UpdateRisk {
        return when (outdated.severity) {
            UpdateSeverity.PATCH -> UpdateRisk.LOW
            UpdateSeverity.MINOR -> UpdateRisk.MEDIUM
            UpdateSeverity.MAJOR -> UpdateRisk.HIGH
            UpdateSeverity.BREAKING -> UpdateRisk.VERY_HIGH
        }
    }
}

/**
 * Result of version analysis.
 */
data class VersionAnalysisResult(
    val outdatedDependencies: List<OutdatedDependencyIssue>,
    val versionConflicts: List<VersionConflictIssue>,
    val breakingChanges: List<BreakingChangeIssue>,
    val totalDependenciesChecked: Int,
    val updateRecommendations: List<UpdateRecommendation>
)

/**
 * Base class for version-related issues.
 */
sealed class VersionIssue

/**
 * Issue for outdated dependencies.
 */
data class OutdatedDependencyIssue(
    val coordinate: String,
    val currentVersion: String,
    val latestVersion: String,
    val severity: UpdateSeverity,
    val usedInModules: List<String>,
    val versionsBehind: Int,
    val lastUpdated: Long
) : VersionIssue()

/**
 * Issue for pre-release versions.
 */
data class PreReleaseVersionIssue(
    val coordinate: String,
    val currentVersion: String,
    val stableVersion: String,
    val usedInModules: List<String>
) : VersionIssue()

/**
 * Issue for version conflicts.
 */
data class VersionConflictIssue(
    val coordinate: String,
    val conflictingVersions: List<String>,
    val resolvedVersion: String,
    val affectedModules: List<String>,
    val severity: ConflictSeverity
)

/**
 * Issue for breaking changes.
 */
data class BreakingChangeIssue(
    val coordinate: String,
    val fromVersion: String,
    val toVersion: String,
    val breakingChangeType: BreakingChangeType,
    val affectedModules: List<String>,
    val migrationComplexity: MigrationComplexity
)

/**
 * Update recommendation.
 */
data class UpdateRecommendation(
    val coordinate: String,
    val currentVersion: String,
    val recommendedVersion: String,
    val updateType: UpdateType,
    val priority: UpdatePriority,
    val affectedModules: List<String>,
    val estimatedRisk: UpdateRisk
)

// Enums for classification
enum class UpdateSeverity { PATCH, MINOR, MAJOR, BREAKING }
enum class ConflictSeverity { PATCH, MINOR, MAJOR }
enum class BreakingChangeType { API_DEPRECATION, MAJOR_API_CHANGE, MINOR_BREAKING_CHANGE, UNKNOWN }
enum class MigrationComplexity { LOW, MEDIUM, HIGH, VERY_HIGH }
enum class UpdateType { PATCH, MINOR, MAJOR, BREAKING, CONFLICT_RESOLUTION }
enum class UpdatePriority { LOW, MEDIUM, HIGH, CRITICAL }
enum class UpdateRisk { LOW, MEDIUM, HIGH, VERY_HIGH }