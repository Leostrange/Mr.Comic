package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.AnalysisResult
import com.mrcomic.analysis.model.ImprovementPlan
import java.io.File

/**
 * Interface for generating analysis reports in various formats.
 */
interface ReportGenerator {
    /**
     * Generates a report from analysis results.
     */
    suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    )
    
    /**
     * Gets the supported file extension for this generator.
     */
    fun getSupportedExtension(): String
    
    /**
     * Gets the MIME type for the generated report.
     */
    fun getMimeType(): String
}

/**
 * Factory for creating report generators.
 */
class ReportGeneratorFactory {
    
    fun createGenerator(format: ReportFormat): ReportGenerator {
        return when (format) {
            ReportFormat.MARKDOWN -> MarkdownReportGenerator()
            ReportFormat.HTML -> HtmlReportGenerator()
            ReportFormat.JSON -> JsonReportGenerator()
            ReportFormat.CONSOLE -> ConsoleReportGenerator()
            ReportFormat.XML -> XmlReportGenerator()
        }
    }
    
    fun getSupportedFormats(): List<ReportFormat> {
        return ReportFormat.values().toList()
    }
}

enum class ReportFormat {
    MARKDOWN,
    HTML,
    JSON,
    XML,
    CONSOLE
}