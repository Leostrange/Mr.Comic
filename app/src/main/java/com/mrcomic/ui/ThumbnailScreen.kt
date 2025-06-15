package com.example.mrcomic.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel

@Composable
fun ThumbnailScreen(
    comicId: String,
    viewModel: ComicLibraryViewModel,
    isEInk: Boolean = false,
    onPageSelected: (Int) -> Unit
) {
    val comics by viewModel.comics.observeAsState(emptyList())
    val comic = comics.find { it.id == comicId } ?: return
    // Получаем реальные пути к миниатюрам страниц
    val thumbnails = viewModel.getThumbnailsForComic(comicId).observeAsState(emptyList()).value

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(if (isEInk) Color.White else Color.Transparent)
            .padding(8.dp)
    ) {
        Text("Миниатюры: ${comic.title}", style = MaterialTheme.typography.titleMedium)
        Spacer(modifier = Modifier.height(8.dp))
        LazyVerticalGrid(
            columns = GridCells.Fixed(3),
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(4.dp)
        ) {
            items(thumbnails.size) { pageIdx ->
                val thumbPath = thumbnails.getOrNull(pageIdx)
                Box(
                    modifier = Modifier
                        .padding(4.dp)
                        .aspectRatio(0.7f)
                        .clickable { onPageSelected(pageIdx) },
                    contentAlignment = Alignment.Center
                ) {
                    if (thumbPath != null) {
                        AsyncImage(
                            model = thumbPath,
                            contentDescription = "Страница ${pageIdx + 1}",
                            modifier = Modifier.fillMaxSize(),
                            contentScale = ContentScale.Crop
                        )
                    } else {
                        Box(
                            modifier = Modifier
                                .fillMaxSize()
                                .background(Color.LightGray),
                            contentAlignment = Alignment.Center
                        ) {
                            Text("Нет миниатюры", color = Color.DarkGray)
                        }
                    }
                    Text(
                        text = "${pageIdx + 1}",
                        color = if (isEInk) Color.Black else Color.White,
                        modifier = Modifier.align(Alignment.BottomEnd).padding(4.dp)
                    )
                }
            }
        }
    }
} 