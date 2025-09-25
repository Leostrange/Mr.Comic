package com.mrcomic.analysis.analyzer.dependency

import java.io.File

/**
 * Parses Gradle build files to extract dependency information.
 */
class GradleDependencyParser {
    
    private val libsVersionsParser = LibsVersionsParser()
    
    /**
     * Parses all dependencies from a project.
     */
    fun parseProjectDependencies(projectRoot: File): ProjectDependencies {
        val versionCatalog = parseVersionCatalog(projectRoot)
        val moduleDependencies = parseModuleDependencies(projectRoot, versionCatalog)
        
        return ProjectDependencies(
            versionCatalog = versionCatalog,
            moduleDependencies = moduleDependencies,
            allExternalDependencies = collectAllExternalDependencies(moduleDependencies)
        )
    }
    
    private fun parseVersionCatalog(projectRoot: File): ResolvedVersionCatalog? {
        val catalogFile = File(projectRoot, "gradle/libs.versions.toml")
        
        return if (catalogFile.exists()) {
            val catalog = libsVersionsParser.parseVersionCatalog(catalogFile)
            libsVersionsParser.resolveVersions(catalog)
        } else {
            null
        }
    }
    
    private fun parseModuleDependencies(
        projectRoot: File, 
        versionCatalog: ResolvedVersionCatalog?
    ): Map<String, ModuleDependencies> {
        val moduleDependencies = mutableMapOf<String, ModuleDependencies>()
        
        // Parse settings.gradle.kts to get module list
        val settingsFile = File(projectRoot, "settings.gradle.kts")
            .takeIf { it.exists() } ?: File(projectRoot, "settings.gradle")
        
        if (!settingsFile.exists()) {
            return emptyMap()
        }
        
        val moduleReferences = parseModuleReferences(settingsFile)
        
        moduleReferences.forEach { moduleRef ->
            val moduleDir = File(projectRoot, moduleRef.path)
            val buildFile = File(moduleDir, "build.gradle.kts")
                .takeIf { it.exists() } ?: File(moduleDir, "build.gradle")
            
            if (buildFile.exists()) {
                try {
                    val dependencies = parseBuildFileDependencies(buildFile, versionCatalog)
                    moduleDependencies[moduleRef.name] = dependencies
                } catch (e: Exception) {
                    // Log error but continue with other modules
                    println("Warning: Failed to parse dependencies for module ${moduleRef.name}: ${e.message}")
                }
            }
        }
        
        return moduleDependencies
    }
    
    private fun parseModuleReferences(settingsFile: File): List<ModuleReference> {
        val content = settingsFile.readText()
        val modules = mutableListOf<ModuleReference>()
        
        // Extract include statements
        val includePattern = Regex("""include\s*\(\s*["']([^"']+)["']\s*\)""")
        includePattern.findAll(content).forEach { match ->
            val modulePath = match.groupValues[1]
            modules.add(ModuleReference(
                name = modulePath,
                path = modulePath.replace(":", "/")
            ))
        }
        
        // Extract project directory mappings
        val projectDirPattern = Regex("""project\s*\(\s*["']([^"']+)["']\s*\)\.projectDir\s*=\s*file\s*\(\s*["']([^"']+)["']\s*\)""")
        val projectDirMappings = mutableMapOf<String, String>()
        
        projectDirPattern.findAll(content).forEach { match ->
            val moduleName = match.groupValues[1]
            val projectDir = match.groupValues[2]
            projectDirMappings[moduleName] = projectDir
        }
        
        // Update module paths with custom project directories
        modules.forEachIndexed { index, module ->
            projectDirMappings[module.name]?.let { customPath ->
                modules[index] = module.copy(path = customPath)
            }
        }
        
        return modules
    }
    
