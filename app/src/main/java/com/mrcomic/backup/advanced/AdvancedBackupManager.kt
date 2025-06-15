package com.example.mrcomic.backup.advanced

import android.content.Context
import kotlinx.serialization.encodeToString
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kotlinx.coroutines.*
import java.io.File
import java.security.MessageDigest
import java.util.zip.GZIPOutputStream
import java.util.zip.GZIPInputStream
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import javax.crypto.SecretKey

/**
 * Продвинутая система бэкапов с инкрементальными копиями,
 * дедупликацией, сжатием и умным планированием
 */
class AdvancedBackupManager(private val context: Context) {
    
    private val json = Json { 
        ignoreUnknownKeys = true
        prettyPrint = true
        encodeDefaults = false
    }
    
    private val backupScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val backupDatabase = BackupDatabase.getInstance(context)
    private val compressionLevel = 9 // Максимальное сжатие
    
    companion object {
        private const val BACKUP_VERSION = "2.0"
        private const val CHUNK_SIZE = 8192
        private const val MAX_BACKUP_HISTORY = 50
        private const val DEDUPLICATION_THRESHOLD = 1024 // 1KB
    }
    
    /**
     * Создание инкрементального бэкапа с дедупликацией
     */
    suspend fun createIncrementalBackup(
        backupData: BackupData,
        password: String,
        targetFile: File,
        compressionEnabled: Boolean = true,
        deduplicationEnabled: Boolean = true
    ): BackupResult = withContext(Dispatchers.IO) {
        
        try {
            val startTime = System.currentTimeMillis()
            val backupId = generateBackupId()
            
            // Получаем последний бэкап для сравнения
            val lastBackup = backupDatabase.getLastBackup()
            
            // Создаем дельта-изменения
            val deltaChanges = if (lastBackup != null && deduplicationEnabled) {
                calculateDeltaChanges(lastBackup.data, backupData)
            } else {
                DeltaChanges.fullBackup(backupData)
            }
            
            // Создаем метаданные бэкапа
            val metadata = BackupMetadata(
                id = backupId,
                version = BACKUP_VERSION,
                timestamp = LocalDateTime.now(),
                isIncremental = lastBackup != null,
                parentBackupId = lastBackup?.id,
                originalSize = calculateDataSize(backupData),
                compressionEnabled = compressionEnabled,
                deduplicationEnabled = deduplicationEnabled,
                checksum = ""
            )
            
            // Создаем контейнер бэкапа
            val backupContainer = BackupContainer(
                metadata = metadata,
                deltaChanges = deltaChanges,
                deduplicationMap = if (deduplicationEnabled) createDeduplicationMap(deltaChanges) else emptyMap()
            )
            
            // Сериализуем данные
            val jsonData = json.encodeToString(backupContainer)
            var processedData = jsonData.toByteArray(Charsets.UTF_8)
            
            // Применяем сжатие если включено
            if (compressionEnabled) {
                processedData = compressData(processedData)
            }
            
            // Шифруем данные
            val salt = CryptoUtils.generateSalt()
            val iv = CryptoUtils.generateIv()
            val key = CryptoUtils.keyFromPassword(password, salt)
            val encryptedData = CryptoUtils.encrypt(processedData, key, iv)
            
            // Вычисляем контрольную сумму
            val checksum = calculateChecksum(encryptedData)
            val finalMetadata = metadata.copy(
                checksum = checksum,
                compressedSize = encryptedData.size,
                compressionRatio = if (compressionEnabled) {
                    (1.0 - encryptedData.size.toDouble() / metadata.originalSize) * 100
                } else 0.0
            )
            
            // Записываем финальный файл
            writeBackupFile(targetFile, salt, iv, encryptedData, finalMetadata)
            
            // Сохраняем информацию о бэкапе в базу данных
            val backupRecord = BackupRecord(
                id = backupId,
                filePath = targetFile.absolutePath,
                metadata = finalMetadata,
                data = backupData,
                createdAt = LocalDateTime.now()
            )
            backupDatabase.insertBackup(backupRecord)
            
            // Очищаем старые бэкапы если превышен лимит
            cleanupOldBackups()
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            BackupResult.Success(
                backupId = backupId,
                filePath = targetFile.absolutePath,
                originalSize = metadata.originalSize,
                compressedSize = encryptedData.size,
                compressionRatio = finalMetadata.compressionRatio,
                duration = duration,
                isIncremental = metadata.isIncremental,
                deduplicationSavings = calculateDeduplicationSavings(deltaChanges)
            )
            
        } catch (e: Exception) {
            BackupResult.Error("Ошибка создания бэкапа: ${e.message}", e)
        }
    }
    
