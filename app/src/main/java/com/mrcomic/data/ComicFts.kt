package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "comics_fts")
data class ComicFts(
    @PrimaryKey val rowid: Int,
    val title: String,
    val author: String?,
    val tags: String?,
    val collectionName: String?,
    val publisher: String?,
    val year: String?
) 