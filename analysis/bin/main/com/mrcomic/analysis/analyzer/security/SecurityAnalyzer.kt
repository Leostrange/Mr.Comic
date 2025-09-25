package com.mrcomic.analysis.analyzer.security

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue

/**
 * Main security analyzer that coordinates all security-related analysis.
 */
class SecurityAnalyzer : Analyzer {
    
    override val id = "security"
    override val name = "Security Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Starting security analysis...")
        return emptyList() // Placeholder
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean = true
}