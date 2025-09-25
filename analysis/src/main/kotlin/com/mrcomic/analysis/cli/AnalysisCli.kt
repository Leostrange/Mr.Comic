package com.mrcomic.analysis.cli

import com.mrcomic.analysis.analyzer.architecture.ArchitectureAnalyzer
import com.mrcomic.analysis.analyzer.dependency.DependencyAnalyzer
import com.mrcomic.analysis.analyzer.performance.PerformanceAnalyzer
import com.mrcomic.analysis.analyzer.quality.CodeQualityAnalyzer
import com.mrcomic.analysis.analyzer.security.SecurityAnalyzer
import com.mrcomic.analysis.config.AnalysisConfig
import com.mrcomic.analysis.config.ConfigLoader
import com.mrcomic.analysis.core.*
import com.mrcomic.analysis.fix.DefaultAutoFixGenerator
import com.mrcomic.analysis.fix.DefaultFixApplicator
import com.mrcomic.analysis.report.ReportGeneratorFactory
import com.mrcomic.analysis.report.ReportFormat
import java.io.File
import kotlin.system.exitProcess

/**
 * Command-line interface for the analysis system.
 */
class AnalysisCli {
    
    private val configLoader = ConfigLoader()
    private val reportGeneratorFactory = ReportGeneratorFactory()
    
    suspend fun main(args: Array<String>) {
        try {
            val command = parseArgs(args)
            executeCommand(command)
        } catch (e: Exception) {
            println("Error: ${e.message}")
            printUsage()
            exitProcess(1)
        }
    }
    
    private fun parseArgs(args: Array<String>): CliCommand {
        if (args.isEmpty()) {
            return CliCommand.Help
        }
        
        return when (args[0]) {
            "analyze" -> parseAnalyzeCommand(args.drop(1))
            "fix" -> parseFixCommand(args.drop(1))
            "report" -> parseReportCommand(args.drop(1))
            "help", "--help", "-h" -> CliCommand.Help
            "version", "--version", "-v" -> CliCommand.Version
            else -> throw IllegalArgumentException("Unknown command: ${args[0]}")
        }
    }
    
