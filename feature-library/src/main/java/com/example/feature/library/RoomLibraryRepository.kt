package com.example.feature.library

import com.example.feature.library.data.ComicDao
import kotlinx.coroutines.runBlocking
import javax.inject.Inject

class RoomLibraryRepository @Inject constructor(
    private val dao: ComicDao
) : LibraryRepository {
    override fun getComics(): List<String> = runBlocking {
        dao.getAllComics().firstOrNull()?.map { it.title } ?: emptyList()
    }
} 