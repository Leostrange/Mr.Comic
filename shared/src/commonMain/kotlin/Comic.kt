package com.mrcomic.shared

/**
 * Common interface for comic book handling across platforms
 */
interface Comic {
    /**
     * Opens a comic book from the given path
     * @param path Path to the comic book file
     * @return Number of pages in the comic book
     */
    suspend fun openComic(path: String): Result<Int>
    
    /**
     * Gets the total number of pages in the currently opened comic
     * @return Number of pages or null if no comic is opened
     */
    fun getPageCount(): Int?
    
    /**
     * Renders a specific page as bitmap data
     * @param pageIndex Zero-based index of the page to render
     * @return ByteArray containing the rendered page image
     */
    suspend fun renderPage(pageIndex: Int): Result<ByteArray>
    
    /**
     * Closes the currently opened comic and releases resources
     */
    fun closeComic()
    
    /**
     * Gets metadata about the currently opened comic
     * @return Comic metadata or null if no comic is opened
     */
    fun getMetadata(): ComicMetadata?
}

/**
 * Metadata information about a comic book
 */
data class ComicMetadata(
    val title: String?,
    val pageCount: Int,
    val fileSize: Long,
    val format: String
)
