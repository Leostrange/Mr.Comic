package com.example.mrcomic.ui

import android.content.Context
import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.example.mrcomic.R
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel
import kotlinx.coroutines.flow.collectLatest
import androidx.core.content.pm.ShortcutInfoCompat
import androidx.core.content.pm.ShortcutManagerCompat
import androidx.core.graphics.drawable.IconCompat
import androidx.compose.material3.FilterChip
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.ui.platform.LocalConfiguration

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicLibraryScreen(
    viewModel: ComicLibraryViewModel,
    onImportClick: () -> Unit,
    onFolderSelect: () -> Unit,
    onComicSelected: (comicId: String) -> Unit,
    onSettingsClick: () -> Unit,
    onThumbnailsClick: (comicId: String) -> Unit
) {
    val comics by viewModel.comics.observeAsState(emptyList())
    val error by viewModel.error.observeAsState()
    val failedImports by viewModel.failedImports.observeAsState(emptyList())
    var importProgress by remember { mutableStateOf(0f) }
    var isImporting by remember { mutableStateOf(false) }
    var searchQuery by remember { mutableStateOf("") }
    var filterAuthor by remember { mutableStateOf("") }
    var filterTags by remember { mutableStateOf("") }
    var expandedTags by remember { mutableStateOf(false) }
    var filterCollection by remember { mutableStateOf("") }
    var expandedCollections by remember { mutableStateOf(false) }
    var isEInkMode by remember { mutableStateOf(false) }
    val allLabels = listOf("Любимое", "Прочитано")
    var selectedLabels by remember { mutableStateOf(emptySet<String>()) }
    val configuration = LocalConfiguration.current
    val columns = if (configuration.screenWidthDp > 600) 3 else 2

    // Прогресс импорта
    LaunchedEffect(Unit) {
        ComicImporter.importProgress.collectLatest { progress ->
            importProgress = progress
            isImporting = progress < 1f && progress > 0f
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(if (isEInkMode) Color.White else Color.Transparent)
            .padding(16.dp)
    ) {
        Row {
            Button(
                onClick = {
                    isImporting = true
                    onImportClick()
                },
                modifier = Modifier.weight(1f).semantics { contentDescription = stringResource(R.string.import_comic) }
            ) { Text(stringResource(R.string.import_comic)) }
            Spacer(modifier = Modifier.width(8.dp))
            Button(
                onClick = onFolderSelect,
                modifier = Modifier.weight(1f).semantics { contentDescription = stringResource(R.string.select_folder) }
            ) { Text(stringResource(R.string.select_folder)) }
            Spacer(modifier = Modifier.width(8.dp))
            Button(
                onClick = onSettingsClick,
                modifier = Modifier.weight(1f).semantics { contentDescription = stringResource(R.string.settings) }
            ) { Text(stringResource(R.string.settings)) }
        }
        if (isImporting) {
            LinearProgressIndicator(progress = importProgress, modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.import_progress) })
        }
        Spacer(modifier = Modifier.height(8.dp))
        TextField(
            value = searchQuery,
            onValueChange = { searchQuery = it },
            label = { Text(stringResource(R.string.search)) },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.search) }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(stringResource(R.string.filter_by_label))
        FlowRow(modifier = Modifier.fillMaxWidth()) {
            allLabels.forEach { label ->
                FilterChip(
                    selected = label in selectedLabels,
                    onClick = {
                        selectedLabels = if (label in selectedLabels) selectedLabels - label else selectedLabels + label
                    },
                    label = { Text(label) },
                    modifier = Modifier.padding(end = 8.dp).semantics { contentDescription = label }
                )
            }
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(stringResource(R.string.eink_mode))
            Switch(
                checked = isEInkMode,
                onCheckedChange = { isEInkMode = it },
                modifier = Modifier.semantics { contentDescription = stringResource(R.string.eink_mode) }
            )
        }
        Spacer(modifier = Modifier.height(8.dp))
        if (comics.isNotEmpty()) {
            if (configuration.screenWidthDp > 600) {
                LazyVerticalGrid(columns = GridCells.Fixed(columns)) {
                    items(comics.filter {
                        (searchQuery.isBlank() || it.title.contains(searchQuery, true)) &&
                        (filterAuthor.isBlank() || (it.author?.contains(filterAuthor, true) == true)) &&
                        (filterTags.isBlank() || (it.tags?.contains(filterTags, true) == true)) &&
                        (selectedLabels.isEmpty() || selectedLabels.all { label -> it.labels.contains(label) })
                    }) { comic ->
                        Card(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(vertical = 4.dp)
                                .clickable { onComicSelected(comic.id) }
                                .semantics { contentDescription = "${comic.title}, ${comic.author ?: ""}" },
                            colors = CardDefaults.cardColors(
                                containerColor = if (isEInkMode) Color.White else MaterialTheme.colorScheme.surface
                            )
                        ) {
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(8.dp),
                                horizontalArrangement = Arrangement.SpaceBetween
                            ) {
                                Column(modifier = Modifier.weight(1f)) {
                                    Text(comic.title, style = MaterialTheme.typography.titleMedium)
                                    comic.author?.let { Text(stringResource(R.string.author, it), style = MaterialTheme.typography.bodySmall) }
                                    comic.tags?.let { Text(stringResource(R.string.tags, it), style = MaterialTheme.typography.bodySmall) }
                                }
                                IconButton(
                                    onClick = { onThumbnailsClick(comic.id) },
                                    modifier = Modifier.semantics { contentDescription = stringResource(R.string.thumbnails) }
                                ) {
                                    Icon(Icons.Default.ArrowDropDown, contentDescription = stringResource(R.string.thumbnails))
                                }
                            }
                            Row(modifier = Modifier.padding(top = 4.dp)) {
                                allLabels.forEach { label ->
                                    FilterChip(
                                        selected = label in comic.labels,
                                        onClick = {
                                            val newLabels = if (label in comic.labels) comic.labels - label else comic.labels + label
                                            viewModel.updateComicLabels(comic.id, newLabels)
                                        },
                                        label = { Text(label) },
                                        modifier = Modifier.padding(end = 4.dp).semantics { contentDescription = label }
                                    )
                                }
                            }
                        }
                    }
                }
            } else {
                LazyColumn {
                    items(comics.filter {
                        (searchQuery.isBlank() || it.title.contains(searchQuery, true)) &&
                        (filterAuthor.isBlank() || (it.author?.contains(filterAuthor, true) == true)) &&
                        (filterTags.isBlank() || (it.tags?.contains(filterTags, true) == true)) &&
                        (selectedLabels.isEmpty() || selectedLabels.all { label -> it.labels.contains(label) })
                    }) { comic ->
                        Card(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(vertical = 4.dp)
                                .clickable { onComicSelected(comic.id) }
                                .semantics { contentDescription = "${comic.title}, ${comic.author ?: ""}" },
                            colors = CardDefaults.cardColors(
                                containerColor = if (isEInkMode) Color.White else MaterialTheme.colorScheme.surface
                            )
                        ) {
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(8.dp),
                                horizontalArrangement = Arrangement.SpaceBetween
                            ) {
                                Column(modifier = Modifier.weight(1f)) {
                                    Text(comic.title, style = MaterialTheme.typography.titleMedium)
                                    comic.author?.let { Text(stringResource(R.string.author, it), style = MaterialTheme.typography.bodySmall) }
                                    comic.tags?.let { Text(stringResource(R.string.tags, it), style = MaterialTheme.typography.bodySmall) }
                                }
                                IconButton(
                                    onClick = { onThumbnailsClick(comic.id) },
                                    modifier = Modifier.semantics { contentDescription = stringResource(R.string.thumbnails) }
                                ) {
                                    Icon(Icons.Default.ArrowDropDown, contentDescription = stringResource(R.string.thumbnails))
                                }
                            }
                            Row(modifier = Modifier.padding(top = 4.dp)) {
                                allLabels.forEach { label ->
                                    FilterChip(
                                        selected = label in comic.labels,
                                        onClick = {
                                            val newLabels = if (label in comic.labels) comic.labels - label else comic.labels + label
                                            viewModel.updateComicLabels(comic.id, newLabels)
                                        },
                                        label = { Text(label) },
                                        modifier = Modifier.padding(end = 4.dp).semantics { contentDescription = label }
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        if (error != null) {
            Text(stringResource(R.string.error, error ?: ""), color = Color.Red)
        }
        if (failedImports.isNotEmpty()) {
            Text(stringResource(R.string.import_errors), color = Color.Red)
            failedImports.forEach {
                Text(stringResource(R.string.import_error_item, it.filePath, it.error), color = Color.Red, style = MaterialTheme.typography.bodySmall)
            }
        }
    }
}

fun createShortcut(context: Context, comic: Comic) {
    val shortcut = ShortcutInfoCompat.Builder(context, comic.id.toString())
        .setShortLabel(comic.title)
        .setLongLabel("Открыть ${comic.title}")
        .setIcon(IconCompat.createWithResource(context, R.drawable.ic_launcher_foreground))
        .setIntent(Intent(context, MainActivity::class.java).apply {
            action = "open_comic"
            putExtra("comic_id", comic.id)
        })
        .build()
    ShortcutManagerCompat.pushDynamicShortcut(context, shortcut)
} 