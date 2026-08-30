package io.leostrange.mrcomic.feature.settings.ui

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CloudDownload
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.FileDownload
import androidx.compose.material.icons.filled.FileUpload
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import io.leostrange.mrcomic.core.data.dictionary.DictionaryAssetCatalog
import io.leostrange.mrcomic.core.data.dictionary.DictionaryInstallInfo
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.locale.AppStrings

// ─────────────────────────────────────────────────────────────────────────────
// Language metadata
// ─────────────────────────────────────────────────────────────────────────────

private val languageEmojis = mapOf(
    "en" to "\uD83C\uDDEC\uD83C\uDDE7", // 🇬🇧
    "fr" to "\uD83C\uDDEB\uD83C\uDDF7", // 🇫🇷
    "it" to "\uD83C\uDDEE\uD83C\uDDF9", // 🇮🇹
    "ja" to "\uD83C\uDDEF\uD83C\uDDF5", // 🇯🇵
    "ko" to "\uD83C\uDDF0\uD83C\uDDF7", // 🇰🇷
    "pl" to "\uD83C\uDDF5\uD83C\uDDF1", // 🇵🇱
    "pt" to "\uD83C\uDDF5\uD83C\uDDF9", // 🇵🇹
    "ru" to "\uD83C\uDDF7\uD83C\uDDFA", // 🇷🇺
    "tr" to "\uD83C\uDDF9\uD83C\uDDF7", // 🇹🇷
    "zh" to "\uD83C\uDDE8\uD83C\uDDF3", // 🇨🇳
)

// ─────────────────────────────────────────────────────────────────────────────
// Main section composable
// ─────────────────────────────────────────────────────────────────────────────

/**
 * Dictionary management section — full rewrite with M3 cards, per-language
 * cards, download/delete/export, SAF import/export, zip backup.
 */
