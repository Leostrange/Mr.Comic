package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.ArchitectureIssue
import com.mrcomic.analysis.model.ArchitectureViolationType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes the module structure of an Android project.
 */
class ModuleStructureAnalyzer : Analyzer {
    
    override val id = "module-structure"
    override val name = "Module Structure Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val buildParser = GradleBuildParser()
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing module structure...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Parse project structure
            val projectStructure = parseProjectStructure(context.projectRoot)
            context.setMetadata("project-structure", projectStructure)
            
            // Build dependency graph
            val dependencyGraph = ModuleDependencyGraph()
            dependencyGraph.buildGraph(projectStructure.modules)
            context.setMetadata("dependency-graph", dependencyGraph)
            
            // Analyze structure violations
            issues.addAll(analyzeStructureViolations(dependencyGraph))
            
            // Analyze circular dependencies
            issues.addAll(analyzeCircularDependencies(dependencyGraph))
            
            // Analyze module naming conventions
            issues.addAll(analyzeNamingConventions(projectStructure))
            
            // Analyze dependency configurations
            issues.addAll(analyzeDependencyConfigurations(projectStructure))
            
            context.logger.info("Module structure analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze module structure", e)
            issues.add(ArchitectureIssue(
                id = "module-structure-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze module structure: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project has valid Gradle configuration files",
                violationType = ArchitectureViolationType.MODULE_COUPLING,
                affectedModules = emptyList()
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        val settingsFile = File(context.projectRoot, "settings.gradle.kts")
            .takeIf { it.exists() } ?: File(context.projectRoot, "settings.gradle")
        
        return settingsFile.exists()
    }
    
    private fun parseProjectStructure(projectRoot: File): ProjectStructure {
        // Parse settings.gradle.kts to get module list
        val settingsFile = File(projectRoot, "settings.gradle.kts")
            .takeIf { it.exists() } ?: File(projectRoot, "settings.gradle")
        
        val moduleReferences = buildParser.parseSettingsFile(settingsFile)
        
        // Parse each module's build file
        val modules = mutableListOf<ModuleBuildInfo>()
        
        moduleReferences.forEach { moduleRef ->
            val moduleDir = File(projectRoot, moduleRef.path)
            val buildFile = File(moduleDir, "build.gradle.kts")
                .takeIf { it.exists() } ?: File(moduleDir, "build.gradle")
            
            if (buildFile.exists()) {
                try {
                    val moduleInfo = buildParser.parseBuildFile(buildFile)
                    modules.add(moduleInfo)
                } catch (e: Exception) {
                    // Log error but continue with other modules
                    println("Warning: Failed to parse build file for module ${moduleRef.name}: ${e.message}")
                }
            }
        }
        
        return ProjectStructure(
            rootPath = projectRoot.absolutePath,
            modules = modules,
            moduleReferences = moduleReferences
        )
    }
    
    private fun analyzeStructureViolations(dependencyGraph: ModuleDependencyGraph): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        val violations = dependencyGraph.validateStructure()
        
        violations.forEach { violation ->
            val severity = when (violation.type) {
                ViolationType.MULTIPLE_APP_MODULES -> Severity.CRITICAL
                ViolationType.FEATURE_TO_FEATURE_DEPENDENCY -> Severity.ERROR
                ViolationType.INVALID_MODULE_NAME -> Severity.WARNING
                else -> Severity.WARNING
            }
            
            val violationType = when (violation.type) {
                ViolationType.MULTIPLE_APP_MODULES -> ArchitectureViolationType.MODULE_COUPLING
                ViolationType.FEATURE_TO_FEATURE_DEPENDENCY -> ArchitectureViolationType.LAYER_VIOLATION
                ViolationType.INVALID_MODULE_NAME -> ArchitectureViolationType.MODULE_COUPLING
                else -> ArchitectureViolationType.MODULE_COUPLING
            }
            
            issues.add(ArchitectureIssue(
                id = "structure-violation-${violation.type.name.lowercase()}",
                severity = severity,
                description = violation.description,
                location = violation.module,
                suggestion = violation.suggestion,
                violationType = violationType,
                affectedModules = listOf(violation.module)
            ))
        }
        
        return issues
    }
    
