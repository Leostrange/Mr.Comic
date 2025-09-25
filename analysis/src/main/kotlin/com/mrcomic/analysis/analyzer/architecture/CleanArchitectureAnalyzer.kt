package com.mrcomic.analysis.analyzer.architecture

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.ArchitectureIssue
import com.mrcomic.analysis.model.ArchitectureViolationType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity

/**
 * Analyzes project structure for Clean Architecture compliance.
 */
class CleanArchitectureAnalyzer : Analyzer {
    
    override val id = "clean-architecture"
    override val name = "Clean Architecture Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override fun getDependencies(): List<String> = listOf("module-structure")
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing Clean Architecture compliance...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Get dependency graph from module structure analyzer
            val dependencyGraph = context.getMetadata<ModuleDependencyGraph>("dependency-graph")
            val projectStructure = context.getMetadata<ProjectStructure>("project-structure")
            
            if (dependencyGraph == null || projectStructure == null) {
                context.logger.warn("No dependency graph or project structure found. Module structure analyzer must run first.")
                return emptyList()
            }
            
            // Analyze layer structure
            val layerStructure = analyzeLayerStructure(dependencyGraph)
            context.setMetadata("layer-structure", layerStructure)
            
            // Validate dependency direction
            issues.addAll(validateDependencyDirection(layerStructure, dependencyGraph))
            
            // Validate domain layer isolation
            issues.addAll(validateDomainLayerIsolation(layerStructure, dependencyGraph))
            
            // Validate interface usage
            issues.addAll(validateInterfaceUsage(projectStructure, dependencyGraph))
            
            // Validate feature module independence
            issues.addAll(validateFeatureModuleIndependence(layerStructure, dependencyGraph))
            
            // Validate data layer abstraction
            issues.addAll(validateDataLayerAbstraction(layerStructure, dependencyGraph))
            
