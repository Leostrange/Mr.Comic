package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.data.repository.AudiobookRepository
import io.leostrange.mrcomic.core.model.Audiobook
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class LibraryAudiobookControllerTest {

    private val audiobookRepository = mockk<AudiobookRepository>()

    private fun createController(
        scope: CoroutineScope,
        repairedIds: MutableSet<String> = mutableSetOf(),
    ) = LibraryAudiobookController(
        audiobookRepository = audiobookRepository,
        context = mockk(),
        scope = scope,
        uiState = MutableStateFlow(LibraryUiState()),
        repairedAudiobookCoverIds = repairedIds,
    )

    @Test
    fun deleteAudiobookDelegatesToRepository() = runTest {
        coEvery { audiobookRepository.delete("a1") } returns Unit
        val controller = createController(scope = this)

        controller.deleteAudiobook("a1")
        advanceUntilIdle()

        coVerify(exactly = 1) { audiobookRepository.delete("a1") }
    }

    @Test
    fun observePopulatesAudiobooksFromRepository() {
        val audiobooks = listOf(
            Audiobook(id = "a1", title = "Book A"),
            Audiobook(id = "a2", title = "Book B"),
        )
        coEvery { audiobookRepository.getAllFlow() } returns flowOf(audiobooks)
        coEvery { audiobookRepository.upsert(any()) } returns Unit
        val uiState = MutableStateFlow(LibraryUiState())
        val controller = LibraryAudiobookController(
            audiobookRepository = audiobookRepository,
            context = mockk(),
            scope = CoroutineScope(Dispatchers.Unconfined),
            uiState = uiState,
            repairedAudiobookCoverIds = mutableSetOf("a1", "a2"),
        )

        controller.observe()

        assertEquals(audiobooks, uiState.value.audiobooks)
    }

    @Test
    fun repairMissingAudiobookCoversSkipsKnownIds() = runTest {
        coEvery { audiobookRepository.upsert(any()) } returns Unit
        val repairedIds = mutableSetOf("a1")
        val controller = createController(scope = this, repairedIds = repairedIds)
        val audiobooks = listOf(Audiobook(id = "a1", title = "Book A"))

        controller.repairMissingAudiobookCovers(audiobooks)
        advanceUntilIdle()

        coVerify(exactly = 0) { audiobookRepository.upsert(any()) }
    }
}
