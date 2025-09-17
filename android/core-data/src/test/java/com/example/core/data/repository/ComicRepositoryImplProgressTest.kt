package com.example.core.data.repository

import android.content.Context
import com.example.core.data.database.ComicDao
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.Assert.fail

class ComicRepositoryImplProgressTest {

    private lateinit var repository: ComicRepository
    private lateinit var comicDao: ComicDao

    @Before
    fun setUp() {
        val context = mockk<Context>(relaxed = true)
        val coverExtractor = mockk<CoverExtractor>(relaxed = true)
        comicDao = mockk()
        val settingsRepository = mockk<SettingsRepository>(relaxed = true)

        repository = ComicRepositoryImpl(
            context = context,
            coverExtractor = coverExtractor,
            comicDao = comicDao,
            settingsRepository = settingsRepository
        )
    }

    @Test
    fun `getReadingProgress returns stored progress`() = runTest {
        val comicId = "comic-1"
        coEvery { comicDao.getReadingProgress(comicId) } returns 7

        val progress = repository.getReadingProgress(comicId)

        assertEquals(7, progress)
        coVerify(exactly = 1) { comicDao.getReadingProgress(comicId) }
    }

    @Test
    fun `getReadingProgress throws when comic missing`() = runTest {
        val comicId = "missing"
        coEvery { comicDao.getReadingProgress(comicId) } returns null

        try {
            repository.getReadingProgress(comicId)
            fail("Expected NoSuchElementException to be thrown")
        } catch (e: NoSuchElementException) {
            assertEquals("Comic not found: $comicId", e.message)
        }
        coVerify(exactly = 1) { comicDao.getReadingProgress(comicId) }
    }

    @Test
    fun `updateProgress updates current page`() = runTest {
        val comicId = "comic-2"
        coEvery { comicDao.updateProgress(comicId, 10) } returns 1

        repository.updateProgress(comicId, 10)

        coVerify(exactly = 1) { comicDao.updateProgress(comicId, 10) }
    }

    @Test
    fun `updateProgress throws when no rows affected`() = runTest {
        val comicId = "unknown"
        coEvery { comicDao.updateProgress(comicId, 3) } returns 0

        try {
            repository.updateProgress(comicId, 3)
            fail("Expected NoSuchElementException to be thrown")
        } catch (e: NoSuchElementException) {
            assertEquals("Comic not found: $comicId", e.message)
        }
        coVerify(exactly = 1) { comicDao.updateProgress(comicId, 3) }
    }
}
