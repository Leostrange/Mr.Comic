package com.mrcomic.analysis.analyzer.quality

import com.mrcomic.analysis.model.CoverageMetrics
import com.mrcomic.analysis.model.ModuleCoverage
import com.mrcomic.analysis.model.TestCoverageReport
import com.mrcomic.analysis.model.UncoveredFile
import com.mrcomic.analysis.model.FileImportance
import com.mrcomic.analysis.model.CriticalUncoveredCode
import org.w3c.dom.Document
import org.w3c.dom.Element
import org.w3c.dom.NodeList
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory

/**
 * Parses JaCoCo XML reports to extract test coverage information.
 */
class JacocoReportParser {
    
    /**
     * Parses a JaCoCo XML report file.
     */
    fun parseReport(reportFile: File): TestCoverageReport {
        if (!reportFile.exists()) {
            return createEmptyReport()
        }
        
        val document = parseXmlFile(reportFile)
        val reportElement = document.documentElement
        
        val moduleCoverage = parseModuleCoverage(reportElement)
        val uncoveredFiles = parseUncoveredFiles(reportElement)
        val criticalUncoveredCode = parseCriticalUncoveredCode(reportElement)
        val coverageMetrics = parseCoverageMetrics(reportElement)
        
        val overallCoverage = calculateOverallCoverage(coverageMetrics)
        
        return TestCoverageReport(
            overallCoverage = overallCoverage,
            moduleCoverage = moduleCoverage,
            uncoveredFiles = uncoveredFiles,
            criticalUncoveredCode = criticalUncoveredCode,
            coverageMetrics = coverageMetrics
        )
    }
    
    /**
     * Parses multiple JaCoCo reports from different modules.
     */
    fun parseMultiModuleReports(reportFiles: Map<String, File>): TestCoverageReport {
        val allModuleCoverage = mutableMapOf<String, ModuleCoverage>()
        val allUncoveredFiles = mutableListOf<UncoveredFile>()
        val allCriticalUncoveredCode = mutableListOf<CriticalUncoveredCode>()
        
        var totalLines = 0
        var coveredLines = 0
        var totalBranches = 0
        var coveredBranches = 0
        var totalMethods = 0
        var coveredMethods = 0
        
        reportFiles.forEach { (moduleName, reportFile) ->
            if (reportFile.exists()) {
                val moduleReport = parseReport(reportFile)
                
                // Add module coverage
                moduleReport.moduleCoverage.forEach { (name, coverage) ->
                    allModuleCoverage["$moduleName:$name"] = coverage
                }
                
                // Add uncovered files
                allUncoveredFiles.addAll(moduleReport.uncoveredFiles.map { file ->
                    file.copy(filePath = "$moduleName/${file.filePath}")
                })
                
                // Add critical uncovered code
                allCriticalUncoveredCode.addAll(moduleReport.criticalUncoveredCode.map { code ->
                    code.copy(filePath = "$moduleName/${code.filePath}")
                })
                
                // Aggregate metrics
                totalLines += moduleReport.coverageMetrics.totalLines
                coveredLines += moduleReport.coverageMetrics.coveredLines
                totalBranches += moduleReport.coverageMetrics.totalBranches
                coveredBranches += moduleReport.coverageMetrics.coveredBranches
                totalMethods += moduleReport.coverageMetrics.totalMethods
                coveredMethods += moduleReport.coverageMetrics.coveredMethods
            }
        }
        
        val aggregatedMetrics = CoverageMetrics(
            totalLines = totalLines,
            coveredLines = coveredLines,
            totalBranches = totalBranches,
            coveredBranches = coveredBranches,
            totalMethods = totalMethods,
            coveredMethods = coveredMethods
        )
        
        val overallCoverage = calculateOverallCoverage(aggregatedMetrics)
        
        return TestCoverageReport(
            overallCoverage = overallCoverage,
            moduleCoverage = allModuleCoverage,
            uncoveredFiles = allUncoveredFiles,
            criticalUncoveredCode = allCriticalUncoveredCode,
            coverageMetrics = aggregatedMetrics
        )
    }
    
