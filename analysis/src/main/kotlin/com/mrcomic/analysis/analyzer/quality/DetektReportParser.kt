package com.mrcomic.analysis.analyzer.quality

import com.mrcomic.analysis.model.CodeQualityIssue
import com.mrcomic.analysis.model.CodeQualityType
import com.mrcomic.analysis.model.Severity
import org.w3c.dom.Document
import org.w3c.dom.Element
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory

/**
 * Parses Detekt XML reports to extract static analysis issues.
 */
class DetektReportParser {
    
    /**
     * Parses a Detekt XML report file.
     */
    fun parseReport(reportFile: File): List<CodeQualityIssue> {
        if (!reportFile.exists()) {
            return emptyList()
        }
        
        val issues = mutableListOf<CodeQualityIssue>()
        
        try {
            val document = parseXmlFile(reportFile)
            val checkstyleElement = document.documentElement
            
            val files = checkstyleElement.getElementsByTagName("file")
            for (i in 0 until files.length) {
                val fileElement = files.item(i) as Element
                val fileName = fileElement.getAttribute("name")
                
                val errors = fileElement.getElementsByTagName("error")
                for (j in 0 until errors.length) {
                    val errorElement = errors.item(j) as Element
                    val issue = parseDetektIssue(errorElement, fileName)
                    issues.add(issue)
                }
            }
        } catch (e: Exception) {
            // Log error but don't fail the analysis
            println("Warning: Failed to parse Detekt report: ${e.message}")
        }
        
        return issues
    }
    
    /**
     * Parses multiple Detekt reports from different modules.
     */
    fun parseMultiModuleReports(reportFiles: Map<String, File>): List<CodeQualityIssue> {
        val allIssues = mutableListOf<CodeQualityIssue>()
        
        reportFiles.forEach { (moduleName, reportFile) ->
            val moduleIssues = parseReport(reportFile)
            
            // Prefix file paths with module name for clarity
            val prefixedIssues = moduleIssues.map { issue ->
                issue.copy(
                    id = "${moduleName}-${issue.id}",
                    location = if (issue.location.startsWith("/")) {
                        issue.location
                    } else {
                        "$moduleName/${issue.location}"
                    }
                )
            }
            
            allIssues.addAll(prefixedIssues)
        }
        
        return allIssues
    }
    
    private fun parseXmlFile(file: File): Document {
        val factory = DocumentBuilderFactory.newInstance()
        val builder = factory.newDocumentBuilder()
        return builder.parse(file)
    }
    
    private fun parseDetektIssue(errorElement: Element, fileName: String): CodeQualityIssue {
        val line = errorElement.getAttribute("line").toIntOrNull() ?: 0
        val column = errorElement.getAttribute("column").toIntOrNull() ?: 0
        val severity = errorElement.getAttribute("severity")
        val message = errorElement.getAttribute("message")
        val source = errorElement.getAttribute("source")
        
        val ruleName = extractRuleName(source)
        val qualityType = mapRuleToQualityType(ruleName)
        val issueSeverity = mapSeverityToIssueSeverity(severity)
        
        val location = if (line > 0) "$fileName:$line:$column" else fileName
        
        return CodeQualityIssue(
            id = "detekt-${ruleName.lowercase()}-${fileName.hashCode()}-$line",
            severity = issueSeverity,
            description = "$ruleName: $message",
            location = location,
            suggestion = generateSuggestion(ruleName, message),
            qualityType = qualityType,
            metrics = mapOf(
                "rule" to ruleName,
                "line" to line,
                "column" to column,
                "severity" to severity
            )
        )
    }
    
    private fun extractRuleName(source: String): String {
        return source.substringAfterLast(".").ifEmpty { source }
    }
    
    private fun mapRuleToQualityType(ruleName: String): CodeQualityType {
        return when {
            ruleName.contains("Complexity", ignoreCase = true) -> CodeQualityType.COMPLEXITY
            ruleName.contains("Duplicate", ignoreCase = true) -> CodeQualityType.DUPLICATION
            ruleName.contains("Style", ignoreCase = true) -> CodeQualityType.STYLE_VIOLATION
            ruleName.contains("Smell", ignoreCase = true) -> CodeQualityType.CODE_SMELL
            ruleName.contains("Naming", ignoreCase = true) -> CodeQualityType.STYLE_VIOLATION
            ruleName.contains("Format", ignoreCase = true) -> CodeQualityType.STYLE_VIOLATION
            else -> CodeQualityType.CODE_SMELL
        }
    }
    
