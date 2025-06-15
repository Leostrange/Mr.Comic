package com.example.mrcomic.backup.cloud

import kotlinx.serialization.Serializable
import java.io.File

/**
 * Базовый интерфейс для всех облачных провайдеров
 */
interface CloudProvider {
    fun getId(): String
    fun getName(): String
    fun isConnected(): Boolean
    suspend fun connect(credentials: CloudCredentials): Boolean
    suspend fun disconnect()
    
    suspend fun uploadFile(localFile: File, remotePath: String, progressCallback: ((UploadProgress) -> Unit)? = null): Long
    suspend fun downloadFile(remotePath: String, localFile: File, progressCallback: ((DownloadProgress) -> Unit)? = null): Long
    suspend fun deleteFile(remotePath: String): Boolean
    suspend fun getFileInfo(remotePath: String): CloudFileInfo?
    suspend fun listFiles(remotePath: String): List<CloudFileInfo>
    
    // Поддержка многочастной загрузки
    suspend fun startChunkedUpload(remotePath: String, totalSize: Long): UploadSession
    suspend fun uploadChunk(session: UploadSession, chunkIndex: Long, data: ByteArray)
    suspend fun completeChunkedUpload(session: UploadSession)
    suspend fun abortChunkedUpload(session: UploadSession)
    
    // Получение информации о хранилище
    suspend fun getStorageInfo(): StorageInfo
}

/**
 * Учетные данные для облачного провайдера
 */
@Serializable
sealed class CloudCredentials {
    @Serializable
    data class OAuth2(val accessToken: String, val refreshToken: String? = null) : CloudCredentials()
    
    @Serializable
    data class ApiKey(val apiKey: String, val secretKey: String? = null) : CloudCredentials()
    
    @Serializable
    data class UsernamePassword(val username: String, val password: String) : CloudCredentials()
    
    @Serializable
    data class Certificate(val certificatePath: String, val privateKeyPath: String) : CloudCredentials()
}

/**
 * Конфигурация провайдера
 */
@Serializable
data class ProviderConfig(
    val providerId: String,
    val providerName: String,
    val credentials: CloudCredentials,
    val remotePath: String = "/MrComic/Backups",
    val isEnabled: Boolean = true,
    val priority: Int = 1, // 1 = высший приоритет
    val maxRetries: Int = 3,
    val timeoutMs: Long = 30000,
    val customSettings: Map<String, String> = emptyMap()
)

/**
 * Информация о файле в облаке
 */
@Serializable
data class CloudFileInfo(
    val name: String,
    val path: String,
    val size: Long,
    val lastModified: Long,
    val checksum: String? = null,
    val mimeType: String? = null,
    val isDirectory: Boolean = false
)

/**
 * Информация о хранилище
 */
@Serializable
data class StorageInfo(
    val totalSpace: Long,
    val usedSpace: Long,
    val availableSpace: Long,
    val quotaExceeded: Boolean = false
)

/**
 * Сессия многочастной загрузки
 */
@Serializable
data class UploadSession(
    val sessionId: String,
    val remotePath: String,
    val totalSize: Long,
    val chunkSize: Long,
    val uploadedChunks: MutableSet<Long> = mutableSetOf()
)

/**
 * Прогресс загрузки
 */
@Serializable
data class UploadProgress(
    val providerId: String,
    val uploadedBytes: Long,
    val totalBytes: Long,
    val currentChunk: Int,
    val totalChunks: Int
) {
    val percentage: Double get() = if (totalBytes > 0) (uploadedBytes.toDouble() / totalBytes) * 100 else 0.0
}

/**
 * Прогресс скачивания
 */
@Serializable
data class DownloadProgress(
    val providerId: String,
    val downloadedBytes: Long,
    val totalBytes: Long
) {
    val percentage: Double get() = if (totalBytes > 0) (downloadedBytes.toDouble() / totalBytes) * 100 else 0.0
}

/**
 * Результат загрузки
 */
@Serializable
data class UploadResult(
    val uploadedSize: Long,
    val checksum: String? = null
)

/**
 * Опции синхронизации
 */
@Serializable
data class SyncOptions(
    val syncStrategy: SyncStrategy = SyncStrategy.BEST_EFFORT,
    val overwriteExisting: Boolean = true,
    val useChunkedUpload: Boolean = true,
    val parallelUploads: Boolean = true,
    val maxParallelUploads: Int = 3,
    val retryFailedUploads: Boolean = true,
    val verifyUpload: Boolean = true,
    val progressCallback: ((UploadProgress) -> Unit)? = null
) {
    companion object {
        fun default() = SyncOptions()
    }
}

/**
 * Стратегия синхронизации
 */
