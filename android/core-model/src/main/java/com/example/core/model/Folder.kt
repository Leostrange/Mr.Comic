package com.example.core.model

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

/**
 * Модель папки для организации комиксов
 */
@Entity(
    tableName = "folders",
    indices = [
        Index(value = ["name"]),
        Index(value = ["parentId"]),
        Index(value = ["treeUri"])
    ]
)
data class Folder(
    @PrimaryKey
    val id: String = java.util.UUID.randomUUID().toString(),
    val name: String,
    val path: String,
    val parentId: String? = null,
    val comicCount: Int = 0,
    val treeUri: String? = null,
    val displayName: String = name,
    val storageType: StorageType = StorageType.INTERNAL
)

enum class StorageType {
    INTERNAL,
    EXTERNAL,
    REMOVABLE
}
