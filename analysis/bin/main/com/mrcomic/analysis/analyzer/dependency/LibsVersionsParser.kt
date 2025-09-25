package com.mrcomic.analysis.analyzer.dependency

import java.io.File

/**
 * Parses libs.versions.toml files to extract version catalog information.
 */
class LibsVersionsParser {
    
    /**
     * Parses a libs.versions.toml file and extracts version catalog information.
     */
    fun parseVersionCatalog(catalogFile: File): VersionCatalog {
        if (!catalogFile.exists() || !catalogFile.isFile) {
            throw IllegalArgumentException("Version catalog file does not exist: ${catalogFile.absolutePath}")
        }
        
        val content = catalogFile.readText()
        
        return VersionCatalog(
            versions = parseVersionsSection(content),
            libraries = parseLibrariesSection(content),
            plugins = parsePluginsSection(content),
            bundles = parseBundlesSection(content)
        )
    }
    
    private fun parseVersionsSection(content: String): Map<String, String> {
        val versions = mutableMapOf<String, String>()
        
        val versionsSection = extractSection(content, "versions")
        if (versionsSection.isNotEmpty()) {
            val versionPattern = Regex("""(\w+)\s*=\s*["']([^"']+)["']""")
            versionPattern.findAll(versionsSection).forEach { match ->
                val key = match.groupValues[1]
                val version = match.groupValues[2]
                versions[key] = version
            }
        }
        
        return versions
    }
    
    private fun parseLibrariesSection(content: String): Map<String, LibraryDefinition> {
        val libraries = mutableMapOf<String, LibraryDefinition>()
        
        val librariesSection = extractSection(content, "libraries")
        if (librariesSection.isNotEmpty()) {
            // Parse simple format: library-name = "group:artifact:version"
            val simplePattern = Regex("""(\w+(?:-\w+)*)\s*=\s*["']([^"':]+):([^"':]+):([^"']+)["']""")
            simplePattern.findAll(librariesSection).forEach { match ->
                val name = match.groupValues[1]
                val group = match.groupValues[2]
                val artifact = match.groupValues[3]
                val version = match.groupValues[4]
                
                libraries[name] = LibraryDefinition(
                    name = name,
                    group = group,
                    artifact = artifact,
                    version = LibraryVersion.Direct(version)
                )
            }
            
            // Parse complex format with version references
            val complexPattern = Regex("""(\w+(?:-\w+)*)\s*=\s*\{\s*group\s*=\s*["']([^"']+)["']\s*,\s*name\s*=\s*["']([^"']+)["']\s*,\s*version\.ref\s*=\s*["']([^"']+)["']\s*\}""")
            complexPattern.findAll(librariesSection).forEach { match ->
                val name = match.groupValues[1]
                val group = match.groupValues[2]
                val artifact = match.groupValues[3]
                val versionRef = match.groupValues[4]
                
                libraries[name] = LibraryDefinition(
                    name = name,
                    group = group,
                    artifact = artifact,
                    version = LibraryVersion.Reference(versionRef)
                )
            }
        }
        
        return libraries
    }
    
    private fun parsePluginsSection(content: String): Map<String, PluginDefinition> {
        val plugins = mutableMapOf<String, PluginDefinition>()
        
        val pluginsSection = extractSection(content, "plugins")
        if (pluginsSection.isNotEmpty()) {
            // Parse simple format: plugin-name = "id:version"
            val simplePattern = Regex("""(\w+(?:-\w+)*)\s*=\s*["']([^"':]+):([^"']+)["']""")
            simplePattern.findAll(pluginsSection).forEach { match ->
                val name = match.groupValues[1]
                val id = match.groupValues[2]
                val version = match.groupValues[3]
                
                plugins[name] = PluginDefinition(
                    name = name,
                    id = id,
                    version = LibraryVersion.Direct(version)
                )
            }
            
            // Parse complex format with version references
            val complexPattern = Regex("""(\w+(?:-\w+)*)\s*=\s*\{\s*id\s*=\s*["']([^"']+)["']\s*,\s*version\.ref\s*=\s*["']([^"']+)["']\s*\}""")
            complexPattern.findAll(pluginsSection).forEach { match ->
                val name = match.groupValues[1]
                val id = match.groupValues[2]
                val versionRef = match.groupValues[3]
                
                plugins[name] = PluginDefinition(
                    name = name,
                    id = id,
                    version = LibraryVersion.Reference(versionRef)
                )
            }
        }
        
        return plugins
    }
    
