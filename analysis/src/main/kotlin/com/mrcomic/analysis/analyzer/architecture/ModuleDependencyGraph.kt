package com.mrcomic.analysis.analyzer.architecture

/**
 * Represents a graph of module dependencies in the project.
 */
class ModuleDependencyGraph {
    private val nodes = mutableMapOf<String, ModuleNode>()
    private val edges = mutableListOf<DependencyEdge>()
    
    /**
     * Adds a module to the graph.
     */
    fun addModule(module: ModuleBuildInfo) {
        val node = ModuleNode(
            name = module.name,
            path = module.path,
            type = determineModuleType(module),
            plugins = module.plugins,
            androidConfig = module.androidConfig,
            kotlinConfig = module.kotlinConfig
        )
        nodes[module.name] = node
    }
    
    /**
     * Adds a dependency edge between two modules.
     */
    fun addDependency(from: String, to: String, configuration: String) {
        if (nodes.containsKey(from) && nodes.containsKey(to)) {
            edges.add(DependencyEdge(
                from = from,
                to = to,
                configuration = configuration
            ))
        }
    }
    
    /**
     * Builds the complete dependency graph from module build information.
     */
    fun buildGraph(modules: List<ModuleBuildInfo>) {
        // Add all modules first
        modules.forEach { module ->
            addModule(module)
        }
        
        // Add dependencies
        modules.forEach { module ->
            module.dependencies
                .filter { it.type == DependencyType.PROJECT }
                .forEach { dependency ->
                    addDependency(module.name, dependency.identifier, dependency.configuration)
                }
        }
    }
    
    /**
     * Gets all modules in the graph.
     */
    fun getModules(): List<ModuleNode> = nodes.values.toList()
    
    /**
     * Gets all dependencies in the graph.
     */
    fun getDependencies(): List<DependencyEdge> = edges.toList()
    
    /**
     * Gets direct dependencies of a module.
     */
    fun getDirectDependencies(moduleName: String): List<String> {
        return edges
            .filter { it.from == moduleName }
            .map { it.to }
    }
    
    /**
     * Gets modules that depend on the given module.
     */
    fun getDependents(moduleName: String): List<String> {
        return edges
            .filter { it.to == moduleName }
            .map { it.from }
    }
    
    /**
     * Gets all transitive dependencies of a module.
     */
    fun getTransitiveDependencies(moduleName: String): Set<String> {
        val visited = mutableSetOf<String>()
        val dependencies = mutableSetOf<String>()
        
        fun collectDependencies(module: String) {
            if (module in visited) return
            visited.add(module)
            
            getDirectDependencies(module).forEach { dependency ->
                dependencies.add(dependency)
                collectDependencies(dependency)
            }
        }
        
        collectDependencies(moduleName)
        return dependencies
    }
    
    /**
     * Detects circular dependencies in the graph.
     */
    fun detectCircularDependencies(): List<CircularDependency> {
        val circularDependencies = mutableListOf<CircularDependency>()
        val visited = mutableSetOf<String>()
        val recursionStack = mutableSetOf<String>()
        
        fun dfs(module: String, path: MutableList<String>): Boolean {
            if (module in recursionStack) {
                // Found a cycle
                val cycleStart = path.indexOf(module)
                if (cycleStart >= 0) {
                    val cycle = path.subList(cycleStart, path.size) + module
                    circularDependencies.add(CircularDependency(
                        modules = cycle,
                        description = "Circular dependency detected: ${cycle.joinToString(" -> ")}"
                    ))
                }
                return true
            }
            
            if (module in visited) return false
            
            visited.add(module)
            recursionStack.add(module)
            path.add(module)
            
            var foundCycle = false
            getDirectDependencies(module).forEach { dependency ->
                if (dfs(dependency, path)) {
                    foundCycle = true
                }
            }
            
            path.removeAt(path.size - 1)
            recursionStack.remove(module)
            
            return foundCycle
        }
        
        nodes.keys.forEach { module ->
            if (module !in visited) {
                dfs(module, mutableListOf())
            }
        }
        
        return circularDependencies.distinctBy { it.modules.toSet() }
    }
    