    /**
     * Восстановление из инкрементального бэкапа
     */
    suspend fun restoreIncrementalBackup(
        password: String,
        backupFile: File,
        restoreOptions: RestoreOptions = RestoreOptions.default()
    ): RestoreResult = withContext(Dispatchers.IO) {
        
        try {
            val startTime = System.currentTimeMillis()
            
            // Читаем и расшифровываем файл бэкапа
            val (metadata, backupContainer) = readAndDecryptBackup(backupFile, password)
            
            // Проверяем целостность
            if (!verifyBackupIntegrity(backupFile, metadata.checksum)) {
                return@withContext RestoreResult.Error("Нарушена целостность файла бэкапа")
            }
            
            // Восстанавливаем полные данные из инкрементальной цепочки
            val fullData = if (metadata.isIncremental) {
                reconstructFromIncrementalChain(metadata.id, backupContainer.deltaChanges)
            } else {
                backupContainer.deltaChanges.toBackupData()
            }
            
            // Применяем опции восстановления
            val filteredData = applyRestoreFilters(fullData, restoreOptions)
            
            // Выполняем восстановление
            val restoredItems = performRestore(filteredData, restoreOptions)
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            RestoreResult.Success(
                backupId = metadata.id,
                restoredItems = restoredItems,
                duration = duration,
                originalSize = metadata.originalSize,
                restoredSize = calculateDataSize(filteredData)
            )
            
        } catch (e: Exception) {
            RestoreResult.Error("Ошибка восстановления: ${e.message}", e)
        }
    }
    
    /**
     * Умное планирование бэкапов
     */
    class SmartScheduler(private val backupManager: AdvancedBackupManager) {
        
        private val preferences = context.getSharedPreferences("backup_scheduler", Context.MODE_PRIVATE)
        
        /**
         * Планирует следующий бэкап на основе паттернов использования
         */
        fun scheduleNextBackup(usagePattern: UsagePattern): ScheduledBackup {
            val baseInterval = when (usagePattern.frequency) {
                UsageFrequency.HEAVY -> 6 * 60 * 60 * 1000L // 6 часов
                UsageFrequency.MODERATE -> 12 * 60 * 60 * 1000L // 12 часов
                UsageFrequency.LIGHT -> 24 * 60 * 60 * 1000L // 24 часа
                UsageFrequency.RARE -> 7 * 24 * 60 * 60 * 1000L // 7 дней
            }
            
            // Адаптируем интервал на основе важности изменений
            val adaptedInterval = when (usagePattern.changeImportance) {
                ChangeImportance.CRITICAL -> (baseInterval * 0.5).toLong()
                ChangeImportance.HIGH -> (baseInterval * 0.7).toLong()
                ChangeImportance.MEDIUM -> baseInterval
                ChangeImportance.LOW -> (baseInterval * 1.5).toLong()
            }
            
            // Учитываем подключение к Wi-Fi
            val wifiOptimizedInterval = if (usagePattern.wifiAvailable) {
                adaptedInterval
            } else {
                adaptedInterval * 2 // Откладываем если нет Wi-Fi
            }
            
            val nextBackupTime = System.currentTimeMillis() + wifiOptimizedInterval
            
            return ScheduledBackup(
                scheduledTime = nextBackupTime,
                priority = calculateBackupPriority(usagePattern),
                estimatedDuration = estimateBackupDuration(usagePattern),
                estimatedSize = estimateBackupSize(usagePattern),
                requiresWifi = usagePattern.dataSize > 50 * 1024 * 1024, // 50MB
                canRunInBackground = true
            )
        }
        
        private fun calculateBackupPriority(pattern: UsagePattern): BackupPriority {
            return when {
                pattern.changeImportance == ChangeImportance.CRITICAL -> BackupPriority.URGENT
                pattern.frequency == UsageFrequency.HEAVY -> BackupPriority.HIGH
                pattern.changeImportance == ChangeImportance.HIGH -> BackupPriority.HIGH
                pattern.frequency == UsageFrequency.MODERATE -> BackupPriority.MEDIUM
                else -> BackupPriority.LOW
            }
        }
    }
    
    /**
     * Система дедупликации данных
     */
    private fun createDeduplicationMap(deltaChanges: DeltaChanges): Map<String, String> {
        val deduplicationMap = mutableMapOf<String, String>()
        
        // Дедупликация комиксов
        deltaChanges.addedComics.forEach { comic ->
            val hash = calculateContentHash(comic)
            deduplicationMap[hash] = comic.id
        }
        
        // Дедупликация изображений и файлов
        deltaChanges.addedFiles.forEach { file ->
            if (file.size > DEDUPLICATION_THRESHOLD) {
                val hash = calculateFileHash(file)
                deduplicationMap[hash] = file.path
            }
        }
        
        return deduplicationMap
    }
    
