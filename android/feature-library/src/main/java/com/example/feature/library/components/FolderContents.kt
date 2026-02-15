package com.example.feature.library.components

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.Divider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.example.core.model.Comic
import com.example.core.model.Folder

@Composable
fun FolderContents(
    currentFolder: Folder,
    breadcrumb: List<Folder>,
    subfolders: List<Folder>,
    folderCovers: Map<String, String?>,
    comics: List<Comic>,
    onFolderClick: (Folder) -> Unit,
    onComicClick: (Comic) -> Unit,
    onComicLongClick: (Comic) -> Unit,
    onNavigateUp: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
    ) {
        FolderBreadcrumbBar(
            breadcrumb = breadcrumb,
            onNavigateUp = onNavigateUp
        )
        
        if (subfolders.isNotEmpty()) {
            Text(
                text = "Папки",
                style = MaterialTheme.typography.titleMedium,
                modifier = Modifier
                    .padding(horizontal = 16.dp, vertical = 8.dp)
            )
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 240.dp)
            ) {
                FolderView(
                    folders = subfolders,
                    folderCovers = folderCovers,
                    onFolderClick = onFolderClick
                )
            }
        }
        
        Divider(modifier = Modifier.padding(vertical = 8.dp))
        
        Text(
            text = "Файлы",
            style = MaterialTheme.typography.titleMedium,
            modifier = Modifier
                .padding(horizontal = 16.dp, vertical = 8.dp)
        )
        
        if (comics.isEmpty()) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = "В этой папке нет файлов",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        } else {
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
            ) {
                ComicGridView(
                    comics = comics,
                    onComicClick = onComicClick,
                    onComicLongClick = onComicLongClick
                )
            }
        }
    }
}

@Composable
private fun FolderBreadcrumbBar(
    breadcrumb: List<Folder>,
    onNavigateUp: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        if (breadcrumb.isNotEmpty()) {
            IconButton(onClick = onNavigateUp) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                    contentDescription = "Назад"
                )
            }
        } else {
            Spacer(modifier = Modifier.width(48.dp))
        }
        
        Text(
            text = if (breadcrumb.isEmpty()) {
                "Все папки"
            } else {
                breadcrumb.joinToString(" / ") { it.name }
            },
            style = MaterialTheme.typography.titleMedium,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

