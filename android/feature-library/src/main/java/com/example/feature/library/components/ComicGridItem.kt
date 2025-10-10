package com.example.feature.library.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Image
import androidx.compose.material.icons.filled.Star
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import com.example.core.model.Comic

/**
 * Элемент сетки комиксов
 */
@OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)
@Composable
fun ComicGridItem(
    comic: Comic,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .aspectRatio(0.67f), // Пропорции обложки комикса
        shape = RoundedCornerShape(8.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                )
        ) {
        Box {
            // Обложка
            if (comic.coverPath != null) {
                AsyncImage(
                    model = comic.coverPath,
                    contentDescription = comic.title,
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.Crop
                )
            } else {
                // Placeholder
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(MaterialTheme.colorScheme.surfaceVariant),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Default.Image,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            
            // Прогресс чтения - круговой индикатор или индикатор "Новое"
            if (comic.readingProgress > 0f) {
                ProgressIndicator(
                    progress = comic.readingProgress,
                    size = 32.dp,
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .padding(8.dp)
                )
            } else if (comic.readingProgress == 0f && comic.pageCount > 0) {
                // Индикатор "Новое чтение"
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .padding(8.dp)
                        .size(32.dp)
                        .background(
                            color = MaterialTheme.colorScheme.primary,
                            shape = androidx.compose.foundation.shape.CircleShape
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = "Н",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onPrimary,
                        fontSize = 12.sp
                    )
                }
            }
            
            // Закладка
            if (comic.isBookmarked) {
                Icon(
                    imageVector = Icons.Default.Star,
                    contentDescription = "Bookmarked",
                    modifier = Modifier
                        .padding(8.dp)
                        .size(24.dp)
                        .align(Alignment.TopEnd),
                    tint = Color.Yellow
                )
            }
            
            // Название (внизу с градиентом)
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .align(Alignment.BottomCenter)
                    .background(
                        brush = androidx.compose.ui.graphics.Brush.verticalGradient(
                            colors = listOf(
                                Color.Transparent,
                                Color.Black.copy(alpha = 0.7f)
                            )
                        )
                    )
                    .padding(8.dp)
            ) {
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.bodySmall,
                    color = Color.White,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
        }
    }
}
