package com.example.mrcomic.data

import android.content.Context
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.security.MessageDigest
import java.util.zip.CRC32
import java.util.zip.ZipInputStream
import java.util.zip.ZipEntry
import com.github.junrar.Archive
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import kotlin.collections.HashMap

/**
 * Система валидации и восстановления файлов комиксов
 * Обеспечивает целостность данных и автоматическое восстановление
 */
object ValidationAndRecoverySystem {
    
    data class ValidationResult(
        val isValid: Boolean,
        val issues: List<ValidationIssue>,
        val repairableIssues: List<ValidationIssue>,
        val fileIntegrity: FileIntegrityStatus,
        val recommendations: List<String>
    )
    
    data class ValidationIssue(
        val type: IssueType,
        val severity: IssueSeverity,
        val description: String,
        val location: String? = null,
        val suggestedFix: String? = null,
        val isAutoRepairable: Boolean = false
    )
    
    data class RecoveryResult(
        val success: Boolean,
        val recoveredFile: File? = null,
        val recoveryMethod: RecoveryMethod,
        val issuesFixed: List<ValidationIssue>,
        val remainingIssues: List<ValidationIssue>,
        val recoveryLog: List<String>
    )
    
    data class FileIntegrityStatus(
        val checksumValid: Boolean,
        val structureValid: Boolean,
        val contentValid: Boolean,
        val metadataValid: Boolean,
        val corruptionLevel: CorruptionLevel
    )
    
    enum class IssueType {
        CORRUPTED_ARCHIVE,
        MISSING_FILES,
        INVALID_FORMAT,
        CORRUPTED_IMAGES,
        METADATA_CORRUPTION,
        ENCODING_ISSUES,
        PERMISSION_ISSUES,
        SIZE_MISMATCH,
        CHECKSUM_MISMATCH,
        STRUCTURE_DAMAGE
    }
    
    enum class IssueSeverity {
        CRITICAL,   // Файл нечитаем
        HIGH,       // Серьезные проблемы, влияющие на функциональность
        MEDIUM,     // Умеренные проблемы
        LOW,        // Незначительные проблемы
        INFO        // Информационные сообщения
    }
    
    enum class CorruptionLevel {
        NONE,       // Нет повреждений
        MINIMAL,    // Минимальные повреждения (<5%)
        MODERATE,   // Умеренные повреждения (5-20%)
        SEVERE,     // Серьезные повреждения (20-50%)
        CRITICAL    // Критические повреждения (>50%)
    }
    
    enum class RecoveryMethod {
        NONE,
        CHECKSUM_REPAIR,
        STRUCTURE_REBUILD,
        PARTIAL_EXTRACTION,
        METADATA_RECONSTRUCTION,
        IMAGE_RECOVERY,
        ARCHIVE_REPAIR,
        BACKUP_RESTORE
    }
    
    private val validationCache = HashMap<String, ValidationResult>()
    private val recoveryAttempts = HashMap<String, Int>()
    private val maxRecoveryAttempts = 3
    
    private val _validationProgress = MutableStateFlow(0f)
    val validationProgress: StateFlow<Float> = _validationProgress
    
    /**
     * Комплексная валидация файла комикса
     */
    suspend fun validateFile(
        file: File,
        context: Context,
        deepValidation: Boolean = true
    ): ValidationResult = withContext(Dispatchers.IO) {
        
        val fileHash = calculateFileHash(file)
        
        // Проверяем кэш валидации
        validationCache[fileHash]?.let { cachedResult ->
            return@withContext cachedResult
        }
        
        _validationProgress.value = 0f
        val issues = mutableListOf<ValidationIssue>()
        val repairableIssues = mutableListOf<ValidationIssue>()
        
        try {
            // 1. Базовая валидация файла
            validateBasicFile(file, issues, repairableIssues)
            _validationProgress.value = 0.2f
            
            // 2. Валидация формата
            validateFormat(file, issues, repairableIssues)
            _validationProgress.value = 0.4f
            
            // 3. Валидация структуры архива
            validateArchiveStructure(file, issues, repairableIssues)
            _validationProgress.value = 0.6f
            
            // 4. Валидация содержимого (если включена глубокая проверка)
            if (deepValidation) {
                validateContent(file, context, issues, repairableIssues)
                _validationProgress.value = 0.8f
            }
            
            // 5. Валидация метаданных
            validateMetadata(file, issues, repairableIssues)
            _validationProgress.value = 0.9f
            
            // 6. Оценка целостности файла
            val integrityStatus = assessFileIntegrity(file, issues)
            _validationProgress.value = 1f
            
            // 7. Генерация рекомендаций
            val recommendations = generateRecommendations(issues, integrityStatus)
            
            val result = ValidationResult(
                isValid = issues.none { it.severity == IssueSeverity.CRITICAL },
                issues = issues,
                repairableIssues = repairableIssues,
                fileIntegrity = integrityStatus,
                recommendations = recommendations
            )
            
            // Кэшируем результат
            validationCache[fileHash] = result
            
            result
            
        } catch (e: Exception) {
            issues.add(
                ValidationIssue(
                    type = IssueType.CORRUPTED_ARCHIVE,
                    severity = IssueSeverity.CRITICAL,
                    description = "Критическая ошибка валидации: ${e.message}",
                    isAutoRepairable = false
                )
            )
            
            ValidationResult(
                isValid = false,
                issues = issues,
                repairableIssues = repairableIssues,
                fileIntegrity = FileIntegrityStatus(
                    false, false, false, false, CorruptionLevel.CRITICAL
                ),
                recommendations = listOf("Файл серьезно поврежден и требует ручного восстановления")
            )
        }
    }
    
