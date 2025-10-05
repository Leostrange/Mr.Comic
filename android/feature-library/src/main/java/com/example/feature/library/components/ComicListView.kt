package com.example.feature.library.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.core.model.Comic

/**
 * Отображение комиксов в виде списка
 */
@Composable
fun ComicListView(
    comics: List<Comic>,
    onComicClick: (Comic) -> Unit,
    onComicLongClick: (Comic) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(
            items = comics,
            key = { it.id }
        ) { comic ->
            ComicListItem(
                comic = comic,
                onClick = { onComicClick(comic) },
                onLongClick = { onComicLongClick(comic) }
            )
        }
    }
}
