package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.clickable
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.RadioButtonUnchecked
import androidx.compose.material3.Card
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LocalContentColor
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicLibraryShelf
import io.leostrange.mrcomic.core.model.ComicReadingStatus
import io.leostrange.mrcomic.core.model.displayReadingProgress
import io.leostrange.mrcomic.core.model.libraryShelfCategory
import io.leostrange.mrcomic.core.model.readingStatus
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import java.io.File

@OptIn(androidx.compose.material3.ExperimentalMaterial3Api::class)
@Composable
internal fun ComicInfoSheet(
    comic: Comic,
    onDismiss: () -> Unit,
    onOpen: () -> Unit,
    onToggleBookmark: () -> Unit,
    onToggleCompleted: () -> Unit,
    onDelete: () -> Unit,
    onSaveMeta: (title: String, tags: String, shelf: String) -> Unit
) {
    val strings = LocalStrings.current
    var titleEdit by remember(comic.id) { mutableStateOf(comic.title) }
    var tagsEdit by remember(comic.id) { mutableStateOf(comic.tags) }
    var shelfEdit by remember(comic.id) { mutableStateOf(comic.libraryShelfCategory()) }
    var isEditing by remember(comic.id) { mutableStateOf(false) }
    val shelfLabel = when (strings.languageCode) {
        "en" -> "Shelf"
        "ja" -> "棚"
        "zh" -> "书架"
        "ko" -> "서가"
        else -> "Полка"
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
        scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp)
                .padding(bottom = 32.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.Top) {
                Card(modifier = Modifier.size(72.dp, 100.dp), shape = androidx.compose.foundation.shape.RoundedCornerShape(6.dp)) {
                    if (comic.coverPath != null) {
                        AsyncImage(
                            model = File(comic.coverPath!!),
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    } else {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Icon(Icons.AutoMirrored.Filled.MenuBook, contentDescription = null)
                        }
                    }
                }
                Spacer(Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    if (isEditing) {
                        OutlinedTextField(
                            value = titleEdit,
                            onValueChange = { titleEdit = it },
                            label = { Text(strings.libraryTitle) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth()
                        )
                    } else {
                        Text(
                            text = comic.title,
                            style = MaterialTheme.typography.titleMedium,
                            maxLines = 3,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    comic.author?.let {
                        Text(
                            text = it,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                IconButton(onClick = {
                    if (isEditing) {
                        onSaveMeta(titleEdit, tagsEdit, shelfEdit.name)
                        isEditing = false
                    } else {
                        isEditing = true
                    }
                }) {
                    Icon(
                        imageVector = if (isEditing) Icons.Default.Check else Icons.Default.Edit,
                        contentDescription = if (isEditing) {
                            strings.librarySave
                        } else {
                            strings.libraryEdit
                        }
                    )
                }
            }

            if (isEditing) {
                OutlinedTextField(
                    value = tagsEdit,
                    onValueChange = { tagsEdit = it },
                    label = { Text(strings.libraryTagsComma) },
                    modifier = Modifier.fillMaxWidth()
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.AUTO,
                        onClick = { shelfEdit = ComicLibraryShelf.AUTO },
                        label = { Text("Авто") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.GRAPHIC,
                        onClick = { shelfEdit = ComicLibraryShelf.GRAPHIC },
                        label = { Text("Комикс") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.BOOKS,
                        onClick = { shelfEdit = ComicLibraryShelf.BOOKS },
                        label = { Text("Книга") }
                    )
                }
            }

            HorizontalDivider()

            if (comic.pageCount > 0) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        strings.libraryProgress,
                        style = MaterialTheme.typography.bodySmall
                    )
                    Text(
                        strings.libraryProgressTemplate.format(
                            comic.currentPage + 1,
                            comic.pageCount,
                            (comic.displayReadingProgress() * 100).toInt()
                        ),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                MrComicProgressLine(
                    progress = { comic.displayReadingProgress() },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            comic.genre?.let { InfoRow(strings.libraryGenre, it) }
            comic.publisher?.let { InfoRow(strings.libraryPublisher, it) }
            comic.year?.let { InfoRow(strings.libraryYear, it.toString()) }
            if (comic.tags.isNotBlank() && !isEditing) {
                InfoRow(strings.libraryTags, comic.tags)
            }
            if (!isEditing) {
                InfoRow(
                    shelfLabel,
                    when (comic.libraryShelfCategory()) {
                        ComicLibraryShelf.GRAPHIC -> "Комикс"
                        ComicLibraryShelf.BOOKS -> "Книга"
                        ComicLibraryShelf.AUTO -> "Авто"
                    }
                )
            }
            InfoRow(strings.libraryFormatLabel, comic.format.name)
            comic.folderId?.let { InfoRow(strings.actionFolder, it) }
            InfoRow(strings.librarySize, formatFileSize(comic.fileSize))

            HorizontalDivider()

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                ActionButton(
                    icon = Icons.AutoMirrored.Filled.OpenInNew,
                    label = strings.libraryOpen,
                    onClick = onOpen
                )
                ActionButton(
                    icon = if (comic.isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                    label = if (comic.isBookmarked) {
                        strings.libraryRemove
                    } else {
                        strings.readerBookmark
                    },
                    onClick = onToggleBookmark,
                    tint = if (comic.isBookmarked) MaterialTheme.colorScheme.primary else null
                )
                val readingStatus = comic.readingStatus()
                ActionButton(
                    icon = if (readingStatus == ComicReadingStatus.COMPLETED) {
                        Icons.Default.CheckCircle
                    } else {
                        Icons.Default.RadioButtonUnchecked
                    },
                    label = when (readingStatus) {
                        ComicReadingStatus.COMPLETED -> strings.libraryStatusCompleted
                        ComicReadingStatus.READING -> strings.libraryStatusReading
                        ComicReadingStatus.NEW -> strings.libraryStatusNew
                    },
                    onClick = onToggleCompleted
                )
                ActionButton(
                    icon = Icons.Default.Delete,
                    label = strings.libraryDelete,
                    onClick = onDelete,
                    tint = MaterialTheme.colorScheme.error
                )
            }
        }
    }
}

@Composable
internal fun ActionButton(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    onClick: () -> Unit,
    tint: Color? = null
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .clickable(onClick = onClick)
            .padding(8.dp)
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = tint ?: LocalContentColor.current,
            modifier = Modifier.size(24.dp)
        )
        Spacer(Modifier.height(4.dp))
        Text(text = label, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable
internal fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(label, style = MaterialTheme.typography.bodySmall)
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            textAlign = TextAlign.End,
            modifier = Modifier.weight(1f, fill = false).padding(start = 16.dp),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}
