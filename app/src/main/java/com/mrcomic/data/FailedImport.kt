package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "failed_imports")
data class FailedImport(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val filePath: String,
    val error: String,
    val timestamp: Long = System.currentTimeMillis()
) 