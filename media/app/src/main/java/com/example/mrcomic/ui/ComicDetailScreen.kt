package com.example.mrcomic.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.mrcomic.data.ComicEntity
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.FavoriteBorder
import coil.compose.AsyncImage

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicDetailScreen(
    comicId: Long,
    onNavigateBack: () -> Unit,
    onNavigateToReader: (Long) -> Unit,
    viewModel: ComicDetailViewModel = hiltViewModel()
) {
    val comic by viewModel.comic.collectAsState()

    LaunchedEffect(comicId) {
        viewModel.loadComic(comicId)
    }

    comic?.let { currentComic ->
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text(currentComic.title) },
                    navigationIcon = {
                        IconButton(onClick = onNavigateBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Назад")
                        }
                    }
                )
            }
        ) { innerPadding ->
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
                    .padding(16.dp)
                    .verticalScroll(rememberScrollState()),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                // Обложка
                if (!currentComic.coverPath.isNullOrBlank()) {
                    AsyncImage(
                        model = currentComic.coverPath,
                        contentDescription = "Обложка комикса",
                        modifier = Modifier
                            .height(300.dp)
                            .fillMaxWidth()
                    )
                } else {
                    AsyncImage(
                        model = "https://placehold.co/400x600?text=${currentComic.title}",
                        contentDescription = "Обложка комикса",
                        modifier = Modifier
                            .height(300.dp)
                            .fillMaxWidth()
                    )
                }
                Spacer(modifier = Modifier.height(16.dp))
                Text(currentComic.title, style = MaterialTheme.typography.headlineMedium)
                Text(currentComic.author, style = MaterialTheme.typography.titleMedium)
                Spacer(modifier = Modifier.height(8.dp))
                
                if (currentComic.pageCount > 0) {
                    LinearProgressIndicator(
                        progress = { currentComic.currentPage.toFloat() / currentComic.pageCount.toFloat() },
                        modifier = Modifier.fillMaxWidth()
                    )
                    Text(
                        text = "Прочитано ${currentComic.currentPage} из ${currentComic.pageCount}",
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                
                Spacer(modifier = Modifier.height(16.dp))
                currentComic.description?.let { Text(it, style = MaterialTheme.typography.bodyLarge) }
                Spacer(modifier = Modifier.height(24.dp))
                
                // Кнопки действий
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    Button(onClick = { onNavigateToReader(currentComic.id) }) {
                        Text("Читать")
                    }
                    IconButton(onClick = { viewModel.toggleFavorite() }) {
                        Icon(
                            imageVector = if (currentComic.isFavorite) Icons.Default.Favorite else Icons.Default.FavoriteBorder,
                            contentDescription = "Избранное"
                        )
                    }
                }
                Spacer(modifier = Modifier.height(16.dp))
                OutlinedButton(
                    onClick = { viewModel.resetProgress() },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text("Сбросить прогресс")
                }
                Spacer(modifier = Modifier.height(8.dp))
                Button(
                    onClick = { viewModel.deleteComic() },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error)
                ) {
                    Text("Удалить")
                }
            }
        }
    } ?: Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        CircularProgressIndicator()
    }
}

@Composable
fun InfoRow(
    label: String,
    value: String
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium
        )
    }
}

@Composable
fun ActionButton(
    text: String,
    onClick: () -> Unit,
    isDestructive: Boolean = false
) {
    Button(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
        colors = ButtonDefaults.buttonColors(
            containerColor = if (isDestructive) Color.Red else MaterialTheme.colorScheme.primary
        )
    ) {
        Text(text)
    }
}

package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicDetailScreen(
    comicId: Long,
    onNavigateBack: () -> Unit,
    onNavigateToReader: (Long) -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Comic Detail") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Details for Comic ID: $comicId", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                // Placeholder for comic details based on mockups
                Text("Comic cover, description, and other details will go here.")
                Spacer(modifier = Modifier.height(16.dp))
                Button(onClick = { onNavigateToReader(comicId) }) {
                    Text("Read Comic")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ComicDetailScreenVerticalPreview() {
    MrComicTheme {
        ComicDetailScreen(comicId = 1L, onNavigateBack = {}, onNavigateToReader = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ComicDetailScreenHorizontalPreview() {
    MrComicTheme {
        ComicDetailScreen(comicId = 1L, onNavigateBack = {}, onNavigateToReader = {})
    }
}


