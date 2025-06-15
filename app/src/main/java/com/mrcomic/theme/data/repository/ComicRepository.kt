package com.example.mrcomic.theme.data.repository

import com.example.mrcomic.theme.data.db.ComicDao
import com.example.mrcomic.theme.data.model.Comic
import com.example.mrcomic.data.FailedImport
import com.example.mrcomic.data.ComicFts
import com.example.mrcomic.data.ComicFtsDao
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с комиксами
 */
@Singleton
class ComicRepository @Inject constructor(
    private val comicDao: ComicDao,
    private val comicFtsDao: ComicFtsDao
) {
    fun getAllComics(): Flow<List<Comic>> = comicDao.getAllComics()

    suspend fun getComicById(comicId: String): Comic? = comicDao.getComicById(comicId)

    fun getFavoriteComics(): Flow<List<Comic>> = comicDao.getFavoriteComics()

    fun getComicsByCollection(collectionId: String): Flow<List<Comic>> = comicDao.getComicsByCollection(collectionId)

    suspend fun insertComic(comic: Comic) = comicDao.insertComic(comic)

    suspend fun insertComics(comics: List<Comic>) = comicDao.insertComics(comics)

    suspend fun updateComic(comic: Comic) = comicDao.updateComic(comic)

    suspend fun deleteComic(comic: Comic) = comicDao.deleteComic(comic)

    suspend fun deleteComicById(comicId: String) = comicDao.deleteComicById(comicId)

    suspend fun deleteAllComics() = comicDao.deleteAllComics()

    suspend fun insertFailedImport(failedImport: FailedImport) = comicDao.insertFailedImport(failedImport)
    fun getFailedImports() = comicDao.getFailedImports()

    suspend fun insertFtsTag(tag: ComicFts) = comicFtsDao.insertTag(tag)
    fun searchComicsFts(query: String) = comicFtsDao.searchComics(query)
    fun filterByAuthor(author: String) = comicFtsDao.filterByAuthor(author)
    fun filterByTags(tags: String) = comicFtsDao.filterByTags(tags)
    fun filterByCollection(collectionName: String) = comicFtsDao.filterByCollection(collectionName)
    fun filterByPublisher(publisher: String) = comicFtsDao.filterByPublisher(publisher)
    fun filterByYear(year: String) = comicFtsDao.filterByYear(year)
    fun getComicsByLabel(label: String): Flow<List<Comic>> = comicDao.getComicsByLabel(label)
    suspend fun updateComicLabels(comicId: String, labels: List<String>) =
        comicDao.updateComicLabels(comicId, labels.joinToString(","))
} 