    private fun parseAnalyzeCommand(args: List<String>): CliCommand.Analyze {
        var projectPath = "."
        var configPath: String? = null
        var outputPath = "analysis-output"
        var reportFormat = ReportFormat.CONSOLE
        var analyzers = emptySet<String>()
        
        var i = 0
        while (i < args.size) {
            when (args[i]) {
                "--project", "-p" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing project path")
                    projectPath = args[++i]
                }
                "--config", "-c" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing config path")
                    configPath = args[++i]
                }
                "--output", "-o" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing output path")
                    outputPath = args[++i]
                }
                "--format", "-f" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing format")
                    reportFormat = ReportFormat.valueOf(args[++i].uppercase())
                }
                "--analyzers", "-a" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing analyzers")
                    analyzers = args[++i].split(",").toSet()
                }
                else -> throw IllegalArgumentException("Unknown option: ${args[i]}")
            }
            i++
        }
        
        return CliCommand.Analyze(projectPath, configPath, outputPath, reportFormat, analyzers)
    }
    
    private fun parseFixCommand(args: List<String>): CliCommand.Fix {
        var projectPath = "."
        var planPath: String? = null
        var interactive = false
        
        var i = 0
        while (i < args.size) {
            when (args[i]) {
                "--project", "-p" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing project path")
                    projectPath = args[++i]
                }
                "--plan" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing plan path")
                    planPath = args[++i]
                }
                "--interactive", "-i" -> {
                    interactive = true
                }
                else -> throw IllegalArgumentException("Unknown option: ${args[i]}")
            }
            i++
        }
        
        return CliCommand.Fix(projectPath, planPath, interactive)
    }
    
    private fun parseReportCommand(args: List<String>): CliCommand.Report {
        var analysisPath: String? = null
        var outputPath = "report"
        var format = ReportFormat.HTML
        
        var i = 0
        while (i < args.size) {
            when (args[i]) {
                "--analysis" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing analysis path")
                    analysisPath = args[++i]
                }
                "--output", "-o" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing output path")
                    outputPath = args[++i]
                }
                "--format", "-f" -> {
                    if (i + 1 >= args.size) throw IllegalArgumentException("Missing format")
                    format = ReportFormat.valueOf(args[++i].uppercase())
                }
                else -> throw IllegalArgumentException("Unknown option: ${args[i]}")
            }
            i++
        }
        
        return CliCommand.Report(analysisPath, outputPath, format)
    }
    
    private suspend fun executeCommand(command: CliCommand) {
        when (command) {
            is CliCommand.Help -> printUsage()
            is CliCommand.Version -> printVersion()
            is CliCommand.Analyze -> executeAnalyze(command)
            is CliCommand.Fix -> executeFix(command)
            is CliCommand.Report -> executeReport(command)
        }
    }
    
    private suspend fun executeAnalyze(command: CliCommand.Analyze) {
        println("🔍 Starting analysis of project: ${command.projectPath}")
        
        val projectRoot = File(command.projectPath)
        if (!projectRoot.exists()) {
            throw IllegalArgumentException("Project path does not exist: ${command.projectPath}")
        }
        
        // Load configuration
        val config = if (command.configPath != null) {
            configLoader.loadFromFile(File(command.configPath))
        } else {
            configLoader.loadConfig(projectRoot)
        }
        
        // Override analyzers if specified
        val finalConfig = if (command.analyzers.isNotEmpty()) {
            config.copy(enabledAnalyzers = command.analyzers)
        } else {
            config
        }
        
        // Set up analyzer registry
        val analyzerRegistry = AnalyzerRegistry()
        analyzerRegistry.register(ArchitectureAnalyzer())
        analyzerRegistry.register(DependencyAnalyzer())
        analyzerRegistry.register(SecurityAnalyzer())
        analyzerRegistry.register(PerformanceAnalyzer())
        analyzerRegistry.register(CodeQualityAnalyzer())
        
        // Create project analyzer
        val projectAnalyzer = DefaultProjectAnalyzer(
            analyzerRegistry = analyzerRegistry,
            improvementPlanGenerator = DefaultImprovementPlanGenerator(),
            fixApplicator = DefaultFixApplicator(),
            logger = ConsoleAnalysisLogger()
        )
        
        // Run analysis
        val result = projectAnalyzer.analyzeProject(command.projectPath)
        val plan = projectAnalyzer.generateImprovementPlan(result)
        
        // Generate report
        val reportGenerator = reportGeneratorFactory.createGenerator(command.reportFormat)
        val outputFile = File(command.outputPath + "." + reportGenerator.getSupportedExtension())
        
        reportGenerator.generateReport(result, plan, outputFile)
        
        println("✅ Analysis completed!")
        println("📊 Overall Score: ${result.overallScore}/100")
        println("📄 Report saved to: ${outputFile.absolutePath}")
        
        // Exit with appropriate code
        val exitCode = when {
            result.overallScore >= 80 -> 0
            result.overallScore >= 60 -> 1
            else -> 2
        }
        exitProcess(exitCode)
    }
    
    private suspend fun executeFix(command: CliCommand.Fix) {
        println("🔧 Applying fixes to project: ${command.projectPath}")
        
        // Implementation for fix command
        println("Fix command not yet implemented")
    }
    
    private suspend fun executeReport(command: CliCommand.Report) {
        println("📄 Generating report")
        
        // Implementation for report command
        println("Report command not yet implemented")
    }
    
    private fun printUsage() {
        println("""
            Mr.Comic Analysis Tool
            
            Usage: analysis-cli <command> [options]
            
            Commands:
              analyze    Run analysis on a project
              fix        Apply fixes to a project
              report     Generate report from analysis results
              help       Show this help message
              version    Show version information
            
            Analyze Options:
              --project, -p <path>     Project path (default: current directory)
              --config, -c <path>      Configuration file path
              --output, -o <path>      Output file path (default: analysis-output)
              --format, -f <format>    Report format: CONSOLE, MARKDOWN, HTML, JSON, XML
              --analyzers, -a <list>   Comma-separated list of analyzers to run
            
            Fix Options:
              --project, -p <path>     Project path (default: current directory)
              --plan <path>            Improvement plan file path
              --interactive, -i        Interactive mode for fix selection
            
            Report Options:
              --analysis <path>        Analysis results file path
              --output, -o <path>      Output file path (default: report)
              --format, -f <format>    Report format: HTML, MARKDOWN, JSON, XML
            
            Examples:
              analysis-cli analyze --project /path/to/project --format HTML
              analysis-cli fix --project /path/to/project --interactive
              analysis-cli report --analysis results.json --format HTML
        """.trimIndent())
    }
    
    private fun printVersion() {
        println("Mr.Comic Analysis Tool v1.0.0")
    }
}

sealed class CliCommand {
    object Help : CliCommand()
    object Version : CliCommand()
    data class Analyze(
        val projectPath: String,
        val configPath: String?,
        val outputPath: String,
        val reportFormat: ReportFormat,
        val analyzers: Set<String>
    ) : CliCommand()
    data class Fix(
        val projectPath: String,
        val planPath: String?,
        val interactive: Boolean
    ) : CliCommand()
    data class Report(
        val analysisPath: String?,
        val outputPath: String,
        val format: ReportFormat
    ) : CliCommand()
}

// Placeholder implementations
class DefaultImprovementPlanGenerator : com.mrcomic.analysis.core.ImprovementPlanGenerator {
    override suspend fun generatePlan(analysisResult: com.mrcomic.analysis.model.AnalysisResult): com.mrcomic.analysis.model.ImprovementPlan {
        return com.mrcomic.analysis.model.ImprovementPlan(
            fixes = emptyList(),
            prioritizedActions = emptyList(),
            estimatedImpact = com.mrcomic.analysis.model.ImpactAssessment(
                expectedScoreImprovement = 0,
                riskLevel = com.mrcomic.analysis.model.RiskLevel.LOW,
                estimatedTimeHours = 0.0,
                affectedModules = emptyList()
            ),
            planMetadata = com.mrcomic.analysis.model.PlanMetadata(
                generatedTimestamp = System.currentTimeMillis(),
                basedOnAnalysis = "current",
                planVersion = "1.0"
            )
        )
    }
}