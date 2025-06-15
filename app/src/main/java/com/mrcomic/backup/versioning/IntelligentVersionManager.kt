package com.example.mrcomic.backup.versioning

import android.content.Context
import kotlinx.coroutines.*
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import java.io.File
import java.time.LocalDateTime
import java.time.temporal.ChronoUnit

/**
 * Интеллектуальная система управления версиями бэкапов
 * Автоматическое управление жизненным циклом, умная очистка, восстановление на точку времени
 */
class IntelligentVersionManager(private val context: Context) {
    
    private val json = Json { ignoreUnknownKeys = true; prettyPrint = true }
    private val versionScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val versionDatabase = VersionDatabase.getInstance(context)
    
    companion object {
        private const val VERSION_MANAGER_VERSION = "1.0"
        private const val DEFAULT_MAX_VERSIONS = 100
        private const val CLEANUP_INTERVAL_HOURS = 6
    }
    
    /**
     * Создание новой версии с интеллектуальным управлением
     */
    suspend fun createVersion(
        backupFile: File,
        versionType: VersionType,
        metadata: VersionMetadata,
        retentionPolicy: RetentionPolicy = RetentionPolicy.default()
    ): VersionResult = withContext(Dispatchers.IO) {
        
        try {
            val startTime = System.currentTimeMillis()
            val versionId = generateVersionId()
            
            // Анализируем существующие версии
            val existingVersions = versionDatabase.getAllVersions()
            val versionAnalysis = analyzeVersionHistory(existingVersions, versionType)
            
            // Определяем важность версии
            val importance = calculateVersionImportance(versionType, versionAnalysis, metadata)
            
            // Создаем запись версии
            val version = BackupVersion(
                id = versionId,
                filePath = backupFile.absolutePath,
                fileSize = backupFile.length(),
                versionType = versionType,
                importance = importance,
                metadata = metadata,
                createdAt = LocalDateTime.now(),
                retentionPolicy = retentionPolicy,
                parentVersionId = findParentVersion(existingVersions, versionType),
                checksum = calculateFileChecksum(backupFile),
                tags = generateAutomaticTags(versionType, metadata)
            )
            
            // Сохраняем версию в базу данных
            versionDatabase.insertVersion(version)
            
            // Применяем политику хранения
            applyRetentionPolicy(retentionPolicy)
            
            // Обновляем индексы для быстрого поиска
            updateVersionIndexes(version)
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            VersionResult.Success(
                versionId = versionId,
                versionNumber = calculateVersionNumber(existingVersions, versionType),
                importance = importance,
                retainedVersions = versionDatabase.getVersionCount(),
                cleanedVersions = 0, // Будет обновлено после очистки
                duration = duration
            )
            
        } catch (e: Exception) {
            VersionResult.Error("Ошибка создания версии: ${e.message}", e)
        }
    }
    
    /**
     * Восстановление на определенную точку времени
     */
    suspend fun restoreToPointInTime(
        targetDateTime: LocalDateTime,
        restoreOptions: PointInTimeRestoreOptions = PointInTimeRestoreOptions.default()
    ): RestoreToPointResult = withContext(Dispatchers.IO) {
        
        try {
            val startTime = System.currentTimeMillis()
            
            // Находим лучшую версию для восстановления
            val targetVersion = findBestVersionForDateTime(targetDateTime, restoreOptions)
                ?: return@withContext RestoreToPointResult.Error("Не найдена подходящая версия для времени $targetDateTime")
            
            // Проверяем целостность версии
            if (!verifyVersionIntegrity(targetVersion)) {
                // Пытаемся найти альтернативную версию
                val alternativeVersion = findAlternativeVersion(targetDateTime, targetVersion)
                    ?: return@withContext RestoreToPointResult.Error("Версия повреждена и альтернатива не найдена")
                
                return@withContext restoreVersion(alternativeVersion, restoreOptions, startTime)
            }
            
            restoreVersion(targetVersion, restoreOptions, startTime)
            
        } catch (e: Exception) {
            RestoreToPointResult.Error("Ошибка восстановления: ${e.message}", e)
        }
    }
    
