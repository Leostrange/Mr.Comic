package com.example.feature.reader

import com.example.feature.reader.data.ReaderStateDao
import com.example.feature.reader.data.ReaderStateEntity
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test

private class FakeReaderStateDao : ReaderStateDao {
    private val state = MutableStateFlow<ReaderStateEntity?>(null)
    val persistedStates = mutableListOf<ReaderStateEntity>()

    override fun getState(): Flow<ReaderStateEntity?> = state

    override suspend fun getStateOnce(): ReaderStateEntity? = state.value

    override suspend fun setState(state: ReaderStateEntity) {
        persistedStates += state
        this.state.value = state
    }
}

class RoomReaderRepositoryTest {

    @Test
    fun `getStateFlow emits default value when there is no persisted state`() = runTest {
        val dao = FakeReaderStateDao()
        val repository = RoomReaderRepository(dao)

        val result = repository.getStateFlow().first()

        assertEquals("" to 0, result)
    }

    @Test
    fun `setState persists entity with fixed id and updates flow`() = runTest {
        val dao = FakeReaderStateDao()
        val repository = RoomReaderRepository(dao)

        repository.setState("Sample comic", 7)

        val savedEntity = dao.persistedStates.single()
        assertEquals(0, savedEntity.id)
        assertEquals("Sample comic", savedEntity.comicTitle)
        assertEquals(7, savedEntity.page)

        val updated = repository.getStateFlow().first()
        assertEquals("Sample comic" to 7, updated)
    }

    @Test
    fun `getCurrentComic returns last saved comic title`() = runTest {
        val dao = FakeReaderStateDao()
        val repository = RoomReaderRepository(dao)

        repository.setState("Berserk", 12)

        val current = repository.getCurrentComic()
        assertEquals("Berserk", current)
    }
}
