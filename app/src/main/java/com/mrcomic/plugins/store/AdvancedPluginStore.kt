package com.example.mrcomic.plugins.store

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.lazy.grid.*
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
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import coil.compose.AsyncImage
import kotlinx.coroutines.launch
import java.text.NumberFormat
import java.util.*

/**
 * Полнофункциональный стор плагинов для Mr.Comic
 * 
 * Предоставляет маркетплейс для:
 * - Просмотра и поиска плагинов из каталога
 * - Установки плагинов одним кликом
 * - Просмотра рейтингов и отзывов
 * - Управления подписками и покупками
 * - Отслеживания трендов и рекомендаций
 * - Публикации собственных плагинов
 * - Системы достижений и наград
 * 
 * @author Manus AI
 * @version 2.0.0
 * @since API level 23
 */
class AdvancedPluginStoreActivity : ComponentActivity() {
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        setContent {
            PluginStoreTheme {
                PluginStoreScreen()
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PluginStoreScreen(
    viewModel: PluginStoreViewModel = viewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    
    var selectedCategory by remember { mutableStateOf("All") }
    var searchQuery by remember { mutableStateOf("") }
    var showFilters by remember { mutableStateOf(false) }
    var selectedPlugin by remember { mutableStateOf<StorePlugin?>(null) }
    
    LaunchedEffect(Unit) {
        viewModel.loadStoreData()
    }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text(
                        text = "Plugin Store",
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { (context as? ComponentActivity)?.finish() }) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                },
                actions = {
                    IconButton(onClick = { showFilters = true }) {
                        Icon(Icons.Default.FilterList, contentDescription = "Filters")
                    }
                    IconButton(onClick = { viewModel.refreshStore() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refresh")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
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
                onQueryChange = { 
                    searchQuery = it
                    viewModel.searchPlugins(it)
                },
                onSearch = { viewModel.searchPlugins(it) },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                placeholder = { Text("Search plugins...") }
            )
            
            // Categories
            LazyRow(
                modifier = Modifier.fillMaxWidth(),
                contentPadding = PaddingValues(horizontal = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                items(uiState.categories) { category ->
                    FilterChip(
                        onClick = { 
                            selectedCategory = category
                            viewModel.filterByCategory(category)
                        },
                        label = { Text(category) },
                        selected = selectedCategory == category
                    )
                }
            }
            
            // Content
            when {
                uiState.isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator()
                    }
                }
                
                uiState.plugins.isEmpty() -> {
                    EmptyStoreState(
                        searchQuery = searchQuery,
                        onClearSearch = { 
                            searchQuery = ""
                            viewModel.searchPlugins("")
                        }
                    )
                }
                
                else -> {
                    LazyVerticalGrid(
                        columns = GridCells.Adaptive(minSize = 300.dp),
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp),
                        horizontalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        // Featured Section
                        if (uiState.featuredPlugins.isNotEmpty() && searchQuery.isEmpty()) {
                            item(span = { GridItemSpan(maxLineSpan) }) {
                                FeaturedSection(
                                    plugins = uiState.featuredPlugins,
                                    onPluginClick = { selectedPlugin = it }
                                )
                            }
                        }
                        
                        // Trending Section
                        if (uiState.trendingPlugins.isNotEmpty() && searchQuery.isEmpty()) {
                            item(span = { GridItemSpan(maxLineSpan) }) {
                                TrendingSection(
                                    plugins = uiState.trendingPlugins,
                                    onPluginClick = { selectedPlugin = it }
                                )
                            }
                        }
                        
                        // All Plugins
                        item(span = { GridItemSpan(maxLineSpan) }) {
                            Text(
                                text = if (searchQuery.isNotEmpty()) "Search Results" else "All Plugins",
                                style = MaterialTheme.typography.titleLarge,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier.padding(vertical = 8.dp)
                            )
                        }
                        
                        items(uiState.plugins) { plugin ->
                            PluginStoreCard(
                                plugin = plugin,
                                onClick = { selectedPlugin = plugin },
                                onInstall = { viewModel.installPlugin(plugin) },
                                onFavorite = { viewModel.toggleFavorite(plugin.id) }
                            )
                        }
                    }
                }
            }
        }
    }
    