    /**
     * Умная очистка версий на основе политик хранения
     */
    suspend fun performIntelligentCleanup(
        cleanupPolicy: CleanupPolicy = CleanupPolicy.default()
    ): CleanupResult = withContext(Dispatchers.IO) {
        
        try {
            val startTime = System.currentTimeMillis()
            val allVersions = versionDatabase.getAllVersions()
            
            // Анализируем версии для очистки
            val cleanupAnalysis = analyzeVersionsForCleanup(allVersions, cleanupPolicy)
            
            // Группируем версии по стратегиям очистки
            val versionGroups = groupVersionsByCleanupStrategy(cleanupAnalysis.candidatesForDeletion)
            
            var deletedVersions = 0
            var freedSpace = 0L
            val deletionLog = mutableListOf<VersionDeletion>()
            
            // Применяем стратегии очистки
            versionGroups.forEach { (strategy, versions) ->
                val strategyResult = applyCleanupStrategy(strategy, versions, cleanupPolicy)
                deletedVersions += strategyResult.deletedCount
                freedSpace += strategyResult.freedSpace
                deletionLog.addAll(strategyResult.deletions)
            }
            
            // Обновляем статистику
            updateCleanupStatistics(deletedVersions, freedSpace)
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            CleanupResult.Success(
                deletedVersions = deletedVersions,
                freedSpace = freedSpace,
                remainingVersions = allVersions.size - deletedVersions,
                duration = duration,
                deletionLog = deletionLog,
                nextCleanupRecommended = calculateNextCleanupTime(cleanupPolicy)
            )
            
        } catch (e: Exception) {
            CleanupResult.Error("Ошибка очистки: ${e.message}", e)
        }
    }
    
    /**
     * Создание снимка состояния (snapshot)
     */
    suspend fun createSnapshot(
        name: String,
        description: String = "",
        tags: List<String> = emptyList(),
        isManual: Boolean = true
    ): SnapshotResult = withContext(Dispatchers.IO) {
        
        try {
            val snapshotId = generateSnapshotId()
            val currentTime = LocalDateTime.now()
            
            // Получаем текущее состояние всех данных
            val currentState = captureCurrentState()
            
            // Создаем снимок
            val snapshot = Snapshot(
                id = snapshotId,
                name = name,
                description = description,
                tags = tags + generateAutomaticSnapshotTags(),
                createdAt = currentTime,
                isManual = isManual,
                state = currentState,
                size = calculateSnapshotSize(currentState),
                checksum = calculateSnapshotChecksum(currentState)
            )
            
            // Сохраняем снимок
            versionDatabase.insertSnapshot(snapshot)
            
            SnapshotResult.Success(
                snapshotId = snapshotId,
                name = name,
                size = snapshot.size,
                itemCount = currentState.itemCount
            )
            
        } catch (e: Exception) {
            SnapshotResult.Error("Ошибка создания снимка: ${e.message}", e)
        }
    }
    
    /**
     * Восстановление из снимка
     */
    suspend fun restoreFromSnapshot(
        snapshotId: String,
        restoreOptions: SnapshotRestoreOptions = SnapshotRestoreOptions.default()
    ): SnapshotRestoreResult = withContext(Dispatchers.IO) {
        
        try {
            val snapshot = versionDatabase.getSnapshot(snapshotId)
                ?: return@withContext SnapshotRestoreResult.Error("Снимок $snapshotId не найден")
            
            // Проверяем целостность снимка
            if (!verifySnapshotIntegrity(snapshot)) {
                return@withContext SnapshotRestoreResult.Error("Снимок поврежден")
            }
            
            // Создаем резервную копию текущего состояния если требуется
            val backupSnapshot = if (restoreOptions.createBackupBeforeRestore) {
                createSnapshot("auto_backup_before_restore_${snapshotId}", "Автоматическая резервная копия перед восстановлением", isManual = false)
            } else null
            
            // Восстанавливаем состояние
            val restoredItems = restoreSnapshotState(snapshot.state, restoreOptions)
            
            SnapshotRestoreResult.Success(
                snapshotId = snapshotId,
                snapshotName = snapshot.name,
                restoredItems = restoredItems,
                backupSnapshotId = (backupSnapshot as? SnapshotResult.Success)?.snapshotId
            )
            
        } catch (e: Exception) {
            SnapshotRestoreResult.Error("Ошибка восстановления из снимка: ${e.message}", e)
        }
    }
    
    /**
     * Сравнение версий и анализ изменений
     */
    suspend fun compareVersions(
        version1Id: String,
        version2Id: String
    ): VersionComparisonResult = withContext(Dispatchers.IO) {
        
        try {
            val version1 = versionDatabase.getVersion(version1Id)
                ?: return@withContext VersionComparisonResult.Error("Версия $version1Id не найдена")
            
            val version2 = versionDatabase.getVersion(version2Id)
                ?: return@withContext VersionComparisonResult.Error("Версия $version2Id не найдена")
            
            // Загружаем данные версий
            val data1 = loadVersionData(version1)
            val data2 = loadVersionData(version2)
            
            // Анализируем различия
            val differences = analyzeDataDifferences(data1, data2)
            
            VersionComparisonResult.Success(
                version1 = version1,
                version2 = version2,
                differences = differences,
                similarityPercentage = calculateSimilarity(differences),
                changesSummary = generateChangesSummary(differences)
            )
            
        } catch (e: Exception) {
            VersionComparisonResult.Error("Ошибка сравнения версий: ${e.message}", e)
        }
    }
    