    /**
     * Validates the module structure according to Android project conventions.
     */
    fun validateStructure(): List<StructureViolation> {
        val violations = mutableListOf<StructureViolation>()
        
        // Check for proper module naming
        nodes.values.forEach { module ->
            if (!isValidModuleName(module.name)) {
                violations.add(StructureViolation(
                    type = ViolationType.INVALID_MODULE_NAME,
                    module = module.name,
                    description = "Module name '${module.name}' doesn't follow Android conventions",
                    suggestion = "Use format like ':android:feature-name' or ':android:core-name'"
                ))
            }
        }
        
        // Check for proper module types
        val appModules = nodes.values.filter { it.type == ModuleType.APPLICATION }
        if (appModules.size != 1) {
            violations.add(StructureViolation(
                type = ViolationType.MULTIPLE_APP_MODULES,
                module = "project",
                description = "Project should have exactly one application module, found ${appModules.size}",
                suggestion = "Ensure only one module has 'com.android.application' plugin"
            ))
        }
        
        // Check for feature modules depending on other feature modules
        val featureModules = nodes.values.filter { it.type == ModuleType.FEATURE }
        featureModules.forEach { featureModule ->
            val featureDependencies = getDirectDependencies(featureModule.name)
                .mapNotNull { nodes[it] }
                .filter { it.type == ModuleType.FEATURE }
            
            if (featureDependencies.isNotEmpty()) {
                violations.add(StructureViolation(
                    type = ViolationType.FEATURE_TO_FEATURE_DEPENDENCY,
                    module = featureModule.name,
                    description = "Feature module depends on other feature modules: ${featureDependencies.map { it.name }}",
                    suggestion = "Feature modules should only depend on core modules, not other features"
                ))
            }
        }
        
        return violations
    }
    
    private fun determineModuleType(module: ModuleBuildInfo): ModuleType {
        return when {
            module.plugins.contains("com.android.application") -> ModuleType.APPLICATION
            module.plugins.contains("com.android.library") -> {
                when {
                    module.name.contains("feature-") -> ModuleType.FEATURE
                    module.name.contains("core-") -> ModuleType.CORE
                    module.name.contains("shared") -> ModuleType.SHARED
                    else -> ModuleType.LIBRARY
                }
            }
            module.plugins.contains("org.jetbrains.kotlin.jvm") -> ModuleType.KOTLIN_JVM
            else -> ModuleType.UNKNOWN
        }
    }
    
    private fun isValidModuleName(name: String): Boolean {
        // Android module naming conventions
        val validPatterns = listOf(
            Regex(""":android:app"""),
            Regex(""":android:core-\w+"""),
            Regex(""":android:feature-\w+"""),
            Regex(""":android:shared"""),
            Regex(""":scripts"""),
            Regex(""":reports"""),
            Regex(""":analysis""")
        )
        
        return validPatterns.any { it.matches(name) }
    }
}

/**
 * Represents a module in the dependency graph.
 */
data class ModuleNode(
    val name: String,
    val path: String,
    val type: ModuleType,
    val plugins: List<String>,
    val androidConfig: AndroidConfig?,
    val kotlinConfig: KotlinConfig?
)

/**
 * Represents a dependency edge between two modules.
 */
data class DependencyEdge(
    val from: String,
    val to: String,
    val configuration: String
)

/**
 * Types of modules in an Android project.
 */
enum class ModuleType {
    APPLICATION,    // Main app module
    FEATURE,        // Feature modules
    CORE,          // Core modules (data, domain, etc.)
    LIBRARY,       // Generic Android library modules
    SHARED,        // Shared utilities
    KOTLIN_JVM,    // Pure Kotlin/JVM modules
    UNKNOWN        // Unknown or misconfigured modules
}

/**
 * Represents a circular dependency in the module graph.
 */
data class CircularDependency(
    val modules: List<String>,
    val description: String
)

/**
 * Represents a violation of module structure conventions.
 */
data class StructureViolation(
    val type: ViolationType,
    val module: String,
    val description: String,
    val suggestion: String
)

enum class ViolationType {
    INVALID_MODULE_NAME,
    MULTIPLE_APP_MODULES,
    FEATURE_TO_FEATURE_DEPENDENCY,
    MISSING_CORE_DEPENDENCY,
    INVALID_DEPENDENCY_DIRECTION
}