package io.leostrange.mrcomic.feature.library

import android.net.Uri
import io.leostrange.mrcomic.core.model.Comic

// Phase 4.1: Comic/Quote CRUD extracted from LibraryViewModel into
// LibraryCrudController (explicit dependencies). These extensions keep the
// public ViewModel API surface and delegate to the controller.

fun LibraryViewModel.deleteQuote(id: String) = crudController.deleteQuote(id)

fun LibraryViewModel.addComicFromUri(uri: Uri) = crudController.addComicFromUri(uri)

fun LibraryViewModel.addComicsFromDirectory(treeUri: Uri) = crudController.addComicsFromDirectory(treeUri)

fun LibraryViewModel.deleteComic(comicId: String) = crudController.deleteComic(comicId)

fun LibraryViewModel.deleteFolder(folderPath: String) = crudController.deleteFolder(folderPath)

fun LibraryViewModel.toggleBookmark(comicId: String) = crudController.toggleBookmark(comicId)

fun LibraryViewModel.updateComicMeta(
    comicId: String,
    title: String,
    tags: String,
    libraryShelf: String,
) = crudController.updateComicMeta(comicId, title, tags, libraryShelf)

fun LibraryViewModel.markCompleted(comicId: String, completed: Boolean) =
    crudController.markCompleted(comicId, completed)

suspend fun LibraryViewModel.getComicById(id: String): Comic? = crudController.getComicById(id)

fun LibraryViewModel.clearError() = crudController.clearError()
