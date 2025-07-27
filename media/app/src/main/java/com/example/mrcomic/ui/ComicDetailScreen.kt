package com.example.mrcomic.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
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


