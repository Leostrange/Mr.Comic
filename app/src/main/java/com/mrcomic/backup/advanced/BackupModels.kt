package com.example.mrcomic.backup.advanced

import kotlinx.serialization.Serializable
import java.time.LocalDateTime
import com.example.mrcomic.theme.data.model.Comic
import com.example.mrcomic.theme.data.model.User
import com.example.mrcomic.data.ReaderSettings
import com.example.mrcomic.data.ReadingStats

/**
 * Метаданные бэкапа с расширенной информацией
 */
@Serializable
data class BackupMetadata(
    val id: String,
    val version: String,
    val timestamp: LocalDateTime,
    val isIncremental: Boolean,
    val parentBackupId: String?,
    val originalSize: Long,
    val compressedSize: Long = 0,
    val compressionEnabled: Boolean,
    val compressionRatio: Double = 0.0,
    val deduplicationEnabled: Boolean,
    val checksum: String,
    val deviceInfo: DeviceInfo? = null,
    val appVersion: String = "2.0.0"
)

/**
 * Контейнер для бэкапа с дельта-изменениями
 */
@Serializable
data class BackupContainer(
    val metadata: BackupMetadata,
    val deltaChanges: DeltaChanges,
    val deduplicationMap: Map<String, String> = emptyMap()
)

/**
 * Дельта-изменения между бэкапами
 */
@Serializable
data class DeltaChanges(
    val addedComics: List<Comic> = emptyList(),
    val modifiedComics: List<Comic> = emptyList(),
    val deletedComics: List<String> = emptyList(),
    val addedUsers: List<User> = emptyList(),
    val modifiedUsers: List<User> = emptyList(),
    val deletedUsers: List<String> = emptyList(),
    val settingsChanges: List<SettingsChange> = emptyList(),
    val addedStats: List<ReadingStats> = emptyList(),
    val modifiedStats: List<ReadingStats> = emptyList(),
    val deletedStats: List<String> = emptyList(),
    val addedFiles: List<FileChange> = emptyList(),
    val modifiedFiles: List<FileChange> = emptyList(),
    val deletedFiles: List<String> = emptyList()
) {
    companion object {
        fun fullBackup(data: BackupData): DeltaChanges {
            return DeltaChanges(
                addedComics = data.comics,
                addedUsers = data.users,
                addedStats = data.readingStats,
                settingsChanges = listOf(
                    SettingsChange("readerSettings", null, data.readerSettings)
                )
            )
        }
    }
    
    fun toBackupData(): BackupData {
        // Восстанавливаем полные данные из дельта-изменений
        val settings = settingsChanges.lastOrNull()?.newValue as? ReaderSettings
            ?: ReaderSettings.default()
        
        return BackupData(
            comics = addedComics + modifiedComics,
            users = addedUsers + modifiedUsers,
            readerSettings = settings,
            readingStats = addedStats + modifiedStats
        )
    }
}

/**
 * Изменение настроек
 */
@Serializable
data class SettingsChange(
    val key: String,
    val oldValue: Any?,
    val newValue: Any?
)

/**
 * Изменение файла
 */
@Serializable
data class FileChange(
    val path: String,
    val size: Long,
    val hash: String,
    val mimeType: String?,
    val lastModified: Long
)

/**
 * Информация об устройстве
 */
@Serializable
data class DeviceInfo(
    val deviceId: String,
    val deviceName: String,
    val osVersion: String,
    val appVersion: String,
    val architecture: String
)

/**
 * Результат операции бэкапа
 */
sealed class BackupResult {
    data class Success(
        val backupId: String,
        val filePath: String,
        val originalSize: Long,
        val compressedSize: Long,
        val compressionRatio: Double,
        val duration: Long,
        val isIncremental: Boolean,
        val deduplicationSavings: Long
    ) : BackupResult()
    
    data class Error(
        val message: String,
        val exception: Throwable? = null
    ) : BackupResult()
}

/**
 * Результат операции восстановления
 */
sealed class RestoreResult {
    data class Success(
        val backupId: String,
        val restoredItems: RestoredItems,
        val duration: Long,
        val originalSize: Long,
        val restoredSize: Long
    ) : RestoreResult()
    
    data class Error(
        val message: String,
        val exception: Throwable? = null
    ) : RestoreResult()
}

/**
 * Восстановленные элементы
 */
@Serializable
data class RestoredItems(
    val comicsCount: Int = 0,
    val usersCount: Int = 0,
    val settingsRestored: Boolean = false,
    val statsCount: Int = 0,
    val filesCount: Int = 0
)

/**
 * Опции восстановления
 */
@Serializable
data class RestoreOptions(
    val restoreComics: Boolean = true,
    val restoreUsers: Boolean = true,
    val restoreSettings: Boolean = true,
    val restoreStats: Boolean = true,
    val restoreFiles: Boolean = true,
    val overwriteExisting: Boolean = false,
    val selectiveRestore: SelectiveRestoreOptions? = null
) {
    companion object {
        fun default() = RestoreOptions()
    }
}

/**
 * Опции селективного восстановления
 */
@Serializable
data class SelectiveRestoreOptions(
    val comicIds: List<String>? = null,
    val userIds: List<String>? = null,
    val settingsKeys: List<String>? = null,
    val dateRange: DateRange? = null
)

/**
 * Диапазон дат
 */
@Serializable
data class DateRange(
    val startDate: LocalDateTime,
    val endDate: LocalDateTime
)

/**
 * Запись бэкапа в базе данных
 */
@Serializable
data class BackupRecord(
    val id: String,
    val filePath: String,
    val metadata: BackupMetadata,
    val data: BackupData,
    val createdAt: LocalDateTime
)

/**
 * Паттерн использования для умного планирования
 */
@Serializable
data class UsagePattern(
    val frequency: UsageFrequency,
    val changeImportance: ChangeImportance,
    val dataSize: Long,
    val wifiAvailable: Boolean,
    val batteryLevel: Int,
    val storageAvailable: Long
)

/**
 * Частота использования
 */
enum class UsageFrequency {
    HEAVY,    // Активное использование
    MODERATE, // Умеренное использование
    LIGHT,    // Легкое использование
    RARE      // Редкое использование
}

/**
 * Важность изменений
 */
enum class ChangeImportance {
    CRITICAL, // Критичные изменения
    HIGH,     // Важные изменения
    MEDIUM,   // Средние изменения
    LOW       // Незначительные изменения
}

/**
 * Запланированный бэкап
 */
@Serializable
data class ScheduledBackup(
    val scheduledTime: Long,
    val priority: BackupPriority,
    val estimatedDuration: Long,
    val estimatedSize: Long,
    val requiresWifi: Boolean,
    val canRunInBackground: Boolean
)

/**
 * Приоритет бэкапа
 */
enum class BackupPriority {
    URGENT,   // Срочный
    HIGH,     // Высокий
    MEDIUM,   // Средний
    LOW       // Низкий
}

