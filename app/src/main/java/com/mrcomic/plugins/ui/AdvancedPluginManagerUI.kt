package com.example.mrcomic.plugins.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*

/**
 * Продвинутый UI для управления плагинами Mr.Comic
 * 
 * Предоставляет полнофункциональный интерфейс для:
 * - Просмотра и управления установленными плагинами
 * - Установки новых плагинов из файлов и стора
 * - Мониторинга производительности и состояния плагинов
 * - Настройки параметров и разрешений плагинов
 * - Автоматических обновлений и резервного копирования
 * - Поиска и фильтрации плагинов
 * - Детальной информации и статистики
 * 
 * @author Manus AI
 * @version 2.0.0
 * @since API level 23
 */
class AdvancedPluginManagerActivity : ComponentActivity() {
    
    private val filePickerLauncher = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri ->
        uri?.let { viewModel.installPluginFromUri(it) }
    }
    
    private lateinit var viewModel: PluginManagerViewModel
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        viewModel = PluginManagerViewModel(this)
        
        setContent {
            PluginManagerTheme {
                PluginManagerScreen(
                    viewModel = viewModel,
                    onInstallFromFile = { filePickerLauncher.launch("*/*") },
                    onNavigateToStore = { navigateToPluginStore() }
                )
            }
        }
    }
    
    private fun navigateToPluginStore() {
        val intent = Intent(this, PluginStoreActivity::class.java)
        startActivity(intent)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PluginManagerScreen(
    viewModel: PluginManagerViewModel = viewModel(),
    onInstallFromFile: () -> Unit = {},
    onNavigateToStore: () -> Unit = {}
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    
    var selectedTab by remember { mutableStateOf(0) }
    var searchQuery by remember { mutableStateOf("") }
    var showFilterDialog by remember { mutableStateOf(false) }
    var selectedPlugin by remember { mutableStateOf<PluginInfo?>(null) }
    
    LaunchedEffect(Unit) {
        viewModel.loadPlugins()
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text(
                        text = "Plugin Manager",
                        fontWeight = FontWeight.Bold
                    )
                },
                actions = {
                    IconButton(onClick = { showFilterDialog = true }) {
                        Icon(Icons.Default.FilterList, contentDescription = "Filter")
                    }
                    IconButton(onClick = { viewModel.refreshPlugins() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refresh")
                    }
                    IconButton(onClick = onNavigateToStore) {
                        Icon(Icons.Default.Store, contentDescription = "Plugin Store")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
            )
        },
        floatingActionButton = {
            ExtendedFloatingActionButton(
                onClick = onInstallFromFile,
                icon = { Icon(Icons.Default.Add, contentDescription = null) },
                text = { Text("Install Plugin") },
                containerColor = MaterialTheme.colorScheme.primary
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Search Bar
            SearchBar(
                query = searchQuery,
                onQueryChange = { searchQuery = it },
                onSearch = { viewModel.searchPlugins(it) },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
            )
            
            // Tab Row
            TabRow(
                selectedTabIndex = selectedTab,
                modifier = Modifier.fillMaxWidth()
            ) {
                Tab(
                    selected = selectedTab == 0,
                    onClick = { selectedTab = 0 },
                    text = { Text("Installed (${uiState.installedPlugins.size})") }
                )
                Tab(
                    selected = selectedTab == 1,
                    onClick = { selectedTab = 1 },
                    text = { Text("Running (${uiState.runningPlugins.size})") }
                )
                Tab(
                    selected = selectedTab == 2,
                    onClick = { selectedTab = 2 },
                    text = { Text("Updates (${uiState.availableUpdates.size})") }
                )
                Tab(
                    selected = selectedTab == 3,
                    onClick = { selectedTab = 3 },
                    text = { Text("Performance") }
                )
            }
            
            // Content
            when (selectedTab) {
                0 -> InstalledPluginsTab(
                    plugins = uiState.filteredPlugins,
                    isLoading = uiState.isLoading,
                    onPluginClick = { selectedPlugin = it },
                    onStartPlugin = { viewModel.startPlugin(it) },
                    onStopPlugin = { viewModel.stopPlugin(it) },
                    onUninstallPlugin = { viewModel.uninstallPlugin(it) }
                )
                1 -> RunningPluginsTab(
                    plugins = uiState.runningPlugins,
                    metrics = uiState.performanceMetrics,
                    onPluginClick = { selectedPlugin = it },
                    onStopPlugin = { viewModel.stopPlugin(it) }
                )
                2 -> UpdatesTab(
                    updates = uiState.availableUpdates,
                    onUpdatePlugin = { viewModel.updatePlugin(it) },
                    onUpdateAll = { viewModel.updateAllPlugins() }
                )
                3 -> PerformanceTab(
                    metrics = uiState.performanceMetrics,
                    systemMetrics = uiState.systemMetrics
                )
            }
        }
    }
    
    // Plugin Details Dialog
    selectedPlugin?.let { plugin ->
        PluginDetailsDialog(
            plugin = plugin,
            metrics = uiState.performanceMetrics[plugin.id],
            onDismiss = { selectedPlugin = null },
            onStartPlugin = { viewModel.startPlugin(it) },
            onStopPlugin = { viewModel.stopPlugin(it) },
            onUninstallPlugin = { 
                viewModel.uninstallPlugin(it)
                selectedPlugin = null
            },
            onUpdatePlugin = { viewModel.updatePlugin(it) }
        )
    }
    
    // Filter Dialog
    if (showFilterDialog) {
        FilterDialog(
            currentFilter = uiState.filter,
            onFilterChange = { viewModel.applyFilter(it) },
            onDismiss = { showFilterDialog = false }
        )
    }
    
    // Loading Overlay
    if (uiState.isLoading) {
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Card(
                modifier = Modifier.padding(32.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 8.dp)
            ) {
                Column(
                    modifier = Modifier.padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    CircularProgressIndicator()
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = uiState.loadingMessage,
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
            }
        }
    }
    
    // Error Snackbar
    uiState.errorMessage?.let { error ->
        LaunchedEffect(error) {
            scope.launch {
                // Show snackbar
            }
        }
    }
}

@Composable
fun InstalledPluginsTab(
    plugins: List<PluginInfo>,
    isLoading: Boolean,
    onPluginClick: (PluginInfo) -> Unit,
    onStartPlugin: (String) -> Unit,
    onStopPlugin: (String) -> Unit,
    onUninstallPlugin: (String) -> Unit
) {
    if (plugins.isEmpty() && !isLoading) {
        EmptyState(
            icon = Icons.Default.Extension,
            title = "No Plugins Installed",
            description = "Install your first plugin to get started",
            actionText = "Browse Store",
            onAction = { /* Navigate to store */ }
        )
    } else {
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(plugins) { plugin ->
                PluginCard(
                    plugin = plugin,
                    onClick = { onPluginClick(plugin) },
                    onStartPlugin = { onStartPlugin(plugin.id) },
                    onStopPlugin = { onStopPlugin(plugin.id) },
                    onUninstallPlugin = { onUninstallPlugin(plugin.id) }
                )
            }
        }
    }
}

@Composable
fun RunningPluginsTab(
    plugins: List<PluginInfo>,
    metrics: Map<String, PluginMetrics>,
    onPluginClick: (PluginInfo) -> Unit,
    onStopPlugin: (String) -> Unit
) {
    if (plugins.isEmpty()) {
        EmptyState(
            icon = Icons.Default.PlayArrow,
            title = "No Running Plugins",
            description = "Start some plugins to see them here"
        )
    } else {
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(plugins) { plugin ->
                RunningPluginCard(
                    plugin = plugin,
                    metrics = metrics[plugin.id],
                    onClick = { onPluginClick(plugin) },
                    onStopPlugin = { onStopPlugin(plugin.id) }
                )
            }
        }
    }
}

