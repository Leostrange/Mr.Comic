package com.example.feature.reader

import com.example.feature.reader.data.ReaderStateDao
import com.example.feature.reader.data.ReaderStateEntity
import javax.inject.Inject
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.runBlocking

class RoomReaderRepository @Inject constructor(
    private val dao: ReaderStateDao
) : ReaderRepository {
    override fun getCurrentComic(): String = runBlocking {
        dao.getStateOnce()?.comicTitle.orEmpty()
    }

    override fun getStateFlow(): Flow<Pair<String, Int>> =
        dao.getState().map { entity ->
            entity?.let { it.comicTitle to it.page } ?: ("" to 0)
        }

    override suspend fun setState(comicTitle: String, page: Int) {
        dao.setState(
            ReaderStateEntity(
                id = 0,
                comicTitle = comicTitle,
                page = page
            )
        )
    }
}
