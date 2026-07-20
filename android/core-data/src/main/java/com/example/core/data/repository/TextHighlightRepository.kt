package com.example.core.data.repository

import com.example.core.data.db.TextHighlightDao
import com.example.core.model.TextHighlight
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class TextHighlightRepository @Inject constructor(
    private val dao: TextHighlightDao
) {
    fun highlightsForPage(comicId: String, page: Int): Flow<List<TextHighlight>> =
        dao.highlightsForPage(comicId, page)

    fun highlightsForComic(comicId: String): Flow<List<TextHighlight>> =
        dao.highlightsForComic(comicId)

    suspend fun getHighlightsForComic(comicId: String): List<TextHighlight> =
        dao.getHighlightsForComic(comicId)

    suspend fun saveHighlight(highlight: TextHighlight) {
        dao.insert(highlight.copy(updatedAt = System.currentTimeMillis()))
    }

    suspend fun updateNote(id: String, note: String) {
        val existing = dao.getById(id) ?: return
        dao.update(existing.copy(note = note, updatedAt = System.currentTimeMillis()))
    }

    suspend fun updateColor(id: String, colorArgb: Int) {
        val existing = dao.getById(id) ?: return
        dao.update(existing.copy(colorArgb = colorArgb, updatedAt = System.currentTimeMillis()))
    }

    suspend fun deleteHighlight(id: String) = dao.deleteById(id)

    suspend fun deleteAllForPage(comicId: String, page: Int) = dao.deleteAllForPage(comicId, page)

    suspend fun countForComic(comicId: String): Int = dao.countForComic(comicId)
}
