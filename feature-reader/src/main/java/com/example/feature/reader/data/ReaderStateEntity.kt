package com.example.feature.reader.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "reader_state")
data class ReaderStateEntity(
    @PrimaryKey val id: Int = 0, // всегда одна запись
    val comicTitle: String,
    val page: Int
) 