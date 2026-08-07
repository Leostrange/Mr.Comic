package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicLibraryShelf
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.displayReadingProgress
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.libraryShelfCategory

/** Display-item builders extracted from LibraryViewModel. */

internal fun buildSections(
    comics: List<Comic>,
    keySelector: (Comic) -> String
): List<Pair<String, List<Comic>>> {
    val orderedSections = linkedMapOf<String, MutableList<Comic>>()
    comics.forEach { comic ->
        orderedSections.getOrPut(keySelector(comic)) { mutableListOf() }.add(comic)
    }
    return orderedSections.entries.map { it.key to it.value.toList() }
}

internal fun buildFolderDisplayItems(
    comics: List<Comic>,
    currentFolderPath: String?,
    sortOrder: SortOrder
): List<LibraryDisplayItem> {
    val folders = buildFolderItems(comics, currentFolderPath, sortOrder)
    val directFiles = sortLibraryComics(directFilesForPath(comics, currentFolderPath), sortOrder)
    return folders + buildSeparatedComicDisplayItems(
        comics = directFiles,
        forceHeaders = folders.isNotEmpty()
    )
}

internal fun buildSeparatedComicDisplayItems(
    comics: List<Comic>,
    forceHeaders: Boolean = false
): List<LibraryDisplayItem> {
    if (comics.isEmpty()) return emptyList()

    val graphics = comics.filter { it.libraryContentSection() == LibraryFileSection.GRAPHIC }
    val books = comics.filter { it.libraryContentSection() == LibraryFileSection.BOOKS }
    val shouldShowHeaders = forceHeaders || (graphics.isNotEmpty() && books.isNotEmpty())

    if (!shouldShowHeaders) {
        return comics.map(::LibraryComicItem)
    }

    return buildList {
        if (graphics.isNotEmpty()) {
            add(LibrarySectionDividerItem(LibraryFileSection.GRAPHIC))
            addAll(graphics.map(::LibraryComicItem))
        }
        if (books.isNotEmpty()) {
            add(LibrarySectionDividerItem(LibraryFileSection.BOOKS))
            addAll(books.map(::LibraryComicItem))
        }
    }
}

internal fun Comic.libraryContentSection(): LibraryFileSection = when (libraryShelfCategory()) {
    ComicLibraryShelf.GRAPHIC -> LibraryFileSection.GRAPHIC
    ComicLibraryShelf.BOOKS -> LibraryFileSection.BOOKS
    ComicLibraryShelf.AUTO -> if (format.isTextReadingFormat()) {
        LibraryFileSection.BOOKS
    } else {
        LibraryFileSection.GRAPHIC
    }
}

internal fun buildFolderItems(
    comics: List<Comic>,
    currentFolderPath: String?,
    sortOrder: SortOrder
): List<LibraryFolderItem> {
    val grouped = linkedMapOf<String, MutableList<Comic>>()
    comics.forEach { comic ->
        val childFolderPath = directChildFolderPath(normalizeFolderId(comic.folderId), currentFolderPath)
            ?: return@forEach
        grouped.getOrPut(childFolderPath) { mutableListOf() }.add(comic)
    }

    return sortFolderItems(
        grouped.map { (path, descendants) ->
            val directFiles = descendants.count { normalizeFolderId(it.folderId) == path }
            val directSubfolders = descendants.mapNotNull { descendant ->
                directChildFolderPath(normalizeFolderId(descendant.folderId), path)
            }.distinct().size
            val directChildren = descendants.filter { normalizeFolderId(it.folderId) == path }
            val representativeSource = if (directChildren.isNotEmpty()) directChildren else descendants
            val representative = representativeSource
                .sortedWith(
                    compareBy<Comic>(
                        { it.coverPath.isNullOrBlank() },
                        { folderRepresentativeName(it) }
                    )
                )
                .firstOrNull()
            LibraryFolderItem(
                path = path,
                title = path.substringAfterLast('/'),
                coverPath = representative?.coverPath,
                fileCount = directFiles,
                subfolderCount = directSubfolders,
                newestAdded = descendants.maxOfOrNull { it.addedDate } ?: 0L,
                lastReadDate = descendants.mapNotNull { it.lastReadDate }.maxOrNull(),
                totalSize = descendants.sumOf { it.fileSize },
                progress = descendants.map { it.displayReadingProgress() }.average().toFloat()
            )
        },
        sortOrder
    )
}

