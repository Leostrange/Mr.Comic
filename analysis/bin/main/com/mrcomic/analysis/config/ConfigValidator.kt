package com.mrcomic.analysis.config

import com.mrcomic.analysis.error.ConfigurationError

/**
 * Validates analysis configuration parameters.
 */
class ConfigValidator {
    
    /**
     * Validates the entire configuration and throws if invalid.
     */
    fun validateAndThrow(config: AnalysisConfig) {
        val errors = validate(config)
        if (errors.isNotEmpty()) {
            val errorMessage = errors.joinToString("; ") { "${it.field}: ${it.message}" }
            throw ConfigurationError(
                configKey = "AnalysisConfig",
                reason = "Configuration validation failed",
                technicalDetails = errorMessage
            )
        }
    }
    
    /**
     * Validates configuration and returns list of errors.
     */
    fun validate(config: AnalysisConfig): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        // Validate basic parameters
        errors.addAll(validateBasicParameters(config))
        
        // Validate performance thresholds
        errors.addAll(validatePerformanceThresholds(config.performanceThresholds))
        
        // Validate patterns
        errors.addAll(validatePatterns(config))
        
        // Validate analyzer settings
        errors.addAll(validateAnalyzerSettings(config))
        
        return errors
    }
    
    private fun validateBasicParameters(config: AnalysisConfig): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        if (config.timeoutMinutes <= 0) {
            errors.add(ConfigValidationError(
                field = "timeoutMinutes",
                message = "Must be positive",
                value = config.timeoutMinutes.toString()
            ))
        }
        
        if (config.timeoutMinutes > 1440) { // 24 hours
            errors.add(ConfigValidationError(
                field = "timeoutMinutes",
                message = "Timeout too long (max 24 hours)",
                value = config.timeoutMinutes.toString()
            ))
        }
        
        if (config.maxConcurrentAnalyzers <= 0) {
            errors.add(ConfigValidationError(
                field = "maxConcurrentAnalyzers",
                message = "Must be positive",
                value = config.maxConcurrentAnalyzers.toString()
            ))
        }
        
        if (config.maxConcurrentAnalyzers > 16) {
            errors.add(ConfigValidationError(
                field = "maxConcurrentAnalyzers",
                message = "Too many concurrent analyzers (max 16)",
                value = config.maxConcurrentAnalyzers.toString()
            ))
        }
        
        if (config.outputDirectory.isBlank()) {
            errors.add(ConfigValidationError(
                field = "outputDirectory",
                message = "Cannot be blank",
                value = config.outputDirectory
            ))
        }
        
        return errors
    }
    
    private fun validatePerformanceThresholds(thresholds: PerformanceThresholds): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        if (thresholds.minTestCoveragePercent < 0 || thresholds.minTestCoveragePercent > 100) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.minTestCoveragePercent",
                message = "Must be between 0 and 100",
                value = thresholds.minTestCoveragePercent.toString()
            ))
        }
        
        if (thresholds.maxBuildTimeMinutes <= 0) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.maxBuildTimeMinutes",
                message = "Must be positive",
                value = thresholds.maxBuildTimeMinutes.toString()
            ))
        }
        
        if (thresholds.maxMemoryUsageMb <= 0) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.maxMemoryUsageMb",
                message = "Must be positive",
                value = thresholds.maxMemoryUsageMb.toString()
            ))
        }
        
        if (thresholds.maxMethodComplexity <= 0) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.maxMethodComplexity",
                message = "Must be positive",
                value = thresholds.maxMethodComplexity.toString()
            ))
        }
        
        if (thresholds.maxClassSize <= 0) {
            errors.add(ConfigValidationError(
                field = "performanceThresholds.maxClassSize",
                message = "Must be positive",
                value = thresholds.maxClassSize.toString()
            ))
        }
        
        return errors
    }
    
    private fun validatePatterns(config: AnalysisConfig): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        config.excludePatterns.forEachIndexed { index, pattern ->
            if (pattern.isBlank()) {
                errors.add(ConfigValidationError(
                    field = "excludePatterns[$index]",
                    message = "Pattern cannot be blank",
                    value = pattern
                ))
            }
            
            // Validate regex pattern
            try {
                Regex(pattern)
            } catch (e: Exception) {
                errors.add(ConfigValidationError(
                    field = "excludePatterns[$index]",
                    message = "Invalid regex pattern: ${e.message}",
                    value = pattern
                ))
            }
        }
        
        config.includePatterns.forEachIndexed { index, pattern ->
            if (pattern.isBlank()) {
                errors.add(ConfigValidationError(
                    field = "includePatterns[$index]",
                    message = "Pattern cannot be blank",
                    value = pattern
                ))
            }
            
            // Validate regex pattern
            try {
                Regex(pattern)
            } catch (e: Exception) {
                errors.add(ConfigValidationError(
                    field = "includePatterns[$index]",
                    message = "Invalid regex pattern: ${e.message}",
                    value = pattern
                ))
            }
        }
        
        return errors
    }
    
    private fun validateAnalyzerSettings(config: AnalysisConfig): List<ConfigValidationError> {
        val errors = mutableListOf<ConfigValidationError>()
        
        // Check for conflicts between enabled and disabled analyzers
        val conflictingAnalyzers = config.enabledAnalyzers.intersect(config.disabledAnalyzers)
        if (conflictingAnalyzers.isNotEmpty()) {
            errors.add(ConfigValidationError(
                field = "analyzers",
                message = "Analyzers cannot be both enabled and disabled",
                value = conflictingAnalyzers.joinToString(", ")
            ))
        }
        
        // Validate analyzer IDs format
        val invalidAnalyzerIds = (config.enabledAnalyzers + config.disabledAnalyzers)
            .filter { !isValidAnalyzerId(it) }
        
        if (invalidAnalyzerIds.isNotEmpty()) {
            errors.add(ConfigValidationError(
                field = "analyzers",
                message = "Invalid analyzer IDs (must be alphanumeric with dashes/underscores)",
                value = invalidAnalyzerIds.joinToString(", ")
            ))
        }
        
        return errors
    }
    
    private fun isValidAnalyzerId(id: String): Boolean {
        return id.matches(Regex("^[a-zA-Z0-9_-]+$")) && id.isNotBlank()
    }
}