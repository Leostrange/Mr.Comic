package com.mrcomic.analysis.analyzer.security

import com.mrcomic.analysis.core.Analyzer
import com.mrcomic.analysis.core.AnalysisContext
import com.mrcomic.analysis.model.Issue
import com.mrcomic.analysis.model.SecurityIssue
import com.mrcomic.analysis.model.SecurityIssueType
import com.mrcomic.analysis.model.Severity
import java.io.File

/**
 * Analyzes network security configuration and usage in the Android project.
 */
class NetworkSecurityAnalyzer : Analyzer {
    
    override val id = "network-security"
    override val name = "Network Security Analyzer"
    override val version = "1.0.0"
    override val enabledByDefault = true
    
    private val httpLibraries = setOf(
        "okhttp", "retrofit", "volley", "httpurlconnection", "apache.http"
    )
    
    override suspend fun analyze(context: AnalysisContext): List<Issue> {
        context.logger.info("Analyzing network security...")
        
        val issues = mutableListOf<Issue>()
        
        try {
            // Analyze network security config
            issues.addAll(analyzeNetworkSecurityConfig(context))
            
            // Analyze HTTPS usage
            issues.addAll(analyzeHttpsUsage(context))
            
            // Analyze certificate pinning
            issues.addAll(analyzeCertificatePinning(context))
            
            // Analyze SSL/TLS configuration
            issues.addAll(analyzeSslTlsConfiguration(context))
            
            // Analyze cleartext traffic
            issues.addAll(analyzeCleartextTraffic(context))
            
            // Analyze trust manager implementations
            issues.addAll(analyzeTrustManagerImplementations(context))
            
            context.logger.info("Network security analysis completed. Found ${issues.size} issues.")
            
        } catch (e: Exception) {
            context.logger.error("Failed to analyze network security", e)
            issues.add(SecurityIssue(
                id = "network-security-analysis-failed",
                severity = Severity.ERROR,
                description = "Failed to analyze network security: ${e.message}",
                location = context.projectPath,
                suggestion = "Check that the project structure is valid",
                securityType = SecurityIssueType.NETWORK_SECURITY,
                cveId = null
            ))
        }
        
        return issues
    }
    
    override fun canAnalyze(context: AnalysisContext): Boolean {
        return File(context.projectRoot, "android").exists()
    }
    
