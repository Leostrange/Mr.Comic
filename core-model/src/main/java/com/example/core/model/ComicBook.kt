package com.example.core.model

/**
 * A UI model representing a single comic book in the library.
 *
 * @param id A unique identifier for the comic.
 * @param title The title of the comic.
 * @param coverUrl The URL, local path, or drawable resource for the cover image.
 * @param filePath The absolute local path to the comic file for opening.
 */
data class ComicBook(
    val id: String,
    val title: String,
    val coverUrl: Any?,
    val filePath: String
)