enum class SyncStrategy {
    ALL_OR_NOTHING,  // Все провайдеры должны успешно синхронизироваться
    BEST_EFFORT,     // Синхронизируем с максимальным количеством провайдеров
    MAJORITY,        // Большинство провайдеров должно успешно синхронизироваться
    AT_LEAST_ONE     // Хотя бы один провайдер должен успешно синхронизироваться
}

/**
 * Результат синхронизации
 */
sealed class SyncResult {
    @Serializable
    data class Success(
        val syncId: String,
        val duration: Long,
        val totalSize: Long,
        val providerResults: List<ProviderSyncResult>,
        val redundancyLevel: Int
    ) : SyncResult()
    
    @Serializable
    data class Failure(
        val syncId: String,
        val duration: Long,
        val providerResults: List<ProviderSyncResult>,
        val error: String
    ) : SyncResult()
    
    @Serializable
    data class Error(
        val message: String,
        val exception: Throwable? = null
    ) : SyncResult()
}

/**
 * Результат синхронизации с провайдером
 */
@Serializable
data class ProviderSyncResult(
    val providerId: String,
    val isSuccess: Boolean,
    val remotePath: String? = null,
    val uploadedSize: Long = 0,
    val duration: Long = 0,
    val uploadSpeed: Double = 0.0,
    val wasUpdated: Boolean = false,
    val error: String? = null
) {
    companion object {
        fun success(
            providerId: String,
            remotePath: String,
            uploadedSize: Long,
            duration: Long,
            wasUpdated: Boolean,
            uploadSpeed: Double = 0.0
        ) = ProviderSyncResult(
            providerId = providerId,
            isSuccess = true,
            remotePath = remotePath,
            uploadedSize = uploadedSize,
            duration = duration,
            uploadSpeed = uploadSpeed,
            wasUpdated = wasUpdated
        )
        
        fun error(providerId: String, error: String) = ProviderSyncResult(
            providerId = providerId,
            isSuccess = false,
            error = error
        )
    }
}

/**
 * Результат скачивания
 */
sealed class DownloadResult {
    @Serializable
    data class Success(
        val providerId: String,
        val localPath: String,
        val downloadedSize: Long,
        val duration: Long,
        val downloadSpeed: Double
    ) : DownloadResult()
    
    @Serializable
    data class Error(val message: String) : DownloadResult()
}

/**
 * Запись синхронизации в базе данных
 */
@Serializable
data class SyncRecord(
    val id: String,
    val timestamp: Long,
    val filePath: String,
    val fileSize: Long,
    val providerResults: List<ProviderSyncResult>,
    val totalProviders: Int,
    val successfulProviders: Int,
    val failedProviders: Int
)

/**
 * Конфигурация автосинхронизации
 */
@Serializable
data class AutoSyncConfig(
    val isEnabled: Boolean = false,
    val checkInterval: Long = 30 * 60 * 1000L, // 30 минут
    val errorRetryInterval: Long = 5 * 60 * 1000L, // 5 минут
    val requireWifi: Boolean = true,
    val requireCharging: Boolean = false,
    val minBatteryLevel: Int = 20,
    val syncOnlyWhenIdle: Boolean = true,
    val providerConfigs: List<ProviderConfig>,
    val syncOptions: SyncOptions = SyncOptions.default()
)

/**
 * Опции P2P синхронизации
 */
@Serializable
data class P2POptions(
    val encryptionEnabled: Boolean = true,
    val compressionEnabled: Boolean = true,
    val maxConcurrentConnections: Int = 5,
    val timeoutMs: Long = 60000,
    val retryAttempts: Int = 3
) {
    companion object {
        fun default() = P2POptions()
    }
}

/**
 * Результат P2P синхронизации
 */
sealed class P2PSyncResult {
    @Serializable
    data class Success(
        val totalDevices: Int,
        val successfulSyncs: Int,
        val deviceResults: List<DeviceSyncResult>
    ) : P2PSyncResult()
    
    @Serializable
    data class Error(val message: String) : P2PSyncResult()
}

/**
 * Результат синхронизации с устройством
 */
@Serializable
data class DeviceSyncResult(
    val deviceId: String,
    val isSuccess: Boolean,
    val transferredSize: Long = 0,
    val duration: Long = 0,
    val error: String? = null
) {
    companion object {
        fun success(deviceId: String, transferredSize: Long, duration: Long) = DeviceSyncResult(
            deviceId = deviceId,
            isSuccess = true,
            transferredSize = transferredSize,
            duration = duration
        )
        
        fun error(deviceId: String, error: String) = DeviceSyncResult(
            deviceId = deviceId,
            isSuccess = false,
            error = error
        )
    }
}

/**
 * Информация об устройстве для P2P
 */
@Serializable
data class DeviceInfo(
    val deviceId: String,
    val deviceName: String,
    val ipAddress: String,
    val port: Int,
    val publicKey: String? = null,
    val lastSeen: Long = 0,
    val isOnline: Boolean = false
)

