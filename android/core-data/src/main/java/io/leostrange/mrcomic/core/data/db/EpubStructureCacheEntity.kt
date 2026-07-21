package io.leostrange.mrcomic.core.data.db

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "epub_structure_cache",
    indices = [Index(value = ["updatedAt"])]
)
data class EpubStructureCacheEntity(
    @PrimaryKey val filePath: String,
    val fileSize: Long,
    val lastModified: Long,
    val payloadJson: String,
    val updatedAt: Long
)