    private fun parseBundlesSection(content: String): Map<String, List<String>> {
        val bundles = mutableMapOf<String, List<String>>()
        
        val bundlesSection = extractSection(content, "bundles")
        if (bundlesSection.isNotEmpty()) {
            val bundlePattern = Regex("""(\w+(?:-\w+)*)\s*=\s*\[(.*?)\]""", RegexOption.DOT_MATCHES_ALL)
            bundlePattern.findAll(bundlesSection).forEach { match ->
                val name = match.groupValues[1]
                val librariesStr = match.groupValues[2]
                
                val libraryRefs = librariesStr.split(",")
                    .map { it.trim().removeSurrounding("\"", "'") }
                    .filter { it.isNotEmpty() }
                
                bundles[name] = libraryRefs
            }
        }
        
        return bundles
    }
    
    private fun extractSection(content: String, sectionName: String): String {
        val sectionPattern = Regex("""\[$sectionName\](.*?)(?=\[|\z)""", RegexOption.DOT_MATCHES_ALL)
        return sectionPattern.find(content)?.groupValues?.get(1) ?: ""
    }
    
    /**
     * Resolves version references to actual version strings.
     */
    fun resolveVersions(catalog: VersionCatalog): ResolvedVersionCatalog {
        val resolvedLibraries = catalog.libraries.mapValues { (_, library) ->
            val resolvedVersion = when (library.version) {
                is LibraryVersion.Direct -> library.version.version
                is LibraryVersion.Reference -> catalog.versions[library.version.ref] 
                    ?: throw IllegalStateException("Version reference '${library.version.ref}' not found")
            }
            
            ResolvedLibrary(
                name = library.name,
                group = library.group,
                artifact = library.artifact,
                version = resolvedVersion,
                coordinate = "${library.group}:${library.artifact}:$resolvedVersion"
            )
        }
        
        val resolvedPlugins = catalog.plugins.mapValues { (_, plugin) ->
            val resolvedVersion = when (plugin.version) {
                is LibraryVersion.Direct -> plugin.version.version
                is LibraryVersion.Reference -> catalog.versions[plugin.version.ref]
                    ?: throw IllegalStateException("Version reference '${plugin.version.ref}' not found")
            }
            
            ResolvedPlugin(
                name = plugin.name,
                id = plugin.id,
                version = resolvedVersion
            )
        }
        
        return ResolvedVersionCatalog(
            libraries = resolvedLibraries,
            plugins = resolvedPlugins,
            bundles = catalog.bundles
        )
    }
}

/**
 * Represents a version catalog from libs.versions.toml.
 */
data class VersionCatalog(
    val versions: Map<String, String>,
    val libraries: Map<String, LibraryDefinition>,
    val plugins: Map<String, PluginDefinition>,
    val bundles: Map<String, List<String>>
)

/**
 * Represents a library definition in the version catalog.
 */
data class LibraryDefinition(
    val name: String,
    val group: String,
    val artifact: String,
    val version: LibraryVersion
)

/**
 * Represents a plugin definition in the version catalog.
 */
data class PluginDefinition(
    val name: String,
    val id: String,
    val version: LibraryVersion
)

/**
 * Represents a library version that can be direct or a reference.
 */
sealed class LibraryVersion {
    data class Direct(val version: String) : LibraryVersion()
    data class Reference(val ref: String) : LibraryVersion()
}

/**
 * Resolved version catalog with actual version strings.
 */
data class ResolvedVersionCatalog(
    val libraries: Map<String, ResolvedLibrary>,
    val plugins: Map<String, ResolvedPlugin>,
    val bundles: Map<String, List<String>>
)

/**
 * Resolved library with actual version string.
 */
data class ResolvedLibrary(
    val name: String,
    val group: String,
    val artifact: String,
    val version: String,
    val coordinate: String
)

/**
 * Resolved plugin with actual version string.
 */
data class ResolvedPlugin(
    val name: String,
    val id: String,
    val version: String
)