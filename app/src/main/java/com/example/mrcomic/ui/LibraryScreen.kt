package com.example.mrcomic.ui

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.material3.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.FavoriteBorder
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.mrcomic.R
import com.example.mrcomic.data.ComicEntity
import com.example.mrcomic.ui.LibraryViewModel
import com.example.mrcomic.ui.LibraryUiState
import coil.compose.AsyncImage
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.ExperimentalFoundationApi

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun LibraryScreen(
    onNavigateToReader: (Long) -> Unit,
    onNavigateToDetail: (Long) -> Unit,
    onNavigateToSettings: () -> Unit,
    onNavigateToAddComic: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val comics by viewModel.comics.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    var showOnlyFavorites by remember { mutableStateOf(false) }
    var sortOrder by remember { mutableStateOf("title") }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Моя библиотека",
                        style = MaterialTheme.typography.headlineSmall
                    )
                },
                actions = {
                    IconButton(onClick = onNavigateToSettings) {
                        Icon(Icons.Default.Settings, contentDescription = "Настройки")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onNavigateToAddComic,
                containerColor = MaterialTheme.colorScheme.primary
            ) {
                Icon(Icons.Default.Add, contentDescription = "Добавить комикс")
            }
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(horizontal = 20.dp, vertical = 12.dp)
        ) {
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Поиск комиксов...") },
                singleLine = true,
                shape = MaterialTheme.shapes.medium
            )
            Spacer(Modifier.height(12.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Checkbox(
                    checked = showOnlyFavorites,
                    onCheckedChange = { showOnlyFavorites = it },
                    colors = CheckboxDefaults.colors(
                        checkedColor = MaterialTheme.colorScheme.primary
                    )
                )
                Text("Только избранные", style = MaterialTheme.typography.bodyMedium)
                Spacer(Modifier.width(20.dp))
                var sortExpanded by remember { mutableStateOf(false) }
                Box {
                    OutlinedButton(onClick = { sortExpanded = true }) {
                        Text(
                            when (sortOrder) {
                                "title" -> "По названию"
                                "author" -> "По автору"
                                "progress" -> "По прогрессу"
                                else -> "По названию"
                            },
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                    DropdownMenu(
                        expanded = sortExpanded,
                        onDismissRequest = { sortExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text("По названию") },
                            onClick = {
                                sortOrder = "title"
                                sortExpanded = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("По автору") },
                            onClick = {
                                sortOrder = "author"
                                sortExpanded = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("По прогрессу") },
                            onClick = {
                                sortOrder = "progress"
                                sortExpanded = false
                            }
                        )
                    }
                }
            }
            Spacer(Modifier.height(16.dp))

            when (uiState) {
                is LibraryUiState.Error -> {
                    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        Text("Ошибка: ${(uiState as LibraryUiState.Error).message}", color = MaterialTheme.colorScheme.error)
                    }
                }
                is LibraryUiState.Importing, is LibraryUiState.Idle -> {
                    // Показываем основной контент
                    val filteredComics = comics
                        .filter { if (showOnlyFavorites) it.isFavorite else true }
                        .filter { it.title.contains(searchQuery, true) || it.author.contains(searchQuery, true) }
                        .sortedWith { a, b ->
                            when (sortOrder) {
                                "title" -> a.title.compareTo(b.title)
                                "author" -> a.author.compareTo(b.author)
                                "progress" -> b.currentPage.compareTo(a.currentPage)
                                else -> a.title.compareTo(b.title)
                            }
                        }
                    if (filteredComics.isEmpty()) {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Text("Библиотека пуста", style = MaterialTheme.typography.bodyLarge)
                        }
                    } else {
                        LazyColumn(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                            items(filteredComics) { comic ->
                                var showDeleteDialog by remember { mutableStateOf(false) }
                                if (showDeleteDialog) {
                                    AlertDialog(
                                        onDismissRequest = { showDeleteDialog = false },
                                        title = { Text("Удалить комикс?") },
                                        text = { Text("Вы уверены, что хотите удалить \"${comic.title}\"?") },
                                        confirmButton = {
                                            Button(onClick = {
                                                viewModel.deleteComic(comic.id)
                                                showDeleteDialog = false
                                            }) { Text("Удалить") }
                                        },
                                        dismissButton = {
                                            OutlinedButton(onClick = { showDeleteDialog = false }) { Text("Отмена") }
                                        }
                                    )
                                }
                                ComicCard(
                                    comic = comic,
                                    onComicClick = { onNavigateToReader(comic.id) },
                                    onDetailClick = { onNavigateToDetail(comic.id) },
                                    onFavoriteToggle = { isFavorite ->
                                        viewModel.toggleFavorite(comic.id, isFavorite)
                                    },
                                    modifier = Modifier
                                        .combinedClickable(
                                            onClick = { onNavigateToReader(comic.id) },
                                            onLongClick = { showDeleteDialog = true }
                                        )
                                        .fillMaxWidth()
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicCard(
    comic: ComicEntity,
    onComicClick: () -> Unit,
    onDetailClick: () -> Unit,
    onFavoriteToggle: (Boolean) -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (!comic.coverPath.isNullOrBlank()) {
                AsyncImage(
                    model = comic.coverPath,
                    contentDescription = "Обложка",
                    modifier = Modifier.size(60.dp)
                )
            } else {
                Icon(Icons.Default.Book, contentDescription = "Обложка", modifier = Modifier.size(60.dp))
            }
            Spacer(modifier = Modifier.width(18.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(comic.title, style = MaterialTheme.typography.titleLarge)
                Text(comic.author, style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            IconButton(onClick = onDetailClick) {
                Icon(Icons.Default.Info, contentDescription = "Детали")
            }
            IconButton(
                onClick = { onFavoriteToggle(!comic.isFavorite) }
            ) {
                Icon(
                    imageVector = if (comic.isFavorite) Icons.Default.Favorite else Icons.Default.FavoriteBorder,
                    contentDescription = if (comic.isFavorite) "Убрать из избранного" else "В избранное"
                )
            }
        }
    }
}


