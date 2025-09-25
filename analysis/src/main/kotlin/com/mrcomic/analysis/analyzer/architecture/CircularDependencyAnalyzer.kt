package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.ArchitectureIssue
import com.mrcomic.analysis.model.ArchitectureViolationType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity

/**
 * Specialized analyzer for detecting circular dependencies between modules.
 */
class CircularDependencyAnalyzer : Analyzer {
    
    override val id = "circular-dependency"
    override val name = "Circular Dependency Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override fun getDependencies(): List<String> = listOf("module-structure")
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing circular dependencies...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Get dependency graph from module structure analyzer
            val dependencyGraph = context.getMetadata<ModuleDependencyGraph>("dependency-graph")
            
            if (dependencyGraph == null) {
                context.logger.warn("No dependency graph found. Module structure analyzer must run first.")
                return emptyList()
            }
            
            // Detect circular dependencies with detailed analysis
            val circularDependencies = detectDetailedCircularDependencies(dependencyGraph)
            
            // Convert to issues with detailed suggestions
            issues.addAll(createCircularDependencyIssues(circularDependencies))
            
            // Analyze potential circular dependencies (indirect cycles)
            issues.addAll(analyzePotentialCircularDependencies(dependencyGraph))
            
            context.logger.info("Circular dependency analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze circular dependencies", e)
            issues.add(ArchitectureIssue(
                id = "circular-dependency-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze circular dependencies: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the dependency graph was built correctly",
                violationType = ArchitectureViolationType.CIRCULAR_DEPENDENCY,
                affectedModules = emptyList()
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return context.getMetadata<ModuleDependencyGraph>("dependency-graph") != null
    }
    
    private fun detectDetailedCircularDependencies(graph: ModuleDependencyGraph): List<DetailedCircularDependency> {
        val detailedCycles = mutableListOf<DetailedCircularDependency>()
        val visited = mutableSetOf<String>()
        val recursionStack = mutableSetOf<String>()
        val pathStack = mutableListOf<DependencyPath>()
        
        fun dfs(module: String, currentPath: MutableList<DependencyPath>) {
            if (module in recursionStack) {
                // Found a cycle - extract the cycle from the path
                val cycleStartIndex = currentPath.indexOfFirst { it.to == module }
                if (cycleStartIndex >= 0) {
                    val cyclePath = currentPath.subList(cycleStartIndex, currentPath.size)
                    val cycleModules = cyclePath.map { it.from } + module
                    
                    detailedCycles.add(DetailedCircularDependency(
                        modules = cycleModules,
                        dependencyPath = cyclePath.toList(),
                        cycleLength = cyclePath.size,
                        severity = calculateCycleSeverity(cyclePath),
                        breakingSuggestions = generateBreakingSuggestions(cyclePath)
                    ))
                }
                return
            }
            
            if (module in visited) return
            
            visited.add(module)
            recursionStack.add(module)
            
            // Get all direct dependencies with their configurations
            val dependencies = graph.getDependencies()
                .filter { it.from == module }
            
            dependencies.forEach { edge ->
                val dependencyPath = DependencyPath(
                    from = edge.from,
                    to = edge.to,
                    configuration = edge.configuration,
                    type = determineDependencyType(edge.configuration)
                )
                
                currentPath.add(dependencyPath)
                dfs(edge.to, currentPath)
                currentPath.removeAt(currentPath.size - 1)
            }
            
            recursionStack.remove(module)
        }
        
        graph.getModules().forEach { module ->
            if (module.name !in visited) {
                dfs(module.name, mutableListOf())
            }
        }
        
        return detailedCycles.distinctBy { it.modules.toSet() }
    }
    
    private fun createCircularDependencyIssues(circularDependencies: List<DetailedCircularDependency>): List<ArchitectureIssue> {
        return circularDependencies.map { cycle ->
            ArchitectureIssue(
                id = "circular-dependency-${cycle.modules.joinToString("-").hashCode()}",
                severity = cycle.severity,
                description = buildCircularDependencyDescription(cycle),
                location = cycle.modules.first(),
                suggestion = cycle.breakingSuggestions.joinToString("\n"),
                violationType = ArchitectureViolationType.CIRCULAR_DEPENDENCY,
                affectedModules = cycle.modules
            )
        }
    }
    
    private fun analyzePotentialCircularDependencies(graph: ModuleDependencyGraph): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        // Look for modules that have mutual dependencies through different paths
        val modules = graph.getModules()
        
        modules.forEach { moduleA ->
            modules.forEach { moduleB ->
                if (moduleA.name != moduleB.name) {
                    val aToB = hasPath(graph, moduleA.name, moduleB.name)
                    val bToA = hasPath(graph, moduleB.name, moduleA.name)
                    
                    if (aToB && bToA) {
                        // Check if this is not a direct circular dependency (already detected)
                        val directDeps = graph.getDirectDependencies(moduleA.name)
                        if (!directDeps.contains(moduleB.name) || !graph.getDirectDependencies(moduleB.name).contains(moduleA.name)) {
                            issues.add(ArchitectureIssue(
                                id = "potential-circular-dependency-${moduleA.name.hashCode()}-${moduleB.name.hashCode()}",
                                severity = Severity.WARNING,
                                description = "Potential circular dependency between '${moduleA.name}' and '${moduleB.name}' through transitive dependencies",
                                location = moduleA.name,
                                suggestion = "Review the dependency chain and consider refactoring to avoid mutual dependencies",
                                violationType = ArchitectureViolationType.CIRCULAR_DEPENDENCY,
                                affectedModules = listOf(moduleA.name, moduleB.name)
                            ))
                        }
                    }
                }
            }
        }
        
        return issues.distinctBy { "${it.affectedModules.sorted()}" }
    }
    