    private fun mapSeverityToIssueSeverity(severity: String): Severity {
        return when (severity.lowercase()) {
            "error" -> Severity.ERROR
            "warning" -> Severity.WARNING
            "info" -> Severity.INFO
            else -> Severity.WARNING
        }
    }
    
    private fun generateSuggestion(ruleName: String, message: String): String {
        return when {
            ruleName.contains("ComplexMethod") -> 
                "Break down this method into smaller, more focused methods"
            
            ruleName.contains("LongMethod") -> 
                "Consider splitting this long method into smaller methods"
            
            ruleName.contains("LongParameterList") -> 
                "Reduce the number of parameters or use a data class to group related parameters"
            
            ruleName.contains("NestedBlockDepth") -> 
                "Reduce nesting by using early returns or extracting nested logic into separate methods"
            
            ruleName.contains("TooManyFunctions") -> 
                "Consider splitting this class into smaller, more focused classes"
            
            ruleName.contains("LargeClass") -> 
                "Break down this large class into smaller, single-responsibility classes"
            
            ruleName.contains("DuplicatedCode") -> 
                "Extract the duplicated code into a shared method or class"
            
            ruleName.contains("MagicNumber") -> 
                "Replace magic numbers with named constants"
            
            ruleName.contains("UnusedImport") -> 
                "Remove unused imports to keep the code clean"
            
            ruleName.contains("UnusedPrivateProperty") -> 
                "Remove unused private properties or make them public if needed elsewhere"
            
            ruleName.contains("EmptyFunctionBlock") -> 
                "Implement the function body or add a TODO comment explaining why it's empty"
            
            ruleName.contains("ReturnCount") -> 
                "Reduce the number of return statements by consolidating logic"
            
            ruleName.contains("StringLiteralDuplication") -> 
                "Extract repeated string literals into constants"
            
            ruleName.contains("SwallowedException") -> 
                "Handle exceptions properly instead of swallowing them"
            
            else -> "Follow Detekt recommendations to improve code quality: $message"
        }
    }
}

/**
 * Represents a Detekt rule category for better organization.
 */
enum class DetektRuleCategory {
    COMPLEXITY,
    STYLE,
    POTENTIAL_BUGS,
    PERFORMANCE,
    NAMING,
    COMMENTS,
    EMPTY_BLOCKS,
    EXCEPTIONS
}

/**
 * Maps Detekt rules to categories for better analysis.
 */
object DetektRuleMapper {
    
    private val ruleCategories = mapOf(
        "ComplexMethod" to DetektRuleCategory.COMPLEXITY,
        "LongMethod" to DetektRuleCategory.COMPLEXITY,
        "LongParameterList" to DetektRuleCategory.COMPLEXITY,
        "NestedBlockDepth" to DetektRuleCategory.COMPLEXITY,
        "TooManyFunctions" to DetektRuleCategory.COMPLEXITY,
        "LargeClass" to DetektRuleCategory.COMPLEXITY,
        
        "MagicNumber" to DetektRuleCategory.STYLE,
        "UnusedImport" to DetektRuleCategory.STYLE,
        "UnusedPrivateProperty" to DetektRuleCategory.STYLE,
        "WildcardImport" to DetektRuleCategory.STYLE,
        "MaxLineLength" to DetektRuleCategory.STYLE,
        
        "EmptyFunctionBlock" to DetektRuleCategory.EMPTY_BLOCKS,
        "EmptyClassBlock" to DetektRuleCategory.EMPTY_BLOCKS,
        "EmptyIfBlock" to DetektRuleCategory.EMPTY_BLOCKS,
        
        "SwallowedException" to DetektRuleCategory.EXCEPTIONS,
        "TooGenericExceptionCaught" to DetektRuleCategory.EXCEPTIONS,
        "ThrowingExceptionsWithoutMessageOrCause" to DetektRuleCategory.EXCEPTIONS,
        
        "ClassNaming" to DetektRuleCategory.NAMING,
        "FunctionNaming" to DetektRuleCategory.NAMING,
        "VariableNaming" to DetektRuleCategory.NAMING,
        "PackageNaming" to DetektRuleCategory.NAMING
    )
    
    fun getCategoryForRule(ruleName: String): DetektRuleCategory {
        return ruleCategories[ruleName] ?: DetektRuleCategory.STYLE
    }
    
    fun getRulesForCategory(category: DetektRuleCategory): List<String> {
        return ruleCategories.filterValues { it == category }.keys.toList()
    }
}