    private fun parseXmlFile(file: File): Document {
        val factory = DocumentBuilderFactory.newInstance()
        val builder = factory.newDocumentBuilder()
        return builder.parse(file)
    }
    
    private fun parseModuleCoverage(reportElement: Element): Map<String, ModuleCoverage> {
        val moduleCoverage = mutableMapOf<String, ModuleCoverage>()
        
        val packages = reportElement.getElementsByTagName("package")
        for (i in 0 until packages.length) {
            val packageElement = packages.item(i) as Element
            val packageName = packageElement.getAttribute("name")
            
            val counters = packageElement.getElementsByTagName("counter")
            val coverageData = parseCounters(counters)
            
            val sourceFiles = packageElement.getElementsByTagName("sourcefile")
            val sourceFileCount = sourceFiles.length
            
            // Count test methods (approximate)
            val testCount = countTestMethods(packageElement)
            
            moduleCoverage[packageName] = ModuleCoverage(
                moduleName = packageName,
                lineCoverage = coverageData["LINE"] ?: 0.0,
                branchCoverage = coverageData["BRANCH"] ?: 0.0,
                methodCoverage = coverageData["METHOD"] ?: 0.0,
                classCoverage = coverageData["CLASS"] ?: 0.0,
                testCount = testCount,
                sourceFileCount = sourceFileCount
            )
        }
        
        return moduleCoverage
    }
    
    private fun parseUncoveredFiles(reportElement: Element): List<UncoveredFile> {
        val uncoveredFiles = mutableListOf<UncoveredFile>()
        
        val sourceFiles = reportElement.getElementsByTagName("sourcefile")
        for (i in 0 until sourceFiles.length) {
            val sourceFile = sourceFiles.item(i) as Element
            val fileName = sourceFile.getAttribute("name")
            
            val counters = sourceFile.getElementsByTagName("counter")
            val coverageData = parseCounters(counters)
            
            val lineCoverage = coverageData["LINE"] ?: 0.0
            if (lineCoverage < 50.0) { // Consider files with <50% coverage as uncovered
                val lineCount = getCounterTotal(counters, "LINE")
                val complexity = getCounterTotal(counters, "COMPLEXITY")
                val importance = determineFileImportance(fileName)
                
                uncoveredFiles.add(UncoveredFile(
                    filePath = fileName,
                    lineCount = lineCount,
                    complexity = complexity,
                    importance = importance
                ))
            }
        }
        
        return uncoveredFiles
    }
    
    private fun parseCriticalUncoveredCode(reportElement: Element): List<CriticalUncoveredCode> {
        val criticalCode = mutableListOf<CriticalUncoveredCode>()
        
        val classes = reportElement.getElementsByTagName("class")
        for (i in 0 until classes.length) {
            val classElement = classes.item(i) as Element
            val className = classElement.getAttribute("name")
            
            val methods = classElement.getElementsByTagName("method")
            for (j in 0 until methods.length) {
                val method = methods.item(j) as Element
                val methodName = method.getAttribute("name")
                
                val counters = method.getElementsByTagName("counter")
                val lineCoverage = getCounterCoverage(counters, "LINE")
                
                if (lineCoverage == 0.0 && isCriticalMethod(methodName, className)) {
                    val lineCount = getCounterTotal(counters, "LINE")
                    
                    criticalCode.add(CriticalUncoveredCode(
                        filePath = className.replace("/", ".") + ".kt",
                        methodName = methodName,
                        lineNumbers = 1..lineCount, // Approximate line range
                        reason = "Critical method without test coverage"
                    ))
                }
            }
        }
        
        return criticalCode
    }
    