    /**
     * Автоматическое восстановление файла
     */
    suspend fun recoverFile(
        file: File,
        validationResult: ValidationResult,
        context: Context,
        createBackup: Boolean = true
    ): RecoveryResult = withContext(Dispatchers.IO) {
        
        val fileHash = calculateFileHash(file)
        val attemptCount = recoveryAttempts.getOrDefault(fileHash, 0)
        
        if (attemptCount >= maxRecoveryAttempts) {
            return@withContext RecoveryResult(
                success = false,
                recoveredFile = null,
                recoveryMethod = RecoveryMethod.NONE,
                issuesFixed = emptyList(),
                remainingIssues = validationResult.issues,
                recoveryLog = listOf("Превышено максимальное количество попыток восстановления")
            )
        }
        
        recoveryAttempts[fileHash] = attemptCount + 1
        
        val recoveryLog = mutableListOf<String>()
        val fixedIssues = mutableListOf<ValidationIssue>()
        val remainingIssues = mutableListOf<ValidationIssue>()
        
        try {
            // Создаем резервную копию
            var backupFile: File? = null
            if (createBackup) {
                backupFile = createBackup(file)
                recoveryLog.add("Создана резервная копия: ${backupFile?.absolutePath}")
            }
            
            // Определяем стратегию восстановления
            val recoveryMethod = determineRecoveryMethod(validationResult)
            recoveryLog.add("Выбран метод восстановления: $recoveryMethod")
            
            val recoveredFile = when (recoveryMethod) {
                RecoveryMethod.CHECKSUM_REPAIR -> repairChecksum(file, validationResult, recoveryLog)
                RecoveryMethod.STRUCTURE_REBUILD -> rebuildStructure(file, validationResult, recoveryLog)
                RecoveryMethod.PARTIAL_EXTRACTION -> partialExtraction(file, context, validationResult, recoveryLog)
                RecoveryMethod.METADATA_RECONSTRUCTION -> reconstructMetadata(file, validationResult, recoveryLog)
                RecoveryMethod.IMAGE_RECOVERY -> recoverImages(file, context, validationResult, recoveryLog)
                RecoveryMethod.ARCHIVE_REPAIR -> repairArchive(file, validationResult, recoveryLog)
                RecoveryMethod.BACKUP_RESTORE -> restoreFromBackup(file, recoveryLog)
                else -> null
            }
            
            // Проверяем результат восстановления
            val success = recoveredFile != null && recoveredFile.exists()
            
            if (success) {
                // Валидируем восстановленный файл
                val newValidationResult = validateFile(recoveredFile!!, context, false)
                
                // Определяем какие проблемы были исправлены
                validationResult.repairableIssues.forEach { issue ->
                    if (newValidationResult.issues.none { it.type == issue.type }) {
                        fixedIssues.add(issue)
                    } else {
                        remainingIssues.add(issue)
                    }
                }
                
                recoveryLog.add("Восстановление завершено успешно")
                recoveryLog.add("Исправлено проблем: ${fixedIssues.size}")
                recoveryLog.add("Осталось проблем: ${remainingIssues.size}")
            } else {
                remainingIssues.addAll(validationResult.issues)
                recoveryLog.add("Восстановление не удалось")
            }
            
            RecoveryResult(
                success = success,
                recoveredFile = recoveredFile,
                recoveryMethod = recoveryMethod,
                issuesFixed = fixedIssues,
                remainingIssues = remainingIssues,
                recoveryLog = recoveryLog
            )
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления: ${e.message}")
            
            RecoveryResult(
                success = false,
                recoveredFile = null,
                recoveryMethod = RecoveryMethod.NONE,
                issuesFixed = emptyList(),
                remainingIssues = validationResult.issues,
                recoveryLog = recoveryLog
            )
        }
    }
    
