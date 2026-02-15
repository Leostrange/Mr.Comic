package com.example.feature.library.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.core.model.Comic

/**
 * Отображение комиксов в виде сетки
 */
@Composable
fun ComicGridView(
    comics: List<Comic>,
    onComicClick: (Comic) -> Unit,
    onComicLongClick: (Comic) -> Unit,
    modifier: Modifier = Modifier,
    columns: Int = 3
) {
    android.util.Log.d("ComicGridView", "🔲 ComicGridView composing with ${comics.size} comics")
    comics.forEachIndexed { index, comic ->
        android.util.Log.d("ComicGridView", "  📖 Comic $index: ${comic.title} (id=${comic.id}, coverPath=${comic.coverPath})")
    }
    
    LazyVerticalGrid(
        columns = GridCells.Fixed(columns),
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        items(
            items = comics,
            key = { it.id }
        ) { comic ->
            android.util.Log.d("ComicGridView", "🎨 Rendering item for comic: ${comic.title}")
            ComicGridItem(
                comic = comic,
                onClick = { onComicClick(comic) },
                onLongClick = { onComicLongClick(comic) }
            )
        }
    }
}
