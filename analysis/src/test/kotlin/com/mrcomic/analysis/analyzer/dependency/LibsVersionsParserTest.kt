package com.mrcomic.analysis.analyzer.dependency

import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class LibsVersionsParserTest {
    
    @Test
    fun `should parse simple libs versions toml file`(@TempDir tempDir: File) {
        val parser = LibsVersionsParser()
        
        val libsContent = """
            [versions]
            kotlin = "1.9.25"
            compose-bom = "2023.10.01"
            androidx-core = "1.12.0"
            
            [libraries]
            androidx-core-ktx = "androidx.core:core-ktx:1.12.0"
            androidx-lifecycle-runtime = { group = "androidx.lifecycle", name = "lifecycle-runtime-ktx", version.ref = "androidx-core" }
            compose-bom = { group = "androidx.compose", name = "compose-bom", version.ref = "compose-bom" }
            
            [plugins]
            android-application = "com.android.application:8.1.2"
            kotlin-android = { id = "org.jetbrains.kotlin.android", version.ref = "kotlin" }
            
            [bundles]
            compose = ["compose-ui", "compose-ui-tooling", "compose-material3"]
        """.trimIndent()
        
        val libsFile = File(tempDir, "libs.versions.toml")
        libsFile.writeText(libsContent)
        
        val catalog = parser.parseVersionCatalog(libsFile)
        
        // Test versions
        assertEquals("1.9.25", catalog.versions["kotlin"])
        assertEquals("2023.10.01", catalog.versions["compose-bom"])
        assertEquals("1.12.0", catalog.versions["androidx-core"])
        
        // Test libraries
        assertEquals(3, catalog.libraries.size)
        
        val coreKtx = catalog.libraries["androidx-core-ktx"]
        assertTrue(coreKtx != null)
        assertEquals("androidx.core", coreKtx.group)
        assertEquals("core-ktx", coreKtx.artifact)
        assertTrue(coreKtx.version is LibraryVersion.Direct)
        assertEquals("1.12.0", (coreKtx.version as LibraryVersion.Direct).version)
        
        val lifecycle = catalog.libraries["androidx-lifecycle-runtime"]
        assertTrue(lifecycle != null)
        assertEquals("androidx.lifecycle", lifecycle.group)
        assertEquals("lifecycle-runtime-ktx", lifecycle.artifact)
        assertTrue(lifecycle.version is LibraryVersion.Reference)
        assertEquals("androidx-core", (lifecycle.version as LibraryVersion.Reference).ref)
        
        // Test plugins
        assertEquals(2, catalog.plugins.size)
        
        val androidApp = catalog.plugins["android-application"]
        assertTrue(androidApp != null)
        assertEquals("com.android.application", androidApp.id)
        assertTrue(androidApp.version is LibraryVersion.Direct)
        
        val kotlinAndroid = catalog.plugins["kotlin-android"]
        assertTrue(kotlinAndroid != null)
        assertEquals("org.jetbrains.kotlin.android", kotlinAndroid.id)
        assertTrue(kotlinAndroid.version is LibraryVersion.Reference)
        
        // Test bundles
        assertEquals(1, catalog.bundles.size)
        val composeBundle = catalog.bundles["compose"]
        assertTrue(composeBundle != null)
        assertEquals(3, composeBundle.size)
        assertTrue(composeBundle.contains("compose-ui"))
    }
    
    @Test
    fun `should resolve version references correctly`(@TempDir tempDir: File) {
        val parser = LibsVersionsParser()
        
        val libsContent = """
            [versions]
            kotlin = "1.9.25"
            compose = "1.5.4"
            
            [libraries]
            compose-ui = { group = "androidx.compose", name = "compose-ui", version.ref = "compose" }
            compose-material = { group = "androidx.compose", name = "compose-material3", version.ref = "compose" }
            
            [plugins]
            kotlin-android = { id = "org.jetbrains.kotlin.android", version.ref = "kotlin" }
        """.trimIndent()
        
        val libsFile = File(tempDir, "libs.versions.toml")
        libsFile.writeText(libsContent)
        
        val catalog = parser.parseVersionCatalog(libsFile)
        val resolved = parser.resolveVersions(catalog)
        
        // Test resolved libraries
        val composeUi = resolved.libraries["compose-ui"]
        assertTrue(composeUi != null)
        assertEquals("1.5.4", composeUi.version)
        assertEquals("androidx.compose:compose-ui:1.5.4", composeUi.coordinate)
        
        val composeMaterial = resolved.libraries["compose-material"]
        assertTrue(composeMaterial != null)
        assertEquals("1.5.4", composeMaterial.version)
        
        // Test resolved plugins
        val kotlinPlugin = resolved.plugins["kotlin-android"]
        assertTrue(kotlinPlugin != null)
        assertEquals("1.9.25", kotlinPlugin.version)
    }
    
    @Test
    fun `should handle empty sections gracefully`(@TempDir tempDir: File) {
        val parser = LibsVersionsParser()
        
        val libsContent = """
            [versions]
            kotlin = "1.9.25"
            
            [libraries]
            # No libraries defined
            
            [plugins]
            # No plugins defined
            
            [bundles]
            # No bundles defined
        """.trimIndent()
        
        val libsFile = File(tempDir, "libs.versions.toml")
        libsFile.writeText(libsContent)
        
        val catalog = parser.parseVersionCatalog(libsFile)
        
        assertEquals(1, catalog.versions.size)
        assertEquals(0, catalog.libraries.size)
        assertEquals(0, catalog.plugins.size)
        assertEquals(0, catalog.bundles.size)
    }
    
    @Test
    fun `should parse complex library names with dashes`(@TempDir tempDir: File) {
        val parser = LibsVersionsParser()
        
        val libsContent = """
            [versions]
            androidx-compose = "1.5.4"
            
            [libraries]
            androidx-compose-ui-tooling-preview = { group = "androidx.compose", name = "ui-tooling-preview", version.ref = "androidx-compose" }
            androidx-lifecycle-viewmodel-compose = "androidx.lifecycle:lifecycle-viewmodel-compose:2.7.0"
        """.trimIndent()
        
        val libsFile = File(tempDir, "libs.versions.toml")
        libsFile.writeText(libsContent)
        
        val catalog = parser.parseVersionCatalog(libsFile)
        
        val toolingPreview = catalog.libraries["androidx-compose-ui-tooling-preview"]
        assertTrue(toolingPreview != null)
        assertEquals("androidx.compose", toolingPreview.group)
        assertEquals("ui-tooling-preview", toolingPreview.artifact)
        
        val viewModelCompose = catalog.libraries["androidx-lifecycle-viewmodel-compose"]
        assertTrue(viewModelCompose != null)
        assertEquals("androidx.lifecycle", viewModelCompose.group)
        assertEquals("lifecycle-viewmodel-compose", viewModelCompose.artifact)
    }
    
    @Test
    fun `should handle missing version reference gracefully`(@TempDir tempDir: File) {
        val parser = LibsVersionsParser()
        
        val libsContent = """
            [versions]
            kotlin = "1.9.25"
            
            [libraries]
            some-library = { group = "com.example", name = "library", version.ref = "missing-version" }
        """.trimIndent()
        
        val libsFile = File(tempDir, "libs.versions.toml")
        libsFile.writeText(libsContent)
        
        val catalog = parser.parseVersionCatalog(libsFile)
        
        try {
            parser.resolveVersions(catalog)
            assertTrue(false, "Should have thrown exception for missing version reference")
        } catch (e: IllegalStateException) {
            assertTrue(e.message?.contains("Version reference 'missing-version' not found") == true)
        }
    }
}