package com.mrcomic.analysis.core

import com.mrcomic.analysis.error.AnalyzerExecutionError
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope

/**
 * Registry for managing analyzers and their execution.
 */
class AnalyzerRegistry {
    private val analyzers = mutableMapOf<String, Analyzer>()
    private val dependencyGraph = mutableMapOf<String, List<String>>()
    
    /**
     * Registers an analyzer.
     */
    fun register(analyzer: Analyzer) {
        analyzers[analyzer.id] = analyzer
        dependencyGraph[analyzer.id] = analyzer.getDependencies()
    }
    
    /**
     * Unregisters an analyzer.
     */
    fun unregister(analyzerId: String) {
        analyzers.remove(analyzerId)
        dependencyGraph.remove(analyzerId)
    }
    
    /**
     * Gets all registered analyzers.
     */
    fun getAllAnalyzers(): List<Analyzer> = analyzers.values.toList()
    
    /**
     * Gets an analyzer by ID.
     */
    fun getAnalyzer(id: String): Analyzer? = analyzers[id]
    
    /**
     * Gets analyzers that can run on the given context.
     */
    fun getApplicableAnalyzers(context: AnalysisContext): List<Analyzer> {
        return analyzers.values.filter { analyzer ->
            val enabled = context.config.enabledAnalyzers.contains(analyzer.id) ||
                    (analyzer.enabledByDefault && !context.config.disabledAnalyzers.contains(analyzer.id))
            enabled && analyzer.canAnalyze(context)
        }
    }
    
    /**
     * Executes analyzers in dependency order.
     */
    suspend fun executeAnalyzers(
        analyzers: List<Analyzer>,
        context: AnalysisContext
    ): AnalyzerExecutionResult = coroutineScope {
        val executionOrder = resolveDependencyOrder(analyzers.map { it.id })
        val results = mutableMapOf<String, AnalyzerResult>()
        val errors = mutableListOf<AnalyzerExecutionError>()
        
        context.logger.info("Executing ${analyzers.size} analyzers in dependency order")
        
        for (batch in executionOrder) {
            val batchAnalyzers = batch.mapNotNull { id -> analyzers.find { it.id == id } }
            
            // Execute analyzers in parallel within each batch
            val batchResults = batchAnalyzers.map { analyzer ->
                async {
                    try {
                        context.logger.debug("Starting analyzer: ${analyzer.name}")
                        val startTime = System.currentTimeMillis()
                        
                        val issues = analyzer.analyze(context)
                        
                        val endTime = System.currentTimeMillis()
                        val executionTime = endTime - startTime
                        
                        context.logger.debug(
                            "Analyzer ${analyzer.name} completed in ${executionTime}ms, found ${issues.size} issues"
                        )
                        
                        AnalyzerResult(
                            analyzerId = analyzer.id,
                            analyzerName = analyzer.name,
                            analyzerVersion = analyzer.version,
                            issues = issues,
                            executionTimeMs = executionTime,
                            success = true
                        )
                    } catch (e: Exception) {
                        context.logger.error("Analyzer ${analyzer.name} failed", e)
                        val error = AnalyzerExecutionError(
                            analyzerName = analyzer.name,
                            reason = e.message ?: "Unknown error",
                            technicalDetails = e.stackTraceToString()
                        )
                        errors.add(error)
                        
                        AnalyzerResult(
                            analyzerId = analyzer.id,
                            analyzerName = analyzer.name,
                            analyzerVersion = analyzer.version,
                            issues = emptyList(),
                            executionTimeMs = 0,
                            success = false,
                            error = error
                        )
                    }
                }
            }.awaitAll()
            
            batchResults.forEach { result ->
                results[result.analyzerId] = result
            }
        }
        
        AnalyzerExecutionResult(
            results = results,
            errors = errors,
            totalExecutionTimeMs = results.values.sumOf { it.executionTimeMs }
        )
    }
    
    /**
     * Resolves the execution order based on dependencies.
     * Returns batches of analyzer IDs that can be executed in parallel.
     */
    private fun resolveDependencyOrder(analyzerIds: List<String>): List<List<String>> {
        val remaining = analyzerIds.toMutableSet()
        val batches = mutableListOf<List<String>>()
        
        while (remaining.isNotEmpty()) {
            val batch = remaining.filter { analyzerId ->
                val dependencies = dependencyGraph[analyzerId] ?: emptyList()
                dependencies.all { dep -> !remaining.contains(dep) }
            }
            
            if (batch.isEmpty()) {
                // Circular dependency detected, break it by taking any remaining analyzer
                val forced = remaining.first()
                batches.add(listOf(forced))
                remaining.remove(forced)
            } else {
                batches.add(batch)
                remaining.removeAll(batch.toSet())
            }
        }
        
        return batches
    }
}

/**
 * Result of executing a single analyzer.
 */
data class AnalyzerResult(
    val analyzerId: String,
    val analyzerName: String,
    val analyzerVersion: String,
    val issues: List<com.mrcomic.analysis.model.Issue>,
    val executionTimeMs: Long,
    val success: Boolean,
    val error: AnalyzerExecutionError? = null
)

/**
 * Result of executing multiple analyzers.
 */
data class AnalyzerExecutionResult(
    val results: Map<String, AnalyzerResult>,
    val errors: List<AnalyzerExecutionError>,
    val totalExecutionTimeMs: Long
)