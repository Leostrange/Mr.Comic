package io.leostrange.mrcomic.feature.library.opds

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OpdsCatalogScreen(
    onNavigateBack: () -> Unit,
    onBookDownloaded: (java.io.File) -> Unit,
    viewModel: OpdsCatalogViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()

    LaunchedEffect(uiState.downloadedBook) {
        uiState.downloadedBook?.let { file ->
            onBookDownloaded(file)
            viewModel.clearDownloadedBook()
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    if (uiState.isSearchMode) {
                        Text("Search: ${uiState.searchQuery}")
                    } else {
                        Text(uiState.currentFeed?.title ?: "OPDS Catalogs")
                    }
                },
                navigationIcon = {
                    IconButton(onClick = {
                        if (uiState.isSearchMode) viewModel.exitSearch()
                        else if (!uiState.showCatalogPicker) viewModel.goBack()
                        else onNavigateBack()
                    }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Back")
                    }
                },
                actions = {
                    if (!uiState.showCatalogPicker && uiState.currentFeed?.searchLink != null) {
                        var showSearch by remember { mutableStateOf(false) }
                        var searchText by remember { mutableStateOf("") }

                        if (showSearch) {
                            OutlinedTextField(
                                value = searchText,
                                onValueChange = { searchText = it },
                                placeholder = { Text("Search...") },
                                singleLine = true,
                                modifier = Modifier.weight(1f),
                                trailingIcon = {
                                    IconButton(onClick = {
                                        if (searchText.isNotBlank()) viewModel.search(searchText)
                                        showSearch = false
                                    }) {
                                        Icon(Icons.Default.Search, contentDescription = "Search")
                                    }
                                }
                            )
                        } else {
                            IconButton(onClick = { showSearch = true }) {
                                Icon(Icons.Default.Search, contentDescription = "Search")
                            }
                        }
                    }
                    if (!uiState.showCatalogPicker) {
                        IconButton(onClick = { viewModel.showCatalogPicker() }) {
                            Icon(Icons.Default.List, contentDescription = "Catalogs")
                        }
                    }
                }
            )
        }
    ) { padding ->
        Box(modifier = Modifier.padding(padding).fillMaxSize()) {
            when {
                uiState.isLoading -> {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                }
                uiState.error != null -> {
                    Column(
                        modifier = Modifier.align(Alignment.Center),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(Icons.Default.Error, contentDescription = null, tint = MaterialTheme.colorScheme.error)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(uiState.error!!, color = MaterialTheme.colorScheme.error)
                        Spacer(modifier = Modifier.height(16.dp))
                        Button(onClick = { viewModel.clearError() }) { Text("Retry") }
                    }
                }
                uiState.showCatalogPicker -> {
                    CatalogPicker(
                        catalogs = uiState.catalogs,
                        onSelect = { viewModel.openCatalog(it) }
                    )
                }
                uiState.currentFeed != null -> {
                    FeedContent(
                        feed = uiState.currentFeed!!,
                        downloadProgress = uiState.downloadProgress,
                        onEntryClick = { entry ->
                            when {
                                entry.isCatalog -> entry.navigationLink?.let { viewModel.navigateTo(it.href) }
                                entry.isBook -> viewModel.downloadBook(entry)
                            }
                        },
                        onLoadNextPage = { viewModel.loadNextPage() }
                    )
                }
            }
        }
    }
}

@Composable
private fun CatalogPicker(
    catalogs: List<OpdsCatalogSource>,
    onSelect: (OpdsCatalogSource) -> Unit
) {
    LazyColumn(
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        item {
            Text(
                "Book Catalogs",
                style = MaterialTheme.typography.headlineSmall,
                modifier = Modifier.padding(bottom = 8.dp)
            )
        }
        items(catalogs) { catalog ->
            Card(
                modifier = Modifier.fillMaxWidth().clickable { onSelect(catalog) }
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(catalog.name, style = MaterialTheme.typography.titleMedium)
                    if (catalog.description.isNotBlank()) {
                        Text(
                            catalog.description,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun FeedContent(
    feed: io.leostrange.mrcomic.core.model.OpdsFeed,
    downloadProgress: Map<String, Float>,
    onEntryClick: (OpdsEntry) -> Unit,
    onLoadNextPage: () -> Unit
) {
    LazyColumn(
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // Show navigation entries first
        val navEntries = feed.entries.filter { it.isCatalog }
        if (navEntries.isNotEmpty()) {
            item {
                Text("Categories", style = MaterialTheme.typography.titleSmall,
                    modifier = Modifier.padding(bottom = 4.dp))
            }
            items(navEntries) { entry ->
                NavigationEntryCard(entry = entry, onClick = { onEntryClick(entry) })
            }
            item { Spacer(modifier = Modifier.height(8.dp)) }
        }

        // Show book entries
        val bookEntries = feed.entries.filter { it.isBook }
        if (bookEntries.isNotEmpty()) {
            item {
                Text("Books", style = MaterialTheme.typography.titleSmall,
                    modifier = Modifier.padding(bottom = 4.dp))
            }
            items(bookEntries) { entry ->
                BookEntryCard(
                    entry = entry,
                    downloadProgress = downloadProgress[entry.acquisitionLink?.href ?: entry.title],
                    onClick = { onEntryClick(entry) }
                )
            }
        }

        // Next page button
        if (feed.nextLink != null) {
            item {
                Button(
                    onClick = onLoadNextPage,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Icon(Icons.Default.ArrowForward, contentDescription = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("Load more")
                }
            }
        }
    }
}

@Composable
private fun NavigationEntryCard(entry: OpdsEntry, onClick: () -> Unit) {
    Card(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick)
    ) {
        Row(
            modifier = Modifier.padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(Icons.Default.Folder, contentDescription = null,
                tint = MaterialTheme.colorScheme.primary)
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text(entry.title, style = MaterialTheme.typography.bodyLarge)
                entry.summary?.let {
                    Text(it, style = MaterialTheme.typography.bodySmall,
                        maxLines = 2, overflow = TextOverflow.Ellipsis)
                }
            }
        }
    }
}

@Composable
private fun BookEntryCard(
    entry: OpdsEntry,
    downloadProgress: Float?,
    onClick: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth().clickable(onClick = onClick)
    ) {
        Row(modifier = Modifier.padding(12.dp)) {
            // Thumbnail
            entry.thumbnailUrl?.let { url ->
                AsyncImage(
                    model = url,
                    contentDescription = entry.title,
                    modifier = Modifier.size(60.dp, 80.dp).clip(MaterialTheme.shapes.small),
                    contentScale = ContentScale.Crop
                )
                Spacer(modifier = Modifier.width(12.dp))
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(entry.title, style = MaterialTheme.typography.bodyLarge, maxLines = 2)
                entry.author?.let {
                    Text(it, style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant)
                }
                entry.summary?.let {
                    Text(it, style = MaterialTheme.typography.bodySmall,
                        maxLines = 2, overflow = TextOverflow.Ellipsis)
                }
                // Download progress
                if (downloadProgress != null) {
                    Spacer(modifier = Modifier.height(4.dp))
                    LinearProgressIndicator(
                        progress = { downloadProgress.coerceIn(0f, 1f) },
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
            // Download icon
            if (entry.acquisitionLink != null && downloadProgress == null) {
                Icon(Icons.Default.Download, contentDescription = "Download",
                    tint = MaterialTheme.colorScheme.primary)
            }
        }
    }
}
