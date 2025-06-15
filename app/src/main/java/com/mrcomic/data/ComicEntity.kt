package com.example.mrcomic.data

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(tableName = "comics", indices = [Index(value = ["series", "issue_number"])])
data class ComicEntity(
    @PrimaryKey @ColumnInfo(name = "file_path") val filePath: String,
    @ColumnInfo(name = "file_name") val fileName: String,
    @ColumnInfo(name = "title") val title: String,
    @ColumnInfo(name = "series") val series: String?,
    @ColumnInfo(name = "issue_number") val issueNumber: Int?,
    @ColumnInfo(name = "author") val author: String = "Unknown",
    @ColumnInfo(name = "publisher") val publisher: String = "Unknown",
    @ColumnInfo(name = "genre") val genre: String = "Unknown",
    @ColumnInfo(name = "page_count") val pageCount: Int?,
    @ColumnInfo(name = "thumbnail_path") val thumbnailPath: String?,
    @ColumnInfo(name = "last_scanned") val lastScanned: Long = System.currentTimeMillis()
)

