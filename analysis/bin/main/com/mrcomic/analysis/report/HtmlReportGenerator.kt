package com.mrcomic.analysis.report

import com.mrcomic.analysis.model.*
import java.io.File

/**
 * Generates analysis reports in HTML format with interactive elements.
 */
class HtmlReportGenerator : ReportGenerator {
    
    override suspend fun generateReport(
        analysisResult: AnalysisResult,
        improvementPlan: ImprovementPlan?,
        outputFile: File
    ) {
        val content = buildString {
            appendLine("<!DOCTYPE html>")
            appendLine("<html lang=\"en\">")
            appendLine("<head>")
            appendLine("    <meta charset=\"UTF-8\">")
            appendLine("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">")
            appendLine("    <title>Mr.Comic Analysis Report</title>")
            appendLine("    <style>")
            appendCss()
            appendLine("    </style>")
            appendLine("</head>")
            appendLine("<body>")
            
            // Header
            appendLine("    <header class=\"header\">")
            appendLine("        <h1>Mr.Comic Project Analysis Report</h1>")
            appendLine("        <div class=\"score-badge score-${getScoreClass(analysisResult.overallScore)}\">")
            appendLine("            ${analysisResult.overallScore}/100")
            appendLine("        </div>")
            appendLine("    </header>")
            
            // Navigation
            appendLine("    <nav class=\"nav\">")
            appendLine("        <a href=\"#summary\">Summary</a>")
            appendLine("        <a href=\"#issues\">Issues</a>")
            appendLine("        <a href=\"#coverage\">Coverage</a>")
            if (improvementPlan != null) {
                appendLine("        <a href=\"#plan\">Improvement Plan</a>")
            }
            appendLine("    </nav>")
            
            appendLine("    <main class=\"main\">")
            
            // Summary Section
            appendSummarySection(analysisResult)
            
            // Issues Section
            appendIssuesSection(analysisResult)
            
            // Coverage Section
            appendCoverageSection(analysisResult.testCoverage)
            
            // Improvement Plan Section
            if (improvementPlan != null) {
                appendImprovementPlanSection(improvementPlan)
            }
            
            appendLine("    </main>")
            
            // JavaScript
            appendLine("    <script>")
            appendJavaScript()
            appendLine("    </script>")
            
            appendLine("</body>")
            appendLine("</html>")
        }
        
        outputFile.parentFile?.mkdirs()
        outputFile.writeText(content)
    }
    
    override fun getSupportedExtension(): String = "html"
    override fun getMimeType(): String = "text/html"
    
    private fun StringBuilder.appendCss() {
        appendLine("""
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; line-height: 1.6; color: #333; }
        .header { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; padding: 2rem; text-align: center; position: relative; }
        .score-badge { position: absolute; top: 1rem; right: 2rem; background: rgba(255,255,255,0.2); padding: 0.5rem 1rem; border-radius: 50px; font-size: 1.2rem; font-weight: bold; }
        .score-excellent { background: #4CAF50 !important; }
        .score-good { background: #FF9800 !important; }
        .score-fair { background: #FF5722 !important; }
        .score-poor { background: #F44336 !important; }
        .nav { background: #f8f9fa; padding: 1rem; text-align: center; border-bottom: 1px solid #dee2e6; }
        .nav a { margin: 0 1rem; padding: 0.5rem 1rem; text-decoration: none; color: #495057; border-radius: 4px; transition: background 0.3s; }
        .nav a:hover { background: #e9ecef; }
        .main { max-width: 1200px; margin: 0 auto; padding: 2rem; }
        .section { margin-bottom: 3rem; }
        .section h2 { color: #495057; margin-bottom: 1rem; padding-bottom: 0.5rem; border-bottom: 2px solid #dee2e6; }
        .card { background: white; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); margin-bottom: 1rem; overflow: hidden; }
        .card-header { background: #f8f9fa; padding: 1rem; border-bottom: 1px solid #dee2e6; font-weight: bold; }
        .card-body { padding: 1rem; }
        .issue { margin-bottom: 1rem; padding: 1rem; border-left: 4px solid #dee2e6; background: #f8f9fa; }
        .issue.critical { border-left-color: #dc3545; background: #f8d7da; }
        .issue.error { border-left-color: #fd7e14; background: #ffeaa7; }
        .issue.warning { border-left-color: #ffc107; background: #fff3cd; }
        .issue.info { border-left-color: #17a2b8; background: #d1ecf1; }
        .issue-title { font-weight: bold; margin-bottom: 0.5rem; }
        .issue-location { color: #6c757d; font-size: 0.9rem; margin-bottom: 0.5rem; }
        .issue-suggestion { color: #495057; font-style: italic; }
        .stats-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin-bottom: 2rem; }
        .stat-card { background: white; padding: 1.5rem; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); text-align: center; }
        .stat-number { font-size: 2rem; font-weight: bold; color: #495057; }
        .stat-label { color: #6c757d; margin-top: 0.5rem; }
        .progress-bar { background: #e9ecef; height: 20px; border-radius: 10px; overflow: hidden; margin: 0.5rem 0; }
        .progress-fill { height: 100%; background: linear-gradient(90deg, #28a745, #20c997); transition: width 0.3s ease; }
        .filter-buttons { margin-bottom: 1rem; }
        .filter-btn { background: #6c757d; color: white; border: none; padding: 0.5rem 1rem; margin-right: 0.5rem; border-radius: 4px; cursor: pointer; }
        .filter-btn.active { background: #495057; }
        .hidden { display: none; }
        """.trimIndent())
    }
    
    private fun StringBuilder.appendSummarySection(result: AnalysisResult) {
        appendLine("        <section id=\"summary\" class=\"section\">")
        appendLine("            <h2>Summary</h2>")
        appendLine("            <div class=\"stats-grid\">")
        
        val totalIssues = getTotalIssues(result)
        val criticalIssues = getAllIssues(result).count { it.severity == Severity.CRITICAL }
        
        appendLine("                <div class=\"stat-card\">")
        appendLine("                    <div class=\"stat-number\">${result.overallScore}</div>")
        appendLine("                    <div class=\"stat-label\">Overall Score</div>")
        appendLine("                </div>")
        
        appendLine("                <div class=\"stat-card\">")
        appendLine("                    <div class=\"stat-number\">$totalIssues</div>")
        appendLine("                    <div class=\"stat-label\">Total Issues</div>")
        appendLine("                </div>")
        
        appendLine("                <div class=\"stat-card\">")
        appendLine("                    <div class=\"stat-number\">$criticalIssues</div>")
        appendLine("                    <div class=\"stat-label\">Critical Issues</div>")
        appendLine("                </div>")
        
        appendLine("                <div class=\"stat-card\">")
        appendLine("                    <div class=\"stat-number\">${String.format("%.1f", result.testCoverage.overallCoverage)}%</div>")
        appendLine("                    <div class=\"stat-label\">Test Coverage</div>")
        appendLine("                </div>")
        
        appendLine("            </div>")
        appendLine("        </section>")
    }
    
    private fun StringBuilder.appendIssuesSection(result: AnalysisResult) {
        appendLine("        <section id=\"issues\" class=\"section\">")
        appendLine("            <h2>Issues</h2>")
        
        // Filter buttons
        appendLine("            <div class=\"filter-buttons\">")
        appendLine("                <button class=\"filter-btn active\" onclick=\"filterIssues('all')\">All</button>")
        appendLine("                <button class=\"filter-btn\" onclick=\"filterIssues('critical')\">Critical</button>")
        appendLine("                <button class=\"filter-btn\" onclick=\"filterIssues('error')\">Error</button>")
        appendLine("                <button class=\"filter-btn\" onclick=\"filterIssues('warning')\">Warning</button>")
        appendLine("            </div>")
        
        // Issues by category
        val categories = listOf(
            "Architecture" to result.architectureIssues,
            "Dependencies" to result.dependencyIssues,
            "Security" to result.securityIssues,
            "Performance" to result.performanceIssues,
            "Code Quality" to result.codeQualityIssues
        )
        
        categories.forEach { (category, issues) ->
            if (issues.isNotEmpty()) {
                appendLine("            <div class=\"card\">")
                appendLine("                <div class=\"card-header\">$category Issues (${issues.size})</div>")
                appendLine("                <div class=\"card-body\">")
                
                issues.forEach { issue ->
                    val severityClass = issue.severity.name.lowercase()
                    appendLine("                    <div class=\"issue $severityClass\" data-severity=\"$severityClass\">")
                    appendLine("                        <div class=\"issue-title\">${getSeverityIcon(issue.severity)} ${issue.description}</div>")
                    appendLine("                        <div class=\"issue-location\">📍 ${issue.location}</div>")
                    if (issue.suggestion != null) {
                        appendLine("                        <div class=\"issue-suggestion\">💡 ${issue.suggestion}</div>")
                    }
                    appendLine("                    </div>")
                }
                
                appendLine("                </div>")
                appendLine("            </div>")
            }
        }
        
        appendLine("        </section>")
    }
    
    private fun StringBuilder.appendCoverageSection(coverage: TestCoverageReport) {
        appendLine("        <section id=\"coverage\" class=\"section\">")
        appendLine("            <h2>Test Coverage</h2>")
        appendLine("            <div class=\"card\">")
        appendLine("                <div class=\"card-header\">Overall Coverage: ${String.format("%.1f", coverage.overallCoverage)}%</div>")
        appendLine("                <div class=\"card-body\">")
        appendLine("                    <div class=\"progress-bar\">")
        appendLine("                        <div class=\"progress-fill\" style=\"width: ${coverage.overallCoverage}%\"></div>")
        appendLine("                    </div>")
        
        if (coverage.moduleCoverage.isNotEmpty()) {
            appendLine("                    <h4>Coverage by Module</h4>")
            coverage.moduleCoverage.forEach { (module, moduleCoverage) ->
                appendLine("                    <div style=\"margin: 1rem 0;\">")
                appendLine("                        <div><strong>$module</strong>: ${String.format("%.1f", moduleCoverage.lineCoverage)}%</div>")
                appendLine("                        <div class=\"progress-bar\" style=\"height: 10px;\">")
                appendLine("                            <div class=\"progress-fill\" style=\"width: ${moduleCoverage.lineCoverage}%\"></div>")
                appendLine("                        </div>")
                appendLine("                    </div>")
            }
        }
        
        appendLine("                </div>")
        appendLine("            </div>")
        appendLine("        </section>")
    }
    
    private fun StringBuilder.appendImprovementPlanSection(plan: ImprovementPlan) {
        appendLine("        <section id=\"plan\" class=\"section\">")
        appendLine("            <h2>Improvement Plan</h2>")
        appendLine("            <div class=\"card\">")
        appendLine("                <div class=\"card-header\">Expected Impact: +${plan.estimatedImpact.expectedScoreImprovement} points</div>")
        appendLine("                <div class=\"card-body\">")
        appendLine("                    <p><strong>Risk Level:</strong> ${plan.estimatedImpact.riskLevel}</p>")
        appendLine("                    <p><strong>Estimated Time:</strong> ${plan.estimatedImpact.estimatedTimeHours} hours</p>")
        
        if (plan.prioritizedActions.isNotEmpty()) {
            appendLine("                    <h4>Priority Actions</h4>")
            plan.prioritizedActions.take(10).forEach { action ->
                val priorityClass = action.priority.name.lowercase()
                appendLine("                    <div class=\"issue $priorityClass\">")
                appendLine("                        <div class=\"issue-title\">${getPriorityIcon(action.priority)} ${action.title}</div>")
                appendLine("                        <div class=\"issue-location\">Category: ${action.category}</div>")
                appendLine("                        <div class=\"issue-suggestion\">${action.description}</div>")
                appendLine("                        <div style=\"margin-top: 0.5rem; color: #6c757d;\">Estimated: ${action.estimatedEffort.timeHours}h</div>")
                appendLine("                    </div>")
            }
        }
        
        appendLine("                </div>")
        appendLine("            </div>")
        appendLine("        </section>")
    }
    
    private fun StringBuilder.appendJavaScript() {
        appendLine("""
        function filterIssues(severity) {
            const issues = document.querySelectorAll('.issue');
            const buttons = document.querySelectorAll('.filter-btn');
            
            // Update button states
            buttons.forEach(btn => btn.classList.remove('active'));
            event.target.classList.add('active');
            
            // Filter issues
            issues.forEach(issue => {
                if (severity === 'all' || issue.dataset.severity === severity) {
                    issue.style.display = 'block';
                } else {
                    issue.style.display = 'none';
                }
            });
        }
        
        // Smooth scrolling for navigation
        document.querySelectorAll('.nav a').forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                target.scrollIntoView({ behavior: 'smooth' });
            });
        });
        """.trimIndent())
    }
    
    private fun getTotalIssues(result: AnalysisResult): Int {
        return result.architectureIssues.size + result.dependencyIssues.size + 
               result.securityIssues.size + result.performanceIssues.size + 
               result.codeQualityIssues.size
    }
    
    private fun getAllIssues(result: AnalysisResult): List<Issue> {
        return listOf(
            result.architectureIssues,
            result.dependencyIssues,
            result.securityIssues,
            result.performanceIssues,
            result.codeQualityIssues
        ).flatten()
    }
    
    private fun getScoreClass(score: Int): String {
        return when {
            score >= 90 -> "excellent"
            score >= 80 -> "good"
            score >= 70 -> "fair"
            else -> "poor"
        }
    }
    
    private fun getSeverityIcon(severity: Severity): String {
        return when (severity) {
            Severity.CRITICAL -> "🔴"
            Severity.ERROR -> "🟠"
            Severity.WARNING -> "🟡"
            Severity.INFO -> "🔵"
        }
    }
    
    private fun getPriorityIcon(priority: Priority): String {
        return when (priority) {
            Priority.CRITICAL -> "🔴"
            Priority.HIGH -> "🟠"
            Priority.MEDIUM -> "🟡"
            Priority.LOW -> "🔵"
        }
    }
}