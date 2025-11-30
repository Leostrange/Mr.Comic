package com.example.core.data.repository

import com.example.core.data.database.dao.BookmarkDao
import com.example.core.model.Bookmark
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с закладками
 * Предоставляет методы для управления закладками комиксов
 */
@Singleton
class BookmarkRepository @Inject constructor(
    private val bookmarkDao: BookmarkDao
) {
    
    /**
     * Получить все закладки
     */
    fun getAllBookmarks(): Flow<List<Bookmark>> {
        return bookmarkDao.getAllBookmarks()
    }
    
    /**
     * Получить закладки для конкретного комикса
     */
    fun getBookmarksByComic(comicId: String): Flow<List<Bookmark>> {
        return bookmarkDao.getBookmarksByComic(comicId)
    }
    
    /**
     * Получить закладку по ID
     */
    suspend fun getBookmarkById(id: String): Bookmark? {
        return bookmarkDao.getById(id)
    }
    
    /**
     * Получить закладку по комиксу и странице
     */
    suspend fun getBookmarkByComicAndPage(comicId: String, pageIndex: Int): Bookmark? {
        return bookmarkDao.getByComicAndPage(comicId, pageIndex)
    }
    
    /**
     * Добавить закладку
     */
    suspend fun addBookmark(bookmark: Bookmark) {
        bookmarkDao.insert(bookmark)
    }
    
    /**
     * Добавить закладку с параметрами
     */
    suspend fun addBookmark(comicId: String, pageIndex: Int, note: String? = null): Bookmark {
        val bookmark = Bookmark(
            comicId = comicId,
            pageIndex = pageIndex,
            note = note,
            createdAt = System.currentTimeMillis()
        )
        bookmarkDao.insert(bookmark)
        return bookmark
    }
    
    /**
     * Добавить несколько закладок
     */
    suspend fun addBookmarks(bookmarks: List<Bookmark>) {
        bookmarkDao.insertAll(bookmarks)
    }
    
    /**
     * Обновить закладку
     */
    suspend fun updateBookmark(bookmark: Bookmark) {
        bookmarkDao.update(bookmark)
    }
    
    /**
     * Удалить закладку
     */
    suspend fun deleteBookmark(bookmark: Bookmark) {
        bookmarkDao.delete(bookmark)
    }
    
    /**
     * Удалить закладку по ID
     */
    suspend fun deleteBookmarkById(id: String) {
        bookmarkDao.deleteById(id)
    }
    
    /**
     * Удалить все закладки комикса
     */
    suspend fun deleteBookmarksByComic(comicId: String) {
        bookmarkDao.deleteByComic(comicId)
    }
    
    /**
     * Получить количество закладок для комикса
     */
    suspend fun getBookmarksCount(comicId: String): Int {
        return bookmarkDao.getCountByComic(comicId)
    }
    
    /**
     * Проверить, есть ли закладка на странице
     */
    suspend fun hasBookmarkOnPage(comicId: String, pageIndex: Int): Boolean {
        return bookmarkDao.getByComicAndPage(comicId, pageIndex) != null
    }
    
    /**
     * Переключить закладку на странице
     * Если закладка существует - удаляет, если нет - создает
     */
    suspend fun toggleBookmark(comicId: String, pageIndex: Int, note: String? = null): Boolean {
        val existingBookmark = bookmarkDao.getByComicAndPage(comicId, pageIndex)
        
        return if (existingBookmark != null) {
            bookmarkDao.delete(existingBookmark)
            false // Закладка удалена
        } else {
            val newBookmark = Bookmark(
                comicId = comicId,
                pageIndex = pageIndex,
                note = note,
                createdAt = System.currentTimeMillis()
            )
            bookmarkDao.insert(newBookmark)
            true // Закладка добавлена
        }
    }
}
