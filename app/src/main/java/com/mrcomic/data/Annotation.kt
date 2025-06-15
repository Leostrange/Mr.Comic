package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "annotations")
data class Annotation(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val comicId: Int,
    val pageIndex: Int,
    val text: String? = null,
    val drawingPath: String? = null, // Сериализованный путь Canvas
    val timestamp: Long
) 