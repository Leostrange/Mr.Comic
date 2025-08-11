package com.example.feature.reader

import com.example.feature.reader.data.ReaderStateDao
import com.example.feature.reader.data.ReaderStateEntity
import javax.inject.Inject

class RoomReaderRepository @Inject constructor(
    private val dao: ReaderStateDao
) : ReaderRepository {
    override fun getCurrentComic(): String = "" // Для совместимости, не используется
    
    override fun getStateFlow(): kotlinx.coroutines.flow.Flow<Pair<String, Int>> {
        return kotlinx.coroutines.flow.flowOf(Pair("", 0))
    }
    
    override suspend fun setState(comicTitle: String, page: Int) {
        // Placeholder implementation
    }
} 