            context.logger.info("Clean Architecture analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze Clean Architecture compliance", e)
            issues.add(ArchitectureIssue(
                id = "clean-architecture-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze Clean Architecture compliance: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project structure follows Clean Architecture conventions",
                violationType = ArchitectureViolationType.LAYER_VIOLATION,
                affectedModules = emptyList()
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return context.getMetadata<ModuleDependencyGraph>("dependency-graph") != null &&
               context.getMetadata<ProjectStructure>("project-structure") != null
    }
    
    private fun analyzeLayerStructure(dependencyGraph: ModuleDependencyGraph): LayerStructure {
        val modules = dependencyGraph.getModules()
        
        val layers = mutableMapOf<ArchitectureLayer, MutableList<String>>()
        
        modules.forEach { module ->
            val layer = determineArchitectureLayer(module)
            layers.computeIfAbsent(layer) { mutableListOf() }.add(module.name)
        }
        
        return LayerStructure(layers)
    }
    
    private fun determineArchitectureLayer(module: ModuleNode): ArchitectureLayer {
        return when {
            module.name.contains(":app") -> ArchitectureLayer.PRESENTATION
            module.name.contains("feature-") -> ArchitectureLayer.PRESENTATION
            module.name.contains("core-ui") -> ArchitectureLayer.PRESENTATION
            module.name.contains("core-domain") -> ArchitectureLayer.DOMAIN
            module.name.contains("core-data") -> ArchitectureLayer.DATA
            module.name.contains("core-model") -> ArchitectureLayer.DOMAIN
            module.name.contains("core-reader") -> ArchitectureLayer.DATA
            module.name.contains("shared") -> ArchitectureLayer.INFRASTRUCTURE
            module.type == ModuleType.KOTLIN_JVM -> ArchitectureLayer.INFRASTRUCTURE
            else -> ArchitectureLayer.UNKNOWN
        }
    }
    
    private fun validateDependencyDirection(
        layerStructure: LayerStructure,
        dependencyGraph: ModuleDependencyGraph
    ): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        // Define allowed dependency directions (outer layers can depend on inner layers)
        val allowedDependencies = mapOf(
            ArchitectureLayer.PRESENTATION to setOf(ArchitectureLayer.DOMAIN, ArchitectureLayer.INFRASTRUCTURE),
            ArchitectureLayer.DOMAIN to setOf(ArchitectureLayer.INFRASTRUCTURE),
            ArchitectureLayer.DATA to setOf(ArchitectureLayer.DOMAIN, ArchitectureLayer.INFRASTRUCTURE),
            ArchitectureLayer.INFRASTRUCTURE to emptySet()
        )
        
        layerStructure.layers.forEach { (fromLayer, modules) ->
            modules.forEach { module ->
                val dependencies = dependencyGraph.getDirectDependencies(module)
                
                dependencies.forEach { dependency ->
                    val dependencyModule = dependencyGraph.getModules().find { it.name == dependency }
                    if (dependencyModule != null) {
                        val toLayer = determineArchitectureLayer(dependencyModule)
                        
                        val allowed = allowedDependencies[fromLayer]?.contains(toLayer) == true ||
                                     fromLayer == toLayer // Same layer dependencies are allowed
                        
                        if (!allowed && toLayer != ArchitectureLayer.UNKNOWN) {
                            issues.add(ArchitectureIssue(
                                id = "invalid-dependency-direction-${module.hashCode()}-${dependency.hashCode()}",
                                severity = Severity.ERROR,
                                description = "Invalid dependency direction: ${fromLayer.name} layer module '$module' depends on ${toLayer.name} layer module '$dependency'",
                                location = module,
                                suggestion = "Invert the dependency by introducing interfaces or moving the dependency to an allowed layer",
                                violationType = ArchitectureViolationType.DEPENDENCY_DIRECTION,
                                affectedModules = listOf(module, dependency)
                            ))
                        }
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun validateDomainLayerIsolation(
        layerStructure: LayerStructure,
        dependencyGraph: ModuleDependencyGraph
    ): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        val domainModules = layerStructure.layers[ArchitectureLayer.DOMAIN] ?: emptyList()
        
        domainModules.forEach { domainModule ->
            val dependencies = dependencyGraph.getDirectDependencies(domainModule)
            
            dependencies.forEach { dependency ->
                val dependencyModule = dependencyGraph.getModules().find { it.name == dependency }
                if (dependencyModule != null) {
                    val dependencyLayer = determineArchitectureLayer(dependencyModule)
                    
                    // Domain layer should not depend on presentation or data layers
                    if (dependencyLayer == ArchitectureLayer.PRESENTATION || dependencyLayer == ArchitectureLayer.DATA) {
                        issues.add(ArchitectureIssue(
                            id = "domain-layer-violation-${domainModule.hashCode()}-${dependency.hashCode()}",
                            severity = Severity.CRITICAL,
                            description = "Domain layer module '$domainModule' depends on ${dependencyLayer.name.lowercase()} layer module '$dependency'",
                            location = domainModule,
                            suggestion = "Remove the dependency or introduce interfaces to invert the dependency",
                            violationType = ArchitectureViolationType.LAYER_VIOLATION,
                            affectedModules = listOf(domainModule, dependency)
                        ))
                    }
                    
                    // Check for Android framework dependencies in domain layer
                    if (dependencyModule.androidConfig != null && domainModule.contains("core-domain")) {
                        val moduleBuildInfo = dependencyGraph.getModules().find { it.name == domainModule }
                        val externalDeps = getExternalDependencies(moduleBuildInfo)
                        
                        val androidDependencies = externalDeps.filter { isAndroidFrameworkDependency(it) }
                        if (androidDependencies.isNotEmpty()) {
                            issues.add(ArchitectureIssue(
                                id = "domain-android-dependency-${domainModule.hashCode()}",
                                severity = Severity.ERROR,
                                description = "Domain layer module '$domainModule' has Android framework dependencies: ${androidDependencies.joinToString(", ")}",
                                location = domainModule,
                                suggestion = "Remove Android framework dependencies from domain layer or create abstractions",
                                violationType = ArchitectureViolationType.LAYER_VIOLATION,
                                affectedModules = listOf(domainModule)
                            ))
                        }
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun validateInterfaceUsage(
        projectStructure: ProjectStructure,
        dependencyGraph: ModuleDependencyGraph
    ): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        // Check if data layer modules expose interfaces for repositories
        val dataModules = dependencyGraph.getModules()
            .filter { determineArchitectureLayer(it) == ArchitectureLayer.DATA }
        
        dataModules.forEach { dataModule ->
            val dependents = dependencyGraph.getDependents(dataModule.name)
            val domainDependents = dependents.filter { dependent ->
                val dependentModule = dependencyGraph.getModules().find { it.name == dependent }
                dependentModule?.let { determineArchitectureLayer(it) == ArchitectureLayer.DOMAIN } == true
            }
            
            if (domainDependents.isNotEmpty()) {
                // This suggests that domain depends on data, which might be okay if using interfaces
                // But we should warn about potential direct dependencies
                issues.add(ArchitectureIssue(
                    id = "potential-interface-violation-${dataModule.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Data layer module '${dataModule.name}' is used by domain layer. Ensure interfaces are used for abstraction",
                    location = dataModule.name,
                    suggestion = "Define repository interfaces in domain layer and implement them in data layer",
                    violationType = ArchitectureViolationType.INTERFACE_SEGREGATION,
                    affectedModules = listOf(dataModule.name) + domainDependents
                ))
            }
        }
        
        return issues
    }
    
    private fun validateFeatureModuleIndependence(
        layerStructure: LayerStructure,
        dependencyGraph: ModuleDependencyGraph
    ): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        val featureModules = dependencyGraph.getModules()
            .filter { it.type == ModuleType.FEATURE }
        
        featureModules.forEach { featureModule ->
            val dependencies = dependencyGraph.getDirectDependencies(featureModule.name)
            
            // Check for dependencies on other feature modules
            val featureDependencies = dependencies.filter { dependency ->
                val dependencyModule = dependencyGraph.getModules().find { it.name == dependency }
                dependencyModule?.type == ModuleType.FEATURE
            }
            
            if (featureDependencies.isNotEmpty()) {
                issues.add(ArchitectureIssue(
                    id = "feature-interdependency-${featureModule.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Feature module '${featureModule.name}' depends on other feature modules: ${featureDependencies.joinToString(", ")}",
                    location = featureModule.name,
                    suggestion = "Feature modules should be independent. Move shared functionality to core modules",
                    violationType = ArchitectureViolationType.LAYER_VIOLATION,
                    affectedModules = listOf(featureModule.name) + featureDependencies
                ))
            }
            
            // Check that feature modules depend on core modules
            val coreDependencies = dependencies.filter { dependency ->
                val dependencyModule = dependencyGraph.getModules().find { it.name == dependency }
                dependencyModule?.type == ModuleType.CORE
            }
            
            if (coreDependencies.isEmpty()) {
                issues.add(ArchitectureIssue(
                    id = "feature-no-core-dependency-${featureModule.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Feature module '${featureModule.name}' doesn't depend on any core modules",
                    location = featureModule.name,
                    suggestion = "Feature modules should typically depend on core modules for shared functionality",
                    violationType = ArchitectureViolationType.MODULE_COUPLING,
                    affectedModules = listOf(featureModule.name)
                ))
            }
        }
        
        return issues
    }
    
    private fun validateDataLayerAbstraction(
        layerStructure: LayerStructure,
        dependencyGraph: ModuleDependencyGraph
    ): List<ArchitectureIssue> {
        val issues = mutableListOf<ArchitectureIssue>()
        
        val dataModules = layerStructure.layers[ArchitectureLayer.DATA] ?: emptyList()
        
        dataModules.forEach { dataModule ->
            val dependencies = dependencyGraph.getDirectDependencies(dataModule)
            
            // Check for direct dependencies on presentation layer
            dependencies.forEach { dependency ->
                val dependencyModule = dependencyGraph.getModules().find { it.name == dependency }
                if (dependencyModule != null) {
                    val dependencyLayer = determineArchitectureLayer(dependencyModule)
                    
                    if (dependencyLayer == ArchitectureLayer.PRESENTATION) {
                        issues.add(ArchitectureIssue(
                            id = "data-presentation-dependency-${dataModule.hashCode()}-${dependency.hashCode()}",
                            severity = Severity.CRITICAL,
                            description = "Data layer module '$dataModule' depends on presentation layer module '$dependency'",
                            location = dataModule,
                            suggestion = "Data layer should not depend on presentation layer. Invert the dependency using interfaces",
                            violationType = ArchitectureViolationType.DEPENDENCY_DIRECTION,
                            affectedModules = listOf(dataModule, dependency)
                        ))
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun getExternalDependencies(module: ModuleNode?): List<String> {
        // This would need to be implemented to extract external dependencies from build files
        // For now, return empty list as placeholder
        return emptyList()
    }
    
    private fun isAndroidFrameworkDependency(dependency: String): Boolean {
        val androidFrameworkPrefixes = listOf(
            "androidx.",
            "com.android.",
            "android."
        )
        
        return androidFrameworkPrefixes.any { dependency.startsWith(it) }
    }
}

/**
 * Represents the layer structure of the project.
 */
data class LayerStructure(
    val layers: Map<ArchitectureLayer, List<String>>
)

/**
 * Clean Architecture layers.
 */
enum class ArchitectureLayer {
    PRESENTATION,    // UI, ViewModels, Activities, Fragments
    DOMAIN,         // Use cases, Entities, Repository interfaces
    DATA,           // Repository implementations, Data sources
    INFRASTRUCTURE, // Shared utilities, DI, etc.
    UNKNOWN         // Modules that don't fit standard layers
}