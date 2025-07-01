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
import coil.compose.AsyncImage
import com.example.feature.library.LibraryViewModel
import com.example.feature.library.UiState
import androidx.compose.foundation.combinedClickable

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onNavigateToReader: (Long) -> Unit,
    onNavigateToDetail: (Long) -> Unit,
    onNavigateToSettings: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    var showOnlyFavorites by remember { mutableStateOf(false) }
    var sortOrder by remember { mutableStateOf("title") }
    var showAddDialog by remember { mutableStateOf(false) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Моя библиотека") },
                actions = {
                    IconButton(onClick = onNavigateToSettings) {
                        Icon(Icons.Default.Settings, contentDescription = "Настройки")
                    }
                }
            )
        },
        floatingActionButton = {
            FloatingActionButton(onClick = { showAddDialog = true }) {
                Icon(Icons.Default.Add, contentDescription = "Добавить комикс")
            }
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(16.dp)
        ) {
            OutlinedTextField(
                value = searchQuery,
                onValueChange = {
                    searchQuery = it
                    viewModel.searchComics(it)
                },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Поиск комиксов...") }
            )
            Spacer(Modifier.height(8.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Checkbox(
                    checked = showOnlyFavorites,
                    onCheckedChange = { showOnlyFavorites = it }
                )
                Text("Только избранные")
                Spacer(Modifier.width(16.dp))
                var sortExpanded by remember { mutableStateOf(false) }
                Box {
                    Button(onClick = { sortExpanded = true }) {
                        Text(
                            when (sortOrder) {
                                "title" -> "По названию"
                                "author" -> "По автору"
                                "progress" -> "По прогрессу"
                                else -> "По названию"
                            }
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
            Spacer(Modifier.height(8.dp))
            when (val state = uiState) {
                is UiState.Loading -> {
                    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator()
                    }
                }
                is UiState.Error -> {
                    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        Text("Ошибка: ${state.message}")
                    }
                }
                is UiState.Success -> {
                    val comics = state.comics
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
                    if (comics.isEmpty()) {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Text("Библиотека пуста")
                        }
                    } else {
                        LazyColumn(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                            items(comics) { comic ->
                                var showDeleteDialog by remember { mutableStateOf(false) }
                                if (showDeleteDialog) {
                                    AlertDialog(
                                        onDismissRequest = { showDeleteDialog = false },
                                        title = { Text("Удалить комикс?") },
                                        text = { Text("Вы уверены, что хотите удалить \"${comic.title}\"?") },
                                        confirmButton = {
                                            Button(onClick = {
                                                viewModel.removeComic(comic.id)
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
                                    modifier = Modifier.combinedClickable(
                                        onClick = { onNavigateToReader(comic.id) },
                                        onLongClick = { showDeleteDialog = true }
                                    )
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    if (showAddDialog) {
        AddComicDialog(
            onAdd = { title, author, filePath, pageCount ->
                viewModel.addComic(
                    com.example.mrcomic.data.ComicEntity(
                        title = title,
                        author = author,
                        description = null,
                        filePath = filePath,
                        pageCount = pageCount
                    )
                )
                showAddDialog = false
            },
            onDismiss = { showAddDialog = false }
        )
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
            .fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (!comic.coverPath.isNullOrBlank()) {
                AsyncImage(
                    model = comic.coverPath,
                    contentDescription = "Обложка",
                    modifier = Modifier.size(48.dp)
                )
            } else {
                Icon(Icons.Default.Book, contentDescription = "Обложка", modifier = Modifier.size(48.dp))
            }
            Spacer(modifier = Modifier.width(16.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(comic.title, style = MaterialTheme.typography.titleMedium)
                Text(comic.author, style = MaterialTheme.typography.bodyMedium)
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

@Composable
fun AddComicDialog(
    onAdd: (String, String, String, Int) -> Unit,
    onDismiss: () -> Unit
) {
    var title by remember { mutableStateOf("") }
    var author by remember { mutableStateOf("") }
    var filePath by remember { mutableStateOf("") }
    var pageCount by remember { mutableStateOf("1") }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Добавить комикс") },
        text = {
            Column {
                OutlinedTextField(
                    value = title,
                    onValueChange = { title = it },
                    label = { Text("Название") }
                )
                OutlinedTextField(
                    value = author,
                    onValueChange = { author = it },
                    label = { Text("Автор") }
                )
                OutlinedTextField(
                    value = filePath,
                    onValueChange = { filePath = it },
                    label = { Text("Путь к файлу") }
                )
                OutlinedTextField(
                    value = pageCount,
                    onValueChange = { pageCount = it.filter { c -> c.isDigit() } },
                    label = { Text("Страниц") }
                )
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    if (title.isNotBlank() && author.isNotBlank() && filePath.isNotBlank() && pageCount.isNotBlank()) {
                        onAdd(title, author, filePath, pageCount.toInt())
                    }
                }
            ) {
                Text("Добавить")
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text("Отмена")
            }
        }
    )
} 
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onNavigateToReader: (Long) -> Unit,
    onNavigateToDetail: (Long) -> Unit,
    onNavigateToSettings: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Library") }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("This is the Library Screen.", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                // Placeholder for comic list based on mockups
                Text("List of comics will go here.")
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun LibraryScreenVerticalPreview() {
    MrComicTheme {
        LibraryScreen(onNavigateToReader = {}, onNavigateToDetail = {}, onNavigateToSettings = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun LibraryScreenHorizontalPreview() {
    MrComicTheme {
        LibraryScreen(onNavigateToReader = {}, onNavigateToDetail = {}, onNavigateToSettings = {})
    }
}


