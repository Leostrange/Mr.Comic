package com.example.mrcomic.data.repository

import com.example.mrcomic.data.AppDatabase
import com.example.mrcomic.data.model.Comic

class ComicRepository(private val database: AppDatabase) {
    suspend fun addComic(comic: Comic) {
        database.comicDao().insert(comic)
    }

    suspend fun updateComic(comic: Comic) {
        database.comicDao().update(comic)
    }

    suspend fun getAllComics(): List<Comic> {
        return database.comicDao().getAllComics()
    }

    suspend fun getComicByPath(filePath: String): Comic? {
        return database.comicDao().getComicByPath(filePath)
    }
}

