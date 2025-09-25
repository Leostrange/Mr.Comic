package com.example.feature.library.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.List
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material.icons.outlined.BookmarkBorder
import androidx.compose.material.icons.outlined.FolderOpen
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.FabPosition
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import coil.compose.rememberAsyncImagePainter
import androidx.compose.ui.res.painterResource
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.windowInsetsPadding
import java.io.File
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.Comic
import com.example.core.ui.components.ComicInfo
import com.example.core.ui.theme.MrComicTheme
import android.net.Uri
import java.io.File

/**
 * Простой экран библиотеки в стиле рабочей версии
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SimpleLibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddFile: () -> Unit,
    onAddFolder: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()

    // Используем настройки из ViewModel
    val libraryViewMode by viewModel.libraryViewMode.collectAsState("grid")
    val librarySortOrder by viewModel.librarySortOrder.collectAsState(com.example.core.model.SortOrder.DATE_ADDED_DESC)
            var menuExpanded by remember { mutableStateOf(false) }
            var addMenuExpanded by remember { mutableStateOf(false) }
            var showSearch by rememberSaveable { mutableStateOf(false) }
            var searchQuery by remember { mutableStateOf("") }

    Scaffold(
        modifier = modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "",
                        style = MaterialTheme.typography.headlineMedium,
                        fontWeight = FontWeight.Bold
                    )
                },
                        navigationIcon = {
                            IconButton(onClick = { menuExpanded = true }) {
                                Icon(
                                    imageVector = Icons.Default.Menu,
                                    contentDescription = "Меню"
                                )
                            }
                            DropdownMenu(
                                expanded = menuExpanded,
                                onDismissRequest = { menuExpanded = false }
                            ) {
                                DropdownMenuItem(
                                    text = { Text("Поиск") },
                                    onClick = {
                                        showSearch = !showSearch
                                        menuExpanded = false
                                    }
                                )
                                DropdownMenuItem(
                                    text = { Text(if (libraryViewMode == "grid") "Режим списка" else "Режим сетки") },
                                    onClick = {
                                        val newMode = if (libraryViewMode == "grid") "list" else "grid"
                                        viewModel.onViewModeChange(newMode)
                                        menuExpanded = false
                                    }
                                )
                                DropdownMenuItem(
                                    text = { Text(if (libraryViewMode == "folders") "Режим сетки" else "Отображать папки") },
                                    onClick = {
                                        val newMode = if (libraryViewMode == "folders") "grid" else "folders"
                                        viewModel.onViewModeChange(newMode)
                                        menuExpanded = false
                                    }
                                )
                                DropdownMenuItem(
                                    text = { Text("Сортировка (${librarySortOrder.displayName})") },
                                    onClick = {
                                        // TODO: Открыть диалог выбора сортировки
                                        menuExpanded = false
                                    }
                                )
                            }
                        },
                actions = {
                    Box {
                        IconButton(onClick = { addMenuExpanded = true }) {
                            Icon(
                                imageVector = Icons.Default.Add,
                                contentDescription = "Добавить комикс"
                            )
                        }
                        DropdownMenu(expanded = addMenuExpanded, onDismissRequest = { addMenuExpanded = false }) {
                            DropdownMenuItem(
                                text = { Text("Добавить файл") },
                                onClick = {
                                    addMenuExpanded = false
                                    onAddFile()
                                }
                            )
                            DropdownMenuItem(
                                text = { Text("Добавить папку") },
                                onClick = {
                                    addMenuExpanded = false
                                    onAddFolder()
                                }
                            )
                        }
                    }
                },
                scrollBehavior = scrollBehavior,
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                    titleContentColor = MaterialTheme.colorScheme.onSurface,
                    actionIconContentColor = MaterialTheme.colorScheme.onSurface
                ),
                windowInsets = WindowInsets.statusBars,
                modifier = Modifier.windowInsetsPadding(WindowInsets.statusBars)
            )
        },
        // FAB с "+" удалён по требованию — кнопка теперь только в правом верхнем углу
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(MaterialTheme.colorScheme.background)
        ) {
            // Поиск — сворачиваемая строка по пункту меню
            if (showSearch) {
                OutlinedTextField(
                    value = searchQuery,
                    onValueChange = {
                        searchQuery = it
                        viewModel.onSearchQueryChange(it)
                    },
                    placeholder = { Text("Поиск комиксов...") },
                    leadingIcon = {
                        Icon(imageVector = Icons.Default.Search, contentDescription = null)
                    },
                    singleLine = true,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                )
            }

            // Прогресс загрузки
            if (uiState.isLoading) {
                LinearProgressIndicator(
                    modifier = Modifier.fillMaxWidth()
                )
            }

            // Контент библиотеки
            when {
                uiState.error != null -> {
                    ErrorState(
                        error = uiState.error ?: "Неизвестная ошибка",
                        onRetry = viewModel::refreshLibrary
                    )
                }
                
                uiState.comics.isEmpty() -> {
                    EmptyState()
                }
                
                else -> {
                    val filteredComics = uiState.comics.filter { comic ->
                        if (searchQuery.isBlank()) true
                        else comic.title.contains(searchQuery, ignoreCase = true) ||
                            (comic.author?.contains(searchQuery, ignoreCase = true) == true)
                    }
                    
                    val folderGroups = remember(filteredComics) {
                        filteredComics.groupBy { it.folderName() }.toSortedMap(String.CASE_INSENSITIVE_ORDER)
                    }

                    when (libraryViewMode) {
                        "grid" -> {
                            ComicsGrid(
                                comics = filteredComics,
                                onComicClick = onBookClick
                            )
                        }
                        "list" -> {
                            ComicsList(
                                comics = filteredComics,
                                onComicClick = onBookClick
                            )
                        }
                        "folders" -> {
                            FolderLibraryView(
                                folderGroups = folderGroups,
                                onComicClick = onBookClick
                            )
                        }
                        else -> {
                            ComicsGrid(
                                comics = filteredComics,
                                onComicClick = onBookClick
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ComicsGrid(
    comics: List<Comic>,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyVerticalGrid(
        columns = GridCells.Fixed(2),
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        items(comics) { comic ->
            ComicCard(
                comic = comic,
                onClick = { onComicClick(comic.filePath) }
            )
        }
    }
}

@Composable
private fun ComicsList(
    comics: List<Comic>,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(comics) { comic ->
            ComicListItem(
                comic = comic,
                onClick = { onComicClick(comic.filePath) }
            )
        }
    }
}

@Composable
private fun FolderLibraryView(
    folderGroups: Map<String, List<Comic>>,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        folderGroups.forEach { (folder, comics) ->
            item(key = folder) {
                Text(
                    text = folder,
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(bottom = 8.dp)
                )
            }
            items(comics) { comic ->
                ComicListItem(
                    comic = comic,
                    onClick = { onComicClick(comic.filePath) }
                )
            }
        }
    }
}

@Composable
private fun ComicCard(
    comic: Comic,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .clickable { onClick() },
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        shape = RoundedCornerShape(8.dp)
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            // Обложка
            if (!comic.coverPath.isNullOrBlank()) {
                val model = if (comic.coverPath!!.startsWith("/")) {
                    File(comic.coverPath!!)
                } else {
                    // Если это URI, используем его напрямую
                    comic.coverPath!!
                }
                val painter = rememberAsyncImagePainter(
                    model = model,
                    error = painterResource(id = android.R.drawable.ic_menu_gallery) // Placeholder
                )
                androidx.compose.foundation.Image(
                    painter = painter,
                    contentDescription = "Обложка комикса ${comic.title}",
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp)
                        .clip(RoundedCornerShape(4.dp)),
                    contentScale = androidx.compose.ui.layout.ContentScale.Crop
                )
            } else {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(MaterialTheme.colorScheme.surfaceVariant),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Outlined.BookmarkBorder,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = comic.title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
            
            comic.author?.takeIf { it.isNotBlank() }?.let { author ->
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = author,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

private fun Comic.folderName(): String {
    return runCatching {
        val uri = Uri.parse(filePath)
        when (uri.scheme) {
            "file" -> File(uri.path ?: "").parentFile?.name
            else -> uri.pathSegments.dropLast(1).lastOrNull()
        }?.takeIf { it.isNotBlank() }
    }.getOrNull() ?: "Без папки"
}

@Composable
private fun ComicListItem(
    comic: Comic,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .clickable { onClick() },
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(8.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Обложка (реальная)
            if (!comic.coverPath.isNullOrBlank()) {
                val model = if (comic.coverPath!!.startsWith("/")) {
                    File(comic.coverPath!!)
                } else {
                    comic.coverPath!!
                }
                val painter = rememberAsyncImagePainter(
                    model = model,
                    error = painterResource(id = android.R.drawable.ic_menu_gallery)
                )
                androidx.compose.foundation.Image(
                    painter = painter,
                    contentDescription = "Обложка комикса",
                    modifier = Modifier
                        .size(60.dp)
                        .clip(RoundedCornerShape(4.dp)),
                    contentScale = androidx.compose.ui.layout.ContentScale.Crop
                )
            } else {
                Box(
                    modifier = Modifier
                        .size(60.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(MaterialTheme.colorScheme.surfaceVariant),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Outlined.BookmarkBorder,
                        contentDescription = null,
                        modifier = Modifier.size(24.dp),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                
                comic.author?.takeIf { it.isNotBlank() }?.let { author ->
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = author,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

@Composable
private fun EmptyState(
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Icon(
                imageVector = Icons.Outlined.BookmarkBorder,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            Text(
                text = "Библиотека пуста",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold
            )
            
            Text(
                text = "Добавьте комиксы, чтобы начать чтение",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            // Кнопка убрана - основная кнопка "+" теперь в левом нижнем углу
        }
    }
}

@Composable
private fun ErrorState(
    error: String,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Icon(
                imageVector = Icons.Outlined.FolderOpen,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.error
            )
            
            Text(
                text = "Ошибка загрузки",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold
            )
            
            Text(
                text = error.takeIf { it.isNotBlank() } ?: "Неизвестная ошибка",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            androidx.compose.material3.Button(
                onClick = onRetry,
                colors = androidx.compose.material3.ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary
                )
            ) {
                Text("Повторить")
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun SimpleLibraryScreenPreview() {
    MrComicTheme {
        SimpleLibraryScreen(
            onBookClick = { },
            onAddClick = { },
            onSettingsClick = { }
        )
    }
}