    private fun parseCoverageMetrics(reportElement: Element): CoverageMetrics {
        val counters = reportElement.getElementsByTagName("counter")
        
        return CoverageMetrics(
            totalLines = getCounterTotal(counters, "LINE"),
            coveredLines = getCounterCovered(counters, "LINE"),
            totalBranches = getCounterTotal(counters, "BRANCH"),
            coveredBranches = getCounterCovered(counters, "BRANCH"),
            totalMethods = getCounterTotal(counters, "METHOD"),
            coveredMethods = getCounterCovered(counters, "METHOD")
        )
    }
    
    private fun parseCounters(counters: NodeList): Map<String, Double> {
        val coverageData = mutableMapOf<String, Double>()
        
        for (i in 0 until counters.length) {
            val counter = counters.item(i) as Element
            val type = counter.getAttribute("type")
            val missed = counter.getAttribute("missed").toIntOrNull() ?: 0
            val covered = counter.getAttribute("covered").toIntOrNull() ?: 0
            val total = missed + covered
            
            val coverage = if (total > 0) (covered.toDouble() / total) * 100 else 0.0
            coverageData[type] = coverage
        }
        
        return coverageData
    }
    
    private fun getCounterTotal(counters: NodeList, type: String): Int {
        for (i in 0 until counters.length) {
            val counter = counters.item(i) as Element
            if (counter.getAttribute("type") == type) {
                val missed = counter.getAttribute("missed").toIntOrNull() ?: 0
                val covered = counter.getAttribute("covered").toIntOrNull() ?: 0
                return missed + covered
            }
        }
        return 0
    }
    
    private fun getCounterCovered(counters: NodeList, type: String): Int {
        for (i in 0 until counters.length) {
            val counter = counters.item(i) as Element
            if (counter.getAttribute("type") == type) {
                return counter.getAttribute("covered").toIntOrNull() ?: 0
            }
        }
        return 0
    }
    
    private fun getCounterCoverage(counters: NodeList, type: String): Double {
        val total = getCounterTotal(counters, type)
        val covered = getCounterCovered(counters, type)
        return if (total > 0) (covered.toDouble() / total) * 100 else 0.0
    }
    
    private fun countTestMethods(packageElement: Element): Int {
        // This is a simplified implementation
        // In reality, you'd need to analyze the actual test files
        val classes = packageElement.getElementsByTagName("class")
        var testCount = 0
        
        for (i in 0 until classes.length) {
            val classElement = classes.item(i) as Element
            val className = classElement.getAttribute("name")
            
            if (className.contains("Test") || className.contains("Spec")) {
                val methods = classElement.getElementsByTagName("method")
                testCount += methods.length
            }
        }
        
        return testCount
    }
    
    private fun determineFileImportance(fileName: String): FileImportance {
        return when {
            fileName.contains("Repository") || fileName.contains("UseCase") -> FileImportance.CRITICAL
            fileName.contains("ViewModel") || fileName.contains("Service") -> FileImportance.HIGH
            fileName.contains("Mapper") || fileName.contains("Util") -> FileImportance.MEDIUM
            else -> FileImportance.LOW
        }
    }
    
    private fun isCriticalMethod(methodName: String, className: String): Boolean {
        val criticalPatterns = listOf(
            "save", "delete", "update", "create",
            "login", "authenticate", "authorize",
            "encrypt", "decrypt", "validate",
            "process", "execute", "handle"
        )
        
        return criticalPatterns.any { pattern ->
            methodName.lowercase().contains(pattern) ||
            className.lowercase().contains(pattern)
        }
    }
    
    private fun calculateOverallCoverage(metrics: CoverageMetrics): Double {
        return if (metrics.totalLines > 0) {
            (metrics.coveredLines.toDouble() / metrics.totalLines) * 100
        } else {
            0.0
        }
    }
    
    private fun createEmptyReport(): TestCoverageReport {
        return TestCoverageReport(
            overallCoverage = 0.0,
            moduleCoverage = emptyMap(),
            uncoveredFiles = emptyList(),
            criticalUncoveredCode = emptyList(),
            coverageMetrics = CoverageMetrics(0, 0, 0, 0, 0, 0)
        )
    }
}