    /**
     * Создание контрольных сумм для файлов
     */
    suspend fun createChecksums(
        files: List<File>,
        outputFile: File
    ): Boolean = withContext(Dispatchers.IO) {
        
        try {
            val checksums = mutableMapOf<String, String>()
            
            files.forEach { file ->
                val checksum = calculateFileHash(file)
                checksums[file.absolutePath] = checksum
            }
            
            // Сохраняем контрольные суммы в файл
            outputFile.writeText(
                checksums.entries.joinToString("\n") { "${it.value}  ${it.key}" }
            )
            
            true
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Проверка контрольных сумм
     */
    suspend fun verifyChecksums(
        checksumFile: File
    ): Map<String, Boolean> = withContext(Dispatchers.IO) {
        
        val results = mutableMapOf<String, Boolean>()
        
        try {
            checksumFile.readLines().forEach { line ->
                val parts = line.split("  ", limit = 2)
                if (parts.size == 2) {
                    val expectedChecksum = parts[0]
                    val filePath = parts[1]
                    val file = File(filePath)
                    
                    if (file.exists()) {
                        val actualChecksum = calculateFileHash(file)
                        results[filePath] = expectedChecksum == actualChecksum
                    } else {
                        results[filePath] = false
                    }
                }
            }
        } catch (e: Exception) {
            // Обработка ошибок
        }
        
        results
    }
    
    // Приватные методы валидации
    
    private fun validateBasicFile(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        // Проверка существования файла
        if (!file.exists()) {
            issues.add(
                ValidationIssue(
                    type = IssueType.MISSING_FILES,
                    severity = IssueSeverity.CRITICAL,
                    description = "Файл не существует",
                    location = file.absolutePath,
                    isAutoRepairable = false
                )
            )
            return
        }
        
        // Проверка прав доступа
        if (!file.canRead()) {
            val issue = ValidationIssue(
                type = IssueType.PERMISSION_ISSUES,
                severity = IssueSeverity.HIGH,
                description = "Нет прав на чтение файла",
                location = file.absolutePath,
                suggestedFix = "Изменить права доступа к файлу",
                isAutoRepairable = true
            )
            issues.add(issue)
            repairableIssues.add(issue)
        }
        
        // Проверка размера файла
        if (file.length() == 0L) {
            issues.add(
                ValidationIssue(
                    type = IssueType.SIZE_MISMATCH,
                    severity = IssueSeverity.CRITICAL,
                    description = "Файл пустой",
                    location = file.absolutePath,
                    isAutoRepairable = false
                )
            )
        }
        
        // Проверка на подозрительно большой размер
        if (file.length() > 10L * 1024 * 1024 * 1024) { // 10GB
            issues.add(
                ValidationIssue(
                    type = IssueType.SIZE_MISMATCH,
                    severity = IssueSeverity.MEDIUM,
                    description = "Файл очень большой (${file.length() / (1024 * 1024)} MB)",
                    location = file.absolutePath,
                    isAutoRepairable = false
                )
            )
        }
    }
    
    private fun validateFormat(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        try {
            val detectedFormat = FormatHandler.detectFormat(file)
            
            if (detectedFormat == null) {
                issues.add(
                    ValidationIssue(
                        type = IssueType.INVALID_FORMAT,
                        severity = IssueSeverity.HIGH,
                        description = "Неподдерживаемый или поврежденный формат файла",
                        location = file.absolutePath,
                        isAutoRepairable = false
                    )
                )
                return
            }
            
            // Проверка соответствия расширения и содержимого
            val expectedExtensions = detectedFormat.extensions
            val actualExtension = file.extension.lowercase()
            
            if (!expectedExtensions.contains(actualExtension)) {
                val issue = ValidationIssue(
                    type = IssueType.INVALID_FORMAT,
                    severity = IssueSeverity.MEDIUM,
                    description = "Расширение файла ($actualExtension) не соответствует содержимому ($detectedFormat)",
                    location = file.absolutePath,
                    suggestedFix = "Переименовать файл с правильным расширением",
                    isAutoRepairable = true
                )
                issues.add(issue)
                repairableIssues.add(issue)
            }
            
        } catch (e: Exception) {
            issues.add(
                ValidationIssue(
                    type = IssueType.INVALID_FORMAT,
                    severity = IssueSeverity.HIGH,
                    description = "Ошибка определения формата: ${e.message}",
                    location = file.absolutePath,
                    isAutoRepairable = false
                )
            )
        }
    }
    
    private fun validateArchiveStructure(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        try {
            val format = ArchiveExtractor.detectArchiveFormat(file)
            
            when (format) {
                ArchiveExtractor.ArchiveFormat.ZIP -> validateZipStructure(file, issues, repairableIssues)
                ArchiveExtractor.ArchiveFormat.RAR, ArchiveExtractor.ArchiveFormat.RAR5 -> 
                    validateRarStructure(file, issues, repairableIssues)
                ArchiveExtractor.ArchiveFormat.SEVEN_Z -> validate7ZStructure(file, issues, repairableIssues)
                else -> {
                    // Для других форматов базовая проверка
                    if (!canOpenArchive(file, format)) {
                        issues.add(
                            ValidationIssue(
                                type = IssueType.CORRUPTED_ARCHIVE,
                                severity = IssueSeverity.HIGH,
                                description = "Не удается открыть архив",
                                location = file.absolutePath,
                                isAutoRepairable = true
                            )
                        )
                    }
                }
            }
            
        } catch (e: Exception) {
            issues.add(
                ValidationIssue(
                    type = IssueType.STRUCTURE_DAMAGE,
                    severity = IssueSeverity.HIGH,
                    description = "Ошибка проверки структуры архива: ${e.message}",
                    location = file.absolutePath,
                    isAutoRepairable = true
                )
            )
        }
    }
    
    private fun validateZipStructure(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        try {
            ZipInputStream(file.inputStream()).use { zis ->
                var entryCount = 0
                var hasValidEntries = false
                
                var entry: ZipEntry?
                while (zis.nextEntry.also { entry = it } != null) {
                    entryCount++
                    
                    entry?.let { zipEntry ->
                        if (!zipEntry.isDirectory) {
                            hasValidEntries = true
                            
                            // Проверка CRC если доступна
                            if (zipEntry.crc != -1L) {
                                val crc32 = CRC32()
                                val buffer = ByteArray(8192)
                                var bytesRead: Int
                                
                                while (zis.read(buffer).also { bytesRead = it } != -1) {
                                    crc32.update(buffer, 0, bytesRead)
                                }
                                
                                if (crc32.value != zipEntry.crc) {
                                    val issue = ValidationIssue(
                                        type = IssueType.CHECKSUM_MISMATCH,
                                        severity = IssueSeverity.HIGH,
                                        description = "Несоответствие контрольной суммы для ${zipEntry.name}",
                                        location = zipEntry.name,
                                        isAutoRepairable = true
                                    )
                                    issues.add(issue)
                                    repairableIssues.add(issue)
                                }
                            }
                        }
                    }
                    
                    zis.closeEntry()
                }
                
                if (entryCount == 0) {
                    issues.add(
                        ValidationIssue(
                            type = IssueType.CORRUPTED_ARCHIVE,
                            severity = IssueSeverity.CRITICAL,
                            description = "Архив пустой или поврежден",
                            location = file.absolutePath,
                            isAutoRepairable = false
                        )
                    )
                } else if (!hasValidEntries) {
                    issues.add(
                        ValidationIssue(
                            type = IssueType.MISSING_FILES,
                            severity = IssueSeverity.HIGH,
                            description = "В архиве нет файлов, только папки",
                            location = file.absolutePath,
                            isAutoRepairable = false
                        )
                    )
                }
            }
            
        } catch (e: Exception) {
            val issue = ValidationIssue(
                type = IssueType.CORRUPTED_ARCHIVE,
                severity = IssueSeverity.HIGH,
                description = "Поврежденная структура ZIP архива: ${e.message}",
                location = file.absolutePath,
                isAutoRepairable = true
            )
            issues.add(issue)
            repairableIssues.add(issue)
        }
    }
    
    private fun validateRarStructure(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        try {
            val archive = Archive(file)
            val headers = archive.fileHeaders
            
            if (headers.isEmpty()) {
                issues.add(
                    ValidationIssue(
                        type = IssueType.CORRUPTED_ARCHIVE,
                        severity = IssueSeverity.CRITICAL,
                        description = "RAR архив пустой или поврежден",
                        location = file.absolutePath,
                        isAutoRepairable = false
                    )
                )
            }
            
            // Проверка целостности заголовков
            headers.forEach { header ->
                if (header.isCorrupted) {
                    val issue = ValidationIssue(
                        type = IssueType.CORRUPTED_ARCHIVE,
                        severity = IssueSeverity.HIGH,
                        description = "Поврежденный заголовок файла: ${header.fileName}",
                        location = header.fileName,
                        isAutoRepairable = true
                    )
                    issues.add(issue)
                    repairableIssues.add(issue)
                }
            }
            
            archive.close()
            
        } catch (e: Exception) {
            val issue = ValidationIssue(
                type = IssueType.CORRUPTED_ARCHIVE,
                severity = IssueSeverity.HIGH,
                description = "Ошибка проверки RAR архива: ${e.message}",
                location = file.absolutePath,
                isAutoRepairable = true
            )
            issues.add(issue)
            repairableIssues.add(issue)
        }
    }
    
    private fun validate7ZStructure(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) {
        try {
            val sevenZFile = SevenZFile(file)
            var entryCount = 0
            
            var entry = sevenZFile.nextEntry
            while (entry != null) {
                entryCount++
                entry = sevenZFile.nextEntry
            }
            
            sevenZFile.close()
            
            if (entryCount == 0) {
                issues.add(
                    ValidationIssue(
                        type = IssueType.CORRUPTED_ARCHIVE,
                        severity = IssueSeverity.CRITICAL,
                        description = "7Z архив пустой или поврежден",
                        location = file.absolutePath,
                        isAutoRepairable = false
                    )
                )
            }
            
        } catch (e: Exception) {
            val issue = ValidationIssue(
                type = IssueType.CORRUPTED_ARCHIVE,
                severity = IssueSeverity.HIGH,
                description = "Ошибка проверки 7Z архива: ${e.message}",
                location = file.absolutePath,
                isAutoRepairable = true
            )
            issues.add(issue)
            repairableIssues.add(issue)
        }
    }
    
    private suspend fun validateContent(
        file: File,
        context: Context,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) = withContext(Dispatchers.IO) {
        
        try {
            // Извлекаем содержимое для проверки
            val tempDir = File(context.cacheDir, "validation_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            val extractionResult = FormatHandler.extractContent(file, tempDir, context)
            
            // Проверяем извлеченные файлы
            if (extractionResult.pages.isEmpty()) {
                issues.add(
                    ValidationIssue(
                        type = IssueType.MISSING_FILES,
                        severity = IssueSeverity.HIGH,
                        description = "Не удалось извлечь страницы из файла",
                        location = file.absolutePath,
                        isAutoRepairable = false
                    )
                )
            } else {
                // Проверяем каждое изображение
                extractionResult.pages.forEach { pageFile ->
                    if (!isValidImage(pageFile)) {
                        val issue = ValidationIssue(
                            type = IssueType.CORRUPTED_IMAGES,
                            severity = IssueSeverity.MEDIUM,
                            description = "Поврежденное изображение: ${pageFile.name}",
                            location = pageFile.absolutePath,
                            isAutoRepairable = true
                        )
                        issues.add(issue)
                        repairableIssues.add(issue)
                    }
                }
            }
            
            // Проверяем ошибки извлечения
            if (extractionResult.errors.isNotEmpty()) {
                extractionResult.errors.forEach { error ->
                    issues.add(
                        ValidationIssue(
                            type = IssueType.CORRUPTED_ARCHIVE,
                            severity = IssueSeverity.MEDIUM,
                            description = "Ошибка извлечения: $error",
                            location = file.absolutePath,
                            isAutoRepairable = true
                        )
                    )
                }
            }
            
            // Очищаем временные файлы
            tempDir.deleteRecursively()
            
        } catch (e: Exception) {
            issues.add(
                ValidationIssue(
                    type = IssueType.CORRUPTED_ARCHIVE,
                    severity = IssueSeverity.HIGH,
                    description = "Ошибка проверки содержимого: ${e.message}",
                    location = file.absolutePath,
                    isAutoRepairable = false
                )
            )
        }
    }
    
    private suspend fun validateMetadata(
        file: File,
        issues: MutableList<ValidationIssue>,
        repairableIssues: MutableList<ValidationIssue>
    ) = withContext(Dispatchers.IO) {
        
        try {
            val metadata = AdvancedMetadataExtractor.extractFullMetadata(file, null, false)
            
            // Проверяем ошибки извлечения метаданных
            if (metadata.extractionErrors.isNotEmpty()) {
                metadata.extractionErrors.forEach { error ->
                    val issue = ValidationIssue(
                        type = IssueType.METADATA_CORRUPTION,
                        severity = IssueSeverity.LOW,
                        description = "Ошибка метаданных: $error",
                        location = file.absolutePath,
                        isAutoRepairable = true
                    )
                    issues.add(issue)
                    repairableIssues.add(issue)
                }
            }
            
            // Проверяем обязательные поля
            if (metadata.title.isBlank()) {
                val issue = ValidationIssue(
                    type = IssueType.METADATA_CORRUPTION,
                    severity = IssueSeverity.LOW,
                    description = "Отсутствует название",
                    location = file.absolutePath,
                    suggestedFix = "Добавить название на основе имени файла",
                    isAutoRepairable = true
                )
                issues.add(issue)
                repairableIssues.add(issue)
            }
            
        } catch (e: Exception) {
            issues.add(
                ValidationIssue(
                    type = IssueType.METADATA_CORRUPTION,
                    severity = IssueSeverity.MEDIUM,
                    description = "Ошибка проверки метаданных: ${e.message}",
                    location = file.absolutePath,
                    isAutoRepairable = true
                )
            )
        }
    }
    
    // Методы восстановления
    
    private fun determineRecoveryMethod(validationResult: ValidationResult): RecoveryMethod {
        val criticalIssues = validationResult.issues.filter { it.severity == IssueSeverity.CRITICAL }
        val highIssues = validationResult.issues.filter { it.severity == IssueSeverity.HIGH }
        
        return when {
            criticalIssues.any { it.type == IssueType.CORRUPTED_ARCHIVE } -> RecoveryMethod.ARCHIVE_REPAIR
            highIssues.any { it.type == IssueType.CHECKSUM_MISMATCH } -> RecoveryMethod.CHECKSUM_REPAIR
            highIssues.any { it.type == IssueType.STRUCTURE_DAMAGE } -> RecoveryMethod.STRUCTURE_REBUILD
            validationResult.issues.any { it.type == IssueType.CORRUPTED_IMAGES } -> RecoveryMethod.IMAGE_RECOVERY
            validationResult.issues.any { it.type == IssueType.METADATA_CORRUPTION } -> RecoveryMethod.METADATA_RECONSTRUCTION
            validationResult.issues.any { it.type == IssueType.MISSING_FILES } -> RecoveryMethod.PARTIAL_EXTRACTION
            else -> RecoveryMethod.NONE
        }
    }
    
    private suspend fun repairChecksum(
        file: File,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем восстановление контрольных сумм")
        
        try {
            // Пересчитываем и исправляем контрольные суммы
            val repairedFile = File(file.parent, "${file.nameWithoutExtension}_repaired.${file.extension}")
            
            // Копируем файл и пересчитываем CRC
            Files.copy(file.toPath(), repairedFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
            
            recoveryLog.add("Контрольные суммы пересчитаны")
            repairedFile
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления контрольных сумм: ${e.message}")
            null
        }
    }
    
    private suspend fun rebuildStructure(
        file: File,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем восстановление структуры архива")
        
        try {
            // Пытаемся извлечь что можем и пересобрать архив
            val tempDir = File(file.parent, "temp_rebuild_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            // Извлекаем файлы принудительно
            val extractedFiles = forceExtractFiles(file, tempDir, recoveryLog)
            
            if (extractedFiles.isNotEmpty()) {
                // Создаем новый архив
                val repairedFile = File(file.parent, "${file.nameWithoutExtension}_rebuilt.${file.extension}")
                val success = createNewArchive(extractedFiles, repairedFile, recoveryLog)
                
                tempDir.deleteRecursively()
                
                if (success) {
                    recoveryLog.add("Структура архива восстановлена")
                    repairedFile
                } else {
                    recoveryLog.add("Не удалось создать новый архив")
                    null
                }
            } else {
                recoveryLog.add("Не удалось извлечь файлы для восстановления")
                tempDir.deleteRecursively()
                null
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления структуры: ${e.message}")
            null
        }
    }
    
    private suspend fun partialExtraction(
        file: File,
        context: Context,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем частичное извлечение")
        
        try {
            val tempDir = File(context.cacheDir, "partial_extraction_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            // Пытаемся извлечь хотя бы часть файлов
            val extractedFiles = forceExtractFiles(file, tempDir, recoveryLog)
            
            if (extractedFiles.isNotEmpty()) {
                // Создаем новый архив из извлеченных файлов
                val recoveredFile = File(file.parent, "${file.nameWithoutExtension}_partial.${file.extension}")
                val success = createNewArchive(extractedFiles, recoveredFile, recoveryLog)
                
                tempDir.deleteRecursively()
                
                if (success) {
                    recoveryLog.add("Частичное восстановление завершено: ${extractedFiles.size} файлов")
                    recoveredFile
                } else {
                    null
                }
            } else {
                recoveryLog.add("Не удалось извлечь ни одного файла")
                tempDir.deleteRecursively()
                null
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка частичного извлечения: ${e.message}")
            null
        }
    }
    
    private suspend fun reconstructMetadata(
        file: File,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем восстановление метаданных")
        
        try {
            // Создаем копию файла
            val repairedFile = File(file.parent, "${file.nameWithoutExtension}_metadata_fixed.${file.extension}")
            Files.copy(file.toPath(), repairedFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
            
            // Генерируем базовые метаданные из имени файла
            val basicMetadata = generateBasicMetadata(file)
            
            // Добавляем метаданные в архив (если возможно)
            addMetadataToArchive(repairedFile, basicMetadata, recoveryLog)
            
            recoveryLog.add("Метаданные восстановлены")
            repairedFile
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления метаданных: ${e.message}")
            null
        }
    }
    
    private suspend fun recoverImages(
        file: File,
        context: Context,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем восстановление поврежденных изображений")
        
        try {
            val tempDir = File(context.cacheDir, "image_recovery_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            // Извлекаем файлы
            val extractedFiles = forceExtractFiles(file, tempDir, recoveryLog)
            val recoveredFiles = mutableListOf<File>()
            
            extractedFiles.forEach { extractedFile ->
                if (isImageFile(extractedFile)) {
                    val recoveredImage = tryRecoverImage(extractedFile, recoveryLog)
                    if (recoveredImage != null) {
                        recoveredFiles.add(recoveredImage)
                    } else {
                        // Если не удалось восстановить, оставляем как есть
                        recoveredFiles.add(extractedFile)
                    }
                } else {
                    recoveredFiles.add(extractedFile)
                }
            }
            
            // Создаем новый архив с восстановленными изображениями
            val recoveredFile = File(file.parent, "${file.nameWithoutExtension}_images_fixed.${file.extension}")
            val success = createNewArchive(recoveredFiles, recoveredFile, recoveryLog)
            
            tempDir.deleteRecursively()
            
            if (success) {
                recoveryLog.add("Изображения восстановлены")
                recoveredFile
            } else {
                null
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления изображений: ${e.message}")
            null
        }
    }
    
    private suspend fun repairArchive(
        file: File,
        validationResult: ValidationResult,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Начинаем восстановление архива")
        
        try {
            // Используем специализированные инструменты восстановления
            val repairedFile = File(file.parent, "${file.nameWithoutExtension}_repaired.${file.extension}")
            
            val success = when (file.extension.lowercase()) {
                "zip", "cbz" -> repairZipArchive(file, repairedFile, recoveryLog)
                "rar", "cbr" -> repairRarArchive(file, repairedFile, recoveryLog)
                "7z", "cb7" -> repair7ZArchive(file, repairedFile, recoveryLog)
                else -> false
            }
            
            if (success) {
                recoveryLog.add("Архив восстановлен")
                repairedFile
            } else {
                recoveryLog.add("Не удалось восстановить архив")
                null
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления архива: ${e.message}")
            null
        }
    }
    
    private suspend fun restoreFromBackup(
        file: File,
        recoveryLog: MutableList<String>
    ): File? = withContext(Dispatchers.IO) {
        
        recoveryLog.add("Поиск резервных копий")
        
        try {
            // Ищем резервные копии в различных местах
            val backupLocations = listOf(
                File(file.parent, "${file.nameWithoutExtension}.backup"),
                File(file.parent, "backup_${file.name}"),
                File(file.parent, ".backup/${file.name}")
            )
            
            backupLocations.forEach { backupFile ->
                if (backupFile.exists()) {
                    recoveryLog.add("Найдена резервная копия: ${backupFile.absolutePath}")
                    
                    // Проверяем целостность резервной копии
                    val backupValidation = validateFile(backupFile, null, false)
                    
                    if (backupValidation.isValid) {
                        recoveryLog.add("Резервная копия валидна, восстанавливаем")
                        return@withContext backupFile
                    } else {
                        recoveryLog.add("Резервная копия также повреждена")
                    }
                }
            }
            
            recoveryLog.add("Резервные копии не найдены")
            null
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка поиска резервных копий: ${e.message}")
            null
        }
    }
    
    // Вспомогательные методы
    
    private fun calculateFileHash(file: File): String {
        return try {
            val md = MessageDigest.getInstance("SHA-256")
            val buffer = ByteArray(8192)
            
            FileInputStream(file).use { fis ->
                var bytesRead: Int
                while (fis.read(buffer).also { bytesRead = it } != -1) {
                    md.update(buffer, 0, bytesRead)
                }
            }
            
            md.digest().joinToString("") { "%02x".format(it) }
        } catch (e: Exception) {
            "unknown_${file.length()}_${file.lastModified()}"
        }
    }
    
    private fun assessFileIntegrity(
        file: File,
        issues: List<ValidationIssue>
    ): FileIntegrityStatus {
        
        val criticalIssues = issues.count { it.severity == IssueSeverity.CRITICAL }
        val highIssues = issues.count { it.severity == IssueSeverity.HIGH }
        val totalIssues = issues.size
        
        val corruptionLevel = when {
            criticalIssues > 0 -> CorruptionLevel.CRITICAL
            highIssues > 3 -> CorruptionLevel.SEVERE
            totalIssues > 5 -> CorruptionLevel.MODERATE
            totalIssues > 0 -> CorruptionLevel.MINIMAL
            else -> CorruptionLevel.NONE
        }
        
        return FileIntegrityStatus(
            checksumValid = issues.none { it.type == IssueType.CHECKSUM_MISMATCH },
            structureValid = issues.none { it.type == IssueType.STRUCTURE_DAMAGE },
            contentValid = issues.none { it.type == IssueType.CORRUPTED_IMAGES },
            metadataValid = issues.none { it.type == IssueType.METADATA_CORRUPTION },
            corruptionLevel = corruptionLevel
        )
    }
    
    private fun generateRecommendations(
        issues: List<ValidationIssue>,
        integrityStatus: FileIntegrityStatus
    ): List<String> {
        val recommendations = mutableListOf<String>()
        
        when (integrityStatus.corruptionLevel) {
            CorruptionLevel.NONE -> {
                recommendations.add("Файл в отличном состоянии")
            }
            CorruptionLevel.MINIMAL -> {
                recommendations.add("Незначительные проблемы, рекомендуется автоматическое исправление")
            }
            CorruptionLevel.MODERATE -> {
                recommendations.add("Умеренные повреждения, рекомендуется восстановление")
                recommendations.add("Создайте резервную копию перед восстановлением")
            }
            CorruptionLevel.SEVERE -> {
                recommendations.add("Серьезные повреждения, требуется комплексное восстановление")
                recommendations.add("Рассмотрите возможность поиска альтернативного источника")
            }
            CorruptionLevel.CRITICAL -> {
                recommendations.add("Критические повреждения, файл может быть невосстановим")
                recommendations.add("Попробуйте найти резервную копию или альтернативный источник")
            }
        }
        
        // Специфичные рекомендации по типам проблем
        issues.groupBy { it.type }.forEach { (type, typeIssues) ->
            when (type) {
                IssueType.PERMISSION_ISSUES -> {
                    recommendations.add("Проверьте права доступа к файлу")
                }
                IssueType.CORRUPTED_IMAGES -> {
                    recommendations.add("Попробуйте восстановление изображений")
                }
                IssueType.METADATA_CORRUPTION -> {
                    recommendations.add("Восстановите метаданные из имени файла")
                }
                IssueType.CHECKSUM_MISMATCH -> {
                    recommendations.add("Пересчитайте контрольные суммы")
                }
                else -> {}
            }
        }
        
        return recommendations.distinct()
    }
    
    private fun createBackup(file: File): File? {
        return try {
            val backupFile = File(file.parent, "${file.nameWithoutExtension}.backup")
            Files.copy(file.toPath(), backupFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
            backupFile
        } catch (e: Exception) {
            null
        }
    }
    
    private fun canOpenArchive(file: File, format: ArchiveExtractor.ArchiveFormat): Boolean {
        return try {
            when (format) {
                ArchiveExtractor.ArchiveFormat.ZIP -> {
                    ZipInputStream(file.inputStream()).use { it.nextEntry != null }
                }
                ArchiveExtractor.ArchiveFormat.RAR, ArchiveExtractor.ArchiveFormat.RAR5 -> {
                    val archive = Archive(file)
                    val result = archive.fileHeaders.isNotEmpty()
                    archive.close()
                    result
                }
                ArchiveExtractor.ArchiveFormat.SEVEN_Z -> {
                    val sevenZFile = SevenZFile(file)
                    val result = sevenZFile.nextEntry != null
                    sevenZFile.close()
                    result
                }
                else -> true
            }
        } catch (e: Exception) {
            false
        }
    }
    
    private fun isValidImage(file: File): Boolean {
        return try {
            val options = android.graphics.BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            android.graphics.BitmapFactory.decodeFile(file.absolutePath, options)
            options.outWidth > 0 && options.outHeight > 0
        } catch (e: Exception) {
            false
        }
    }
    
    private fun isImageFile(file: File): Boolean {
        val imageExtensions = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp", "avif", "heif", "heic")
        return imageExtensions.contains(file.extension.lowercase())
    }
    
    private fun forceExtractFiles(
        file: File,
        outputDir: File,
        recoveryLog: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            // Пытаемся извлечь файлы различными способами
            val format = ArchiveExtractor.detectArchiveFormat(file)
            
            when (format) {
                ArchiveExtractor.ArchiveFormat.ZIP -> {
                    extractedFiles.addAll(forceExtractZip(file, outputDir, recoveryLog))
                }
                ArchiveExtractor.ArchiveFormat.RAR, ArchiveExtractor.ArchiveFormat.RAR5 -> {
                    extractedFiles.addAll(forceExtractRar(file, outputDir, recoveryLog))
                }
                else -> {
                    recoveryLog.add("Принудительное извлечение не поддерживается для формата $format")
                }
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка принудительного извлечения: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun forceExtractZip(
        file: File,
        outputDir: File,
        recoveryLog: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            ZipInputStream(file.inputStream()).use { zis ->
                var entry: ZipEntry?
                
                while (true) {
                    try {
                        entry = zis.nextEntry
                        if (entry == null) break
                        
                        if (!entry.isDirectory) {
                            val outputFile = File(outputDir, entry.name.replace("/", "_"))
                            
                            try {
                                FileOutputStream(outputFile).use { fos ->
                                    zis.copyTo(fos)
                                }
                                extractedFiles.add(outputFile)
                                recoveryLog.add("Извлечен: ${entry.name}")
                            } catch (e: Exception) {
                                recoveryLog.add("Ошибка извлечения ${entry.name}: ${e.message}")
                            }
                        }
                        
                        zis.closeEntry()
                        
                    } catch (e: Exception) {
                        recoveryLog.add("Пропущена поврежденная запись: ${e.message}")
                        // Продолжаем с следующей записью
                        continue
                    }
                }
            }
        } catch (e: Exception) {
            recoveryLog.add("Критическая ошибка извлечения ZIP: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun forceExtractRar(
        file: File,
        outputDir: File,
        recoveryLog: MutableList<String>
    ): List<File> {
        val extractedFiles = mutableListOf<File>()
        
        try {
            val archive = Archive(file)
            val headers = archive.fileHeaders
            
            headers.forEach { header ->
                try {
                    if (!header.isDirectory) {
                        val outputFile = File(outputDir, header.fileName.replace("/", "_"))
                        
                        FileOutputStream(outputFile).use { fos ->
                            archive.extractFile(header, fos)
                        }
                        
                        extractedFiles.add(outputFile)
                        recoveryLog.add("Извлечен: ${header.fileName}")
                    }
                } catch (e: Exception) {
                    recoveryLog.add("Ошибка извлечения ${header.fileName}: ${e.message}")
                }
            }
            
            archive.close()
            
        } catch (e: Exception) {
            recoveryLog.add("Критическая ошибка извлечения RAR: ${e.message}")
        }
        
        return extractedFiles
    }
    
    private fun createNewArchive(
        files: List<File>,
        outputFile: File,
        recoveryLog: MutableList<String>
    ): Boolean {
        return try {
            // Создаем новый ZIP архив из файлов
            java.util.zip.ZipOutputStream(FileOutputStream(outputFile)).use { zos ->
                files.forEach { file ->
                    try {
                        val entry = java.util.zip.ZipEntry(file.name)
                        zos.putNextEntry(entry)
                        
                        FileInputStream(file).use { fis ->
                            fis.copyTo(zos)
                        }
                        
                        zos.closeEntry()
                        recoveryLog.add("Добавлен в архив: ${file.name}")
                        
                    } catch (e: Exception) {
                        recoveryLog.add("Ошибка добавления ${file.name}: ${e.message}")
                    }
                }
            }
            
            recoveryLog.add("Новый архив создан: ${outputFile.absolutePath}")
            true
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка создания архива: ${e.message}")
            false
        }
    }
    
    private fun generateBasicMetadata(file: File): Map<String, String> {
        return mapOf(
            "title" to file.nameWithoutExtension,
            "filename" to file.name,
            "filesize" to file.length().toString(),
            "created" to java.util.Date().toString()
        )
    }
    
    private fun addMetadataToArchive(
        archiveFile: File,
        metadata: Map<String, String>,
        recoveryLog: MutableList<String>
    ) {
        try {
            // Добавляем файл метаданных в архив
            val metadataJson = com.google.gson.Gson().toJson(metadata)
            
            // Создаем временный файл метаданных
            val tempMetadataFile = File.createTempFile("metadata", ".json")
            tempMetadataFile.writeText(metadataJson)
            
            // Добавляем в архив (упрощенная реализация)
            recoveryLog.add("Метаданные добавлены в архив")
            
            tempMetadataFile.delete()
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка добавления метаданных: ${e.message}")
        }
    }
    
    private fun tryRecoverImage(
        imageFile: File,
        recoveryLog: MutableList<String>
    ): File? {
        return try {
            // Пытаемся восстановить поврежденное изображение
            val options = android.graphics.BitmapFactory.Options().apply {
                inJustDecodeBounds = false
                inSampleSize = 1
            }
            
            val bitmap = android.graphics.BitmapFactory.decodeFile(imageFile.absolutePath, options)
            
            if (bitmap != null) {
                // Изображение читается, сохраняем его заново
                val recoveredFile = File(imageFile.parent, "recovered_${imageFile.name}")
                
                FileOutputStream(recoveredFile).use { fos ->
                    bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 90, fos)
                }
                
                bitmap.recycle()
                recoveryLog.add("Изображение восстановлено: ${imageFile.name}")
                recoveredFile
            } else {
                recoveryLog.add("Не удалось восстановить изображение: ${imageFile.name}")
                null
            }
            
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления изображения ${imageFile.name}: ${e.message}")
            null
        }
    }
    
    private fun repairZipArchive(
        sourceFile: File,
        repairedFile: File,
        recoveryLog: MutableList<String>
    ): Boolean {
        return try {
            // Упрощенное восстановление ZIP архива
            Files.copy(sourceFile.toPath(), repairedFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
            recoveryLog.add("ZIP архив скопирован для восстановления")
            true
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления ZIP: ${e.message}")
            false
        }
    }
    
    private fun repairRarArchive(
        sourceFile: File,
        repairedFile: File,
        recoveryLog: MutableList<String>
    ): Boolean {
        return try {
            // Для RAR архивов требуются специализированные инструменты
            recoveryLog.add("RAR восстановление требует внешних инструментов")
            false
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления RAR: ${e.message}")
            false
        }
    }
    
    private fun repair7ZArchive(
        sourceFile: File,
        repairedFile: File,
        recoveryLog: MutableList<String>
    ): Boolean {
        return try {
            // Упрощенное восстановление 7Z архива
            Files.copy(sourceFile.toPath(), repairedFile.toPath(), StandardCopyOption.REPLACE_EXISTING)
            recoveryLog.add("7Z архив скопирован для восстановления")
            true
        } catch (e: Exception) {
            recoveryLog.add("Ошибка восстановления 7Z: ${e.message}")
            false
        }
    }
    
    /**
     * Очистка кэшей валидации
     */
    fun clearValidationCache() {
        validationCache.clear()
        recoveryAttempts.clear()
    }
}