@Composable
fun UpdatesTab(
    updates: List<PluginUpdateInfo>,
    onUpdatePlugin: (String) -> Unit,
    onUpdateAll: () -> Unit
) {
    Column(
        modifier = Modifier.fillMaxSize()
    ) {
        if (updates.isNotEmpty()) {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = "${updates.size} Updates Available",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Keep your plugins up to date",
                            style = MaterialTheme.typography.bodySmall
                        )
                    }
                    Button(
                        onClick = onUpdateAll
                    ) {
                        Text("Update All")
                    }
                }
            }
        }
        
        if (updates.isEmpty()) {
            EmptyState(
                icon = Icons.Default.Update,
                title = "All Plugins Up to Date",
                description = "Your plugins are running the latest versions"
            )
        } else {
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(horizontal = 16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                items(updates) { update ->
                    UpdateCard(
                        update = update,
                        onUpdate = { onUpdatePlugin(update.pluginId) }
                    )
                }
            }
        }
    }
}

@Composable
fun PerformanceTab(
    metrics: Map<String, PluginMetrics>,
    systemMetrics: SystemMetrics?
) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // System Overview
        item {
            SystemMetricsCard(systemMetrics)
        }
        
        // Plugin Performance
        if (metrics.isNotEmpty()) {
            item {
                Text(
                    text = "Plugin Performance",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }
            
            items(metrics.toList()) { (pluginId, pluginMetrics) ->
                PluginMetricsCard(
                    pluginId = pluginId,
                    metrics = pluginMetrics
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PluginCard(
    plugin: PluginInfo,
    onClick: () -> Unit,
    onStartPlugin: () -> Unit,
    onStopPlugin: () -> Unit,
    onUninstallPlugin: () -> Unit
) {
    var showMenu by remember { mutableStateOf(false) }
    
    Card(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    PluginIcon(
                        type = plugin.type,
                        modifier = Modifier.size(40.dp)
                    )
                    Spacer(modifier = Modifier.width(12.dp))
                    Column {
                        Text(
                            text = plugin.name,
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "v${plugin.version} • ${plugin.author}",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    PluginStatusBadge(state = plugin.state)
                    Spacer(modifier = Modifier.width(8.dp))
                    
                    Box {
                        IconButton(onClick = { showMenu = true }) {
                            Icon(Icons.Default.MoreVert, contentDescription = "More options")
                        }
                        
                        DropdownMenu(
                            expanded = showMenu,
                            onDismissRequest = { showMenu = false }
                        ) {
                            if (plugin.state == PluginState.STOPPED) {
                                DropdownMenuItem(
                                    text = { Text("Start") },
                                    onClick = {
                                        onStartPlugin()
                                        showMenu = false
                                    },
                                    leadingIcon = { Icon(Icons.Default.PlayArrow, contentDescription = null) }
                                )
                            } else if (plugin.state == PluginState.RUNNING) {
                                DropdownMenuItem(
                                    text = { Text("Stop") },
                                    onClick = {
                                        onStopPlugin()
                                        showMenu = false
                                    },
                                    leadingIcon = { Icon(Icons.Default.Stop, contentDescription = null) }
                                )
                            }
                            
                            DropdownMenuItem(
                                text = { Text("Uninstall") },
                                onClick = {
                                    onUninstallPlugin()
                                    showMenu = false
                                },
                                leadingIcon = { Icon(Icons.Default.Delete, contentDescription = null) }
                            )
                        }
                    }
                }
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = plugin.description,
                style = MaterialTheme.typography.bodyMedium,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Row {
                    plugin.tags.take(3).forEach { tag ->
                        AssistChip(
                            onClick = { },
                            label = { Text(tag, fontSize = 10.sp) },
                            modifier = Modifier.padding(end = 4.dp)
                        )
                    }
                }
                
                Text(
                    text = formatFileSize(plugin.size),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
fun RunningPluginCard(
    plugin: PluginInfo,
    metrics: PluginMetrics?,
    onClick: () -> Unit,
    onStopPlugin: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    PluginIcon(
                        type = plugin.type,
                        modifier = Modifier.size(32.dp)
                    )
                    Spacer(modifier = Modifier.width(12.dp))
                    Column {
                        Text(
                            text = plugin.name,
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Running • ${formatUptime(metrics?.uptime ?: 0)}",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                
                IconButton(onClick = onStopPlugin) {
                    Icon(
                        Icons.Default.Stop,
                        contentDescription = "Stop plugin",
                        tint = MaterialTheme.colorScheme.error
                    )
                }
            }
            
            metrics?.let { m ->
                Spacer(modifier = Modifier.height(12.dp))
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    MetricItem(
                        label = "CPU",
                        value = "${m.cpuUsage.toInt()}%",
                        color = getMetricColor(m.cpuUsage, 80f)
                    )
                    MetricItem(
                        label = "Memory",
                        value = formatFileSize(m.memoryUsage),
                        color = getMetricColor(m.memoryUsage / (1024 * 1024), 100f)
                    )
                    MetricItem(
                        label = "Calls",
                        value = m.apiCalls.toString(),
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

@Composable
fun UpdateCard(
    update: PluginUpdateInfo,
    onUpdate: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = update.pluginName,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold
                )
                Text(
                    text = "${update.currentVersion} → ${update.newVersion}",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.primary
                )
                if (update.changelog.isNotEmpty()) {
                    Text(
                        text = update.changelog,
                        style = MaterialTheme.typography.bodySmall,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.padding(top = 4.dp)
                    )
                }
            }
            
            Button(
                onClick = onUpdate,
                modifier = Modifier.padding(start = 16.dp)
            ) {
                Text("Update")
            }
        }
    }
}

@Composable
fun SystemMetricsCard(systemMetrics: SystemMetrics?) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "System Performance",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            systemMetrics?.let { metrics ->
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    MetricItem(
                        label = "CPU",
                        value = "${metrics.cpuUsage.toInt()}%",
                        color = getMetricColor(metrics.cpuUsage, 80f)
                    )
                    MetricItem(
                        label = "Memory",
                        value = "${(metrics.memoryUsage * 100).toInt()}%",
                        color = getMetricColor(metrics.memoryUsage * 100, 80f)
                    )
                    MetricItem(
                        label = "Storage",
                        value = "${(metrics.storageUsage * 100).toInt()}%",
                        color = getMetricColor(metrics.storageUsage * 100, 90f)
                    )
                }
            } ?: run {
                Text(
                    text = "Loading system metrics...",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
fun PluginMetricsCard(
    pluginId: String,
    metrics: PluginMetrics
) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = pluginId,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                MetricItem(
                    label = "CPU",
                    value = "${metrics.cpuUsage.toInt()}%",
                    color = getMetricColor(metrics.cpuUsage, 80f)
                )
                MetricItem(
                    label = "Memory",
                    value = formatFileSize(metrics.memoryUsage),
                    color = getMetricColor(metrics.memoryUsage / (1024 * 1024), 100f)
                )
                MetricItem(
                    label = "Uptime",
                    value = formatUptime(metrics.uptime),
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
    }
}

@Composable
fun PluginDetailsDialog(
    plugin: PluginInfo,
    metrics: PluginMetrics?,
    onDismiss: () -> Unit,
    onStartPlugin: (String) -> Unit,
    onStopPlugin: (String) -> Unit,
    onUninstallPlugin: (String) -> Unit,
    onUpdatePlugin: (String) -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                PluginIcon(
                    type = plugin.type,
                    modifier = Modifier.size(32.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(plugin.name)
            }
        },
        text = {
            LazyColumn {
                item {
                    DetailRow("Version", plugin.version)
                    DetailRow("Author", plugin.author)
                    DetailRow("Type", plugin.type.name)
                    DetailRow("Size", formatFileSize(plugin.size))
                    DetailRow("Installed", formatDate(plugin.installTime))
                    
                    if (plugin.dependencies.isNotEmpty()) {
                        DetailRow("Dependencies", plugin.dependencies.joinToString(", "))
                    }
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Description",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        text = plugin.description,
                        style = MaterialTheme.typography.bodyMedium,
                        modifier = Modifier.padding(top = 4.dp)
                    )
                    
                    metrics?.let { m ->
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Performance",
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold
                        )
                        DetailRow("CPU Usage", "${m.cpuUsage.toInt()}%")
                        DetailRow("Memory Usage", formatFileSize(m.memoryUsage))
                        DetailRow("API Calls", m.apiCalls.toString())
                        DetailRow("Uptime", formatUptime(m.uptime))
                    }
                }
            }
        },
        confirmButton = {
            Row {
                if (plugin.state == PluginState.STOPPED) {
                    TextButton(onClick = { onStartPlugin(plugin.id) }) {
                        Text("Start")
                    }
                } else if (plugin.state == PluginState.RUNNING) {
                    TextButton(onClick = { onStopPlugin(plugin.id) }) {
                        Text("Stop")
                    }
                }
                
                TextButton(onClick = { onUpdatePlugin(plugin.id) }) {
                    Text("Update")
                }
                
                TextButton(
                    onClick = { onUninstallPlugin(plugin.id) },
                    colors = ButtonDefaults.textButtonColors(
                        contentColor = MaterialTheme.colorScheme.error
                    )
                ) {
                    Text("Uninstall")
                }
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Close")
            }
        }
    )
}

@Composable
fun FilterDialog(
    currentFilter: PluginFilter,
    onFilterChange: (PluginFilter) -> Unit,
    onDismiss: () -> Unit
) {
    var tempFilter by remember { mutableStateOf(currentFilter) }
    
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Filter Plugins") },
        text = {
            Column {
                Text(
                    text = "Plugin Type",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold
                )
                
                PluginType.values().forEach { type ->
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = type in tempFilter.types,
                            onCheckedChange = { checked ->
                                tempFilter = if (checked) {
                                    tempFilter.copy(types = tempFilter.types + type)
                                } else {
                                    tempFilter.copy(types = tempFilter.types - type)
                                }
                            }
                        )
                        Text(type.name)
                    }
                }
                
                Spacer(modifier = Modifier.height(16.dp))
                
                Text(
                    text = "Plugin State",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold
                )
                
                PluginState.values().forEach { state ->
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = state in tempFilter.states,
                            onCheckedChange = { checked ->
                                tempFilter = if (checked) {
                                    tempFilter.copy(states = tempFilter.states + state)
                                } else {
                                    tempFilter.copy(states = tempFilter.states - state)
                                }
                            }
                        )
                        Text(state.name)
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    onFilterChange(tempFilter)
                    onDismiss()
                }
            ) {
                Text("Apply")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancel")
            }
        }
    )
}

// Helper Composables

@Composable
fun PluginIcon(
    type: PluginType,
    modifier: Modifier = Modifier
) {
    val icon = when (type) {
        PluginType.OCR -> Icons.Default.TextFields
        PluginType.TRANSLATOR -> Icons.Default.Translate
        PluginType.UI_EXTENSION -> Icons.Default.Palette
        PluginType.FORMAT_HANDLER -> Icons.Default.Description
        PluginType.THEME -> Icons.Default.ColorLens
        PluginType.GENERAL -> Icons.Default.Extension
    }
    
    Box(
        modifier = modifier
            .clip(CircleShape)
            .background(MaterialTheme.colorScheme.primaryContainer),
        contentAlignment = Alignment.Center
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onPrimaryContainer,
            modifier = Modifier.size(24.dp)
        )
    }
}