internal fun sortFolderItems(
    folders: List<LibraryFolderItem>,
    order: SortOrder
): List<LibraryFolderItem> = when (order) {
    SortOrder.TITLE_ASC, SortOrder.GENRE_ASC, SortOrder.FOLDER_ASC ->
        folders.sortedBy { it.title.lowercase() }
    SortOrder.TITLE_DESC, SortOrder.GENRE_DESC, SortOrder.FOLDER_DESC ->
        folders.sortedByDescending { it.title.lowercase() }
    SortOrder.DATE_ADDED_ASC -> folders.sortedBy { it.newestAdded }
    SortOrder.DATE_ADDED_DESC -> folders.sortedByDescending { it.newestAdded }
    SortOrder.DATE_READ_ASC -> folders.sortedBy { it.lastReadDate ?: 0L }
    SortOrder.DATE_READ_DESC -> folders.sortedByDescending { it.lastReadDate ?: 0L }
    SortOrder.PROGRESS_ASC -> folders.sortedBy { it.progress }
    SortOrder.PROGRESS_DESC -> folders.sortedByDescending { it.progress }
    SortOrder.FILE_SIZE_ASC -> folders.sortedBy { it.totalSize }
    SortOrder.FILE_SIZE_DESC -> folders.sortedByDescending { it.totalSize }
}

internal fun directFilesForPath(comics: List<Comic>, currentFolderPath: String?): List<Comic> {
    return comics.filter { normalizeFolderId(it.folderId) == currentFolderPath }
}

internal fun directChildFolderPath(folderPath: String?, currentFolderPath: String?): String? {
    val normalizedFolderPath = normalizeFolderId(folderPath) ?: return null
    return if (currentFolderPath == null) {
        normalizedFolderPath.substringBefore('/')
    } else {
        if (normalizedFolderPath == currentFolderPath || !normalizedFolderPath.startsWith("$currentFolderPath/")) {
            null
        } else {
            val remainder = normalizedFolderPath.removePrefix("$currentFolderPath/")
            "$currentFolderPath/${remainder.substringBefore('/')}"
        }
    }
}

internal fun normalizeFolderPath(path: String?, comics: List<Comic>): String? {
    var candidate = normalizeFolderId(path)
    while (candidate != null && !folderExists(candidate, comics)) {
        candidate = candidate.parentFolderPath()
    }
    return candidate
}

internal fun folderExists(path: String, comics: List<Comic>): Boolean {
    return comics.any { comic ->
        val folderPath = normalizeFolderId(comic.folderId)
        folderPath == path || folderPath?.startsWith("$path/") == true
    }
}

internal fun buildBreadcrumbs(currentFolderPath: String?, language: String): List<LibraryBreadcrumb> {
    val breadcrumbs = mutableListOf(
        LibraryBreadcrumb(
            label = vmTr(
                lang = language,
                ru = "Библиотека",
                en = "Library",
                ja = "ライブラリ",
                zh = "图书馆",
                ko = "라이브러리"
            ),
            path = null
        )
    )
    if (currentFolderPath.isNullOrBlank()) return breadcrumbs

    var cumulativePath = ""
    currentFolderPath.split('/').forEach { segment ->
        cumulativePath = if (cumulativePath.isEmpty()) segment else "$cumulativePath/$segment"
        breadcrumbs += LibraryBreadcrumb(label = segment, path = cumulativePath)
    }
    return breadcrumbs
}
