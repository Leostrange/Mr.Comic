package com.mrcomic.analysis.analyzer.security

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.SecurityIssue
import com.mrcomic.analysis.model.SecurityIssueType
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes encryption usage and data security in the Android project.
 */
class EncryptionAnalyzer : Analyzer {
    
    override val id = "encryption"
    override val name = "Encryption Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val insecureAlgorithms = setOf(
        "DES", "3DES", "RC4", "MD5", "SHA1"
    )
    
    private val secureAlgorithms = setOf(
        "AES", "RSA", "ECDSA", "SHA-256", "SHA-512", "PBKDF2"
    )
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing encryption and data security...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Analyze Keystore usage
            issues.addAll(analyzeKeystoreUsage(context))
            
            // Analyze database encryption
            issues.addAll(analyzeDatabaseEncryption(context))
            
            // Analyze cryptographic algorithms
            issues.addAll(analyzeCryptographicAlgorithms(context))
            
            // Analyze shared preferences security
            issues.addAll(analyzeSharedPreferencesSecurity(context))
            
            // Analyze file encryption
            issues.addAll(analyzeFileEncryption(context))
            
            context.logger.info("Encryption analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze encryption", e)
            issues.add(SecurityIssue(
                id = "encryption-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze encryption: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project structure is valid",
                securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                cveId = null
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return File(context.projectRoot, "android").exists()
    }
    
    private fun analyzeKeystoreUsage(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        var keystoreUsageFound = false
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for Android Keystore usage
            if (content.contains("KeyStore.getInstance(\"AndroidKeyStore\")") ||
                content.contains("KeyGenParameterSpec") ||
                content.contains("KeyGenerator.getInstance")) {
                keystoreUsageFound = true
                
                // Check for proper key generation parameters
                if (!content.contains("setEncryptionPaddings") ||
                    !content.contains("setBlockModes")) {
                    issues.add(SecurityIssue(
                        id = "incomplete-keystore-config-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "Incomplete Android Keystore configuration in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Specify encryption paddings and block modes for better security",
                        securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                        cveId = null
                    ))
                }
                
                // Check for user authentication requirement
                if (!content.contains("setUserAuthenticationRequired(true)") &&
                    content.contains("sensitive")) {
                    issues.add(SecurityIssue(
                        id = "missing-user-auth-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "Sensitive data encryption without user authentication requirement in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Consider requiring user authentication for sensitive key operations",
                        securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                        cveId = null
                    ))
                }
            }
            
            // Check for hardcoded encryption keys
            val hardcodedKeyPatterns = listOf(
                Regex("\"[A-Za-z0-9+/]{16,}={0,2}\""), // Base64 patterns
                Regex("\"[0-9a-fA-F]{32,}\""), // Hex patterns
                Regex("private.*key.*=.*\"[^\"]{16,}\"", RegexOption.IGNORE_CASE)
            )
            
            hardcodedKeyPatterns.forEach { pattern ->
                if (pattern.containsMatchIn(content)) {
                    issues.add(SecurityIssue(
                        id = "hardcoded-key-${file.name.hashCode()}",
                        severity = Severity.CRITICAL,
                        description = "Potential hardcoded encryption key found in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use Android Keystore or secure key derivation instead of hardcoded keys",
                        securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                        cveId = null
                    ))
                }
            }
        }
        
        // Check if sensitive data handling exists without Keystore
        val hasSensitiveData = kotlinFiles.any { file ->
            val content = file.readText()
            content.contains("password", ignoreCase = true) ||
            content.contains("token", ignoreCase = true) ||
            content.contains("secret", ignoreCase = true) ||
            content.contains("private", ignoreCase = true)
        }
        
        if (hasSensitiveData && !keystoreUsageFound) {
            issues.add(SecurityIssue(
                id = "missing-keystore-usage",
                severity = Severity.ERROR,
                description = "Sensitive data handling detected without Android Keystore usage",
                location = "project",
                suggestion = "Implement Android Keystore for secure key management",
                securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                cveId = null
            ))
        }
        
        return issues
    }
    
    private fun analyzeDatabaseEncryption(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        var databaseUsageFound = false
        var encryptionFound = false
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for Room database usage
            if (content.contains("@Database") || content.contains("RoomDatabase")) {
                databaseUsageFound = true
                
                // Check for SQLCipher or other encryption
                if (content.contains("SQLCipher") || 
                    content.contains("net.sqlcipher") ||
                    content.contains("SupportSQLiteOpenHelper.Factory")) {
                    encryptionFound = true
                } else {
                    // Check if sensitive data is stored
                    if (content.contains("password", ignoreCase = true) ||
                        content.contains("token", ignoreCase = true) ||
                        content.contains("secret", ignoreCase = true)) {
                        issues.add(SecurityIssue(
                            id = "unencrypted-sensitive-db-${file.name.hashCode()}",
                            severity = Severity.ERROR,
                            description = "Sensitive data stored in unencrypted database in ${file.relativeTo(context.projectRoot).path}",
                            location = file.relativeTo(context.projectRoot).path,
                            suggestion = "Use SQLCipher or encrypt sensitive data before storing",
                            securityType = SecurityIssueType.DATA_EXPOSURE,
                            cveId = null
                        ))
                    }
                }
            }
            
            // Check for SharedPreferences with sensitive data
            if (content.contains("SharedPreferences") || content.contains("getSharedPreferences")) {
                if (content.contains("password", ignoreCase = true) ||
                    content.contains("token", ignoreCase = true) ||
                    content.contains("secret", ignoreCase = true)) {
                    
                    if (!content.contains("EncryptedSharedPreferences")) {
                        issues.add(SecurityIssue(
                            id = "unencrypted-shared-prefs-${file.name.hashCode()}",
                            severity = Severity.ERROR,
                            description = "Sensitive data stored in unencrypted SharedPreferences in ${file.relativeTo(context.projectRoot).path}",
                            location = file.relativeTo(context.projectRoot).path,
                            suggestion = "Use EncryptedSharedPreferences for sensitive data",
                            securityType = SecurityIssueType.DATA_EXPOSURE,
                            cveId = null
                        ))
                    }
                }
            }
        }
        
        if (databaseUsageFound && !encryptionFound) {
            issues.add(SecurityIssue(
                id = "database-without-encryption",
                severity = Severity.WARNING,
                description = "Database usage detected without encryption",
                location = "project",
                suggestion = "Consider using SQLCipher for database encryption",
                securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                cveId = null
            ))
        }
        
        return issues
    }
    
    private fun analyzeCryptographicAlgorithms(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for insecure algorithms
            insecureAlgorithms.forEach { algorithm ->
                if (content.contains("\"$algorithm\"") || content.contains(".$algorithm")) {
                    issues.add(SecurityIssue(
                        id = "insecure-algorithm-${algorithm}-${file.name.hashCode()}",
                        severity = Severity.CRITICAL,
                        description = "Insecure cryptographic algorithm '$algorithm' used in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Replace with secure algorithms like AES-256, RSA-2048+, or SHA-256",
                        securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                        cveId = null
                    ))
                }
            }
            
            // Check for weak key sizes
            val weakKeyPatterns = mapOf(
                "RSA" to listOf("512", "1024"),
                "AES" to listOf("64", "128"), // 128 is acceptable but 256 is better
                "DSA" to listOf("512", "1024")
            )
            
            weakKeyPatterns.forEach { (algorithm, weakSizes) ->
                if (content.contains(algorithm)) {
                    weakSizes.forEach { size ->
                        if (content.contains(size)) {
                            val severity = if (size.toInt() < 128) Severity.CRITICAL else Severity.WARNING
                            issues.add(SecurityIssue(
                                id = "weak-key-size-${algorithm}-${size}-${file.name.hashCode()}",
                                severity = severity,
                                description = "Weak key size ($size bits) for $algorithm in ${file.relativeTo(context.projectRoot).path}",
                                location = file.relativeTo(context.projectRoot).path,
                                suggestion = "Use stronger key sizes: RSA-2048+, AES-256, DSA-2048+",
                                securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                                cveId = null
                            ))
                        }
                    }
                }
            }
            
            // Check for custom crypto implementations
            if (content.contains("class") && 
                (content.contains("encrypt", ignoreCase = true) || 
                 content.contains("decrypt", ignoreCase = true) ||
                 content.contains("hash", ignoreCase = true)) &&
                !content.contains("import javax.crypto") &&
                !content.contains("import java.security")) {
                
                issues.add(SecurityIssue(
                    id = "custom-crypto-implementation-${file.name.hashCode()}",
                    severity = Severity.ERROR,
                    description = "Potential custom cryptographic implementation in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use well-tested cryptographic libraries instead of custom implementations",
                    securityType = SecurityIssueType.ENCRYPTION_WEAKNESS,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeSharedPreferencesSecurity(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for MODE_WORLD_READABLE or MODE_WORLD_WRITABLE
            if (content.contains("MODE_WORLD_READABLE") || content.contains("MODE_WORLD_WRITABLE")) {
                issues.add(SecurityIssue(
                    id = "world-accessible-prefs-${file.name.hashCode()}",
                    severity = Severity.CRITICAL,
                    description = "World-accessible SharedPreferences in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Use MODE_PRIVATE for SharedPreferences",
                    securityType = SecurityIssueType.PERMISSION_MISUSE,
                    cveId = null
                ))
            }
            
            // Check for backup allowance with sensitive data
            if (content.contains("SharedPreferences") && 
                content.contains("password", ignoreCase = true)) {
                
                val manifestFile = File(context.projectRoot, "android/app/src/main/AndroidManifest.xml")
                if (manifestFile.exists()) {
                    val manifestContent = manifestFile.readText()
                    if (!manifestContent.contains("android:allowBackup=\"false\"")) {
                        issues.add(SecurityIssue(
                            id = "backup-allowed-sensitive-data",
                            severity = Severity.WARNING,
                            description = "Sensitive data in SharedPreferences with backup allowed",
                            location = "AndroidManifest.xml",
                            suggestion = "Set android:allowBackup=\"false\" or exclude sensitive files from backup",
                            securityType = SecurityIssueType.DATA_EXPOSURE,
                            cveId = null
                        ))
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeFileEncryption(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for file operations with sensitive data
            if ((content.contains("FileOutputStream") || content.contains("writeText")) &&
                (content.contains("password", ignoreCase = true) ||
                 content.contains("token", ignoreCase = true) ||
                 content.contains("secret", ignoreCase = true))) {
                
                if (!content.contains("encrypt", ignoreCase = true) &&
                    !content.contains("cipher", ignoreCase = true)) {
                    issues.add(SecurityIssue(
                        id = "unencrypted-file-sensitive-${file.name.hashCode()}",
                        severity = Severity.ERROR,
                        description = "Sensitive data written to file without encryption in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Encrypt sensitive data before writing to files",
                        securityType = SecurityIssueType.DATA_EXPOSURE,
                        cveId = null
                    ))
                }
            }
            
            // Check for external storage usage with sensitive data
            if (content.contains("getExternalStorageDirectory") ||
                content.contains("EXTERNAL_STORAGE")) {
                
                if (content.contains("password", ignoreCase = true) ||
                    content.contains("token", ignoreCase = true) ||
                    content.contains("secret", ignoreCase = true)) {
                    issues.add(SecurityIssue(
                        id = "sensitive-data-external-storage-${file.name.hashCode()}",
                        severity = Severity.CRITICAL,
                        description = "Sensitive data stored on external storage in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Store sensitive data in internal storage with encryption",
                        securityType = SecurityIssueType.DATA_EXPOSURE,
                        cveId = null
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