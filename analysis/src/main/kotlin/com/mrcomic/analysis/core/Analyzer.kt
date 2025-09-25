package com.mrcomic.analysis.core

import com.mrcomic.analysis.model.Issue

/**
 * Base interface for all analyzers.
 */
interface Analyzer {
    /**
     * Unique identifier for this analyzer.
     */
    val id: String
    
    /**
     * Human-readable name of the analyzer.
     */
    val name: String
    
    /**
     * Version of the analyzer.
     */
    val version: String
    
    /**
     * Whether this analyzer is enabled by default.
     */
    val enabledByDefault: Boolean
    
    /**
     * Analyzes the project and returns found issues.
     * @param context Analysis context containing project information
     * @return List of issues found by this analyzer
     */
    suspend fun analyze(context: AnalysisContext): List<Issue>
    
    /**
     * Validates if this analyzer can run on the given project.
     * @param context Analysis context
     * @return true if analyzer can run, false otherwise
     */
    fun canAnalyze(context: AnalysisContext): Boolean
    
    /**
     * Gets the dependencies this analyzer requires.
     * @return List of analyzer IDs that must run before this one
     */
    fun getDependencies(): List<String> = emptyList()
}