@Composable
fun PluginStatusBadge(state: PluginState) {
    val (color, text) = when (state) {
        PluginState.RUNNING -> MaterialTheme.colorScheme.primary to "Running"
        PluginState.STOPPED -> MaterialTheme.colorScheme.outline to "Stopped"
        PluginState.ERROR -> MaterialTheme.colorScheme.error to "Error"
        PluginState.STARTING -> MaterialTheme.colorScheme.tertiary to "Starting"
        PluginState.STOPPING -> MaterialTheme.colorScheme.tertiary to "Stopping"
        else -> MaterialTheme.colorScheme.outline to state.name
    }
    
    Surface(
        shape = RoundedCornerShape(12.dp),
        color = color.copy(alpha = 0.1f),
        border = BorderStroke(1.dp, color.copy(alpha = 0.3f))
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.labelSmall,
            color = color,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
        )
    }
}

@Composable
fun MetricItem(
    label: String,
    value: String,
    color: Color
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = value,
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Bold,
            color = color
        )
        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
fun DetailRow(label: String, value: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 2.dp),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            fontWeight = FontWeight.Medium
        )
    }
}

@Composable
fun EmptyState(
    icon: ImageVector,
    title: String,
    description: String,
    actionText: String? = null,
    onAction: (() -> Unit)? = null
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        Text(
            text = title,
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Text(
            text = description,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
        
        if (actionText != null && onAction != null) {
            Spacer(modifier = Modifier.height(24.dp))
            
            Button(onClick = onAction) {
                Text(actionText)
            }
        }
    }
}

// Helper Functions

fun getMetricColor(value: Float, threshold: Float): Color {
    return when {
        value < threshold * 0.7f -> Color(0xFF4CAF50) // Green
        value < threshold -> Color(0xFFFF9800) // Orange
        else -> Color(0xFFF44336) // Red
    }
}

fun formatFileSize(bytes: Long): String {
    val units = arrayOf("B", "KB", "MB", "GB")
    var size = bytes.toDouble()
    var unitIndex = 0
    
    while (size >= 1024 && unitIndex < units.size - 1) {
        size /= 1024
        unitIndex++
    }
    
    return "%.1f %s".format(size, units[unitIndex])
}

fun formatUptime(milliseconds: Long): String {
    val seconds = milliseconds / 1000
    val minutes = seconds / 60
    val hours = minutes / 60
    val days = hours / 24
    
    return when {
        days > 0 -> "${days}d ${hours % 24}h"
        hours > 0 -> "${hours}h ${minutes % 60}m"
        minutes > 0 -> "${minutes}m ${seconds % 60}s"
        else -> "${seconds}s"
    }
}

fun formatDate(timestamp: Long): String {
    val formatter = SimpleDateFormat("MMM dd, yyyy", Locale.getDefault())
    return formatter.format(Date(timestamp))
}

// Data Classes

data class PluginFilter(
    val types: Set<PluginType> = PluginType.values().toSet(),
    val states: Set<PluginState> = PluginState.values().toSet(),
    val searchQuery: String = ""
)

data class PluginUpdateInfo(
    val pluginId: String,
    val pluginName: String,
    val currentVersion: String,
    val newVersion: String,
    val changelog: String,
    val downloadUrl: String,
    val size: Long
)

data class SystemMetrics(
    val cpuUsage: Float,
    val memoryUsage: Float,
    val storageUsage: Float,
    val networkUsage: Float
)

