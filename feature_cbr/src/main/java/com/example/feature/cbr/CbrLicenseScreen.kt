package com.example.feature.cbr

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel

/**
 * Экран для управления CBR лицензией и включения/отключения поддержки
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CbrLicenseScreen(
    onNavigateBack: () -> Unit,
    viewModel: CbrLicenseViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val scrollState = rememberScrollState()
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("CBR Support") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp)
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Warning card
            Card(
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.errorContainer
                )
            ) {
                Row(
                    modifier = Modifier.padding(16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.Warning,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.onErrorContainer
                    )
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = "License Notice Required",
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onErrorContainer,
                        fontWeight = FontWeight.Bold
                    )
                }
            }
            
            // CBR Feature toggle
            Card {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = "Enable CBR Support",
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Medium
                            )
                            Text(
                                text = "Read RAR comic archives (.cbr files)",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Switch(
                            checked = uiState.isCbrEnabled,
                            onCheckedChange = { enabled ->
                                if (enabled && !uiState.isLicenseAccepted) {
                                    viewModel.showLicenseDialog()
                                } else {
                                    viewModel.setCbrEnabled(enabled)
                                }
                            },
                            enabled = uiState.isCbrAvailable
                        )
                    }
                }
            }
            
            // License information
            Card {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Text(
                        text = "License Information",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Medium
                    )
                    
                    val licenseInfo = uiState.licenseInfo
                    
                    LicenseInfoRow("Library", licenseInfo.libraryName)
                    LicenseInfoRow("Version", licenseInfo.version)
                    LicenseInfoRow("License", licenseInfo.license)
                    LicenseInfoRow("Description", licenseInfo.description)
                    
                    Text(
                        text = "Restrictions:",
                        style = MaterialTheme.typography.labelLarge,
                        fontWeight = FontWeight.Medium
                    )
                    
                    licenseInfo.restrictions.forEach { restriction ->
                        Text(
                            text = "• $restriction",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(start = 8.dp)
                        )
                    }
                    
                    TextButton(
                        onClick = { viewModel.openSourceUrl() }
                    ) {
                        Text("View Source Code")
                    }
                }
            }
            
            // Status information
            if (!uiState.isCbrAvailable) {
                Card(
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant
                    )
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp)
                    ) {
                        Text(
                            text = "CBR Module Not Available",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Medium
                        )
                        Text(
                            text = "The CBR support module is not installed. This feature requires a separate download.",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
    
    // License acceptance dialog
    if (uiState.showLicenseDialog) {
        AlertDialog(
            onDismissRequest = { viewModel.hideLicenseDialog() },
            title = {
                Text("Accept CBR License")
            },
            text = {
                Column {
                    Text(
                        text = "By enabling CBR support, you acknowledge that:",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "• This feature uses the junrar library under UnRAR license\n" +
                               "• Commercial use may have restrictions\n" +
                               "• You should review the full license terms\n" +
                               "• This feature can be disabled at any time",
                        style = MaterialTheme.typography.bodySmall
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        viewModel.acceptLicenseAndEnable()
                    }
                ) {
                    Text("Accept & Enable")
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { viewModel.hideLicenseDialog() }
                ) {
                    Text("Cancel")
                }
            }
        )
    }
}

@Composable
private fun LicenseInfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = "$label:",
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.End,
            modifier = Modifier.weight(1f)
        )
    }
}