    /**
     * Автоматическое создание версий по расписанию
     */
    fun startAutomaticVersioning(config: AutoVersioningConfig) {
        versionScope.launch {
            while (config.isEnabled) {
                try {
                    // Проверяем условия для создания автоматической версии
                    if (shouldCreateAutomaticVersion(config)) {
                        val latestBackup = getLatestBackupFile()
                        if (latestBackup != null) {
                            val metadata = VersionMetadata(
                                description = "Автоматическая версия",
                                createdBy = "system",
                                changesSummary = detectChangesSinceLastVersion()
                            )
                            
                            createVersion(
                                latestBackup,
                                VersionType.AUTOMATIC,
                                metadata,
                                config.retentionPolicy
                            )
                        }
                    }
                    
                    // Выполняем периодическую очистку
                    if (shouldPerformCleanup(config)) {
                        performIntelligentCleanup(config.cleanupPolicy)
                    }
                    
                    delay(config.checkInterval)
                    
                } catch (e: Exception) {
                    android.util.Log.e("AutoVersioning", "Ошибка автоматического версионирования", e)
                    delay(config.errorRetryInterval)
                }
            }
        }
    }
    
    // Вспомогательные методы
    private fun generateVersionId(): String {
        return "ver_${System.currentTimeMillis()}_${(1000..9999).random()}"
    }
    
    private fun generateSnapshotId(): String {
        return "snap_${System.currentTimeMillis()}_${(1000..9999).random()}"
    }
    
    private fun calculateVersionImportance(
        type: VersionType,
        analysis: VersionAnalysis,
        metadata: VersionMetadata
    ): VersionImportance {
        return when (type) {
            VersionType.MANUAL -> VersionImportance.HIGH
            VersionType.MILESTONE -> VersionImportance.CRITICAL
            VersionType.AUTOMATIC -> {
                if (analysis.significantChanges) VersionImportance.MEDIUM
                else VersionImportance.LOW
            }
            VersionType.EMERGENCY -> VersionImportance.CRITICAL
        }
    }
    
    private fun calculateVersionNumber(existingVersions: List<BackupVersion>, type: VersionType): String {
        val typeVersions = existingVersions.filter { it.versionType == type }
        val nextNumber = typeVersions.size + 1
        return when (type) {
            VersionType.MANUAL -> "M$nextNumber"
            VersionType.AUTOMATIC -> "A$nextNumber"
            VersionType.MILESTONE -> "MS$nextNumber"
            VersionType.EMERGENCY -> "E$nextNumber"
        }
    }
    
    private fun generateAutomaticTags(type: VersionType, metadata: VersionMetadata): List<String> {
        val tags = mutableListOf<String>()
        tags.add(type.name.lowercase())
        
        if (metadata.changesSummary.isNotEmpty()) {
            tags.add("has_changes")
        }
        
        // Добавляем временные теги
        val now = LocalDateTime.now()
        tags.add("${now.year}")
        tags.add("${now.month.name.lowercase()}")
        tags.add("week_${now.dayOfYear / 7 + 1}")
        
        return tags
    }
    
    private suspend fun applyRetentionPolicy(policy: RetentionPolicy) {
        val allVersions = versionDatabase.getAllVersions()
        val versionsToDelete = selectVersionsForDeletion(allVersions, policy)
        
        versionsToDelete.forEach { version ->
            deleteVersion(version)
        }
    }
    
    private fun selectVersionsForDeletion(versions: List<BackupVersion>, policy: RetentionPolicy): List<BackupVersion> {
        val sortedVersions = versions.sortedByDescending { it.createdAt }
        val toDelete = mutableListOf<BackupVersion>()
        
        // Применяем правила хранения
        if (sortedVersions.size > policy.maxVersions) {
            val excess = sortedVersions.drop(policy.maxVersions)
            toDelete.addAll(excess.filter { it.importance != VersionImportance.CRITICAL })
        }
        
        // Удаляем старые версии
        val cutoffDate = LocalDateTime.now().minus(policy.maxAge.toDays(), ChronoUnit.DAYS)
        val oldVersions = sortedVersions.filter { 
            it.createdAt.isBefore(cutoffDate) && it.importance == VersionImportance.LOW 
        }
        toDelete.addAll(oldVersions)
        
        return toDelete.distinct()
    }
    
    private suspend fun deleteVersion(version: BackupVersion) {
        try {
            // Удаляем файл
            File(version.filePath).delete()
            
            // Удаляем запись из базы данных
            versionDatabase.deleteVersion(version.id)
            
        } catch (e: Exception) {
            android.util.Log.e("VersionManager", "Ошибка удаления версии ${version.id}", e)
        }
    }
}

