package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CloudDownload
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Language
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.locale.AppStrings

/**
 * Section for managing dictionary downloads.
 * Allows users to download dictionary databases on demand.
 */
@Composable
internal fun DictionarySection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val language = strings.languageCode
    
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = dictionarySectionTitle(language),
                hint = dictionarySectionHint(language),
                items = listOf(
                    dictionaryStatusLabel(language) to "10",
                    dictionaryDownloadedLabel(language) to "${uiState.downloadedDictionaries.size}/10"
                )
            )
        }
        item {
            DictionaryDownloadCard(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun DictionaryDownloadCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val language = strings.languageCode
    val isDownloading = uiState.isDownloadingDictionary
    
    SettingsCard(title = dictionaryDownloadTitle(language)) {
        Text(
            text = dictionaryDownloadDescription(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        
        if (isDownloading) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                CircularProgressIndicator(
                    modifier = Modifier.size(18.dp),
                    strokeWidth = 2.dp
                )
                Spacer(Modifier.width(8.dp))
                Text(
                    text = uiState.downloadingDictionaryName ?: "Downloading...",
                    style = MaterialTheme.typography.bodyMedium
                )
            }
        } else {
            MrComicButton(
                onClick = { viewModel.downloadAllDictionaries() },
                enabled = !isDownloading,
                modifier = Modifier.fillMaxWidth(),
                variant = MrComicButtonVariant.Tonal
            ) {
                Icon(
                    Icons.Default.CloudDownload,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp)
                )
                Spacer(Modifier.width(6.dp))
                Text(dictionaryDownloadAllButton(language))
            }
        }
        
        Spacer(Modifier.height(12.dp))
        
        // List of downloaded dictionaries
        DictionaryStatusList(
            downloadedLanguages = uiState.downloadedDictionaries,
            language = language
        )
    }
}

@Composable
private fun DictionaryStatusList(
    downloadedLanguages: Set<String>,
    language: String
) {
    val allLanguages = listOf("en", "fr", "it", "ja", "ko", "pl", "pt", "ru", "tr", "zh")
    val languageNames = mapOf(
        "en" to "English",
        "fr" to "Français",
        "it" to "Italiano",
        "ja" to "日本語",
        "ko" to "한국어",
        "pl" to "Polski",
        "pt" to "Português",
        "ru" to "Русский",
        "tr" to "Türkçe",
        "zh" to "中文"
    )
    
    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
        allLanguages.forEach { lang ->
            val isDownloaded = lang in downloadedLanguages
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 2.dp)
            ) {
                Icon(
                    imageVector = if (isDownloaded) Icons.Default.Check else Icons.Default.Language,
                    contentDescription = null,
                    tint = if (isDownloaded) 
                        MaterialTheme.colorScheme.primary 
                    else 
                        MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(16.dp)
                )
                Spacer(Modifier.width(8.dp))
                Text(
                    text = languageNames[lang] ?: lang,
                    style = MaterialTheme.typography.bodySmall,
                    modifier = Modifier.weight(1f)
                )
                if (isDownloaded) {
                    Text(
                        text = "✓",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

// Text functions for i18n
private fun dictionarySectionTitle(language: String): String = when (language) {
    "en" -> "Dictionaries"
    "ja" -> "辞書"
    "zh" -> "词典"
    "ko" -> "사전"
    else -> "Словари"
}

private fun dictionarySectionHint(language: String): String = when (language) {
    "en" -> "Download offline dictionaries for translation and lookup."
    "ja" -> "翻訳・辞書検索用のオフライン辞書をダウンロード。"
    "zh" -> "下载离线词典用于翻译和查询。"
    "ko" -> "번역 및 조회를 위한 오프라인 사전을 다운로드합니다."
    else -> "Скачать оффлайн-словари для перевода и поиска."
}

private fun dictionaryStatusLabel(language: String): String = when (language) {
    "en" -> "Available"
    "ja" -> "利用可能"
    "zh" -> "可用"
    "ko" -> "사용 가능"
    else -> "Доступно"
}

private fun dictionaryDownloadedLabel(language: String): String = when (language) {
    "en" -> "Downloaded"
    "ja" -> "ダウンロード済み"
    "zh" -> "已下载"
    "ko" -> "다운로드됨"
    else -> "Загружено"
}

private fun dictionaryDownloadTitle(language: String): String = when (language) {
    "en" -> "Download dictionaries"
    "ja" -> "辞書をダウンロード"
    "zh" -> "下载词典"
    "ko" -> "사전 다운로드"
    else -> "Скачать словари"
}

private fun dictionaryDownloadDescription(language: String): String = when (language) {
    "en" -> "Download dictionary databases for offline translation. Files are ~750 MB total."
    "ja" -> "オフライン翻訳用の辞書データベースをダウンロード。合計約750 MB。"
    "zh" -> "下载离线翻译词典数据库。文件总计约750 MB。"
    "ko" -> "오프라인 번역을 위한 사전 데이터베이스를 다운로드합니다. 총 약 750 MB."
    else -> "Скачать базы данных словарей для оффлайн-перевода. Общий размер ~750 МБ."
}

private fun dictionaryDownloadAllButton(language: String): String = when (language) {
    "en" -> "Download all dictionaries"
    "ja" -> "すべての辞書をダウンロード"
    "zh" -> "下载所有词典"
    "ko" -> "모든 사전 다운로드"
    else -> "Скачать все словари"
}
