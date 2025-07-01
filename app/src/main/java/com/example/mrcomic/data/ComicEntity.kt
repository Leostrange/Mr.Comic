package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "comics")
data class ComicEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0,
    val title: String,
    val author: String,
    val description: String?,
    val filePath: String, // URI файла
    val coverPath: String? = null, // Путь к обложке (сгенерируем позже)
    val lastOpened: Long = System.currentTimeMillis(),
    val progress: Int = 0, // Прогресс чтения
    val currentPage: Int = 0,
    val pageCount: Int,
    val isFavorite: Boolean = false,
    val addedDate: Long = System.currentTimeMillis(),
    val readingTime: Long = 0
) 