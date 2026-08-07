package io.leostrange.mrcomic.feature.library

import androidx.compose.material3.AlertDialog
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.locale.AppStrings

@Composable
internal fun DeleteComicDialog(
    comicId: String,
    comicsById: Map<String, Comic>,
    strings: AppStrings,
    onDelete: (String) -> Unit,
    onDismiss: () -> Unit
) {
    val title = comicsById[comicId]?.title ?: strings.libraryComicFallback
    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surface,
        title = { Text(strings.libraryDeleteComicTitle) },
        text = {
            Text(strings.libraryDeleteComicMessage.replace("%s", title))
        },
        confirmButton = {
            TextButton(onClick = { onDelete(comicId) }) {
                Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(strings.cancel) }
        }
    )
}

@Composable
internal fun DeleteFolderDialog(
    folder: LibraryFolderItem,
    comics: List<Comic>,
    strings: AppStrings,
    onDelete: (String) -> Unit,
    onDismiss: () -> Unit
) {
    val affectedCount = remember(folder.path, comics) {
        comics.count { comic ->
            val folderId = comic.folderId
                ?.trim()
                ?.trim('/')
                ?.replace('\\', '/')
                ?.takeIf { it.isNotBlank() }
            folderId == folder.path || folderId?.startsWith(folder.path + "/") == true
        }
    }
    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surface,
        title = { Text(strings.libraryDeleteFolderTitle) },
        text = {
            Text(strings.libraryDeleteFolderMessage.format(folder.title, affectedCount))
        },
        confirmButton = {
            TextButton(onClick = { onDelete(folder.path) }) {
                Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(strings.cancel) }
        }
    )
}

@Composable
internal fun DeleteAudiobookDialog(
    audiobook: Audiobook,
    strings: AppStrings,
    onDelete: (String) -> Unit,
    onDismiss: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surface,
        title = { Text("Убрать аудиокнигу из библиотеки?") },
        text = {
            Text(
                buildString {
                    append(audiobook.title)
                    append("\n\n")
                    append(
                        if (audiobook.sourceIsFolder) {
                            "Будет удалена только запись из библиотеки. Файлы в папке останутся на месте."
                        } else {
                            "Будет удалена только запись из библиотеки. Исходный аудиофайл останется на месте."
                        }
                    )
                }
            )
        },
        confirmButton = {
            TextButton(onClick = { onDelete(audiobook.id) }) {
                Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(strings.cancel) }
        }
    )
}

@Composable
internal fun DeleteQuoteDialog(
    quote: SavedQuote,
    strings: AppStrings,
    onDelete: (String) -> Unit,
    onDismiss: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surface,
        title = { Text(strings.libraryDeleteQuoteTitle) },
        text = {
            Text(
                text = buildString {
                    append(quote.text.take(180))
                    if (quote.text.length > 180) append("…")
                }
            )
        },
        confirmButton = {
            TextButton(onClick = { onDelete(quote.id) }) {
                Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(strings.cancel) }
        }
    )
}
