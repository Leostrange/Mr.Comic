package io.leostrange.mrcomic.core.data.db.entity

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey
import java.util.UUID

/**
 * A user-created color highlight on a text passage within a book page.
 *
 * Highlights are persisted per-comic per-page so they survive app restarts.
 * The [text] field stores the exact selected string; [startOffset] and [endOffset]
 * store character offsets within the page HTML body for precise re-rendering.
 */
@Entity(
    tableName = "text_highlights",
    indices = [
        Index("comicId"),
        Index("comicId", "page"),
        Index("createdAt")
    ]
)
data class TextHighlight(
    @PrimaryKey val id: String = UUID.randomUUID().toString(),
    val comicId: String,
    val comicTitle: String,
    val page: Int,
    /** The highlighted text content. */
    val text: String,
    /** Character offset of the highlight start within the page body text. */
    val startOffset: Int,
    /** Character offset of the highlight end within the page body text. */
    val endOffset: Int,
    /** ARGB color integer, e.g. 0x50FFEB3B (semi-transparent yellow). */
    val colorArgb: Int,
    /** Optional user note attached to this highlight. */
    val note: String? = null,
    val createdAt: Long = System.currentTimeMillis(),
    val updatedAt: Long = System.currentTimeMillis()
) {
    companion object {
        /** Semi-transparent yellow — default highlight color. */
        const val COLOR_YELLOW = 0x50FFEB3B.toInt()
        /** Semi-transparent green. */
        const val COLOR_GREEN = 0x504CAF50
        /** Semi-transparent blue. */
        const val COLOR_BLUE = 0x502196F3
        /** Semi-transparent pink/magenta. */
        const val COLOR_PINK = 0x50E91E63
        /** Semi-transparent orange. */
        const val COLOR_ORANGE = 0x50FF9800

        val PRESET_COLORS = listOf(COLOR_YELLOW, COLOR_GREEN, COLOR_BLUE, COLOR_PINK, COLOR_ORANGE)
    }
}
