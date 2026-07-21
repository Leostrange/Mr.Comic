package io.leostrange.mrcomic.core.data.db.entity

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "saved_quotes",
    indices = [
        Index("comicId"),
        Index("createdAt"),
        Index(value = ["comicId", "page", "contentHash"], unique = true)
    ]
)
data class SavedQuote(
    @PrimaryKey val id: String = java.util.UUID.randomUUID().toString(),
    val comicId: String,
    val comicTitle: String,
    val comicPath: String,
    val page: Int,
    val text: String,
    val translatedText: String? = null,
    val sourceLanguage: String? = null,
    val targetLanguage: String? = null,
    val createdAt: Long = System.currentTimeMillis(),
    val updatedAt: Long = System.currentTimeMillis(),
    val contentHash: String
)
