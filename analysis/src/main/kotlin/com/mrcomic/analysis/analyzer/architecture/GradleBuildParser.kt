package com.mrcomic.analysis.analyzer.architecture

import java.io.File

/**
 * Parses Gradle build files to extract module dependencies and configuration.
 */
class GradleBuildParser {
    
    /**
     * Parses a build.gradle.kts file and extracts module information.
     */
    fun parseBuildFile(buildFile: File): ModuleBuildInfo {
        if (!buildFile.exists() || !buildFile.isFile) {
            throw IllegalArgumentException("Build file does not exist: ${buildFile.absolutePath}")
        }
        
        val content = buildFile.readText()
        val moduleName = extractModuleName(buildFile)
        
        return ModuleBuildInfo(
            name = moduleName,
            path = buildFile.parent,
            buildFile = buildFile,
            plugins = extractPlugins(content),
            dependencies = extractDependencies(content),
            androidConfig = extractAndroidConfig(content),
            kotlinConfig = extractKotlinConfig(content)
        )
    }
    
    /**
     * Parses settings.gradle.kts to get the list of all modules.
     */
    fun parseSettingsFile(settingsFile: File): List<ModuleReference> {
        if (!settingsFile.exists() || !settingsFile.isFile) {
            throw IllegalArgumentException("Settings file does not exist: ${settingsFile.absolutePath}")
        }
        
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
        modules.forEach { module ->
            projectDirMappings[module.name]?.let { customPath ->
                modules[modules.indexOf(module)] = module.copy(path = customPath)
            }
        }
        
        return modules
    }
    
    private fun extractModuleName(buildFile: File): String {
        val parentDir = buildFile.parentFile
        return when {
            parentDir.name == "app" -> ":android:app"
            parentDir.parentFile?.name == "android" -> ":android:${parentDir.name}"
            else -> ":${parentDir.name}"
        }
    }
    
    private fun extractPlugins(content: String): List<String> {
        val plugins = mutableListOf<String>()
        
        // Extract plugins from plugins block
        val pluginsBlockPattern = Regex("""plugins\s*\{([^}]+)\}""", RegexOption.DOT_MATCHES_ALL)
        pluginsBlockPattern.find(content)?.let { match ->
            val pluginsContent = match.groupValues[1]
            
            // Extract plugin IDs
            val pluginPattern = Regex("""id\s*\(\s*["']([^"']+)["']\s*\)""")
            pluginPattern.findAll(pluginsContent).forEach { pluginMatch ->
                plugins.add(pluginMatch.groupValues[1])
            }
            
            // Extract Kotlin plugins
            val kotlinPluginPattern = Regex("""kotlin\s*\(\s*["']([^"']+)["']\s*\)""")
            kotlinPluginPattern.findAll(pluginsContent).forEach { kotlinMatch ->
                plugins.add("org.jetbrains.kotlin.${kotlinMatch.groupValues[1]}")
            }
        }
        
        return plugins
    }
    
    private fun extractDependencies(content: String): List<ModuleDependency> {
        val dependencies = mutableListOf<ModuleDependency>()
        
        // Extract dependencies block
        val dependenciesBlockPattern = Regex("""dependencies\s*\{([^}]+)\}""", RegexOption.DOT_MATCHES_ALL)
        dependenciesBlockPattern.find(content)?.let { match ->
            val dependenciesContent = match.groupValues[1]
            
            // Extract project dependencies
            val projectDepPattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation)\s*\(\s*project\s*\(\s*["']([^"']+)["']\s*\)\s*\)""")
            projectDepPattern.findAll(dependenciesContent).forEach { depMatch ->
                val configuration = depMatch.groupValues[1]
                val projectPath = depMatch.groupValues[2]
                
                dependencies.add(ModuleDependency(
                    type = DependencyType.PROJECT,
                    configuration = configuration,
                    identifier = projectPath,
                    version = null
                ))
            }
            
            // Extract external dependencies
            val externalDepPattern = Regex("""(implementation|api|compileOnly|testImplementation|androidTestImplementation)\s*\(\s*["']([^"':]+):([^"':]+):([^"']+)["']\s*\)""")
            externalDepPattern.findAll(dependenciesContent).forEach { depMatch ->
                val configuration = depMatch.groupValues[1]
                val group = depMatch.groupValues[2]
                val artifact = depMatch.groupValues[3]
                val version = depMatch.groupValues[4]
                
                dependencies.add(ModuleDependency(
                    type = DependencyType.EXTERNAL,
                    configuration = configuration,
                    identifier = "$group:$artifact",
                    version = version
                ))
            }
        }
        
        return dependencies
    }
    
    private fun extractAndroidConfig(content: String): AndroidConfig? {
        val androidBlockPattern = Regex("""android\s*\{([^}]+)\}""", RegexOption.DOT_MATCHES_ALL)
        androidBlockPattern.find(content)?.let { match ->
            val androidContent = match.groupValues[1]
            
            val compileSdk = extractIntValue(androidContent, "compileSdk")
            val minSdk = extractIntValue(androidContent, "minSdk")
            val targetSdk = extractIntValue(androidContent, "targetSdk")
            val namespace = extractStringValue(androidContent, "namespace")
            
            return AndroidConfig(
                compileSdk = compileSdk,
                minSdk = minSdk,
                targetSdk = targetSdk,
                namespace = namespace
            )
        }
        
        return null
    }
    
    private fun extractKotlinConfig(content: String): KotlinConfig? {
        val kotlinBlockPattern = Regex("""kotlin\s*\{([^}]+)\}""", RegexOption.DOT_MATCHES_ALL)
        kotlinBlockPattern.find(content)?.let { match ->
            val kotlinContent = match.groupValues[1]
            
            val jvmTarget = extractIntValue(kotlinContent, "jvmToolchain")
            
            return KotlinConfig(
                jvmTarget = jvmTarget
            )
        }
        
        return null
    }
    
    private fun extractIntValue(content: String, key: String): Int? {
        val pattern = Regex("""$key\s*=?\s*(\d+)""")
        return pattern.find(content)?.groupValues?.get(1)?.toIntOrNull()
    }
    
    private fun extractStringValue(content: String, key: String): String? {
        val pattern = Regex("""$key\s*=\s*["']([^"']+)["']""")
        return pattern.find(content)?.groupValues?.get(1)
    }
}

/**
 * Information about a module's build configuration.
 */
data class ModuleBuildInfo(
    val name: String,
    val path: String,
    val buildFile: File,
    val plugins: List<String>,
    val dependencies: List<ModuleDependency>,
    val androidConfig: AndroidConfig?,
    val kotlinConfig: KotlinConfig?
)

/**
 * Reference to a module from settings.gradle.kts.
 */
data class ModuleReference(
    val name: String,
    val path: String
)

/**
 * Dependency information.
 */
data class ModuleDependency(
    val type: DependencyType,
    val configuration: String,
    val identifier: String,
    val version: String?
)

enum class DependencyType {
    PROJECT, EXTERNAL
}

/**
 * Android-specific configuration.
 */
data class AndroidConfig(
    val compileSdk: Int?,
    val minSdk: Int?,
    val targetSdk: Int?,
    val namespace: String?
)

/**
 * Kotlin-specific configuration.
 */
data class KotlinConfig(
    val jvmTarget: Int?
)