package com.example.feature.reader

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow

interface ReaderRepository {
    fun getCurrentComic(): String
    fun getStateFlow(): Flow<Pair<String, Int>>
    suspend fun setState(comicTitle: String, page: Int)
}

class InMemoryReaderRepository : ReaderRepository {
    private val state = MutableStateFlow("Berserk" to 1)

    override fun getCurrentComic(): String = state.value.first

    override fun getStateFlow(): Flow<Pair<String, Int>> = state

    override suspend fun setState(comicTitle: String, page: Int) {
        state.value = comicTitle to page
    }
}
