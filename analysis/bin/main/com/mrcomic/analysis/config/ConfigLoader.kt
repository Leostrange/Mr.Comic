package com.mrcomic.analysis.config

import com.mrcomic.analysis.error.ConfigurationError
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import java.io.File

/**
 * Loads and validates analysis configuration from various sources.
 */
class ConfigLoader {
    
    private val json = Json {
        prettyPrint = true
        ignoreUnknownKeys = true
        encodeDefaults = true
    }
    
    /**
     * Loads configuration from the project directory.
     * Looks for configuration files in order of preference:
     * 1. .kiro/analysis-config.json
     * 2. analysis-config.json
     * 3. Default configuration
     */
    fun loadConfig(projectRoot: File): AnalysisConfig {
        val configSources = listOf(
            File(projectRoot, ".kiro/analysis-config.json"),
            File(projectRoot, "analysis-config.json")
        )
        
        for (configFile in configSources) {
            if (configFile.exists() && configFile.isFile) {
                try {
                    return loadFromFile(configFile)
                } catch (e: Exception) {
                    throw ConfigurationError(
                        configKey = configFile.name,
                        reason = "Failed to parse configuration file",
                        technicalDetails = e.message
                    )
                }
            }
        }
        
        // Return default configuration if no config file found
        return AnalysisConfig()
    }
    
    /**
     * Loads configuration from a specific file.
     */
    fun loadFromFile(configFile: File): AnalysisConfig {
        val configText = configFile.readText()
        val configData = json.decodeFromString<ConfigData>(configText)
        return configData.toAnalysisConfig()
    }
    
    /**
     * Saves configuration to a file.
     */
    fun saveToFile(config: AnalysisConfig, configFile: File) {
        val configData = ConfigData.fromAnalysisConfig(config)
        val configText = json.encodeToString(configData)
        
        // Ensure parent directory exists
        configFile.parentFile?.mkdirs()
        
        configFile.writeText(configText)
    }
    
    /**
     * Validates configuration and returns validation errors.
     */
    fun validateConfig(config: AnalysisConfig): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        // Validate timeout
        if (config.timeoutMinutes <= 0) {
            errors.add(ConfigValidationError(
                field = "timeoutMinutes",
                message = "Timeout must be positive",
                value = config.timeoutMinutes.toString()
            ))
        }
        
        // Validate max concurrent analyzers
        if (config.maxConcurrentAnalyzers <= 0) {
            errors.add(ConfigValidationError(
                field = "maxConcurrentAnalyzers",
                message = "Max concurrent analyzers must be positive",
                value = config.maxConcurrentAnalyzers.toString()
            ))
        }
        
        // Validate performance thresholds
        val thresholds = config.performanceThresholds
        if (thresholds.minTestCoveragePercent < 0 || thresholds.minTestCoveragePercent > 100) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.minTestCoveragePercent",
                message = "Test coverage percentage must be between 0 and 100",
                value = thresholds.minTestCoveragePercent.toString()
            ))
        }
        
        if (thresholds.maxBuildTimeMinutes <= 0) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.maxBuildTimeMinutes",
                message = "Max build time must be positive",
                value = thresholds.maxBuildTimeMinutes.toString()
            ))
        }
        
        // Validate patterns
        config.excludePatterns.forEachIndexed { index, pattern ->
            if (pattern.isBlank()) {
                errors.add(ConfigValidationError(
                    field = "excludePatterns[$index]",
                    message = "Exclude pattern cannot be blank",
                    value = pattern
                ))
            }
        }
        
        return errors
    }
}

/**
 * Serializable configuration data class for JSON persistence.
 */
@Serializable
data class ConfigData(
    val enabledAnalyzers: List<String> = emptyList(),
    val disabledAnalyzers: List<String> = emptyList(),
    val securityScanLevel: String = "STANDARD",
    val performanceThresholds: PerformanceThresholdsData = PerformanceThresholdsData(),
    val autoFixLevel: String = "SAFE_ONLY",
    val reportFormat: String = "MARKDOWN",
    val excludePatterns: List<String> = emptyList(),
    val includePatterns: List<String> = emptyList(),
    val parallelExecution: Boolean = true,
    val maxConcurrentAnalyzers: Int = 4,
    val cacheEnabled: Boolean = true,
    val timeoutMinutes: Int = 30,
    val outputDirectory: String = "analysis-output",
    val customSettings: Map<String, String> = emptyMap()
) {
    fun toAnalysisConfig(): AnalysisConfig {
        return AnalysisConfig(
            enabledAnalyzers = enabledAnalyzers.toSet(),
            disabledAnalyzers = disabledAnalyzers.toSet(),
            securityScanLevel = SecurityScanLevel.valueOf(securityScanLevel),
            performanceThresholds = performanceThresholds.toPerformanceThresholds(),
            autoFixLevel = AutoFixLevel.valueOf(autoFixLevel),
            reportFormat = ReportFormat.valueOf(reportFormat),
            excludePatterns = excludePatterns,
            includePatterns = includePatterns,
            parallelExecution = parallelExecution,
            maxConcurrentAnalyzers = maxConcurrentAnalyzers,
            cacheEnabled = cacheEnabled,
            timeoutMinutes = timeoutMinutes,
            outputDirectory = outputDirectory,
            customSettings = customSettings
        )
    }
    
    companion object {
        fun fromAnalysisConfig(config: AnalysisConfig): ConfigData {
            return ConfigData(
                enabledAnalyzers = config.enabledAnalyzers.toList(),
                disabledAnalyzers = config.disabledAnalyzers.toList(),
                securityScanLevel = config.securityScanLevel.name,
                performanceThresholds = PerformanceThresholdsData.fromPerformanceThresholds(config.performanceThresholds),
                autoFixLevel = config.autoFixLevel.name,
                reportFormat = config.reportFormat.name,
                excludePatterns = config.excludePatterns,
                includePatterns = config.includePatterns,
                parallelExecution = config.parallelExecution,
                maxConcurrentAnalyzers = config.maxConcurrentAnalyzers,
                cacheEnabled = config.cacheEnabled,
                timeoutMinutes = config.timeoutMinutes,
                outputDirectory = config.outputDirectory,
                customSettings = config.customSettings.mapValues { it.value.toString() }
            )
        }
    }
}

@Serializable
data class PerformanceThresholdsData(
    val maxBuildTimeMinutes: Int = 10,
    val maxMemoryUsageMb: Int = 512,
    val minTestCoveragePercent: Double = 80.0,
    val maxMethodComplexity: Int = 10,
    val maxClassSize: Int = 500
) {
    fun toPerformanceThresholds(): PerformanceThresholds {
        return PerformanceThresholds(
            maxBuildTimeMinutes = maxBuildTimeMinutes,
            maxMemoryUsageMb = maxMemoryUsageMb,
            minTestCoveragePercent = minTestCoveragePercent,
            maxMethodComplexity = maxMethodComplexity,
            maxClassSize = maxClassSize
        )
    }
    
    companion object {
        fun fromPerformanceThresholds(thresholds: PerformanceThresholds): PerformanceThresholdsData {
            return PerformanceThresholdsData(
                maxBuildTimeMinutes = thresholds.maxBuildTimeMinutes,
                maxMemoryUsageMb = thresholds.maxMemoryUsageMb,
                minTestCoveragePercent = thresholds.minTestCoveragePercent,
                maxMethodComplexity = thresholds.maxMethodComplexity,
                maxClassSize = thresholds.maxClassSize
            )
        }
    }
}

/**
 * Configuration validation error.
 */
data class ConfigValidationError(
    val field: String,
    val message: String,
    val value: String
)