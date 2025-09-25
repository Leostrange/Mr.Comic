package com.mrcomic.analysis.core

import com.mrcomic.analysis.model.AnalysisResult
import com.mrcomic.analysis.model.ImprovementPlan
import com.mrcomic.analysis.model.ApplicationResult

/**
 * Main interface for project analysis functionality.
 * Provides methods to analyze projects, generate improvement plans, and apply fixes.
 */
interface ProjectAnalyzer {
    /**
     * Analyzes the project at the specified path.
     * @param projectPath Path to the project root directory
     * @return Analysis result containing all found issues and metrics
     */
    suspend fun analyzeProject(projectPath: String): AnalysisResult
    
    /**
     * Generates an improvement plan based on analysis results.
     * @param result The analysis result to base improvements on
     * @return Improvement plan with prioritized fixes
     */
    suspend fun generateImprovementPlan(result: AnalysisResult): ImprovementPlan
    
    /**
     * Applies the improvements from the plan to the project.
     * @param plan The improvement plan to apply
     * @return Result of the application process
     */
    suspend fun applyImprovements(plan: ImprovementPlan): ApplicationResult
}