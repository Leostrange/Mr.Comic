package com.example.core.model

data class Comic(
    val title: String,
    val author: String,
    val filePath: String,
    val coverPath: String? = null,
    val currentPage: Int = 0,
    val totalPages: Int = 0
)


