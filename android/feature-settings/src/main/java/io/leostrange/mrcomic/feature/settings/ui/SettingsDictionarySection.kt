package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CloudDownload
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Language
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
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
    val downloadState by viewModel.dictionaryDownloadState.collectAsStateWithLifecycle()
    
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
                    dictionaryDownloadedLabel(language) to "${downloadState.downloadedLanguages.size}/10"
                )
            )
        }
        item {
            DictionaryDownloadCard(
                downloadState = downloadState,
                strings = strings,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

@Composable
private fun DictionaryDownloadCard(
    downloadState: DictionaryDownloadState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val language = strings.languageCode
    val isDownloading = downloadState.isDownloading
    
    SettingsCard(title = dictionaryDownloadTitle(language)) {
        Text(
            text = dictionaryDownloadDescription(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        
        if (isDownloading) {
            // Show overall progress
            val totalProgress = downloadState.progress.values.average().toInt()
            Column(
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    CircularProgressIndicator(
                        progress = { totalProgress / 100f },
                        modifier = Modifier.size(18.dp),
                        strokeWidth = 2.dp
                    )
                    Spacer(Modifier.width(8.dp))
                    Text(
                        text = downloadState.currentLanguage?.let { lang ->
                            "${languageNames[lang] ?: lang}... $totalProgress%"
                        } ?: "Downloading...",
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
                Spacer(Modifier.height(8.dp))
                LinearProgressIndicator(
                    progress = { totalProgress / 100f },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(4.dp),
                    trackColor = MaterialTheme.colorScheme.surfaceVariant
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
            downloadedLanguages = downloadState.downloadedLanguages,
            progressMap = downloadState.progress,
            isDownloading = isDownloading,
            language = language
        )
    }
}

private val languageNames = mapOf(
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

private val allLanguages = listOf("en", "fr", "it", "ja", "ko", "pl", "pt", "ru", "tr", "zh")

@Composable
private fun DictionaryStatusList(
    downloadedLanguages: Set<String>,
    progressMap: Map<String, Int>,
    isDownloading: Boolean,
    language: String
) {
    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
        allLanguages.forEach { lang ->
            val isDownloaded = lang in downloadedLanguages
            val progress = progressMap[lang]
            val isCurrentLang = isDownloading && progress != null
            
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 2.dp)
            ) {
                Icon(
                    imageVector = when {
                        isDownloaded -> Icons.Default.Check
                        isCurrentLang -> Icons.Default.CloudDownload
                        else -> Icons.Default.Language
                    },
                    contentDescription = null,
                    tint = when {
                        isDownloaded -> MaterialTheme.colorScheme.primary
                        isCurrentLang -> MaterialTheme.colorScheme.tertiary
                        else -> MaterialTheme.colorScheme.onSurfaceVariant
                    },
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
                } else if (isCurrentLang) {
                    Text(
                        text = "${progress}%",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.tertiary
                    )
                }
            }
            // Show progress bar for current language
            if (isCurrentLang) {
                LinearProgressIndicator(
                    progress = { (progress ?: 0) / 100f },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(2.dp)
                        .padding(start = 24.dp),
                    trackColor = MaterialTheme.colorScheme.surfaceVariant
                )
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
