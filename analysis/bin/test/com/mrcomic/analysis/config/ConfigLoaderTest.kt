package com.mrcomic.analysis.config

import org.junit.jupiter.api.Test
import org.junit.jupiter.api.io.TempDir
import java.io.File
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class ConfigLoaderTest {
    
    @Test
    fun `should load default configuration when no config file exists`(@TempDir tempDir: File) {
        val configLoader = ConfigLoader()
        val config = configLoader.loadConfig(tempDir)
        
        assertEquals(AnalysisConfig(), config)
    }
    
    @Test
    fun `should save and load configuration from file`(@TempDir tempDir: File) {
        val configLoader = ConfigLoader()
        val originalConfig = AnalysisConfig(
            enabledAnalyzers = setOf("test-analyzer"),
            timeoutMinutes = 15,
            autoFixLevel = AutoFixLevel.MODERATE
        )
        
        val configFile = File(tempDir, "test-config.json")
        configLoader.saveToFile(originalConfig, configFile)
        
        assertTrue(configFile.exists())
        
        val loadedConfig = configLoader.loadFromFile(configFile)
        assertEquals(originalConfig.enabledAnalyzers, loadedConfig.enabledAnalyzers)
        assertEquals(originalConfig.timeoutMinutes, loadedConfig.timeoutMinutes)
        assertEquals(originalConfig.autoFixLevel, loadedConfig.autoFixLevel)
    }
    
    @Test
    fun `should validate configuration parameters`() {
        val configLoader = ConfigLoader()
        val invalidConfig = AnalysisConfig(
            timeoutMinutes = -1,
            maxConcurrentAnalyzers = 0
        )
        
        val errors = configLoader.validateConfig(invalidConfig)
        assertTrue(errors.isNotEmpty())
        assertTrue(errors.any { it.field == "timeoutMinutes" })
        assertTrue(errors.any { it.field == "maxConcurrentAnalyzers" })
    }
}