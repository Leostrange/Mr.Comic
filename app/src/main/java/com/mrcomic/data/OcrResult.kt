package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "ocr_results")
data class OcrResult(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val comicId: Int,
    val pageIndex: Int,
    val text: String
) 