package com.example.core.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.outlined.StarBorder
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.core.ui.theme.MrComicTheme

/**
 * Data class for comic information
 */
data class ComicInfo(
    val title: String,
    val author: String? = null,
    val coverPath: String? = null,
    val readingProgress: Float = 0f, // 0.0 to 1.0
    val isFavorite: Boolean = false,
    val pageCount: Int? = null,
    val currentPage: Int = 0,
    val genre: String? = null,
    val rating: Float? = null,
    val filePath: String = ""
)

/**
 * Grid card for comic library display
 */
@Composable
fun ComicGridCard(
    comic: ComicInfo,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    onFavoriteClick: ((Boolean) -> Unit)? = null
) {
    MrComicCard(
        modifier = modifier,
        onClick = onClick
    ) {
        Column {
            // Cover image
            ComicCover(
                coverPath = comic.coverPath,
                contentDescription = "Cover of ${comic.title}",
                modifier = Modifier.fillMaxWidth()
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            // Title and author
            Column(
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top
                ) {
                    Text(
                        text = comic.title,
                        style = MaterialTheme.typography.titleSmall,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f)
                    )
                    
                    // Favorite button
                    if (onFavoriteClick != null) {
                        IconButton(
                            onClick = { onFavoriteClick(!comic.isFavorite) },
                            modifier = Modifier.padding(0.dp)
                        ) {
                            Icon(
                                imageVector = if (comic.isFavorite) Icons.Filled.Star else Icons.Outlined.StarBorder,
                                contentDescription = if (comic.isFavorite) "Remove from favorites" else "Add to favorites",
                                tint = if (comic.isFavorite) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outline
                            )
                        }
                    }
                }
                
                // Author
                if (!comic.author.isNullOrBlank()) {
                    Text(
                        text = comic.author,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                
                // Reading progress
                if (comic.readingProgress > 0f) {
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    Column {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text(
                                text = "${(comic.readingProgress * 100).toInt()}% read",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            
                            if (comic.pageCount != null) {
                                Text(
                                    text = "${comic.currentPage}/${comic.pageCount}",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                        
                        Spacer(modifier = Modifier.height(4.dp))
                        
                        LinearProgressIndicator(
                            progress = { comic.readingProgress },
                            modifier = Modifier.fillMaxWidth(),
                            trackColor = MaterialTheme.colorScheme.surfaceVariant,
                        )
                    }
                }
            }
        }
    }
}

/**
 * List card for comic library display
 */
@Composable
fun ComicListCard(
    comic: ComicInfo,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    onFavoriteClick: ((Boolean) -> Unit)? = null
) {
    MrComicCard(
        modifier = modifier,
        onClick = onClick
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Cover image
            SmallComicCover(
                coverPath = comic.coverPath,
                contentDescription = "Cover of ${comic.title}"
            )
            
            Spacer(modifier = Modifier.width(16.dp))
            
            // Content
            Column(
                modifier = Modifier.weight(1f)
            ) {
                // Title and favorite
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top
                ) {
                    Text(
                        text = comic.title,
                        style = MaterialTheme.typography.titleMedium,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f)
                    )
                    
                    if (onFavoriteClick != null) {
                        IconButton(
                            onClick = { onFavoriteClick(!comic.isFavorite) },
                            modifier = Modifier.padding(0.dp)
                        ) {
                            Icon(
                                imageVector = if (comic.isFavorite) Icons.Filled.Star else Icons.Outlined.StarBorder,
                                contentDescription = if (comic.isFavorite) "Remove from favorites" else "Add to favorites",
                                tint = if (comic.isFavorite) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outline
                            )
                        }
                    }
                }
                
                // Author
                if (!comic.author.isNullOrBlank()) {
                    Text(
                        text = comic.author,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                
                // Genre
                if (!comic.genre.isNullOrBlank()) {
                    Text(
                        text = comic.genre,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.outline,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                
                // Reading progress
                if (comic.readingProgress > 0f) {
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "${(comic.readingProgress * 100).toInt()}% read",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        
                        if (comic.pageCount != null) {
                            Text(
                                text = "${comic.currentPage}/${comic.pageCount}",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                    
                    Spacer(modifier = Modifier.height(4.dp))
                    
                    LinearProgressIndicator(
                        progress = { comic.readingProgress },
                        modifier = Modifier.fillMaxWidth(),
                        trackColor = MaterialTheme.colorScheme.surfaceVariant,
                    )
                }
            }
        }
    }
}

/**
 * Compact card for recent/featured comics
 */
@Composable
fun ComicCompactCard(
    comic: ComicInfo,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    MrComicCard(
        modifier = modifier,
        onClick = onClick
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically
        ) {
            ThumbnailComicCover(
                coverPath = comic.coverPath,
                contentDescription = "Cover of ${comic.title}"
            )
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.titleSmall,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                
                if (!comic.author.isNullOrBlank()) {
                    Text(
                        text = comic.author,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                
                if (comic.readingProgress > 0f) {
                    Text(
                        text = "${(comic.readingProgress * 100).toInt()}% read",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ComicCardsPreview() {
    MrComicTheme {
        val sampleComic = ComicInfo(
            title = "Amazing Comic Title That's Really Long",
            author = "John Doe",
            readingProgress = 0.65f,
            isFavorite = true,
            pageCount = 120,
            currentPage = 78,
            genre = "Adventure",
            filePath = "/storage/comics/amazing.cbz"
        )
        
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            ComicGridCard(
                comic = sampleComic,
                onClick = { },
                onFavoriteClick = { },
                modifier = Modifier.width(160.dp)
            )
            
            ComicListCard(
                comic = sampleComic,
                onClick = { },
                onFavoriteClick = { }
            )
            
            ComicCompactCard(
                comic = sampleComic,
                onClick = { }
            )
        }
    }
}