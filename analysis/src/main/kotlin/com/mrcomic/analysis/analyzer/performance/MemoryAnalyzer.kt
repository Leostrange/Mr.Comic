package com.mrcomic.analysis.analyzer.performance

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.PerformanceIssue
import com.mrcomic.analysis.model.PerformanceIssueType
import com.mrcomic.analysis.model.PerformanceImpact
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes memory usage patterns and potential memory leaks in the Android project.
 */
class MemoryAnalyzer : Analyzer {
    
    override val id = "memory-analysis"
    override val name = "Memory Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val memoryLeakPatterns = mapOf(
        "Static Context Reference" to listOf(
            Regex("""static.*Context"""),
            Regex("""companion object.*Context""")
        ),
        "Handler without WeakReference" to listOf(
            Regex("""Handler\s*\(\s*\)"""),
            Regex("""new Handler\(\)""")
        ),
        "Anonymous Inner Class" to listOf(
            Regex("""object\s*:\s*\w+"""),
            Regex("""new\s+\w+\s*\(\s*\)\s*\{""")
        ),
        "Listener not removed" to listOf(
            Regex("""addListener"""),
            Regex("""setOnClickListener""")
        )
    )
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing memory usage...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Analyze potential memory leaks
            issues.addAll(analyzeMemoryLeaks(context))
            
            // Analyze image loading and caching
            issues.addAll(analyzeImageHandling(context))
            
            // Analyze collection usage
            issues.addAll(analyzeCollectionUsage(context))
            
            // Analyze Compose memory usage
            issues.addAll(analyzeComposeMemoryUsage(context))
            
            // Analyze resource management
            issues.addAll(analyzeResourceManagement(context))
            
            context.logger.info("Memory analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze memory usage", e)
            issues.add(PerformanceIssue(
                id = "memory-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze memory usage: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project structure is valid",
                performanceType = PerformanceIssueType.MEMORY_LEAK,
                impact = PerformanceImpact(null, null, emptyList())
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return File(context.projectRoot, "android").exists()
    }
    
    private fun analyzeMemoryLeaks(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for static context references
            if (content.contains("companion object") && content.contains("Context")) {
                issues.add(PerformanceIssue(
                    id = "static-context-reference-${file.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Static context reference found in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use WeakReference or ApplicationContext instead of Activity context",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 50.0,
                        affectedOperations = listOf("Activity lifecycle")
                    )
                ))
            }
            
            // Check for Handler without WeakReference
            if (content.contains("Handler()") && !content.contains("WeakReference")) {
                issues.add(PerformanceIssue(
                    id = "handler-memory-leak-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Handler without WeakReference in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use WeakReference to avoid memory leaks with Handler",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 10.0,
                        affectedOperations = listOf("Message handling")
                    )
                ))
            }
            
            // Check for AsyncTask (deprecated and leak-prone)
            if (content.contains("AsyncTask")) {
                issues.add(PerformanceIssue(
                    id = "asynctask-usage-${file.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "AsyncTask usage found in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Replace AsyncTask with coroutines or modern async patterns",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 20.0,
                        affectedOperations = listOf("Background tasks")
                    )
                ))
            }
            
            // Check for unregistered listeners
            val hasAddListener = content.contains("addListener") || content.contains("setOnClickListener")
            val hasRemoveListener = content.contains("removeListener") || content.contains("setOnClickListener(null)")
            
            if (hasAddListener && !hasRemoveListener && content.contains("onDestroy")) {
                issues.add(PerformanceIssue(
                    id = "unregistered-listeners-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Listeners added but not removed in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Remove listeners in onDestroy() or onPause()",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 5.0,
                        affectedOperations = listOf("Event handling")
                    )
                ))
            }
            
            // Check for large object allocations in loops
            if (content.contains("for") || content.contains("while")) {
                val largeObjectPatterns = listOf("Bitmap", "ByteArray", "ArrayList", "HashMap")
                largeObjectPatterns.forEach { pattern ->
                    if (content.contains(pattern) && content.contains("for")) {
                        issues.add(PerformanceIssue(
                            id = "large-object-in-loop-${pattern}-${file.name.hashCode()}",
                            severity = Severity.WARNING,
                            description = "Large object ($pattern) allocation in loop in ${file.relativeTo(context.projectRoot).path}",
                            location = file.relativeTo(context.projectRoot).path,
                            suggestion = "Move object allocation outside loop or use object pooling",
                            performanceType = PerformanceIssueType.MEMORY_LEAK,
                            impact = PerformanceImpact(
                                estimatedSlowdownMs = 1000L,
                                memoryImpactMb = 100.0,
                                affectedOperations = listOf("Loop execution")
                            )
                        ))
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeImageHandling(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for Bitmap usage without recycling
            if (content.contains("Bitmap") && !content.contains("recycle()")) {
                issues.add(PerformanceIssue(
                    id = "bitmap-not-recycled-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Bitmap usage without recycling in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Call bitmap.recycle() when done or use modern image loading libraries",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 50.0,
                        affectedOperations = listOf("Image processing")
                    )
                ))
            }
            
            // Check for image loading without caching
            if ((content.contains("BitmapFactory") || content.contains("ImageView")) && 
                !content.contains("Coil") && !content.contains("Glide") && !content.contains("Picasso")) {
                issues.add(PerformanceIssue(
                    id = "no-image-caching-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Image loading without caching library in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use Coil, Glide, or Picasso for efficient image loading and caching",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 2000L,
                        memoryImpactMb = 100.0,
                        affectedOperations = listOf("Image loading")
                    )
                ))
            }
            
            // Check for large image resources
            if (content.contains("R.drawable") || content.contains("R.mipmap")) {
                issues.add(PerformanceIssue(
                    id = "potential-large-images-${file.name.hashCode()}",
                    severity = Severity.INFO,
                    description = "Direct drawable usage in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Ensure images are optimized and use appropriate densities",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 20.0,
                        affectedOperations = listOf("Image loading")
                    )
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeCollectionUsage(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for inefficient collection operations
            if (content.contains("ArrayList") && content.contains("add(0,")) {
                issues.add(PerformanceIssue(
                    id = "inefficient-list-insertion-${file.name.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Inefficient list insertion at index 0 in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use LinkedList for frequent insertions at beginning or consider different data structure",
                    performanceType = PerformanceIssueType.INEFFICIENT_ALGORITHM,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = 500L,
                        memoryImpactMb = null,
                        affectedOperations = listOf("List operations")
                    )
                ))
            }
            
            // Check for HashMap with String keys that could use SparseArray
            if (content.contains("HashMap<Int,") || content.contains("Map<Int,")) {
                issues.add(PerformanceIssue(
                    id = "hashmap-with-int-keys-${file.name.hashCode()}",
                    severity = Severity.INFO,
                    description = "HashMap with Int keys in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Consider using SparseArray for better memory efficiency",
                    performanceType = PerformanceIssueType.MEMORY_LEAK,
                    impact = PerformanceImpact(
                        estimatedSlowdownMs = null,
                        memoryImpactMb = 10.0,
                        affectedOperations = listOf("Map operations")
                    )
                ))
            }
            
            // Check for large collections without size hints
            val collectionPatterns = listOf("ArrayList()", "HashMap()", "HashSet()")
            collectionPatterns.forEach { pattern ->
                if (content.contains(pattern) && content.contains("for")) {
                    issues.add(PerformanceIssue(
                        id = "collection-without-size-hint-${pattern.hashCode()}-${file.name.hashCode()}",
                        severity = Severity.INFO,
                        description = "Collection created without size hint in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Provide initial capacity if collection size is known",
                        performanceType = PerformanceIssueType.MEMORY_LEAK,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 100L,
                            memoryImpactMb = 5.0,
                            affectedOperations = listOf("Collection operations")
                        )
                    ))
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeComposeMemoryUsage(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for Compose usage
            if (content.contains("@Composable")) {
                
                // Check for remember usage without keys
                if (content.contains("remember {") && !content.contains("remember(")) {
                    issues.add(PerformanceIssue(
                        id = "remember-without-keys-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "remember() without keys in Composable in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use remember(key) to control when values are recalculated",
                        performanceType = PerformanceIssueType.MEMORY_LEAK,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 100L,
                            memoryImpactMb = 5.0,
                            affectedOperations = listOf("Compose recomposition")
                        )
                    ))
                }
                
                // Check for heavy operations in Composables
                val heavyOperations = listOf("Bitmap", "File(", "HttpURLConnection", "Socket")
                heavyOperations.forEach { operation ->
                    if (content.contains(operation) && content.contains("@Composable")) {
                        issues.add(PerformanceIssue(
                            id = "heavy-operation-in-composable-${operation.hashCode()}-${file.name.hashCode()}",
                            severity = Severity.ERROR,
                            description = "Heavy operation ($operation) in Composable in ${file.relativeTo(context.projectRoot).path}",
                            location = file.relativeTo(context.projectRoot).path,
                            suggestion = "Move heavy operations to LaunchedEffect or ViewModel",
                            performanceType = PerformanceIssueType.SLOW_OPERATION,
                            impact = PerformanceImpact(
                                estimatedSlowdownMs = 1000L,
                                memoryImpactMb = 20.0,
                                affectedOperations = listOf("UI rendering")
                            )
                        ))
                    }
                }
                
                // Check for large lists without LazyColumn/LazyRow
                if (content.contains("Column") && content.contains("forEach") && !content.contains("LazyColumn")) {
                    issues.add(PerformanceIssue(
                        id = "non-lazy-large-list-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "Large list in Column instead of LazyColumn in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use LazyColumn for large lists to improve performance",
                        performanceType = PerformanceIssueType.MEMORY_LEAK,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 2000L,
                            memoryImpactMb = 100.0,
                            affectedOperations = listOf("List rendering")
                        )
                    ))
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeResourceManagement(context: AnalysisContext): List<PerformanceIssue> {
        val issues = mutableListOf<PerformanceIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for unclosed resources
            val resourcePatterns = mapOf(
                "FileInputStream" to "close()",
                "FileOutputStream" to "close()",
                "BufferedReader" to "close()",
                "Socket" to "close()",
                "Cursor" to "close()"
            )
            
            resourcePatterns.forEach { (resource, closeMethod) ->
                if (content.contains(resource) && !content.contains(closeMethod) && !content.contains("use {")) {
                    issues.add(PerformanceIssue(
                        id = "unclosed-resource-${resource}-${file.name.hashCode()}",
                        severity = Severity.ERROR,
                        description = "Unclosed $resource in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use try-with-resources or .use {} extension function",
                        performanceType = PerformanceIssueType.RESOURCE_WASTE,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = null,
                            memoryImpactMb = 10.0,
                            affectedOperations = listOf("Resource management")
                        )
                    ))
                }
            }
            
            // Check for string concatenation in loops
            if ((content.contains("for") || content.contains("while")) && content.contains("+")) {
                val stringConcatPattern = Regex("""(\w+)\s*\+=?\s*["']""")
                if (stringConcatPattern.containsMatchIn(content)) {
                    issues.add(PerformanceIssue(
                        id = "string-concat-in-loop-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "String concatenation in loop in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use StringBuilder for string concatenation in loops",
                        performanceType = PerformanceIssueType.INEFFICIENT_ALGORITHM,
                        impact = PerformanceImpact(
                            estimatedSlowdownMs = 500L,
                            memoryImpactMb = 20.0,
                            affectedOperations = listOf("String operations")
                        )
                    ))
                }
            }
        }
        
        return issues
    }
    
    private fun findKotlinFiles(directory: File): List<File> {
        val kotlinFiles = mutableListOf<File>()
        
        directory.walkTopDown()
            .filter { it.isFile && (it.extension == "kt" || it.extension == "java") }
            .filter { !it.path.contains("build/") }
            .forEach { kotlinFiles.add(it) }
        
        return kotlinFiles
    }
}