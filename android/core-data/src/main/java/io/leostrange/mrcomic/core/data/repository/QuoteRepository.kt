package io.leostrange.mrcomic.core.data.repository

import io.leostrange.mrcomic.core.data.db.QuoteDao
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import kotlinx.coroutines.flow.Flow
import java.security.MessageDigest
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class QuoteRepository @Inject constructor(
    private val quoteDao: QuoteDao
) {
    data class SaveQuoteResult(
        val quote: SavedQuote,
        val inserted: Boolean
    )

    fun getAllQuotes(): Flow<List<SavedQuote>> = quoteDao.getAllQuotes()

    fun searchQuotes(query: String): Flow<List<SavedQuote>> {
        val normalized = query.trim().lowercase()
        if (normalized.isBlank()) return quoteDao.getAllQuotes()
        return quoteDao.searchQuotes(normalized)
    }

    suspend fun saveQuote(
        comic: Comic,
        page: Int,
        text: String,
        translatedText: String? = null,
        sourceLanguage: String? = null,
        targetLanguage: String? = null
    ): SaveQuoteResult? {
        val normalizedText = normalizeQuoteText(text)
        if (normalizedText.isBlank()) return null

        val normalizedTranslation = translatedText
            ?.trim()
            ?.replace(Regex("\\s+"), " ")
            ?.ifBlank { null }
        val contentHash = buildContentHash(normalizedText)
        val existing = quoteDao.findExistingQuote(comic.id, page, contentHash)
        if (existing != null) {
            val merged = existing.copy(
                comicTitle = comic.title,
                comicPath = comic.path,
                translatedText = normalizedTranslation ?: existing.translatedText,
                sourceLanguage = sourceLanguage ?: existing.sourceLanguage,
                targetLanguage = targetLanguage ?: existing.targetLanguage,
                updatedAt = System.currentTimeMillis()
            )
            quoteDao.updateQuote(merged)
            return SaveQuoteResult(merged, inserted = false)
        }

        val quote = SavedQuote(
            comicId = comic.id,
            comicTitle = comic.title,
            comicPath = comic.path,
            page = page,
            text = normalizedText,
            translatedText = normalizedTranslation,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            contentHash = contentHash
        )
        quoteDao.insertQuote(quote)
        return SaveQuoteResult(quote, inserted = true)
    }

    suspend fun deleteQuote(id: String) {
        quoteDao.deleteQuote(id)
    }

    suspend fun refreshComicSnapshot(
        comicId: String,
        comicTitle: String,
        comicPath: String
    ) {
        quoteDao.refreshComicSnapshot(
            comicId = comicId,
            comicTitle = comicTitle,
            comicPath = comicPath,
            updatedAt = System.currentTimeMillis()
        )
    }

    suspend fun restoreQuoteFromBackup(quote: SavedQuote): SaveQuoteResult {
        val existing = quoteDao.findExistingQuote(quote.comicId, quote.page, quote.contentHash)
        if (existing != null) {
            val merged = existing.copy(
                comicTitle = quote.comicTitle,
                comicPath = quote.comicPath,
                translatedText = quote.translatedText ?: existing.translatedText,
                sourceLanguage = quote.sourceLanguage ?: existing.sourceLanguage,
                targetLanguage = quote.targetLanguage ?: existing.targetLanguage,
                updatedAt = maxOf(existing.updatedAt, quote.updatedAt)
            )
            quoteDao.updateQuote(merged)
            return SaveQuoteResult(merged, inserted = false)
        }

        quoteDao.insertQuote(quote)
        return SaveQuoteResult(quote, inserted = true)
    }

    private fun normalizeQuoteText(text: String): String {
        return text
            .trim()
            .replace(Regex("\\s+"), " ")
            .replace("“", "\"")
            .replace("”", "\"")
            .replace("‘", "'")
            .replace("’", "'")
    }

    private fun buildContentHash(text: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        return digest.digest(text.encodeToByteArray()).joinToString("") { "%02x".format(it) }
    }
}
