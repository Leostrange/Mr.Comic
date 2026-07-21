package io.leostrange.mrcomic.core.data.repository

import io.leostrange.mrcomic.core.data.db.QuoteDao
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class QuoteRepositoryTest {

    private val comic = Comic(
        id = "comic-1",
        title = "Space Saga",
        path = "/library/space-saga.cbz",
        format = ComicFormat.CBZ
    )

    @Test
    fun saveQuote_mergesEquivalentTextIntoSingleStoredRow() = runTest {
        val dao = FakeQuoteDao()
        val repository = QuoteRepository(dao)

        val first = repository.saveQuote(
            comic = comic,
            page = 3,
            text = "  Hello   world  ",
            translatedText = "  Привет   мир  ",
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        assertNotNull(first)
        assertTrue(first!!.inserted)

        val updatedComic = comic.copy(
            title = "Space Saga Deluxe",
            path = "/library/space-saga-deluxe.cbz"
        )
        val second = repository.saveQuote(
            comic = updatedComic,
            page = 3,
            text = "Hello world",
            translatedText = "   ",
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        assertNotNull(second)
        assertFalse(second!!.inserted)

        val stored = dao.getAllQuotes().first()
        assertEquals(1, stored.size)
        assertEquals("Hello world", stored.single().text)
        assertEquals("Привет мир", stored.single().translatedText)
        assertEquals("Space Saga Deluxe", stored.single().comicTitle)
        assertEquals("/library/space-saga-deluxe.cbz", stored.single().comicPath)
    }

    @Test
    fun searchQuotes_trimsQueryAndBlankInputFallsBackToAllQuotes() = runTest {
        val dao = FakeQuoteDao()
        val repository = QuoteRepository(dao)

        repository.saveQuote(comic, 1, "A quiet hero returns")
        repository.saveQuote(comic.copy(id = "comic-2", title = "Other Book"), 2, "A different line")

        val filtered = repository.searchQuotes("  HERO  ").first()
        assertEquals(1, filtered.size)
        assertEquals("A quiet hero returns", filtered.single().text)
        assertEquals("hero", dao.lastSearchQuery)

        dao.lastSearchQuery = null
        val allQuotes = repository.searchQuotes("   ").first()
        assertEquals(2, allQuotes.size)
        assertNull(dao.lastSearchQuery)
    }

    private class FakeQuoteDao : QuoteDao {
        private val quotes = MutableStateFlow<List<SavedQuote>>(emptyList())
        var lastSearchQuery: String? = null

        override fun getAllQuotes(): Flow<List<SavedQuote>> = quotes

        override fun searchQuotes(query: String): Flow<List<SavedQuote>> {
            lastSearchQuery = query
            return quotes.map { current ->
                current.filter { quote ->
                    quote.text.contains(query, ignoreCase = true) ||
                        (quote.translatedText?.contains(query, ignoreCase = true) == true) ||
                        quote.comicTitle.contains(query, ignoreCase = true)
                }
            }
        }

        override suspend fun getQuoteById(id: String): SavedQuote? = quotes.value.firstOrNull { it.id == id }

        override suspend fun findExistingQuote(comicId: String, page: Int, contentHash: String): SavedQuote? {
            return quotes.value.firstOrNull {
                it.comicId == comicId && it.page == page && it.contentHash == contentHash
            }
        }

        override suspend fun insertQuote(quote: SavedQuote) {
            if (quotes.value.any { it.id == quote.id }) return
            quotes.value = quotes.value + quote
        }

        override suspend fun insertQuotes(quotes: List<SavedQuote>) {
            quotes.forEach { insertQuote(it) }
        }

        override suspend fun updateQuote(quote: SavedQuote) {
            quotes.value = quotes.value.map { if (it.id == quote.id) quote else it }
        }

        override suspend fun refreshComicSnapshot(
            comicId: String,
            comicTitle: String,
            comicPath: String,
            updatedAt: Long
        ) {
            quotes.value = quotes.value.map { quote ->
                if (quote.comicId == comicId) {
                    quote.copy(
                        comicTitle = comicTitle,
                        comicPath = comicPath,
                        updatedAt = updatedAt
                    )
                } else {
                    quote
                }
            }
        }

        override suspend fun deleteQuote(id: String) {
            quotes.value = quotes.value.filterNot { it.id == id }
        }
    }
}