    private fun parseBuildFileDependencies(
        buildFile: File, 
        versionCatalog: ResolvedVersionCatalog?
    ): ModuleDependencies {
        val content = buildFile.readText()
        val dependencies = mutableListOf<ParsedDependency>()
        
        // Extract dependencies block
        val dependenciesBlockPattern = Regex("""dependencies\s*\{([^}]+)\}""", RegexOption.DOT_MATCHES_ALL)
        val dependenciesMatch = dependenciesBlockPattern.find(content)
        
        if (dependenciesMatch != null) {
            val dependenciesContent = dependenciesMatch.groupValues[1]
            
            // Parse different dependency formats
            dependencies.addAll(parseDirectDependencies(dependenciesContent))
            dependencies.addAll(parseVersionCatalogDependencies(dependenciesContent, versionCatalog))
            dependencies.addAll(parseProjectDependencies(dependenciesContent))
            dependencies.addAll(parsePlatformDependencies(dependenciesContent))
        }
        
        return ModuleDependencies(
            moduleName = extractModuleName(buildFile),
            dependencies = dependencies,
            dependencyConfigurations = extractDependencyConfigurations(dependencies)
        )
    }
    
    private fun parseDirectDependencies(content: String): List<ParsedDependency> {
        val dependencies = mutableListOf<ParsedDependency>()
        
        // Pattern for direct dependencies: implementation("group:artifact:version")
        val directPattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation|debugImplementation|releaseImplementation)\s*\(\s*["']([^"':]+):([^"':]+):([^"']+)["']\s*\)""")
        
        directPattern.findAll(content).forEach { match ->
            val configuration = match.groupValues[1]
            val group = match.groupValues[2]
            val artifact = match.groupValues[3]
            val version = match.groupValues[4]
            
            dependencies.add(ParsedDependency(
                configuration = configuration,
                type = DependencyType.EXTERNAL,
                group = group,
                artifact = artifact,
                version = version,
                coordinate = "$group:$artifact:$version",
                source = DependencySource.DIRECT
            ))
        }
        
        return dependencies
    }
    
    private fun parseVersionCatalogDependencies(
        content: String, 
        versionCatalog: ResolvedVersionCatalog?
    ): List<ParsedDependency> {
        val dependencies = mutableListOf<ParsedDependency>()
        
        if (versionCatalog == null) return dependencies
        
        // Pattern for version catalog dependencies: implementation(libs.library.name)
        val catalogPattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation|debugImplementation|releaseImplementation)\s*\(\s*libs\.([^)]+)\s*\)""")
        
        catalogPattern.findAll(content).forEach { match ->
            val configuration = match.groupValues[1]
            val libraryRef = match.groupValues[2].replace(".", "-")
            
            val library = versionCatalog.libraries[libraryRef]
            if (library != null) {
                dependencies.add(ParsedDependency(
                    configuration = configuration,
                    type = DependencyType.EXTERNAL,
                    group = library.group,
                    artifact = library.artifact,
                    version = library.version,
                    coordinate = library.coordinate,
                    source = DependencySource.VERSION_CATALOG,
                    catalogReference = libraryRef
                ))
            }
        }
        
        // Pattern for bundle dependencies: implementation(libs.bundles.bundle.name)
        val bundlePattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation)\s*\(\s*libs\.bundles\.([^)]+)\s*\)""")
        
        bundlePattern.findAll(content).forEach { match ->
            val configuration = match.groupValues[1]
            val bundleRef = match.groupValues[2].replace(".", "-")
            
            val bundle = versionCatalog.bundles[bundleRef]
            if (bundle != null) {
                bundle.forEach { libraryRef ->
                    val library = versionCatalog.libraries[libraryRef]
                    if (library != null) {
                        dependencies.add(ParsedDependency(
                            configuration = configuration,
                            type = DependencyType.EXTERNAL,
                            group = library.group,
                            artifact = library.artifact,
                            version = library.version,
                            coordinate = library.coordinate,
                            source = DependencySource.BUNDLE,
                            catalogReference = libraryRef,
                            bundleReference = bundleRef
                        ))
                    }
                }
            }
        }
        
        return dependencies
    }
    
    private fun parseProjectDependencies(content: String): List<ParsedDependency> {
        val dependencies = mutableListOf<ParsedDependency>()
        
        // Pattern for project dependencies: implementation(project(":module:name"))
        val projectPattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation)\s*\(\s*project\s*\(\s*["']([^"']+)["']\s*\)\s*\)""")
        
        projectPattern.findAll(content).forEach { match ->
            val configuration = match.groupValues[1]
            val projectPath = match.groupValues[2]
            
            dependencies.add(ParsedDependency(
                configuration = configuration,
                type = DependencyType.PROJECT,
                group = "",
                artifact = projectPath,
                version = "",
                coordinate = projectPath,
                source = DependencySource.DIRECT
            ))
        }
        
        return dependencies
    }
    
    private fun parsePlatformDependencies(content: String): List<ParsedDependency> {
        val dependencies = mutableListOf<ParsedDependency>()
        
        // Pattern for platform dependencies: implementation(platform("group:artifact:version"))
        val platformPattern = Regex("""(implementation|api)\s*\(\s*platform\s*\(\s*["']([^"':]+):([^"':]+):([^"']+)["']\s*\)\s*\)""")
        
        platformPattern.findAll(content).forEach { match ->
            val configuration = match.groupValues[1]
            val group = match.groupValues[2]
            val artifact = match.groupValues[3]
            val version = match.groupValues[4]
            
            dependencies.add(ParsedDependency(
                configuration = configuration,
                type = DependencyType.PLATFORM,
                group = group,
                artifact = artifact,
                version = version,
                coordinate = "$group:$artifact:$version",
                source = DependencySource.DIRECT
            ))
        }
        
        return dependencies
    }
    
    private fun extractModuleName(buildFile: File): String {
        val parentDir = buildFile.parentFile
        return when {
            parentDir.name == "app" -> ":android:app"
            parentDir.parentFile?.name == "android" -> ":android:${parentDir.name}"
            else -> ":${parentDir.name}"
        }
    }
    
    private fun extractDependencyConfigurations(dependencies: List<ParsedDependency>): Map<String, Int> {
        return dependencies.groupBy { it.configuration }.mapValues { it.value.size }
    }
    
    private fun collectAllExternalDependencies(moduleDependencies: Map<String, ModuleDependencies>): Map<String, ExternalDependencyInfo> {
        val allDependencies = mutableMapOf<String, ExternalDependencyInfo>()
        
        moduleDependencies.values.forEach { module ->
            module.dependencies
                .filter { it.type == DependencyType.EXTERNAL }
                .forEach { dependency ->
                    val key = "${dependency.group}:${dependency.artifact}"
                    
                    val existing = allDependencies[key]
                    if (existing == null) {
                        allDependencies[key] = ExternalDependencyInfo(
                            group = dependency.group,
                            artifact = dependency.artifact,
                            versions = setOf(dependency.version),
                            usedInModules = setOf(module.moduleName),
                            configurations = setOf(dependency.configuration),
                            source = dependency.source
                        )
                    } else {
                        allDependencies[key] = existing.copy(
                            versions = existing.versions + dependency.version,
                            usedInModules = existing.usedInModules + module.moduleName,
                            configurations = existing.configurations + dependency.configuration
                        )
                    }
                }
        }
        
        return allDependencies
    }
}

/**
 * Complete project dependencies information.
 */
data class ProjectDependencies(
    val versionCatalog: ResolvedVersionCatalog?,
    val moduleDependencies: Map<String, ModuleDependencies>,
    val allExternalDependencies: Map<String, ExternalDependencyInfo>
)

/**
 * Dependencies for a specific module.
 */
data class ModuleDependencies(
    val moduleName: String,
    val dependencies: List<ParsedDependency>,
    val dependencyConfigurations: Map<String, Int>
)

/**
 * Parsed dependency information.
 */
data class ParsedDependency(
    val configuration: String,
    val type: DependencyType,
    val group: String,
    val artifact: String,
    val version: String,
    val coordinate: String,
    val source: DependencySource,
    val catalogReference: String? = null,
    val bundleReference: String? = null
)

/**
 * Information about an external dependency used across modules.
 */
data class ExternalDependencyInfo(
    val group: String,
    val artifact: String,
    val versions: Set<String>,
    val usedInModules: Set<String>,
    val configurations: Set<String>,
    val source: DependencySource
)

/**
 * Types of dependencies.
 */
enum class DependencyType {
    EXTERNAL,   // External library
    PROJECT,    // Project module
    PLATFORM    // Platform/BOM dependency
}

/**
 * Source of dependency declaration.
 */
enum class DependencySource {
    DIRECT,           // Directly declared in build file
    VERSION_CATALOG,  // From libs.versions.toml
    BUNDLE           // From bundle in version catalog
}

/**
 * Module reference from settings file.
 */
data class ModuleReference(
    val name: String,
    val path: String
)