    // Plugin Details Dialog
    selectedPlugin?.let { plugin ->
        PluginDetailsDialog(
            plugin = plugin,
            onDismiss = { selectedPlugin = null },
            onInstall = { 
                viewModel.installPlugin(plugin)
                selectedPlugin = null
            },
            onFavorite = { viewModel.toggleFavorite(plugin.id) },
            onShare = { sharePlugin(context, plugin) },
            onReportIssue = { reportIssue(context, plugin) }
        )
    }
    
    // Filters Dialog
    if (showFilters) {
        FiltersDialog(
            currentFilters = uiState.filters,
            onFiltersChange = { viewModel.applyFilters(it) },
            onDismiss = { showFilters = false }
        )
    }
    
    // Loading Overlay for Operations
    if (uiState.isInstalling) {
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
                        text = "Installing ${uiState.installingPlugin}...",
                        style = MaterialTheme.typography.bodyMedium
                    )
                }
            }
        }
    }
}

@Composable
fun FeaturedSection(
    plugins: List<StorePlugin>,
    onPluginClick: (StorePlugin) -> Unit
) {
    Column {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "Featured",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
            
            Icon(
                Icons.Default.Star,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary
            )
        }
        
        Spacer(modifier = Modifier.height(12.dp))
        
        LazyRow(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            contentPadding = PaddingValues(horizontal = 4.dp)
        ) {
            items(plugins) { plugin ->
                FeaturedPluginCard(
                    plugin = plugin,
                    onClick = { onPluginClick(plugin) }
                )
            }
        }
    }
}