@Composable
internal fun DictionarySection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val dictItems by viewModel.dictionaryItems.collectAsStateWithLifecycle()
    val operationState by viewModel.dictionaryOperationState.collectAsStateWithLifecycle()
    val pendingDownload by viewModel.pendingDownloadLanguage.collectAsStateWithLifecycle()
    val needsLangSelection by viewModel.needsImportLanguageSelection.collectAsStateWithLifecycle()

    val context = LocalContext.current

    // ── SAF launchers ────────────────────────────────────────────────────

    val exportAllLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/zip")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        viewModel.exportAllDictionaries(uri, context.contentResolver)
    }

    val importLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        viewModel.importDictionaryFromUri(uri, context.contentResolver)
    }

    // ── Summary counts ───────────────────────────────────────────────────

    val installedCount = dictItems.count { it.sizeBytes > 0L }
    val totalSizeBytes = dictItems.sumOf { it.sizeBytes }
    val totalSizeFormatted = formatDictionarySize(totalSizeBytes)

    // ── Language picker dialog for single-file import ─────────────────────

    if (needsLangSelection) {
        var showLangPicker by remember { mutableStateOf(true) }
        if (showLangPicker) {
            ImportLanguagePickerDialog(
                strings = strings,
                items = dictItems,
                onSelect = { lang ->
                    showLangPicker = false
                    viewModel.completePendingImport(lang)
                },
                onDismiss = {
                    showLangPicker = false
                    viewModel.cancelPendingImport()
                }
            )
        }
    }

    // ── Download confirmation dialog ──────────────────────────────────────

    pendingDownload?.let { lang ->
        val config = DictionaryAssetCatalog.configForLanguage(lang)
        val sizeStr = formatDictionarySize(config?.approxDownloadBytes ?: 0L)
        val displayName = dictDisplayName(viewModel, lang)
        AlertDialog(
            onDismissRequest = { viewModel.cancelPendingDownload() },
            title = { Text(strings.dictConfirmDownloadTitle) },
            text = { Text(strings.dictConfirmDownloadMessage.format(displayName, sizeStr)) },
            confirmButton = {
                TextButton(onClick = { viewModel.confirmPendingDownload() }) {
                    Text(strings.dictBtnDownload)
                }
            },
            dismissButton = {
                TextButton(onClick = { viewModel.cancelPendingDownload() }) {
                    Text(strings.cancel)
                }
            }
        )
    }

    // ── Main content ──────────────────────────────────────────────────────

    Column(
        modifier = modifier.padding(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        // Summary card
        SettingsCompactSummaryCard(
            title = strings.dictSectionTitle,
            hint = strings.dictSectionHint,
            items = listOf(
                strings.dictInstalledLabel to "$installedCount / ${dictItems.size}",
                strings.dictTotalSizeLabel to totalSizeFormatted
            )
        )

        // Toolbar: Export all + Import
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            OutlinedButton(
                onClick = { exportAllLauncher.launch("mrcomic_dictionaries.zip") },
                enabled = installedCount > 0 && operationState is DictionaryOperationState.Idle,
                modifier = Modifier.weight(1f)
            ) {
                Icon(Icons.Default.FileUpload, contentDescription = null, modifier = Modifier.size(18.dp))
                Spacer(Modifier.width(6.dp))
                Text(strings.dictBtnExportAll, style = MaterialTheme.typography.labelMedium)
            }
            OutlinedButton(
                onClick = {
                    importLauncher.launch(
                        arrayOf(
                            "application/zip",
                            "application/gzip",
                            "application/x-gzip",
                            "application/octet-stream",
                            "application/x-sqlite3",
                            "*/*"
                        )
                    )
                },
                enabled = operationState is DictionaryOperationState.Idle,
                modifier = Modifier.weight(1f)
            ) {
                Icon(Icons.Default.FileDownload, contentDescription = null, modifier = Modifier.size(18.dp))
                Spacer(Modifier.width(6.dp))
                Text(strings.dictBtnImport, style = MaterialTheme.typography.labelMedium)
            }
        }

        // Language cards (plain Column — only 10 items, no laziness needed)
        dictItems.forEach { info ->
            DictionaryLanguageCard(
                info = info,
                strings = strings,
                viewModel = viewModel,
                operationState = operationState,
            )
        }

        Spacer(Modifier.height(16.dp))
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Per-language card
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun DictionaryLanguageCard(
    info: DictionaryInstallInfo,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    operationState: DictionaryOperationState,
) {
    val context = LocalContext.current
    val isInstalled = info.sizeBytes > 0L
    val isDownloadingThis = operationState is DictionaryOperationState.Downloading && operationState.language == info.language
    val isAnyOperationActive = operationState !is DictionaryOperationState.Idle

    val displayName = dictDisplayName(viewModel, info.language)
    val emoji = languageEmojis[info.language] ?: "🌐"

    // Export launcher for this language
    val langCode = info.language
    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/x-sqlite3")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        viewModel.exportDictionary(langCode, uri, context.contentResolver)
    }

    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 10.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            // Header row: emoji + name + status chip
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    text = emoji,
                    style = MaterialTheme.typography.titleMedium,
                    modifier = Modifier.padding(end = 8.dp)
                )
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = displayName,
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold
                    )
                    // Size info
                    val sizeText = if (isInstalled) {
                        formatDictionarySize(info.sizeBytes)
                    } else {
                        val approx = DictionaryAssetCatalog.configForLanguage(info.language)?.approxDownloadBytes ?: 0L
                        "~${formatDictionarySize(approx)}"
                    }
                    Text(
                        text = sizeText,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                // Status chip
                DictionaryStatusChip(
                    info = info,
                    strings = strings
                )
            }

            // Progress indicator when downloading
            if (isDownloadingThis) {
                val progress = (operationState as DictionaryOperationState.Downloading).progress
                Column {
                    LinearProgressIndicator(
                        progress = { progress / 100f },
                        modifier = Modifier.fillMaxWidth(),
                    )
                    Text(
                        text = "$progress%",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        modifier = Modifier.padding(top = 2.dp)
                    )
                }
            }

            // Action buttons row
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End)
            ) {
                if (!isInstalled) {
                    // Download button
                    IconButton(
                        onClick = { viewModel.requestDownload(info.language) },
                        enabled = !isAnyOperationActive,
                    ) {
                        Icon(Icons.Default.CloudDownload, contentDescription = strings.dictBtnDownload)
                    }
                } else {
                    // Delete button (not for bundled-only)
                    if (!info.isBundled) {
                        IconButton(
                            onClick = { viewModel.deleteDictionary(info.language) },
                            enabled = !isAnyOperationActive,
                        ) {
                            Icon(Icons.Default.Delete, contentDescription = strings.dictBtnDelete, tint = MaterialTheme.colorScheme.error)
                        }
                    }
                    // Export button
                    IconButton(
                        onClick = { exportLauncher.launch("dictionary_${info.language}.dbpack") },
                        enabled = !isAnyOperationActive,
                    ) {
                        Icon(Icons.Default.FileDownload, contentDescription = strings.dictBtnExport)
                    }
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Status chip
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun DictionaryStatusChip(
    info: DictionaryInstallInfo,
    strings: AppStrings
) {
    val (label, color) = when {
        info.sizeBytes > 0L && info.isBundled -> strings.dictStatusBundled to MaterialTheme.colorScheme.tertiaryContainer
        info.sizeBytes > 0L -> strings.dictStatusInstalled to MaterialTheme.colorScheme.primaryContainer
        else -> strings.dictStatusNotInstalled to MaterialTheme.colorScheme.surfaceVariant
    }
    val onColor = when {
        info.sizeBytes > 0L && info.isBundled -> MaterialTheme.colorScheme.onTertiaryContainer
        info.sizeBytes > 0L -> MaterialTheme.colorScheme.onPrimaryContainer
        else -> MaterialTheme.colorScheme.onSurfaceVariant
    }
    Surface(
        shape = MaterialTheme.shapes.small,
        color = color,
        contentColor = onColor
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.labelSmall,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
        )
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Language picker dialog (for single-file import)
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun ImportLanguagePickerDialog(
    strings: AppStrings,
    items: List<DictionaryInstallInfo>,
    onSelect: (String) -> Unit,
    onDismiss: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(strings.dictImportSelectLanguage) },
        text = {
            LazyColumn {
                items(items = items) { info ->
                    val displayName = when (info.language) {
                        "en" -> strings.dictLangEnglish
                        "fr" -> strings.dictLangFrench
                        "it" -> strings.dictLangItalian
                        "ja" -> strings.dictLangJapanese
                        "ko" -> strings.dictLangKorean
                        "pl" -> strings.dictLangPolish
                        "pt" -> strings.dictLangPortuguese
                        "ru" -> strings.dictLangRussian
                        "tr" -> strings.dictLangTurkish
                        "zh" -> strings.dictLangChinese
                        else -> info.language.uppercase()
                    }
                    val emoji = languageEmojis[info.language] ?: "🌐"
                    TextButton(
                        onClick = { onSelect(info.language) },
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = "$emoji  $displayName",
                            modifier = Modifier.fillMaxWidth(),
                            style = MaterialTheme.typography.bodyLarge
                        )
                    }
                }
            }
        },
        confirmButton = {},
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(strings.cancel)
            }
        }
    )
}

// ─────────────────────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────────────────────

private fun dictDisplayName(viewModel: SettingsViewModel, lang: String): String {
    return viewModel.dictDisplayName(lang)
}

private fun formatDictionarySize(bytes: Long): String {
    if (bytes <= 0L) return "0 B"
    if (bytes < 1024) return "$bytes B"
    val kb = bytes / 1024.0
    if (kb < 1024) return String.format("%.1f KB", kb)
    val mb = kb / 1024.0
    if (mb < 1024) return String.format("%.1f MB", mb)
    val gb = mb / 1024.0
    return String.format("%.2f GB", gb)
}
