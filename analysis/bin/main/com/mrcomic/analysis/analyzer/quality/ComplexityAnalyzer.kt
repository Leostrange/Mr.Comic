package com.mrcomic.analysis.analyzer.quality

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.CodeQualityIssue
import com.mrcomic.analysis.model.CodeQualityType
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes code complexity metrics including cyclomatic complexity,
 * inheritance depth, and code duplication.
 */
class ComplexityAnalyzer : Analyzer {
    
    override val id = "complexity"
    override val name = "Code Complexity Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing code complexity...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Find all Kotlin source files
            val kotlinFiles = findKotlinFiles(context.projectRoot)
            context.logger.info("Found ${kotlinFiles.size} Kotlin files to analyze")
            
            // Analyze each file
            kotlinFiles.forEach { file ->
                issues.addAll(analyzeFile(file, context))
            }
            
            // Analyze overall project complexity
            issues.addAll(analyzeProjectComplexity(kotlinFiles, context))
            
            context.logger.info("Complexity analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze code complexity", e)
            issues.add(CodeQualityIssue(
                id = "complexity-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze code complexity: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project contains valid Kotlin source files",
                qualityType = CodeQualityType.COMPLEXITY,
                metrics = emptyMap()
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return findKotlinFiles(context.projectRoot).isNotEmpty()
    }
    
    private fun findKotlinFiles(projectRoot: File): List<File> {
        val kotlinFiles = mutableListOf<File>()
        
        projectRoot.walkTopDown()
            .filter { it.isFile && it.extension == "kt" }
            .filter { !it.path.contains("/build/") }
            .filter { !it.path.contains("/.gradle/") }
            .forEach { kotlinFiles.add(it) }
        
        return kotlinFiles
    }
    
    private fun analyzeFile(file: File, context: AnalysisContext): List<Issue> {
        val issues = mutableListOf<Issue>()
        
        try {
            val content = file.readText()
            val relativePath = context.projectRoot.toPath().relativize(file.toPath()).toString()
            
            // Analyze cyclomatic complexity
            issues.addAll(analyzeCyclomaticComplexity(content, relativePath, context))
            
            // Analyze method length
            issues.addAll(analyzeMethodLength(content, relativePath, context))
            
            // Analyze class size
            issues.addAll(analyzeClassSize(content, relativePath, context))
            
            // Analyze nesting depth
            issues.addAll(analyzeNestingDepth(content, relativePath, context))
            
        } catch (e: Exception) {
            context.logger.warn("Failed to analyze file ${file.name}: ${e.message}")
        }
        
        return issues
    }
    
    private fun analyzeCyclomaticComplexity(
        content: String,
        filePath: String,
        context: AnalysisContext
    ): List<Issue> {
        val issues = mutableListOf<Issue>()
        val lines = content.lines()
        
        // Simple heuristic for cyclomatic complexity
        // Count decision points: if, when, while, for, try, catch, &&, ||
        val complexityKeywords = listOf("if", "when", "while", "for", "try", "catch")
        val logicalOperators = listOf("&&", "||")
        
        var currentFunction: String? = null
        var functionStartLine = 0
        var complexity = 1 // Base complexity
        var braceDepth = 0
        var inFunction = false
        
        lines.forEachIndexed { lineIndex, line ->
            val trimmedLine = line.trim()
            
            // Detect function start
            if (trimmedLine.contains("fun ") && trimmedLine.contains("(")) {
                if (inFunction && complexity > context.config.performanceThresholds.maxMethodComplexity) {
                    issues.add(createComplexityIssue(
                        currentFunction ?: "unknown",
                        complexity,
                        functionStartLine,
                        filePath,
                        context
                    ))
                }
                
                currentFunction = extractFunctionName(trimmedLine)
                functionStartLine = lineIndex + 1
                complexity = 1
                braceDepth = 0
                inFunction = true
            }
            
            if (inFunction) {
                // Count braces to track function scope
                braceDepth += trimmedLine.count { it == '{' }
                braceDepth -= trimmedLine.count { it == '}' }
                
                // Count complexity-adding constructs
                complexityKeywords.forEach { keyword ->
                    if (trimmedLine.contains("\\b$keyword\\b".toRegex())) {
                        complexity++
                    }
                }
                
                logicalOperators.forEach { operator ->
                    complexity += trimmedLine.split(operator).size - 1
                }
                
                // Function ends when braces are balanced
                if (braceDepth == 0 && trimmedLine.contains("}")) {
                    if (complexity > context.config.performanceThresholds.maxMethodComplexity) {
                        issues.add(createComplexityIssue(
                            currentFunction ?: "unknown",
                            complexity,
                            functionStartLine,
                            filePath,
                            context
                        ))
                    }
                    inFunction = false
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeMethodLength(
        content: String,
        filePath: String,
        context: AnalysisContext
    ): List<Issue> {
        val issues = mutableListOf<Issue>()
        val lines = content.lines()
        val maxMethodLength = 50 // Configurable threshold
        
        var currentFunction: String? = null
        var functionStartLine = 0
        var functionLineCount = 0
        var braceDepth = 0
        var inFunction = false
        
        lines.forEachIndexed { lineIndex, line ->
            val trimmedLine = line.trim()
            
            if (trimmedLine.contains("fun ") && trimmedLine.contains("(")) {
                currentFunction = extractFunctionName(trimmedLine)
                functionStartLine = lineIndex + 1
                functionLineCount = 0
                braceDepth = 0
                inFunction = true
            }
            
            if (inFunction) {
                if (trimmedLine.isNotEmpty() && !trimmedLine.startsWith("//")) {
                    functionLineCount++
                }
                
                braceDepth += trimmedLine.count { it == '{' }
                braceDepth -= trimmedLine.count { it == '}' }
                
                if (braceDepth == 0 && trimmedLine.contains("}")) {
                    if (functionLineCount > maxMethodLength) {
                        issues.add(CodeQualityIssue(
                            id = "long-method-${filePath.hashCode()}-${functionStartLine}",
                            severity = Severity.WARNING,
                            description = "Method '${currentFunction}' is too long ($functionLineCount lines)",
                            location = "$filePath:$functionStartLine",
                            suggestion = "Consider breaking this method into smaller, more focused methods",
                            qualityType = CodeQualityType.COMPLEXITY,
                            metrics = mapOf(
                                "methodLength" to functionLineCount,
                                "maxRecommended" to maxMethodLength
                            )
                        ))
                    }
                    inFunction = false
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeClassSize(
        content: String,
        filePath: String,
        context: AnalysisContext
    ): List<Issue> {
        val issues = mutableListOf<Issue>()
        val lines = content.lines()
        val maxClassSize = context.config.performanceThresholds.maxClassSize
        
        var currentClass: String? = null
        var classStartLine = 0
        var classLineCount = 0
        var braceDepth = 0
        var inClass = false
        
        lines.forEachIndexed { lineIndex, line ->
            val trimmedLine = line.trim()
            
            if ((trimmedLine.startsWith("class ") || trimmedLine.startsWith("object ") || 
                 trimmedLine.startsWith("interface ")) && trimmedLine.contains("{")) {
                currentClass = extractClassName(trimmedLine)
                classStartLine = lineIndex + 1
                classLineCount = 0
                braceDepth = 0
                inClass = true
            }
            
            if (inClass) {
                if (trimmedLine.isNotEmpty() && !trimmedLine.startsWith("//")) {
                    classLineCount++
                }
                
                braceDepth += trimmedLine.count { it == '{' }
                braceDepth -= trimmedLine.count { it == '}' }
                
                if (braceDepth == 0 && trimmedLine.contains("}")) {
                    if (classLineCount > maxClassSize) {
                        issues.add(CodeQualityIssue(
                            id = "large-class-${filePath.hashCode()}-${classStartLine}",
                            severity = Severity.WARNING,
                            description = "Class '${currentClass}' is too large ($classLineCount lines)",
                            location = "$filePath:$classStartLine",
                            suggestion = "Consider breaking this class into smaller, more focused classes or using composition",
                            qualityType = CodeQualityType.COMPLEXITY,
                            metrics = mapOf(
                                "classSize" to classLineCount,
                                "maxRecommended" to maxClassSize
                            )
                        ))
                    }
                    inClass = false
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeNestingDepth(
        content: String,
        filePath: String,
        context: AnalysisContext
    ): List<Issue> {
        val issues = mutableListOf<Issue>()
        val lines = content.lines()
        val maxNestingDepth = 4
        
        var currentFunction: String? = null
        var functionStartLine = 0
        var maxDepthInFunction = 0
        var currentDepth = 0
        var inFunction = false
        
        lines.forEachIndexed { lineIndex, line ->
            val trimmedLine = line.trim()
            
            if (trimmedLine.contains("fun ") && trimmedLine.contains("(")) {
                currentFunction = extractFunctionName(trimmedLine)
                functionStartLine = lineIndex + 1
                maxDepthInFunction = 0
                currentDepth = 0
                inFunction = true
            }
            
            if (inFunction) {
                // Count nesting level based on control structures
                val nestingIncrease = listOf("if", "when", "while", "for", "try").count { keyword ->
                    trimmedLine.contains("\\b$keyword\\b".toRegex())
                }
                
                currentDepth += nestingIncrease
                maxDepthInFunction = maxOf(maxDepthInFunction, currentDepth)
                
                // Decrease depth on closing braces (simplified)
                if (trimmedLine.contains("}")) {
                    currentDepth = maxOf(0, currentDepth - 1)
                    
                    if (currentDepth == 0) {
                        if (maxDepthInFunction > maxNestingDepth) {
                            issues.add(CodeQualityIssue(
                                id = "deep-nesting-${filePath.hashCode()}-${functionStartLine}",
                                severity = Severity.WARNING,
                                description = "Method '${currentFunction}' has deep nesting (depth: $maxDepthInFunction)",
                                location = "$filePath:$functionStartLine",
                                suggestion = "Consider extracting nested logic into separate methods or using early returns",
                                qualityType = CodeQualityType.COMPLEXITY,
                                metrics = mapOf(
                                    "nestingDepth" to maxDepthInFunction,
                                    "maxRecommended" to maxNestingDepth
                                )
                            ))
                        }
                        inFunction = false
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeProjectComplexity(
        kotlinFiles: List<File>,
        context: AnalysisContext
    ): List<Issue> {
        val issues = mutableListOf<Issue>()
        
        // Calculate overall project metrics
        val totalLines = kotlinFiles.sumOf { file ->
            try {
                file.readLines().count { it.trim().isNotEmpty() && !it.trim().startsWith("//") }
            } catch (e: Exception) {
                0
            }
        }
        
        val averageLinesPerFile = if (kotlinFiles.isNotEmpty()) totalLines / kotlinFiles.size else 0
        
        // Check for potential code duplication (simplified heuristic)
        val duplicateBlocks = findPotentialDuplicates(kotlinFiles)
        
        if (duplicateBlocks.isNotEmpty()) {
            issues.add(CodeQualityIssue(
                id = "code-duplication-detected",
                severity = Severity.WARNING,
                description = "Potential code duplication detected in ${duplicateBlocks.size} locations",
                location = context.projectPath,
                suggestion = "Review similar code blocks and consider extracting common functionality",
                qualityType = CodeQualityType.DUPLICATION,
                metrics = mapOf(
                    "duplicateBlocks" to duplicateBlocks.size,
                    "totalFiles" to kotlinFiles.size
                )
            ))
        }
        
        // Check average file size
        if (averageLinesPerFile > 200) {
            issues.add(CodeQualityIssue(
                id = "large-average-file-size",
                severity = Severity.INFO,
                description = "Average file size is large ($averageLinesPerFile lines per file)",
                location = context.projectPath,
                suggestion = "Consider breaking large files into smaller, more focused modules",
                qualityType = CodeQualityType.COMPLEXITY,
                metrics = mapOf(
                    "averageLinesPerFile" to averageLinesPerFile,
                    "totalFiles" to kotlinFiles.size,
                    "totalLines" to totalLines
                )
            ))
        }
        
        return issues
    }
    
    private fun findPotentialDuplicates(kotlinFiles: List<File>): List<String> {
        // Simplified duplicate detection - look for similar function signatures
        val functionSignatures = mutableMapOf<String, MutableList<String>>()
        
        kotlinFiles.forEach { file ->
            try {
                val content = file.readText()
                val functions = extractFunctionSignatures(content)
                
                functions.forEach { signature ->
                    functionSignatures.computeIfAbsent(signature) { mutableListOf() }
                        .add(file.path)
                }
            } catch (e: Exception) {
                // Ignore files that can't be read
            }
        }
        
        return functionSignatures.filter { it.value.size > 1 }.keys.toList()
    }
    
    private fun extractFunctionSignatures(content: String): List<String> {
        val signatures = mutableListOf<String>()
        val functionPattern = Regex("""fun\s+(\w+)\s*\([^)]*\)""")
        
        functionPattern.findAll(content).forEach { match ->
            signatures.add(match.value)
        }
        
        return signatures
    }
    
    private fun extractFunctionName(line: String): String {
        val functionPattern = Regex("""fun\s+(\w+)""")
        return functionPattern.find(line)?.groupValues?.get(1) ?: "unknown"
    }
    
    private fun extractClassName(line: String): String {
        val classPattern = Regex("""(?:class|object|interface)\s+(\w+)""")
        return classPattern.find(line)?.groupValues?.get(1) ?: "unknown"
    }
    
    private fun createComplexityIssue(
        functionName: String,
        complexity: Int,
        lineNumber: Int,
        filePath: String,
        context: AnalysisContext
    ): CodeQualityIssue {
        val severity = when {
            complexity > 15 -> Severity.ERROR
            complexity > 10 -> Severity.WARNING
            else -> Severity.INFO
        }
        
        return CodeQualityIssue(
            id = "high-complexity-${filePath.hashCode()}-${lineNumber}",
            severity = severity,
            description = "Method '$functionName' has high cyclomatic complexity ($complexity)",
            location = "$filePath:$lineNumber",
            suggestion = "Consider breaking this method into smaller methods or simplifying the logic",
            qualityType = CodeQualityType.COMPLEXITY,
            metrics = mapOf(
                "cyclomaticComplexity" to complexity,
                "maxRecommended" to context.config.performanceThresholds.maxMethodComplexity
            )
        )
    }
}