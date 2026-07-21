package io.leostrange.mrcomic.core.data.db

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "epub_manifest_cache",
    indices = [Index(value = ["updatedAt"])]
)
data class EpubManifestCacheEntity(
    @PrimaryKey val filePath: String,
    val fileSize: Long,
    val lastModified: Long,
    val payloadJson: String,
    val updatedAt: Long
)
