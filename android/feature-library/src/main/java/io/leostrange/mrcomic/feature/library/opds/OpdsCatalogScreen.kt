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
import io.leostrange.mrcomic.core.ui.locale.LocalStrings

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OpdsCatalogScreen(
    onNavigateBack: () -> Unit,
    onBookDownloaded: (java.io.File) -> Unit,
    viewModel: OpdsCatalogViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val strings = LocalStrings.current

    LaunchedEffect(uiState.downloadedBooks) {
        uiState.downloadedBooks.firstOrNull()?.let { file ->
            onBookDownloaded(file)
            viewModel.clearDownloadedBook(file)
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    if (uiState.isSearchMode) {
                        Text("${strings.opdsSearch}: ${uiState.searchQuery}")
                    } else {
                        Text(uiState.currentFeed?.title ?: strings.opdsCatalogs)
                    }
                },
                navigationIcon = {
                    IconButton(onClick = {
                        if (uiState.isSearchMode) viewModel.exitSearch()
                        else if (!uiState.showCatalogPicker) viewModel.goBack()
                        else onNavigateBack()
                    }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = strings.back)
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
                                placeholder = { Text(strings.opdsSearchPlaceholder) },
                                singleLine = true,
                                modifier = Modifier.weight(1f),
                                trailingIcon = {
                                    IconButton(onClick = {
                                        if (searchText.isNotBlank()) viewModel.search(searchText)
                                        showSearch = false
                                    }) {
                                        Icon(Icons.Default.Search, contentDescription = strings.opdsSearch)
                                    }
                                }
                            )
                        } else {
                            IconButton(onClick = { showSearch = true }) {
                                Icon(Icons.Default.Search, contentDescription = strings.opdsSearch)
                            }
                        }
                    }
                    if (!uiState.showCatalogPicker) {
                        IconButton(onClick = { viewModel.showCatalogPicker() }) {
                            Icon(Icons.Default.List, contentDescription = strings.opdsCatalogs)
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
                        Button(onClick = { viewModel.retry() }) { Text(strings.opdsRetry) }
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

private fun OpdsCatalogSource.localized(strings: io.leostrange.mrcomic.core.ui.locale.AppStrings): OpdsCatalogSource = when {
    url.contains("gutenberg.org/ebooks.opds") -> copy(
        name = strings.opdsProjectGutenberg,
        description = strings.opdsProjectGutenbergDescription
    )
    url.contains("feedbooks.com/catalog/public_domain") -> copy(
        name = strings.opdsFeedbooks,
        description = strings.opdsFeedbooksDescription
    )
    url.contains("manybooks.net/opds") -> copy(
        name = strings.opdsManyBooks,
        description = strings.opdsManyBooksDescription
    )
    else -> this
}

@Composable
private fun CatalogPicker(
    catalogs: List<OpdsCatalogSource>,
    onSelect: (OpdsCatalogSource) -> Unit
) {
    val strings = LocalStrings.current
    LazyColumn(
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        item {
            Text(
                strings.opdsCatalogPickerTitle,
                style = MaterialTheme.typography.headlineSmall,
                modifier = Modifier.padding(bottom = 8.dp)
            )
        }
        items(catalogs) { catalog ->
            val displayCatalog = catalog.localized(strings)
            Card(
                modifier = Modifier.fillMaxWidth().clickable { onSelect(catalog) }
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(displayCatalog.name, style = MaterialTheme.typography.titleMedium)
                    if (displayCatalog.description.isNotBlank()) {
                        Text(
                            displayCatalog.description,
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
    val strings = LocalStrings.current
    LazyColumn(
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // Show navigation entries first
        val navEntries = feed.entries.filter { it.isCatalog }
        if (navEntries.isNotEmpty()) {
            item {
                Text(strings.opdsCategories, style = MaterialTheme.typography.titleSmall,
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
                Text(strings.opdsBooks, style = MaterialTheme.typography.titleSmall,
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
                    Text(strings.opdsLoadMore)
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
    val strings = LocalStrings.current
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
                Icon(Icons.Default.Download, contentDescription = strings.opdsDownload,
                    tint = MaterialTheme.colorScheme.primary)
            }
        }
    }
}