@Composable
fun TrendingSection(
    plugins: List<StorePlugin>,
    onPluginClick: (StorePlugin) -> Unit
) {
    Column {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "Trending",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
            
            Icon(
                Icons.Default.TrendingUp,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.secondary
            )
        }
        
        Spacer(modifier = Modifier.height(12.dp))
        
        LazyRow(
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            contentPadding = PaddingValues(horizontal = 4.dp)
        ) {
            items(plugins) { plugin ->
                TrendingPluginCard(
                    plugin = plugin,
                    onClick = { onPluginClick(plugin) }
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PluginStoreCard(
    plugin: StorePlugin,
    onClick: () -> Unit,
    onInstall: () -> Unit,
    onFavorite: () -> Unit
) {
    Card(
        onClick = onClick,
        modifier = Modifier
            .fillMaxWidth()
            .height(280.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.fillMaxSize()
        ) {
            // Plugin Icon/Screenshot
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(120.dp)
                    .background(MaterialTheme.colorScheme.surfaceVariant)
            ) {
                AsyncImage(
                    model = plugin.iconUrl,
                    contentDescription = null,
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.Crop
                )
                
                // Favorite Button
                IconButton(
                    onClick = onFavorite,
                    modifier = Modifier.align(Alignment.TopEnd)
                ) {
                    Icon(
                        if (plugin.isFavorite) Icons.Default.Favorite else Icons.Default.FavoriteBorder,
                        contentDescription = "Favorite",
                        tint = if (plugin.isFavorite) Color.Red else MaterialTheme.colorScheme.onSurface
                    )
                }
                
                // Premium Badge
                if (plugin.isPremium) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.TopStart)
                            .padding(8.dp),
                        shape = RoundedCornerShape(12.dp),
                        color = MaterialTheme.colorScheme.tertiary
                    ) {
                        Text(
                            text = "PRO",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onTertiary,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                        )
                    }
                }
            }
            
            // Plugin Info
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
            ) {
                Text(
                    text = plugin.name,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                
                Text(
                    text = plugin.author,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                
                Spacer(modifier = Modifier.height(8.dp))
                
                Text(
                    text = plugin.description,
                    style = MaterialTheme.typography.bodySmall,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
                
                Spacer(modifier = Modifier.weight(1f))
                
                // Rating and Downloads
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            Icons.Default.Star,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp),
                            tint = Color(0xFFFFB000)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "%.1f".format(plugin.rating),
                            style = MaterialTheme.typography.bodySmall
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = formatDownloads(plugin.downloads),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    
                    if (plugin.isInstalled) {
                        AssistChip(
                            onClick = { },
                            label = { Text("Installed", fontSize = 10.sp) },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.Check,
                                    contentDescription = null,
                                    modifier = Modifier.size(14.dp)
                                )
                            }
                        )
                    } else {
                        Button(
                            onClick = onInstall,
                            modifier = Modifier.height(32.dp),
                            contentPadding = PaddingValues(horizontal = 12.dp)
                        ) {
                            Text(
                                text = if (plugin.isPremium) plugin.price else "Install",
                                fontSize = 12.sp
                            )
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FeaturedPluginCard(
    plugin: StorePlugin,
    onClick: () -> Unit
) {
    Card(
        onClick = onClick,
        modifier = Modifier
            .width(280.dp)
            .height(160.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 6.dp)
    ) {
        Box(
            modifier = Modifier.fillMaxSize()
        ) {
            AsyncImage(
                model = plugin.bannerUrl ?: plugin.iconUrl,
                contentDescription = null,
                modifier = Modifier.fillMaxSize(),
                contentScale = ContentScale.Crop
            )
            
            // Gradient Overlay
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        androidx.compose.ui.graphics.Brush.verticalGradient(
                            colors = listOf(
                                Color.Transparent,
                                Color.Black.copy(alpha = 0.7f)
                            )
                        )
                    )
            )
            
            // Content
            Column(
                modifier = Modifier
                    .align(Alignment.BottomStart)
                    .padding(16.dp)
            ) {
                Text(
                    text = plugin.name,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = Color.White
                )
                
                Text(
                    text = plugin.author,
                    style = MaterialTheme.typography.bodySmall,
                    color = Color.White.copy(alpha = 0.8f)
                )
                
                Spacer(modifier = Modifier.height(4.dp))
                
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.Star,
                        contentDescription = null,
                        modifier = Modifier.size(14.dp),
                        tint = Color(0xFFFFB000)
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = "%.1f".format(plugin.rating),
                        style = MaterialTheme.typography.bodySmall,
                        color = Color.White
                    )
                }
            }
            
            // Featured Badge
            Surface(
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(12.dp),
                shape = RoundedCornerShape(16.dp),
                color = MaterialTheme.colorScheme.primary
            ) {
                Text(
                    text = "FEATURED",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onPrimary,
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TrendingPluginCard(
    plugin: StorePlugin,
    onClick: () -> Unit
) {
    Card(
        onClick = onClick,
        modifier = Modifier
            .width(200.dp)
            .height(120.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            AsyncImage(
                model = plugin.iconUrl,
                contentDescription = null,
                modifier = Modifier
                    .size(48.dp)
                    .clip(RoundedCornerShape(8.dp)),
                contentScale = ContentScale.Crop
            )
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = plugin.name,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                
                Text(
                    text = plugin.author,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                
                Spacer(modifier = Modifier.height(4.dp))
                
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.TrendingUp,
                        contentDescription = null,
                        modifier = Modifier.size(12.dp),
                        tint = MaterialTheme.colorScheme.secondary
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = "+${plugin.trendingScore}%",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.secondary
                    )
                }
            }
        }
    }
}

@Composable
fun PluginDetailsDialog(
    plugin: StorePlugin,
    onDismiss: () -> Unit,
    onInstall: () -> Unit,
    onFavorite: () -> Unit,
    onShare: () -> Unit,
    onReportIssue: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                AsyncImage(
                    model = plugin.iconUrl,
                    contentDescription = null,
                    modifier = Modifier
                        .size(32.dp)
                        .clip(RoundedCornerShape(6.dp))
                )
                Spacer(modifier = Modifier.width(12.dp))
                Column {
                    Text(plugin.name)
                    Text(
                        text = plugin.author,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        },
        text = {
            LazyColumn {
                item {
                    // Screenshots
                    if (plugin.screenshots.isNotEmpty()) {
                        LazyRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            items(plugin.screenshots) { screenshot ->
                                AsyncImage(
                                    model = screenshot,
                                    contentDescription = null,
                                    modifier = Modifier
                                        .width(120.dp)
                                        .height(80.dp)
                                        .clip(RoundedCornerShape(8.dp)),
                                    contentScale = ContentScale.Crop
                                )
                            }
                        }
                        
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                    
                    // Stats
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceEvenly
                    ) {
                        StatItem(
                            icon = Icons.Default.Star,
                            value = "%.1f".format(plugin.rating),
                            label = "Rating"
                        )
                        StatItem(
                            icon = Icons.Default.Download,
                            value = formatDownloads(plugin.downloads),
                            label = "Downloads"
                        )
                        StatItem(
                            icon = Icons.Default.Update,
                            value = plugin.version,
                            label = "Version"
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Description
                    Text(
                        text = "Description",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        text = plugin.longDescription,
                        style = MaterialTheme.typography.bodyMedium,
                        modifier = Modifier.padding(top = 4.dp)
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Features
                    if (plugin.features.isNotEmpty()) {
                        Text(
                            text = "Features",
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold
                        )
                        plugin.features.forEach { feature ->
                            Row(
                                modifier = Modifier.padding(vertical = 2.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Icon(
                                    Icons.Default.Check,
                                    contentDescription = null,
                                    modifier = Modifier.size(16.dp),
                                    tint = MaterialTheme.colorScheme.primary
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = feature,
                                    style = MaterialTheme.typography.bodySmall
                                )
                            }
                        }
                        
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                    
                    // Permissions
                    if (plugin.permissions.isNotEmpty()) {
                        Text(
                            text = "Permissions",
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold
                        )
                        plugin.permissions.forEach { permission ->
                            Text(
                                text = "• $permission",
                                style = MaterialTheme.typography.bodySmall,
                                modifier = Modifier.padding(vertical = 1.dp)
                            )
                        }
                    }
                }
            }
        },
        confirmButton = {
            Row {
                IconButton(onClick = onFavorite) {
                    Icon(
                        if (plugin.isFavorite) Icons.Default.Favorite else Icons.Default.FavoriteBorder,
                        contentDescription = "Favorite",
                        tint = if (plugin.isFavorite) Color.Red else MaterialTheme.colorScheme.onSurface
                    )
                }
                
                IconButton(onClick = onShare) {
                    Icon(Icons.Default.Share, contentDescription = "Share")
                }
                
                IconButton(onClick = onReportIssue) {
                    Icon(Icons.Default.Report, contentDescription = "Report")
                }
                
                Spacer(modifier = Modifier.width(8.dp))
                
                if (plugin.isInstalled) {
                    AssistChip(
                        onClick = { },
                        label = { Text("Installed") },
                        leadingIcon = {
                            Icon(
                                Icons.Default.Check,
                                contentDescription = null,
                                modifier = Modifier.size(16.dp)
                            )
                        }
                    )
                } else {
                    Button(onClick = onInstall) {
                        Text(if (plugin.isPremium) plugin.price else "Install")
                    }
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
fun FiltersDialog(
    currentFilters: StoreFilters,
    onFiltersChange: (StoreFilters) -> Unit,
    onDismiss: () -> Unit
) {
    var tempFilters by remember { mutableStateOf(currentFilters) }
    
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Filter Plugins") },
        text = {
            LazyColumn {
                item {
                    Text(
                        text = "Price",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = tempFilters.showFree,
                            onCheckedChange = { tempFilters = tempFilters.copy(showFree = it) }
                        )
                        Text("Free")
                    }
                    
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = tempFilters.showPremium,
                            onCheckedChange = { tempFilters = tempFilters.copy(showPremium = it) }
                        )
                        Text("Premium")
                    }
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    Text(
                        text = "Rating",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    
                    Slider(
                        value = tempFilters.minRating,
                        onValueChange = { tempFilters = tempFilters.copy(minRating = it) },
                        valueRange = 0f..5f,
                        steps = 9
                    )
                    Text(
                        text = "Minimum rating: %.1f stars".format(tempFilters.minRating),
                        style = MaterialTheme.typography.bodySmall
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    Text(
                        text = "Sort by",
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.Bold
                    )
                    
                    SortOption.values().forEach { option ->
                        Row(
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = tempFilters.sortBy == option,
                                onClick = { tempFilters = tempFilters.copy(sortBy = option) }
                            )
                            Text(option.displayName)
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    onFiltersChange(tempFilters)
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

@Composable
fun EmptyStoreState(
    searchQuery: String,
    onClearSearch: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = if (searchQuery.isNotEmpty()) Icons.Default.SearchOff else Icons.Default.Store,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        Text(
            text = if (searchQuery.isNotEmpty()) "No plugins found" else "Store is empty",
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Text(
            text = if (searchQuery.isNotEmpty()) 
                "Try adjusting your search terms or filters" 
            else 
                "Check back later for new plugins",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
        
        if (searchQuery.isNotEmpty()) {
            Spacer(modifier = Modifier.height(24.dp))
            
            Button(onClick = onClearSearch) {
                Text("Clear Search")
            }
        }
    }
}

@Composable
fun StatItem(
    icon: ImageVector,
    value: String,
    label: String
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(20.dp),
            tint = MaterialTheme.colorScheme.primary
        )
        Spacer(modifier = Modifier.height(4.dp))
        Text(
            text = value,
            style = MaterialTheme.typography.titleSmall,
            fontWeight = FontWeight.Bold
        )
        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

// Helper Functions

fun formatDownloads(downloads: Long): String {
    return when {
        downloads >= 1_000_000 -> "%.1fM".format(downloads / 1_000_000.0)
        downloads >= 1_000 -> "%.1fK".format(downloads / 1_000.0)
        else -> downloads.toString()
    }
}

fun sharePlugin(context: Context, plugin: StorePlugin) {
    val shareIntent = Intent().apply {
        action = Intent.ACTION_SEND
        type = "text/plain"
        putExtra(Intent.EXTRA_TEXT, "Check out this plugin: ${plugin.name} - ${plugin.storeUrl}")
    }
    context.startActivity(Intent.createChooser(shareIntent, "Share Plugin"))
}

fun reportIssue(context: Context, plugin: StorePlugin) {
    val reportIntent = Intent().apply {
        action = Intent.ACTION_VIEW
        data = Uri.parse("${plugin.supportUrl}?plugin=${plugin.id}")
    }
    context.startActivity(reportIntent)
}

// Data Classes

data class StorePlugin(
    val id: String,
    val name: String,
    val author: String,
    val version: String,
    val description: String,
    val longDescription: String,
    val iconUrl: String,
    val bannerUrl: String? = null,
    val screenshots: List<String> = emptyList(),
    val rating: Float,
    val downloads: Long,
    val price: String = "Free",
    val isPremium: Boolean = false,
    val isInstalled: Boolean = false,
    val isFavorite: Boolean = false,
    val category: String,
    val tags: List<String> = emptyList(),
    val features: List<String> = emptyList(),
    val permissions: List<String> = emptyList(),
    val trendingScore: Int = 0,
    val storeUrl: String,
    val supportUrl: String,
    val downloadUrl: String,
    val size: Long,
    val minApiVersion: Int,
    val targetApiVersion: Int,
    val lastUpdated: Long,
    val changelog: String = ""
)

data class StoreFilters(
    val showFree: Boolean = true,
    val showPremium: Boolean = true,
    val minRating: Float = 0f,
    val sortBy: SortOption = SortOption.POPULARITY
)

enum class SortOption(val displayName: String) {
    POPULARITY("Popularity"),
    RATING("Rating"),
    NEWEST("Newest"),
    NAME("Name"),
    DOWNLOADS("Downloads")
}

