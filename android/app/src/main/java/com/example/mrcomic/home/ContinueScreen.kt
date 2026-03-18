package com.example.mrcomic.home

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
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import javax.inject.Inject

data class ContinueUiState(
    val continueReading: Comic? = null,
    val currentlyReading: List<Comic> = emptyList(),
    val hasLibraryContent: Boolean = false,
    val hasActiveReading: Boolean = false
)

@HiltViewModel
class ContinueViewModel @Inject constructor(
    comicRepository: ComicRepository
) : ViewModel() {
    val uiState = comicRepository.getAllComics()
        .map { comics ->
            val currentlyReading = comics
                .filter { !it.isCompleted && it.readingProgress > 0f }
                .sortedByDescending { it.lastReadDate }
                .take(12)

            ContinueUiState(
                continueReading = currentlyReading.firstOrNull(),
                currentlyReading = currentlyReading.drop(1),
                hasLibraryContent = comics.isNotEmpty(),
                hasActiveReading = currentlyReading.isNotEmpty()
            )
        }
        .stateIn(
            scope = viewModelScope,
            started = SharingStarted.WhileSubscribed(5_000),
            initialValue = ContinueUiState()
        )
}

@Composable
fun ContinueScreen(
    onComicClick: (String) -> Unit,
    onOpenLibrary: () -> Unit,
    viewModel: ContinueViewModel = hiltViewModel()
) {
    val uiState = viewModel.uiState.collectAsStateWithLifecycle().value

    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 20.dp, vertical = 16.dp),
        verticalArrangement = Arrangement.spacedBy(18.dp)
    ) {
        item {
            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(
                    text = "Продолжить",
                    style = MaterialTheme.typography.headlineMedium,
                    fontWeight = FontWeight.SemiBold
                )
                Text(
                    text = if (uiState.hasLibraryContent) {
                        "Здесь только то, что вы читаете сейчас: продолжение без лишних полок и витрин."
                    } else {
                        "Начни с первого комикса и собери спокойную библиотеку для чтения."
                    },
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }

        if (!uiState.hasLibraryContent) {
            item {
                EmptyContinueState(onOpenLibrary = onOpenLibrary)
            }
        } else if (!uiState.hasActiveReading) {
            item {
                EmptyContinueReadingState(onOpenLibrary = onOpenLibrary)
            }
        } else {
            uiState.continueReading?.let { comic ->
                item {
                    ContinueReadingCard(
                        comic = comic,
                        onClick = { onComicClick(comic.id) }
                    )
                }
            }
            if (uiState.currentlyReading.isNotEmpty()) {
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        SectionTitle("Сейчас читаете")
                        Surface(
                            shape = RoundedCornerShape(999.dp),
                            color = MaterialTheme.colorScheme.surfaceVariant
                        ) {
                            Text(
                                text = "${uiState.currentlyReading.size + 1} в процессе",
                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                                style = MaterialTheme.typography.labelMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
                item {
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        items(uiState.currentlyReading, key = { "reading_${it.id}" }) { comic ->
                            ContinueComicCard(comic = comic, onClick = { onComicClick(comic.id) })
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun EmptyContinueState(onOpenLibrary: () -> Unit) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(
                Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(36.dp)
            )
            Text("Библиотека ещё пуста", style = MaterialTheme.typography.titleMedium)
            Text(
                "Перейди в библиотеку, чтобы добавить CBZ, CBR, PDF, EPUB или FB2 и сразу вернуться к чтению.",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Button(onClick = onOpenLibrary) {
                Text("Открыть библиотеку")
            }
        }
    }
}

@Composable
private fun EmptyContinueReadingState(onOpenLibrary: () -> Unit) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text("Сейчас ничего не читается", style = MaterialTheme.typography.titleMedium)
            Text(
                "На этом экране появляются только тайтлы с незавершённым прогрессом чтения.",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Button(onClick = onOpenLibrary) {
                Text("Открыть библиотеку")
            }
        }
    }
}

@Composable
private fun ContinueReadingCard(
    comic: Comic,
    onClick: () -> Unit
) {
    Card(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.primaryContainer)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CoverThumb(comic = comic, modifier = Modifier.width(86.dp).height(122.dp))
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "Продолжить чтение",
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.headlineSmall,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
                comic.series?.let {
                    Text(
                        text = it,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Surface(
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.surface
                ) {
                    Text(
                        text = "Страница ${comic.currentPage + 1} · ${(comic.readingProgress * 100).toInt()}%",
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp),
                        style = MaterialTheme.typography.labelMedium
                    )
                }
            }
        }
    }
}

@Composable
private fun ContinueComicCard(
    comic: Comic,
    onClick: () -> Unit
) {
    Column(
        modifier = Modifier.width(118.dp).clickable(onClick = onClick),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        CoverThumb(comic = comic, modifier = Modifier.fillMaxWidth().height(162.dp))
        Text(
            text = comic.title,
            style = MaterialTheme.typography.labelLarge,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )
        if (comic.readingProgress > 0f) {
            Text(
                text = "${(comic.readingProgress * 100).toInt()}% прочитано",
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun CoverThumb(
    comic: Comic,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(18.dp)
    Box(
        modifier = modifier
            .background(MaterialTheme.colorScheme.surfaceVariant, shape),
        contentAlignment = Alignment.Center
    ) {
        if (comic.coverPath != null) {
            AsyncImage(
                model = comic.coverPath,
                contentDescription = comic.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize().background(MaterialTheme.colorScheme.surfaceVariant, shape)
            )
        } else {
            Icon(
                Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                modifier = Modifier.size(30.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun SectionTitle(text: String) {
    Text(
        text = text,
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold
    )
}
