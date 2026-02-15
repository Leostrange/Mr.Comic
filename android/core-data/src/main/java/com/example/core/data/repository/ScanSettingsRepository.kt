package com.example.core.data.repository

import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.scanner.ScanMode
import com.example.core.data.scanner.ScanSettings
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.combine
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для управления настройками сканирования
 */
@Singleton
class ScanSettingsRepository @Inject constructor(
    private val userPreferences: UserPreferences
) {
    
    /**
     * Получить настройки сканирования
     */
    fun getScanSettings(): Flow<ScanSettings> {
        return combine(
            userPreferences.get(PreferencesKeys.SCAN_CBZ_MODE, ScanMode.ALWAYS.name),
            userPreferences.get(PreferencesKeys.SCAN_CBR_MODE, ScanMode.ALWAYS.name),
            userPreferences.get(PreferencesKeys.SCAN_PDF_MODE, ScanMode.ALWAYS.name),
            userPreferences.get(PreferencesKeys.SCAN_FOLDER_MODE, ScanMode.CONDITIONAL.name),
            userPreferences.get(PreferencesKeys.SCAN_AUTO_REFRESH, false)
        ) { cbz, cbr, pdf, folder, autoRefresh ->
            ScanSettings(
                cbzMode = parseScanMode(cbz),
                cbrMode = parseScanMode(cbr),
                pdfMode = parseScanMode(pdf),
                folderMode = parseScanMode(folder),
                autoRefresh = autoRefresh,
                scanSubfolders = true // По умолчанию всегда true
            )
        }
    }
    
    /**
     * Сохранить настройки сканирования
     */
    suspend fun saveScanSettings(settings: ScanSettings) {
        userPreferences.set(PreferencesKeys.SCAN_CBZ_MODE, settings.cbzMode.name)
        userPreferences.set(PreferencesKeys.SCAN_CBR_MODE, settings.cbrMode.name)
        userPreferences.set(PreferencesKeys.SCAN_PDF_MODE, settings.pdfMode.name)
        userPreferences.set(PreferencesKeys.SCAN_FOLDER_MODE, settings.folderMode.name)
        userPreferences.set(PreferencesKeys.SCAN_AUTO_REFRESH, settings.autoRefresh)
    }
    
    /**
     * Установить режим сканирования для CBZ
     */
    suspend fun setCbzMode(mode: ScanMode) {
        userPreferences.set(PreferencesKeys.SCAN_CBZ_MODE, mode.name)
    }
    
    /**
     * Установить режим сканирования для CBR
     */
    suspend fun setCbrMode(mode: ScanMode) {
        userPreferences.set(PreferencesKeys.SCAN_CBR_MODE, mode.name)
    }
    
    /**
     * Установить режим сканирования для PDF
     */
    suspend fun setPdfMode(mode: ScanMode) {
        userPreferences.set(PreferencesKeys.SCAN_PDF_MODE, mode.name)
    }
    
    /**
     * Установить режим сканирования для папок
     */
    suspend fun setFolderMode(mode: ScanMode) {
        userPreferences.set(PreferencesKeys.SCAN_FOLDER_MODE, mode.name)
    }
    
    /**
     * Установить автообновление
     */
    suspend fun setAutoRefresh(enabled: Boolean) {
        userPreferences.set(PreferencesKeys.SCAN_AUTO_REFRESH, enabled)
    }
    
    /**
     * Сохранить время последнего сканирования
     */
    suspend fun saveLastScanTime(timestamp: Long) {
        userPreferences.set(PreferencesKeys.SCAN_LAST_SCAN_TIME, timestamp.toString())
    }
    
    /**
     * Получить время последнего сканирования
     */
    fun getLastScanTime(): Flow<Long> {
        return userPreferences.get(PreferencesKeys.SCAN_LAST_SCAN_TIME, "0")
            .combine(userPreferences.get(PreferencesKeys.SCAN_LAST_SCAN_TIME, "0")) { time, _ ->
                time.toLongOrNull() ?: 0L
            }
    }
    
    /**
     * Парсинг режима сканирования из строки
     */
    private fun parseScanMode(value: String): ScanMode {
        return try {
            ScanMode.valueOf(value)
        } catch (e: IllegalArgumentException) {
            ScanMode.ALWAYS
        }
    }
}
