package com.example.feature.library.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "comics")
data class ComicEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val title: String,
    val author: String,
    val description: String? = null,
    val filePath: String,
    val pageCount: Int,
    val coverPath: String? = null,
    val isFavorite: Boolean = false,
    val currentPage: Int = 0
) 