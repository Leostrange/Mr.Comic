package com.example.mrcomic.data

/**
 * Модель данных комикса с адаптированной структурой
 */
data class Comic(
    val id: Int,
    val title: String,
    val author: String = "",
    val images: List<String>, // Список URL изображений
    val currentPage: Int = 0,
    val coverPath: String? = null,
    val filePath: String? = null,
    val isFavorite: Boolean = false,
    val description: String? = null
) {
    val pageCount: Int get() = images.size
    
    fun getImagePath(page: Int): String {
        return if (page in images.indices) {
            images[page]
        } else {
            // Fallback для тестовых данных
            "android.resource://com.example.mrcomic/drawable/comic_${id}_page_$page"
        }
    }
    
    fun getProgress(): Float {
        return if (pageCount > 0) currentPage.toFloat() / pageCount.toFloat() else 0f
    }
    
    fun hasNextPage(): Boolean = currentPage < pageCount - 1
    fun hasPreviousPage(): Boolean = currentPage > 0
}