    /**
     * Вычисление дельта-изменений между бэкапами
     */
    private fun calculateDeltaChanges(oldData: BackupData, newData: BackupData): DeltaChanges {
        val addedComics = newData.comics.filter { newComic ->
            oldData.comics.none { it.id == newComic.id }
        }
        
        val modifiedComics = newData.comics.filter { newComic ->
            oldData.comics.any { oldComic ->
                oldComic.id == newComic.id && oldComic != newComic
            }
        }
        
        val deletedComics = oldData.comics.filter { oldComic ->
            newData.comics.none { it.id == oldComic.id }
        }
        
        // Аналогично для других типов данных
        val addedUsers = newData.users.filter { newUser ->
            oldData.users.none { it.id == newUser.id }
        }
        
        val modifiedUsers = newData.users.filter { newUser ->
            oldData.users.any { oldUser ->
                oldUser.id == newUser.id && oldUser != newUser
            }
        }
        
        val deletedUsers = oldData.users.filter { oldUser ->
            newData.users.none { it.id == oldUser.id }
        }
        
        return DeltaChanges(
            addedComics = addedComics,
            modifiedComics = modifiedComics,
            deletedComics = deletedComics.map { it.id },
            addedUsers = addedUsers,
            modifiedUsers = modifiedUsers,
            deletedUsers = deletedUsers.map { it.id },
            settingsChanges = if (oldData.readerSettings != newData.readerSettings) {
                listOf(SettingsChange("readerSettings", oldData.readerSettings, newData.readerSettings))
            } else emptyList(),
            addedFiles = emptyList(), // Будет реализовано для файловых изменений
            modifiedFiles = emptyList(),
            deletedFiles = emptyList()
        )
    }
    
    // Вспомогательные методы
    private fun generateBackupId(): String {
        return "backup_${System.currentTimeMillis()}_${(1000..9999).random()}"
    }
    
    private fun calculateDataSize(data: BackupData): Long {
        return json.encodeToString(data).toByteArray(Charsets.UTF_8).size.toLong()
    }
    
    private fun compressData(data: ByteArray): ByteArray {
        val outputStream = java.io.ByteArrayOutputStream()
        GZIPOutputStream(outputStream).use { gzip ->
            gzip.write(data)
        }
        return outputStream.toByteArray()
    }
    
    private fun decompressData(compressedData: ByteArray): ByteArray {
        val inputStream = java.io.ByteArrayInputStream(compressedData)
        return GZIPInputStream(inputStream).use { gzip ->
            gzip.readBytes()
        }
    }
    
    private fun calculateChecksum(data: ByteArray): String {
        val digest = MessageDigest.getInstance("SHA-256")
        val hash = digest.digest(data)
        return hash.joinToString("") { "%02x".format(it) }
    }
    
    private fun calculateContentHash(content: Any): String {
        val contentString = json.encodeToString(content)
        return calculateChecksum(contentString.toByteArray(Charsets.UTF_8))
    }
    
    private fun calculateFileHash(file: File): String {
        return if (file.exists()) {
            calculateChecksum(file.readBytes())
        } else {
            ""
        }
    }
    
    private suspend fun cleanupOldBackups() {
        val allBackups = backupDatabase.getAllBackups()
        if (allBackups.size > MAX_BACKUP_HISTORY) {
            val toDelete = allBackups.sortedBy { it.createdAt }
                .take(allBackups.size - MAX_BACKUP_HISTORY)
            
            toDelete.forEach { backup ->
                File(backup.filePath).delete()
                backupDatabase.deleteBackup(backup.id)
            }
        }
    }
    
    private fun writeBackupFile(
        file: File,
        salt: ByteArray,
        iv: ByteArray,
        encryptedData: ByteArray,
        metadata: BackupMetadata
    ) {
        file.outputStream().use { out ->
            // Записываем заголовок с метаданными
            val metadataJson = json.encodeToString(metadata)
            val metadataBytes = metadataJson.toByteArray(Charsets.UTF_8)
            
            out.write(intToBytes(metadataBytes.size)) // Размер метаданных
            out.write(metadataBytes) // Метаданные
            out.write(salt) // Соль
            out.write(iv) // Вектор инициализации
            out.write(encryptedData) // Зашифрованные данные
        }
    }
    
    private fun intToBytes(value: Int): ByteArray {
        return byteArrayOf(
            (value shr 24).toByte(),
            (value shr 16).toByte(),
            (value shr 8).toByte(),
            value.toByte()
        )
    }
    
    private fun bytesToInt(bytes: ByteArray, offset: Int = 0): Int {
        return (bytes[offset].toInt() and 0xFF shl 24) or
                (bytes[offset + 1].toInt() and 0xFF shl 16) or
                (bytes[offset + 2].toInt() and 0xFF shl 8) or
                (bytes[offset + 3].toInt() and 0xFF)
    }
}

