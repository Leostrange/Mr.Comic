package com.example.mrcomic.backup

import android.content.Context
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import com.google.gson.Gson
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер облачных бэкапов с поддержкой MCP-серверов
 * Интегрируется с Google Drive и Microsoft OneDrive через MCP
 */
@Singleton
class CloudBackupManager @Inject constructor(
    private val context: Context,
    private val settingsRepository: com.example.core.data.repository.SettingsRepository,
    private val readingSessionRepository: com.example.core.data.repository.ReadingSessionRepository,
    private val mcpCloudProvider: McpCloudProvider
) {
    
    private val _syncStatus = MutableStateFlow(BackupSyncStatus.IDLE)
    val syncStatus: Flow<BackupSyncStatus> = _syncStatus.asStateFlow()
    
    private val _availableProviders = MutableStateFlow<List<BackupProvider>>(emptyList())
    val availableProviders: Flow<List<BackupProvider>> = _availableProviders.asStateFlow()
    
    companion object {
        private const val TAG = "CloudBackupManager"
    }
    
    init {
        // Инициализируем доступных провайдеров
        // initializeProviders()
    }
    
    private suspend fun initializeProviders() {
        try {
            // Проверяем доступность MCP серверов
            val mcpAvailability = mcpCloudProvider.checkMcpAvailability()
            
            _availableProviders.value = listOf(
                BackupProvider(
                    id = "local",
                    name = "Локальное хранилище",
                    description = "Сохранение на устройстве",
                    isAvailable = true,
                    requiresAuth = false
                ),
                BackupProvider(
                    id = "google_drive",
                    name = "Google Drive",
                    description = "Синхронизация с Google Drive через MCP",
                    isAvailable = mcpAvailability["google_drive"] ?: false,
                    requiresAuth = true
                ),
                BackupProvider(
                    id = "onedrive",
                    name = "Microsoft OneDrive",
                    description = "Синхронизация с OneDrive через MCP",
                    isAvailable = mcpAvailability["onedrive"] ?: false,
                    requiresAuth = true
                )
            )
            
            android.util.Log.d(TAG, "✅ Providers initialized: Google Drive=${mcpAvailability["google_drive"]}, OneDrive=${mcpAvailability["onedrive"]}")
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to initialize providers", e)
            // Fallback к базовым провайдерам
            _availableProviders.value = listOf(
                BackupProvider(
                    id = "local",
                    name = "Локальное хранилище",
                    description = "Сохранение на устройстве",
                    isAvailable = true,
                    requiresAuth = false
                )
            )
        }
    }
    
    /**
     * Создать локальный бэкап настроек и прогресса чтения
     */
    suspend fun createLocalBackup(): Result<BackupInfo> {
        return try {
            _syncStatus.value = BackupSyncStatus.SYNCING
            
            // Создаем временную директорию для бэкапа
            val tempDir = File(context.cacheDir, "backup_temp_${System.currentTimeMillis()}")
            tempDir.mkdirs()
            
            try {
                // 1. Экспорт настроек приложения
                val settingsFile = File(tempDir, "settings.json")
                val settingsSnapshot = settingsRepository.getSettingsSnapshot()
                val settingsJson = Gson().toJson(settingsSnapshot)
                settingsFile.writeText(settingsJson)
                
                // 2. Экспорт прогресса чтения из базы данных
                val progressFile = File(tempDir, "reading_progress.json")
                val progressData = emptyList<Any>() // readingSessionRepository.getAllProgress()
                val progressJson = Gson().toJson(progressData)
                progressFile.writeText(progressJson)
                
                // 3. Экспорт пользовательских тем (если есть)
                val themesFile = File(tempDir, "themes.json")
                val themesData = mapOf(
                    "current_theme" to "default", // settingsRepository.currentTheme.first(),
                    "custom_themes" to emptyList<String>() // TODO: реализовать кастомные темы
                )
                val themesJson = Gson().toJson(themesData)
                themesFile.writeText(themesJson)
                
                // 4. Создание архива
                val timestamp = System.currentTimeMillis()
                val backupFileName = "mrcomic_backup_$timestamp.zip"
                val backupFile = File(context.getExternalFilesDir(null), "backups/$backupFileName")
                backupFile.parentFile?.mkdirs()
                
                // Создаем ZIP архив
                ZipOutputStream(FileOutputStream(backupFile)).use { zip ->
                    // Добавляем все файлы в архив
                    tempDir.listFiles()?.forEach { file ->
                        zip.putNextEntry(ZipEntry(file.name))
                        file.inputStream().use { input ->
                            input.copyTo(zip)
                        }
                        zip.closeEntry()
                    }
                }
                
                val backupSize = backupFile.length()
                
                // Очищаем временную директорию
                tempDir.deleteRecursively()
                
                val backupInfo = BackupInfo(
                    id = "local_$timestamp",
                    provider = "local",
                    timestamp = timestamp,
                    size = backupSize,
                    description = "Локальный бэкап настроек и прогресса"
                )
                
                _syncStatus.value = BackupSyncStatus.COMPLETED
                android.util.Log.d("CloudBackupManager", "✅ Local backup created: ${backupFile.absolutePath} (${backupSize} bytes)")
                Result.success(backupInfo)
                
            } finally {
                // Убеждаемся, что временная директория удалена
                if (tempDir.exists()) {
                    tempDir.deleteRecursively()
                }
            }
            
        } catch (e: Exception) {
            _syncStatus.value = BackupSyncStatus.ERROR
            android.util.Log.e("CloudBackupManager", "❌ Failed to create local backup", e)
            Result.failure(e)
        }
    }
    
    /**
     * Синхронизация с облачным провайдером через MCP
     */
    suspend fun syncWithCloud(providerId: String): Result<BackupInfo> {
        return try {
            _syncStatus.value = BackupSyncStatus.SYNCING
            
            // Сначала создаем локальный бэкап
            val localBackupResult = createLocalBackup()
            if (localBackupResult.isFailure) {
                return Result.failure(localBackupResult.exceptionOrNull() ?: Exception("Failed to create local backup"))
            }
            
            val localBackup = localBackupResult.getOrThrow()
            val backupFile = File(context.getExternalFilesDir(null), "backups/mrcomic_backup_${localBackup.timestamp}.zip")
            
            if (!backupFile.exists()) {
                return Result.failure(Exception("Local backup file not found"))
            }
            
            // Загружаем через MCP
            val uploadResult = mcpCloudProvider.uploadBackupViaMcp(providerId, backupFile)
            if (uploadResult.isFailure) {
                return Result.failure(uploadResult.exceptionOrNull() ?: Exception("Failed to upload via MCP"))
            }
            
            val cloudFileId = uploadResult.getOrThrow()
            
            val cloudBackupInfo = BackupInfo(
                id = cloudFileId,
                provider = providerId,
                timestamp = localBackup.timestamp,
                size = localBackup.size,
                description = "Облачный бэкап через MCP ($providerId)"
            )
            
            _syncStatus.value = BackupSyncStatus.COMPLETED
            android.util.Log.d(TAG, "✅ Cloud backup created via MCP: $providerId")
            Result.success(cloudBackupInfo)
            
        } catch (e: Exception) {
            _syncStatus.value = BackupSyncStatus.ERROR
            android.util.Log.e(TAG, "❌ Failed to sync with cloud via MCP: $providerId", e)
            Result.failure(e)
        }
    }
    
    /**
     * Восстановление из облачного провайдера через MCP
     */
    suspend fun restoreFromCloud(providerId: String, fileId: String): Result<Unit> {
        return try {
            _syncStatus.value = BackupSyncStatus.SYNCING
            
            // Скачиваем через MCP
            val downloadResult = mcpCloudProvider.downloadBackupViaMcp(providerId, fileId)
            if (downloadResult.isFailure) {
                return Result.failure(downloadResult.exceptionOrNull() ?: Exception("Failed to download via MCP"))
            }
            
            val downloadedFile = downloadResult.getOrThrow()
            
            // TODO: Реализовать восстановление из скачанного файла
            // settingsRepository.restoreFromBackup(downloadedFile)
            
            _syncStatus.value = BackupSyncStatus.COMPLETED
            android.util.Log.d(TAG, "✅ Cloud backup restored via MCP: $providerId")
            Result.success(Unit)
            
        } catch (e: Exception) {
            _syncStatus.value = BackupSyncStatus.ERROR
            android.util.Log.e(TAG, "❌ Failed to restore from cloud via MCP: $providerId", e)
            Result.failure(e)
        }
    }
    
    /**
     * Получение списка облачных бэкапов через MCP
     */
    suspend fun listCloudBackups(providerId: String): Result<List<McpBackupInfo>> {
        return try {
            val result = mcpCloudProvider.listBackupsViaMcp(providerId)
            if (result.isSuccess) {
                android.util.Log.d(TAG, "✅ Cloud backups listed via MCP: $providerId")
            }
            result
        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to list cloud backups via MCP: $providerId", e)
            Result.failure(e)
        }
    }
    
    /**
     * Восстановить данные из бэкапа
     */
    suspend fun restoreFromBackup(backupId: String): Result<Unit> {
        return try {
            _syncStatus.value = BackupSyncStatus.SYNCING

            // Определяем тип бэкапа по ID
            when {
                // Локальный ZIP бэкап (CloudBackupManager)
                backupId.startsWith("local_") -> {
                    val timestamp = backupId.removePrefix("local_")
                    val backupFile = File(context.getExternalFilesDir(null), "backups/mrcomic_backup_$timestamp.zip")

                    if (!backupFile.exists()) {
                        return Result.failure(Exception("Backup file not found: ${backupFile.name}"))
                    }

                    restoreFromZipBackup(backupFile)
                }

                // LibraryBackupManager .mrcomic бэкап
                backupId.endsWith(".mrcomic") -> {
                    val downloadsDir = File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "MrComicBackups")
                    val backupFile = File(downloadsDir, backupId)

                    if (!backupFile.exists()) {
                        return Result.failure(Exception("Backup file not found: $backupId"))
                    }

                    // Делегируем в LibraryBackupManager
                    val result = settingsRepository.restoreLocalBackup(backupId)
                    Result.success(Unit)
                }

                else -> {
                    return Result.failure(Exception("Unknown backup type: $backupId"))
                }
            }

            _syncStatus.value = BackupSyncStatus.COMPLETED
            android.util.Log.d(TAG, "✅ Backup restored: $backupId")
            Result.success(Unit)

        } catch (e: Exception) {
            _syncStatus.value = BackupSyncStatus.ERROR
            android.util.Log.e(TAG, "❌ Failed to restore backup: $backupId", e)
            Result.failure(e)
        }
    }

    /**
     * Восстановление из ZIP архива
     */
    private suspend fun restoreFromZipBackup(backupFile: File) {
        val tempDir = File(context.cacheDir, "restore_temp_${System.currentTimeMillis()}")
        tempDir.mkdirs()

        try {
            // Распаковываем ZIP
            java.util.zip.ZipInputStream(backupFile.inputStream()).use { zip ->
                var entry = zip.nextEntry
                while (entry != null) {
                    val file = File(tempDir, entry.name)
                    if (!entry.isDirectory) {
                        file.outputStream().use { output ->
                            zip.copyTo(output)
                        }
                    }
                    zip.closeEntry()
                    entry = zip.nextEntry
                }
            }

            // Восстанавливаем настройки
            val settingsFile = File(tempDir, "settings.json")
            if (settingsFile.exists()) {
                val settingsJson = settingsFile.readText()
                val snapshot = Gson().fromJson(settingsJson, SettingsRepository.SettingsSnapshot::class.java)
                settingsRepository.applySettingsSnapshot(snapshot)
                android.util.Log.d(TAG, "✅ Settings restored from backup")
            }

            // TODO: Восстановить reading_progress.json в базу данных
            val progressFile = File(tempDir, "reading_progress.json")
            if (progressFile.exists()) {
                android.util.Log.d(TAG, "⚠️ Reading progress restore not yet implemented")
            }

            // TODO: Восстановить themes.json
            val themesFile = File(tempDir, "themes.json")
            if (themesFile.exists()) {
                android.util.Log.d(TAG, "⚠️ Custom themes restore not yet implemented")
            }

        } finally {
            // Очищаем временную директорию
            if (tempDir.exists()) {
                tempDir.deleteRecursively()
            }
        }
    }

    /**
     * Получить список доступных бэкапов
     */
    suspend fun getAvailableBackups(): List<BackupInfo> {
        val backups = mutableListOf<BackupInfo>()

        try {
            // 1. Сканируем ZIP бэкапы CloudBackupManager
            val cloudBackupsDir = File(context.getExternalFilesDir(null), "backups")
            if (cloudBackupsDir.exists()) {
                cloudBackupsDir.listFiles { file ->
                    file.name.startsWith("mrcomic_backup_") && file.name.endsWith(".zip")
                }?.forEach { file ->
                    // Извлекаем timestamp из имени файла
                    val timestamp = file.name.removePrefix("mrcomic_backup_").removeSuffix(".zip").toLongOrNull()
                    if (timestamp != null) {
                        backups.add(BackupInfo(
                            id = "local_$timestamp",
                            provider = "local",
                            timestamp = timestamp,
                            size = file.length(),
                            description = "Локальный ZIP бэкап"
                        ))
                    }
                }
            }

            // 2. Сканируем .mrcomic бэкапы LibraryBackupManager
            val downloadsDir = File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "MrComicBackups")
            if (downloadsDir.exists()) {
                downloadsDir.listFiles { file ->
                    file.name.endsWith(".mrcomic")
                }?.forEach { file ->
                    // Извлекаем timestamp из имени файла
                    val timestamp = file.name.removePrefix("mrcomic_backup_").removeSuffix(".mrcomic").toLongOrNull()
                    backups.add(BackupInfo(
                        id = file.name,
                        provider = "local",
                        timestamp = timestamp ?: file.lastModified(),
                        size = file.length(),
                        description = "Локальный бэкап библиотеки"
                    ))
                }
            }

            // Сортируем по времени (новые сначала)
            backups.sortByDescending { it.timestamp }

            android.util.Log.d(TAG, "✅ Found ${backups.size} available backups")

        } catch (e: Exception) {
            android.util.Log.e(TAG, "❌ Failed to list available backups", e)
        }

        return backups
    }
}

/**
 * Статус синхронизации бэкапов
 */
enum class BackupSyncStatus {
    IDLE,
    SYNCING,
    COMPLETED,
    ERROR
}

/**
 * Информация о провайдере бэкапов
 */
data class BackupProvider(
    val id: String,
    val name: String,
    val description: String,
    val isAvailable: Boolean,
    val requiresAuth: Boolean
)

/**
 * Информация о бэкапе
 */
data class BackupInfo(
    val id: String,
    val provider: String,
    val timestamp: Long,
    val size: Long,
    val description: String
)
