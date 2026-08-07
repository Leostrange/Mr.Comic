package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.displayReadingProgress

internal fun sortLibraryComics(
    comics: List<Comic>,
    order: SortOrder
): List<Comic> = when (order) {
    SortOrder.TITLE_ASC -> comics.sortedBy { it.title.lowercase() }
    SortOrder.TITLE_DESC -> comics.sortedByDescending { it.title.lowercase() }
    SortOrder.DATE_ADDED_ASC -> comics.sortedBy { it.addedDate }
    SortOrder.DATE_ADDED_DESC -> comics.sortedByDescending { it.addedDate }
    SortOrder.DATE_READ_ASC -> comics.sortedBy { it.lastReadDate ?: 0L }
    SortOrder.DATE_READ_DESC -> comics.sortedByDescending { it.lastReadDate ?: 0L }
    SortOrder.PROGRESS_ASC -> comics.sortedWith(
        compareBy<Comic> { it.displayReadingProgress() }
            .thenBy { it.title.lowercase() }
    )
    SortOrder.PROGRESS_DESC -> comics.sortedWith(
        compareByDescending<Comic> { it.displayReadingProgress() }
            .thenBy { it.title.lowercase() }
    )
    SortOrder.FILE_SIZE_ASC -> comics.sortedBy { it.fileSize }
    SortOrder.FILE_SIZE_DESC -> comics.sortedByDescending { it.fileSize }
    SortOrder.GENRE_ASC -> comics.sortedBy { it.genre.orEmpty().lowercase() }
    SortOrder.GENRE_DESC -> comics.sortedByDescending { it.genre.orEmpty().lowercase() }
    SortOrder.FOLDER_ASC -> comics.sortedBy { normalizedFolderForSort(it).lowercase() }
    SortOrder.FOLDER_DESC -> comics.sortedByDescending { normalizedFolderForSort(it).lowercase() }
}

private fun normalizedFolderForSort(comic: Comic): String =
    comic.folderId?.trim()?.trim('/').orEmpty()
