package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.FavoriteBorder
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.example.mrcomic.data.Comic
import com.example.mrcomic.ui.state.ComicDetailState

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicDetailScreen(
    navController: NavController,
    comicId: Int,
    viewModel: ComicDetailViewModel = hiltViewModel()
) {
    val comicState by viewModel.comicState.collectAsState()

    // Загружаем комикс при изменении ID
    LaunchedEffect(comicId) {
        viewModel.loadComic(comicId)
    }

    when (val state = comicState) {
        is ComicDetailState.Loading -> {
            Box(modifier = Modifier.fillMaxSize()) {
                CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            }
        }
        is ComicDetailState.Success -> {
            val comic = state.comic
            var currentPage by remember(comicId) { mutableStateOf(comic.currentPage) }

            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(16.dp)
            ) {
                // Название комикса
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.headlineMedium,
                    modifier = Modifier.align(Alignment.CenterHorizontally)
                )

                if (comic.author.isNotEmpty()) {
                    Text(
                        text = comic.author,
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        modifier = Modifier.align(Alignment.CenterHorizontally)
                    )
                }

                // Индикатор страницы
                Text(
                    text = "${currentPage + 1} / ${comic.pageCount}",
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier
                        .align(Alignment.CenterHorizontally)
                        .padding(vertical = 8.dp)
                )

                // Прогресс чтения
                LinearProgressIndicator(
                    progress = { (currentPage + 1).toFloat() / comic.pageCount.toFloat() },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 8.dp)
                )

                // Изображение комикса
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f)
                        .padding(vertical = 16.dp)
                ) {
                    AsyncImage(
                        model = ImageRequest.Builder(LocalContext.current)
                            .data(comic.getImagePath(currentPage))
                            .crossfade(true)
                            .build(),
                        contentDescription = "Comic page",
                        modifier = Modifier
                            .fillMaxSize()
                            .align(Alignment.Center),
                        contentScale = ContentScale.Fit
                    )
                }

                // Кнопки навигации
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Button(
                        onClick = { 
                            if (currentPage > 0) {
                                currentPage--
                                viewModel.updateCurrentPage(currentPage)
                            }
                        },
                        enabled = currentPage > 0
                    ) {
                        Text("Назад")
                    }

                    Button(
                        onClick = { 
                            if (currentPage < comic.pageCount - 1) {
                                currentPage++
                                viewModel.updateCurrentPage(currentPage)
                            }
                        },
                        enabled = currentPage < comic.pageCount - 1
                    ) {
                        Text("Вперед")
                    }
                }

                // Дополнительные кнопки
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 8.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    IconButton(onClick = { viewModel.toggleFavorite() }) {
                        Icon(
                            imageVector = if (comic.isFavorite) Icons.Default.Favorite else Icons.Default.FavoriteBorder,
                            contentDescription = "Избранное"
                        )
                    }

                    Button(
                        onClick = { 
                            currentPage = 0
                            viewModel.resetProgress()
                        }
                    ) {
                        Text("Сбросить")
                    }

                    Button(
                        onClick = { navController.popBackStack() }
                    ) {
                        Text("Назад к списку")
                    }
                }
            }
        }
        is ComicDetailState.Error -> {
            Column(
                modifier = Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center
            ) {
                Text(
                    text = "Ошибка загрузки комикса: ${state.message}",
                    color = MaterialTheme.colorScheme.error
                )
                Button(
                    onClick = { navController.popBackStack() },
                    modifier = Modifier.padding(top = 16.dp)
                ) {
                    Text("Назад")
                }
            }
        }
    }
}


