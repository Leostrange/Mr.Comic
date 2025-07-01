package com.example.feature.reader

import kotlinx.coroutines.flow.Flow

interface ReaderRepository {
    fun getCurrentComic(): String
    fun getStateFlow(): Flow<Pair<String, Int>>
    suspend fun setState(comicTitle: String, page: Int)
}

class InMemoryReaderRepository : ReaderRepository {
    override fun getCurrentComic(): String = "Berserk (current)"
    override fun getStateFlow(): Flow<Pair<String, Int>> = kotlinx.coroutines.flow.flowOf("Berserk" to 1)
    override suspend fun setState(comicTitle: String, page: Int) {
        // In-memory implementation
    }
} 