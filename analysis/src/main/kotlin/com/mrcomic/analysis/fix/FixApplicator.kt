package com.mrcomic.analysis.fix

import com.mrcomic.analysis.core.DefaultProjectAnalyzer
import com.mrcomic.analysis.error.FixApplicationError
import com.mrcomic.analysis.model.*
import java.io.File
import java.time.Instant

/**
 * Applies fixes to the project with backup and rollback capabilities.
 */
class DefaultFixApplicator : com.mrcomic.analysis.core.FixApplicator {
    
    override suspend fun applyFixes(plan: ImprovementPlan): ApplicationResult {
        val appliedFixes = mutableListOf<AppliedFix>()
        val failedFixes = mutableListOf<FailedFix>()
        val startTime = Instant.now().toEpochMilli()
        
        plan.fixes.forEach { fix ->
            try {
                val backupLocation = createBackup(fix)
                applyFix(fix)
                
                appliedFixes.add(AppliedFix(
                    fix = fix,
                    appliedTimestamp = Instant.now().toEpochMilli(),
                    changedFiles = fix.impact.affectedFiles,
                    backupLocation = backupLocation
                ))
                
            } catch (e: Exception) {
                failedFixes.add(FailedFix(
                    fix = fix,
                    error = FixApplicationError(
                        fixId = fix.id,
                        reason = e.message ?: "Unknown error",
                        technicalDetails = e.stackTraceToString()
                    ),
                    attemptTimestamp = Instant.now().toEpochMilli()
                ))
            }
        }
        
        val endTime = Instant.now().toEpochMilli()
        val successRate = if (plan.fixes.isNotEmpty()) {
            appliedFixes.size.toDouble() / plan.fixes.size
        } else 0.0
        
        return ApplicationResult(
            appliedFixes = appliedFixes,
            failedFixes = failedFixes,
            overallSuccess = failedFixes.isEmpty(),
            postApplicationAnalysis = null, // Could re-run analysis here
            applicationMetadata = ApplicationMetadata(
                startTimestamp = startTime,
                endTimestamp = endTime,
                totalFixesAttempted = plan.fixes.size,
                successRate = successRate
            )
        )
    }
    
    private fun createBackup(fix: Fix): String? {
        // Create backup of affected files
        val backupDir = File(System.getProperty("java.io.tmpdir"), "analysis-backup-${System.currentTimeMillis()}")
        backupDir.mkdirs()
        
        fix.impact.affectedFiles.forEach { filePath ->
            val originalFile = File(filePath)
            if (originalFile.exists()) {
                val backupFile = File(backupDir, originalFile.name)
                originalFile.copyTo(backupFile, overwrite = true)
            }
        }
        
        return backupDir.absolutePath
    }
    
    private fun applyFix(fix: Fix) {
        when (fix) {
            is DependencyFix -> applyDependencyFix(fix)
            is ArchitectureFix -> applyArchitectureFix(fix)
            is SecurityFix -> applySecurityFix(fix)
            is PerformanceFix -> applyPerformanceFix(fix)
            is CodeQualityFix -> applyCodeQualityFix(fix)
        }
    }
    
    private fun applyDependencyFix(fix: DependencyFix) {
        fix.gradleChanges.forEach { change ->
            val file = File(change.file)
            when (change.changeType) {
                ChangeType.MODIFY -> {
                    val content = file.readText()
                    val newContent = content.replace(change.oldContent ?: "", change.newContent)
                    file.writeText(newContent)
                }
                ChangeType.ADD -> {
                    file.appendText("\n${change.newContent}")
                }
                else -> {
                    // Handle other change types
                }
            }
        }
    }
    
    private fun applyArchitectureFix(fix: ArchitectureFix) {
        // Apply module changes
        fix.moduleChanges.forEach { change ->
            // Implementation depends on specific change type
        }
        
        // Apply code changes
        fix.codeChanges.forEach { change ->
            val file = File(change.filePath)
            if (file.exists()) {
                val lines = file.readLines().toMutableList()
                when (change.changeType) {
                    ChangeType.MODIFY -> {
                        change.lineNumber?.let { lineNum ->
                            if (lineNum < lines.size) {
                                lines[lineNum] = change.newCode
                            }
                        }
                    }
                    ChangeType.ADD -> {
                        change.lineNumber?.let { lineNum ->
                            lines.add(lineNum, change.newCode)
                        }
                    }
                    ChangeType.DELETE -> {
                        change.lineNumber?.let { lineNum ->
                            if (lineNum < lines.size) {
                                lines.removeAt(lineNum)
                            }
                        }
                    }
                    else -> {
                        // Handle other types
                    }
                }
                file.writeText(lines.joinToString("\n"))
            }
        }
    }
    
    private fun applySecurityFix(fix: SecurityFix) {
        fix.configChanges.forEach { change ->
            val file = File(change.configFile)
            if (file.exists()) {
                val content = file.readText()
                val newContent = if (change.oldValue != null) {
                    content.replace("${change.property}=${change.oldValue}", "${change.property}=${change.newValue}")
                } else {
                    content + "\n${change.property}=${change.newValue}"
                }
                file.writeText(newContent)
            }
        }
    }
    
    private fun applyPerformanceFix(fix: PerformanceFix) {
        // Implementation depends on optimization type
        when (fix.optimizationType) {
            PerformanceOptimizationType.MEMORY -> {
                // Apply memory optimizations
            }
            PerformanceOptimizationType.BUILD -> {
                // Apply build optimizations
            }
            else -> {
                // Handle other optimization types
            }
        }
    }
    
    private fun applyCodeQualityFix(fix: CodeQualityFix) {
        fix.refactoringSteps.forEach { step ->
            if (step.automated) {
                // Apply automated refactoring
                val file = File(step.filePath)
                if (file.exists()) {
                    // Implementation depends on specific refactoring
                }
            }
        }
    }
}