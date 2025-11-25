package com.example.core.data.repository

import com.example.core.data.database.dao.ComicDao
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с комиксами
 * Предоставляет методы CRUD и поиска
 */
@Singleton
class ComicRepository @Inject constructor(
    private val comicDao: ComicDao
) {
    
    /**
     * Получить все комиксы
     */
    fun getAllComics(): Flow<List<Comic>> {
        return comicDao.getAllComics()
    }
    
    fun getSingleComics(): Flow<List<Comic>> {
        return comicDao.getSingleComics()
    }
    
    fun getComicsByDisplayGroup(displayGroup: String): Flow<List<Comic>> {
        return comicDao.getComicsByDisplayGroup(displayGroup)
    }
    
    fun getAllDisplayGroups(): Flow<List<String>> {
        return comicDao.getAllDisplayGroups()
    }
    
    /**
     * Получить комиксы по папке
     */
    fun getComicsByFolder(folderId: String): Flow<List<Comic>> {
        return comicDao.getComicsByFolder(folderId)
    }
    
    /**
     * Поиск комиксов по названию
     */
    fun searchComics(query: String): Flow<List<Comic>> {
        return comicDao.searchComics(query)
    }
    
    /**
     * Получить комикс по ID
     */
    suspend fun getComicById(id: String): Comic? {
        return comicDao.getById(id)
    }
    
    /**
     * Получить комикс по пути
     */
    suspend fun getComicByPath(path: String): Comic? {
        return comicDao.getByPath(path)
    }
    
    /**
     * Добавить комикс
     */
    suspend fun addComic(comic: Comic) {
        comicDao.insert(comic)
    }
    
    /**
     * Добавить несколько комиксов
     */
    suspend fun addComics(comics: List<Comic>) {
        comicDao.insertAll(comics)
    }
    
    /**
     * Обновить комикс
     */
    suspend fun updateComic(comic: Comic) {
        comicDao.update(comic)
    }
    
    /**
     * Удалить комикс (только из БД, файл остается)
     */
    suspend fun deleteComic(comic: Comic) {
        comicDao.delete(comic)
    }
    
    /**
     * Удалить комикс по ID
     */
    suspend fun deleteComicById(id: String) {
        comicDao.deleteById(id)
    }
    
    /**
     * Удалить все комиксы
     */
    suspend fun deleteAllComics() {
        comicDao.deleteAll()
    }
    
    /**
     * Получить количество комиксов
     */
    suspend fun getComicsCount(): Int {
        return comicDao.getCount()
    }
    
    /**
     * Получить комиксы по формату
     */
    fun getComicsByFormat(format: ComicFormat): Flow<List<Comic>> {
        return comicDao.getComicsByFormat(format.name)
    }
    
    /**
     * Получить недавно прочитанные комиксы
     */
    fun getRecentlyRead(limit: Int = 10): Flow<List<Comic>> {
        return comicDao.getRecentlyRead(limit)
    }
    
    /**
     * Обновить прогресс чтения
     */
    suspend fun updateReadingProgress(comicId: String, progress: Float) {
        val comic = comicDao.getById(comicId) ?: return
        val updatedComic = comic.copy(
            readingProgress = progress.coerceIn(0f, 1f),
            lastReadDate = System.currentTimeMillis()
        )
        comicDao.update(updatedComic)
    }
    
    /**
     * Переключить закладку
     */
    suspend fun toggleBookmark(comicId: String) {
        val comic = comicDao.getById(comicId) ?: return
        val updatedComic = comic.copy(isBookmarked = !comic.isBookmarked)
        comicDao.update(updatedComic)
    }
}