    private fun analyzeCircularDependencies(dependencyGraph: ModuleDependencyGraph): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        val circularDependencies = dependencyGraph.detectCircularDependencies()
        
        circularDependencies.forEach { circular ->
            issues.add(ArchitectureIssue(
                id = "circular-dependency-${circular.modules.joinToString("-").hashCode()}",
                severity = Severity.CRITICAL,
                description = circular.description,
                location = circular.modules.first(),
                suggestion = "Break the circular dependency by introducing interfaces or moving shared code to a common module",
                violationType = ArchitectureViolationType.CIRCULAR_DEPENDENCY,
                affectedModules = circular.modules
            ))
        }
        
        return issues
    }
    
    private fun analyzeNamingConventions(projectStructure: ProjectStructure): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        projectStructure.modules.forEach { module ->
            // Check Android module naming conventions
            if (module.androidConfig != null && !isValidAndroidModuleName(module.name)) {
                issues.add(ArchitectureIssue(
                    id = "invalid-android-module-name-${module.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Android module '${module.name}' doesn't follow naming conventions",
                    location = module.path,
                    suggestion = "Use format like ':android:app', ':android:feature-name', or ':android:core-name'",
                    violationType = ArchitectureViolationType.MODULE_COUPLING,
                    affectedModules = listOf(module.name)
                ))
            }
            
            // Check for consistent plugin usage
            if (module.androidConfig != null && !module.plugins.any { it.startsWith("com.android") }) {
                issues.add(ArchitectureIssue(
                    id = "missing-android-plugin-${module.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Module '${module.name}' has Android configuration but no Android plugin",
                    location = module.path,
                    suggestion = "Add 'com.android.library' or 'com.android.application' plugin",
                    violationType = ArchitectureViolationType.MODULE_COUPLING,
                    affectedModules = listOf(module.name)
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeDependencyConfigurations(projectStructure: ProjectStructure): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        projectStructure.modules.forEach { module ->
            // Check for overuse of 'api' configuration
            val apiDependencies = module.dependencies.filter { it.configuration == "api" }
            if (apiDependencies.size > 3) {
                issues.add(ArchitectureIssue(
                    id = "excessive-api-dependencies-${module.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Module '${module.name}' has ${apiDependencies.size} 'api' dependencies, which may cause unnecessary transitive dependencies",
                    location = module.path,
                    suggestion = "Consider using 'implementation' instead of 'api' for dependencies that don't need to be exposed to consumers",
                    violationType = ArchitectureViolationType.MODULE_COUPLING,
                    affectedModules = listOf(module.name)
                ))
            }
            
            // Check for test dependencies in main configuration
            val mainTestDependencies = module.dependencies.filter { 
                it.configuration == "implementation" && isTestLibrary(it.identifier)
            }
            
            mainTestDependencies.forEach { testDep ->
                issues.add(ArchitectureIssue(
                    id = "test-dependency-in-main-${module.name.hashCode()}-${testDep.identifier.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Test library '${testDep.identifier}' is declared as 'implementation' in module '${module.name}'",
                    location = module.path,
                    suggestion = "Move test dependencies to 'testImplementation' or 'androidTestImplementation'",
                    violationType = ArchitectureViolationType.MODULE_COUPLING,
                    affectedModules = listOf(module.name)
                ))
            }
        }
        
        return issues
    }
    
    private fun isValidAndroidModuleName(name: String): Boolean {
        val validPatterns = listOf(
            Regex(""":android:app"""),
            Regex(""":android:core-[\w-]+"""),
            Regex(""":android:feature-[\w-]+"""),
            Regex(""":android:shared""")
        )
        
        return validPatterns.any { it.matches(name) }
    }
    
    private fun isTestLibrary(identifier: String): Boolean {
        val testLibraries = setOf(
            "junit:junit",
            "org.jetbrains.kotlin:kotlin-test",
            "org.mockito:mockito-core",
            "io.mockk:mockk",
            "org.robolectric:robolectric",
            "androidx.test:core",
            "androidx.test.ext:junit",
            "androidx.test.espresso:espresso-core"
        )
        
        return testLibraries.any { identifier.startsWith(it) }
    }
}

/**
 * Represents the complete structure of a project.
 */
data class ProjectStructure(
    val rootPath: String,
    val modules: List<ModuleBuildInfo>,
    val moduleReferences: List<ModuleReference>
)