    private fun analyzeNetworkSecurityConfig(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val manifestFile = File(context.projectRoot, "android/app/src/main/AndroidManifest.xml")
        if (manifestFile.exists()) {
            val manifestContent = manifestFile.readText()
            
            // Check for network security config
            val hasNetworkSecurityConfig = manifestContent.contains("android:networkSecurityConfig")
            
            if (!hasNetworkSecurityConfig) {
                issues.add(SecurityIssue(
                    id = "missing-network-security-config",
                    severity = Severity.WARNING,
                    description = "No network security configuration specified in AndroidManifest.xml",
                    location = "android/app/src/main/AndroidManifest.xml",
                    suggestion = "Add android:networkSecurityConfig to define network security policies",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            } else {
                // Find and analyze the network security config file
                val configPattern = Regex("""android:networkSecurityConfig="@xml/([^"]+)"""")
                val match = configPattern.find(manifestContent)
                
                if (match != null) {
                    val configFileName = match.groupValues[1]
                    val configFile = File(context.projectRoot, "android/app/src/main/res/xml/$configFileName.xml")
                    
                    if (configFile.exists()) {
                        issues.addAll(analyzeNetworkSecurityConfigFile(configFile, context))
                    } else {
                        issues.add(SecurityIssue(
                            id = "missing-network-config-file",
                            severity = Severity.ERROR,
                            description = "Network security config file not found: $configFileName.xml",
                            location = "android/app/src/main/res/xml/$configFileName.xml",
                            suggestion = "Create the referenced network security configuration file",
                            securityType = SecurityIssueType.NETWORK_SECURITY,
                            cveId = null
                        ))
                    }
                }
            }
            
            // Check for cleartext traffic allowance
            if (manifestContent.contains("android:usesCleartextTraffic=\"true\"")) {
                issues.add(SecurityIssue(
                    id = "cleartext-traffic-allowed",
                    severity = Severity.ERROR,
                    description = "Cleartext traffic is explicitly allowed in AndroidManifest.xml",
                    location = "android/app/src/main/AndroidManifest.xml",
                    suggestion = "Remove android:usesCleartextTraffic=\"true\" or set it to false",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeNetworkSecurityConfigFile(configFile: File, context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        val content = configFile.readText()
        
        // Check for cleartext traffic permissions
        if (content.contains("cleartextTrafficPermitted=\"true\"")) {
            issues.add(SecurityIssue(
                id = "cleartext-permitted-in-config",
                severity = Severity.ERROR,
                description = "Cleartext traffic is permitted in network security config",
                location = configFile.relativeTo(context.projectRoot).path,
                suggestion = "Set cleartextTrafficPermitted=\"false\" for production builds",
                securityType = SecurityIssueType.NETWORK_SECURITY,
                cveId = null
            ))
        }
        
        // Check for certificate pinning
        val hasCertificatePinning = content.contains("<pin-set>") || content.contains("<pin ")
        if (!hasCertificatePinning) {
            issues.add(SecurityIssue(
                id = "missing-certificate-pinning",
                severity = Severity.WARNING,
                description = "No certificate pinning configured for critical domains",
                location = configFile.relativeTo(context.projectRoot).path,
                suggestion = "Implement certificate pinning for critical API endpoints",
                securityType = SecurityIssueType.NETWORK_SECURITY,
                cveId = null
            ))
        }
        
        // Check for trust anchors configuration
        if (content.contains("trust-anchors") && content.contains("system")) {
            if (content.contains("user")) {
                issues.add(SecurityIssue(
                    id = "user-added-ca-trusted",
                    severity = Severity.WARNING,
                    description = "User-added certificate authorities are trusted",
                    location = configFile.relativeTo(context.projectRoot).path,
                    suggestion = "Consider removing user-added CAs from trust anchors for production",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeHttpsUsage(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for HTTP URLs
            val httpUrlPattern = Regex("""["']http://[^"']+["']""")
            httpUrlPattern.findAll(content).forEach { match ->
                val url = match.value
                // Skip localhost and development URLs
                if (!url.contains("localhost") && !url.contains("127.0.0.1") && !url.contains("10.0.2.2")) {
                    issues.add(SecurityIssue(
                        id = "http-url-${file.name.hashCode()}-${url.hashCode()}",
                        severity = Severity.ERROR,
                        description = "HTTP URL found in ${file.relativeTo(context.projectRoot).path}: $url",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use HTTPS instead of HTTP for secure communication",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
            }
            
            // Check for hardcoded API endpoints
            val apiUrlPattern = Regex("""["'](https?://[^"']+/api[^"']*)["']""")
            apiUrlPattern.findAll(content).forEach { match ->
                issues.add(SecurityIssue(
                    id = "hardcoded-api-url-${file.name.hashCode()}-${match.value.hashCode()}",
                    severity = Severity.WARNING,
                    description = "Hardcoded API URL in ${file.relativeTo(context.projectRoot).path}: ${match.value}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Move API URLs to configuration files or build variants",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeCertificatePinning(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        var certificatePinningFound = false
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for OkHttp certificate pinning
            if (content.contains("CertificatePinner") || 
                content.contains("certificatePinner") ||
                content.contains("pin(")) {
                certificatePinningFound = true
                
                // Check for proper pin configuration
                if (!content.contains("sha256/")) {
                    issues.add(SecurityIssue(
                        id = "weak-certificate-pin-${file.name.hashCode()}",
                        severity = Severity.WARNING,
                        description = "Certificate pinning without SHA-256 pins in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use SHA-256 certificate pins for better security",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
            }
            
            // Check for API calls without pinning
            httpLibraries.forEach { library ->
                if (content.contains(library, ignoreCase = true) && 
                    content.contains("https://") &&
                    !content.contains("localhost")) {
                    
                    if (!certificatePinningFound) {
                        issues.add(SecurityIssue(
                            id = "missing-cert-pinning-${library}-${file.name.hashCode()}",
                            severity = Severity.WARNING,
                            description = "HTTPS requests without certificate pinning in ${file.relativeTo(context.projectRoot).path}",
                            location = file.relativeTo(context.projectRoot).path,
                            suggestion = "Implement certificate pinning for critical API endpoints",
                            securityType = SecurityIssueType.NETWORK_SECURITY,
                            cveId = null
                        ))
                    }
                }
            }
        }
        
        return issues
    }
    
    private fun analyzeSslTlsConfiguration(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for weak TLS versions
            val weakTlsVersions = listOf("TLSv1", "TLSv1.1", "SSLv3", "SSLv2")
            weakTlsVersions.forEach { version ->
                if (content.contains("\"$version\"") || content.contains(".$version")) {
                    issues.add(SecurityIssue(
                        id = "weak-tls-version-${version}-${file.name.hashCode()}",
                        severity = Severity.ERROR,
                        description = "Weak TLS version '$version' used in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use TLS 1.2 or higher for secure connections",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
            }
            
            // Check for weak cipher suites
            val weakCiphers = listOf(
                "SSL_RSA_WITH_DES_CBC_SHA",
                "SSL_RSA_WITH_3DES_EDE_CBC_SHA",
                "TLS_RSA_WITH_AES_128_CBC_SHA",
                "SSL_RSA_WITH_RC4"
            )
            
            weakCiphers.forEach { cipher ->
                if (content.contains(cipher)) {
                    issues.add(SecurityIssue(
                        id = "weak-cipher-suite-${cipher.hashCode()}-${file.name.hashCode()}",
                        severity = Severity.ERROR,
                        description = "Weak cipher suite '$cipher' used in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use strong cipher suites with forward secrecy",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
            }
            
            // Check for disabled hostname verification
            if (content.contains("setHostnameVerifier") && 
                (content.contains("ALLOW_ALL_HOSTNAME_VERIFIER") ||
                 content.contains("return true"))) {
                issues.add(SecurityIssue(
                    id = "disabled-hostname-verification-${file.name.hashCode()}",
                    severity = Severity.CRITICAL,
                    description = "Hostname verification disabled in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Enable proper hostname verification for SSL/TLS connections",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeCleartextTraffic(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        // Check build.gradle files for network security config
        val buildFiles = findBuildFiles(context.projectRoot)
        
        buildFiles.forEach { file ->
            val content = file.readText()
            
            // Check for debug builds allowing cleartext
            if (content.contains("debug") && 
                content.contains("usesCleartextTraffic") &&
                content.contains("true")) {
                issues.add(SecurityIssue(
                    id = "debug-cleartext-traffic-${file.name.hashCode()}",
                    severity = Severity.INFO,
                    description = "Debug build allows cleartext traffic in ${file.relativeTo(context.projectRoot).path}",
                    location = file.relativeTo(context.projectRoot).path,
                    suggestion = "Ensure cleartext traffic is disabled in release builds",
                    securityType = SecurityIssueType.NETWORK_SECURITY,
                    cveId = null
                ))
            }
        }
        
        return issues
    }
    
    private fun analyzeTrustManagerImplementations(context: AnalysisContext): List<SecurityIssue> {
        val issues = mutableListOf<SecurityIssue>()
        
        val kotlinFiles = findKotlinFiles(context.projectRoot)
        
        kotlinFiles.forEach { file ->
            val content = file.readText()
            
            // Check for custom TrustManager implementations
            if (content.contains("TrustManager") || content.contains("X509TrustManager")) {
                
                // Check for trust-all implementations
                if (content.contains("checkClientTrusted") && 
                    content.contains("{}")) {
                    issues.add(SecurityIssue(
                        id = "trust-all-manager-${file.name.hashCode()}",
                        severity = Severity.CRITICAL,
                        description = "Trust-all TrustManager implementation in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Implement proper certificate validation instead of trusting all certificates",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
                
                // Check for empty certificate validation
                if (content.contains("checkServerTrusted") && 
                    (content.contains("{}") || content.contains("return"))) {
                    issues.add(SecurityIssue(
                        id = "empty-cert-validation-${file.name.hashCode()}",
                        severity = Severity.CRITICAL,
                        description = "Empty certificate validation in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Implement proper server certificate validation",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
                        cveId = null
                    ))
                }
            }
            
            // Check for SSL context with insecure settings
            if (content.contains("SSLContext") && content.contains("getInstance")) {
                if (content.contains("SSL") && !content.contains("TLS")) {
                    issues.add(SecurityIssue(
                        id = "insecure-ssl-context-${file.name.hashCode()}",
                        severity = Severity.ERROR,
                        description = "Insecure SSL context configuration in ${file.relativeTo(context.projectRoot).path}",
                        location = file.relativeTo(context.projectRoot).path,
                        suggestion = "Use TLS instead of SSL for secure contexts",
                        securityType = SecurityIssueType.NETWORK_SECURITY,
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
    
    private fun findBuildFiles(directory: File): List<File> {
        val buildFiles = mutableListOf<File>()
        
        directory.walkTopDown()
            .filter { it.isFile && (it.name == "build.gradle" || it.name == "build.gradle.kts") }
            .forEach { buildFiles.add(it) }
        
        return buildFiles
    }
}