    private fun hasPath(graph: ModuleDependencyGraph, from: String, to: String): Boolean {
        val visited = mutableSetOf<String>()
        
        fun dfs(current: String): Boolean {
            if (current == to) return true
            if (current in visited) return false
            
            visited.add(current)
            
            return graph.getDirectDependencies(current).any { dependency ->
                dfs(dependency)
            }
        }
        
        return dfs(from)
    }
    
    private fun determineDependencyType(configuration: String): DependencyPathType {
        return when (configuration) {
            "api" -> DependencyPathType.API
            "implementation" -> DependencyPathType.IMPLEMENTATION
            "compileOnly" -> DependencyPathType.COMPILE_ONLY
            "testImplementation", "androidTestImplementation" -> DependencyPathType.TEST
            else -> DependencyPathType.OTHER
        }
    }
    
    private fun calculateCycleSeverity(cyclePath: List<DependencyPath>): Severity {
        // API dependencies in cycles are more severe
        val hasApiDependency = cyclePath.any { it.type == DependencyPathType.API }
        val cycleLength = cyclePath.size
        
        return when {
            hasApiDependency -> Severity.CRITICAL
            cycleLength <= 2 -> Severity.ERROR
            else -> Severity.WARNING
        }
    }
    
    private fun generateBreakingSuggestions(cyclePath: List<DependencyPath>): List<String> {
        val suggestions = mutableListOf<String>()
        
        // Suggest breaking at the weakest link
        val implementationDeps = cyclePath.filter { it.type == DependencyPathType.IMPLEMENTATION }
        if (implementationDeps.isNotEmpty()) {
            val weakestLink = implementationDeps.first()
            suggestions.add("Consider breaking the cycle by removing the dependency from '${weakestLink.from}' to '${weakestLink.to}'")
        }
        
        // Suggest introducing interfaces
        suggestions.add("Introduce interfaces or abstract classes to invert dependencies")
        
        // Suggest extracting common functionality
        val commonModules = cyclePath.map { it.from }.groupBy { it }.filter { it.value.size > 1 }
        if (commonModules.isNotEmpty()) {
            suggestions.add("Extract common functionality to a shared module")
        }
        
        // Suggest dependency injection
        suggestions.add("Use dependency injection to break compile-time dependencies")
        
        return suggestions
    }
    
    private fun buildCircularDependencyDescription(cycle: DetailedCircularDependency): String {
        val pathDescription = cycle.dependencyPath.joinToString(" -> ") { 
            "${it.from} (${it.configuration})"
        } + " -> ${cycle.modules.first()}"
        
        return "Circular dependency detected (${cycle.cycleLength} modules): $pathDescription"
    }
}

/**
 * Detailed information about a circular dependency.
 */
data class DetailedCircularDependency(
    val modules: List<String>,
    val dependencyPath: List<DependencyPath>,
    val cycleLength: Int,
    val severity: Severity,
    val breakingSuggestions: List<String>
)

/**
 * Represents a dependency path between two modules.
 */
data class DependencyPath(
    val from: String,
    val to: String,
    val configuration: String,
    val type: DependencyPathType
)

enum class DependencyPathType {
    API,
    IMPLEMENTATION,
    COMPILE_ONLY,
    TEST,
    OTHER
}