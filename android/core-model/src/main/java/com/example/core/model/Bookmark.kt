package com.example.core.model

data class Bookmark(
    val id: String,
    val comicId: String,
    val page: Int,
    val label: String?
)
