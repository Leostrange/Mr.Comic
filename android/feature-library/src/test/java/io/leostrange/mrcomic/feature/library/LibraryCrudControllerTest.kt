package io.leostrange.mrcomic.feature.library

import android.util.Log
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.TestScope
import kotlinx.coroutines.test.advanceUntilIdle
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class LibraryCrudControllerTest {

    private val libraryRepository = mockk<LibraryRepository>()
    private val importRepository = mockk<ImportRepository>()
    private val quoteRepository = mockk<QuoteRepository>()
    private val readerCheckpointStore = mockk<ReaderCheckpointRepository>()

    @Before
    fun setUp() {
        mockkStatic(Log::class)
        every { Log.e(any(), any(), any()) } returns 0
    }

    @After
    fun tearDown() {
        unmockkStatic(Log::class)
    }

    private fun TestScope.createController(
        uiState: MutableStateFlow<LibraryUiState>,
        rawComics: () -> List<Comic> = { emptyList() },
        openFolder: (String?) -> Unit = {},
    ) = LibraryCrudController(
        libraryRepository = libraryRepository,
        importRepository = importRepository,
        quoteRepository = quoteRepository,
        readerCheckpointStore = readerCheckpointStore,
        scope = this,
        uiState = uiState,
        rawComics = rawComics,
        openFolder = openFolder,
    )

    @Test
    fun deleteQuoteFailureSetsLocalizedError() = runTest {
        val uiState = MutableStateFlow(LibraryUiState())
        coEvery { quoteRepository.deleteQuote("q1") } throws IllegalStateException("boom")

        createController(uiState).deleteQuote("q1")
        advanceUntilIdle()

        assertEquals("Не удалось удалить цитату: boom", uiState.value.error)
    }

    @Test
    fun deleteComicRemovesComicAndCheckpoints() = runTest {
        val uiState = MutableStateFlow(LibraryUiState())
        coEvery { libraryRepository.deleteComic("c1") } returns Unit
        coEvery { readerCheckpointStore.removeComicCheckpoints("c1") } returns Unit

        createController(uiState).deleteComic("c1")
        advanceUntilIdle()

        coVerify(exactly = 1) { libraryRepository.deleteComic("c1") }
        coVerify(exactly = 1) { readerCheckpointStore.removeComicCheckpoints("c1") }
        assertNull(uiState.value.error)
    }

    @Test
    fun deleteFolderDeletesMatchingComicsAndNavigatesUp() = runTest {
        val uiState = MutableStateFlow(LibraryUiState(currentFolderPath = "a/b"))
        val comics = listOf(
            Comic(id = "c1", folderId = "a/b"),
            Comic(id = "c2", folderId = "a/b/c"),
            Comic(id = "c3", folderId = "other"),
        )
        coEvery { libraryRepository.deleteComic(any()) } returns Unit
        coEvery { readerCheckpointStore.removeComicCheckpoints(any()) } returns Unit
        var navigatedTo: String? = "unset"
        val controller = createController(uiState, rawComics = { comics }, openFolder = { navigatedTo = it })

        controller.deleteFolder("a/b")
        advanceUntilIdle()

        coVerify(exactly = 1) { libraryRepository.deleteComic("c1") }
        coVerify(exactly = 1) { libraryRepository.deleteComic("c2") }
        coVerify(exactly = 0) { libraryRepository.deleteComic("c3") }
        coVerify(exactly = 2) { readerCheckpointStore.removeComicCheckpoints(any()) }
        assertEquals("a", navigatedTo)
    }

    @Test
    fun addComicFromUriTogglesLoadingAndClearsOnFailure() = runTest {
        val uiState = MutableStateFlow(LibraryUiState())
        coEvery { importRepository.addComic(any()) } throws IllegalStateException("boom")

        createController(uiState).addComicFromUri(mockk())
        advanceUntilIdle()

        assertEquals(false, uiState.value.isLoading)
        assertTrue(uiState.value.error!!.startsWith("Не удалось добавить комикс"))
    }

    @Test
    fun addComicsFromDirectoryResetsFolderViewWhenGroupedByFolder() = runTest {
        val uiState = MutableStateFlow(LibraryUiState(groupByMode = GroupByMode.FOLDER))
        coEvery { importRepository.addComicsFromDirectory(any()) } returns Unit
        var folderReset = false
        val controller = createController(uiState, openFolder = { folderReset = true })

        controller.addComicsFromDirectory(mockk())
        advanceUntilIdle()

        coVerify(exactly = 1) { importRepository.addComicsFromDirectory(any()) }
        assertTrue(folderReset)
        assertEquals(false, uiState.value.isLoading)
    }

    @Test
    fun markCompletedAndToggleBookmarkDelegateToRepository() = runTest {
        val uiState = MutableStateFlow(LibraryUiState())
        coEvery { libraryRepository.markCompleted("c1", true) } returns Unit
        coEvery { libraryRepository.toggleBookmark("c1") } returns Unit
        val controller = createController(uiState)

        controller.markCompleted("c1", true)
        controller.toggleBookmark("c1")
        advanceUntilIdle()

        coVerify(exactly = 1) { libraryRepository.markCompleted("c1", true) }
        coVerify(exactly = 1) { libraryRepository.toggleBookmark("c1") }
        assertNull(uiState.value.error)
    }

    @Test
    fun clearErrorResetsErrorMessage() = runTest {
        val uiState = MutableStateFlow(LibraryUiState(error = "old error"))

        createController(uiState).clearError()

        assertNull(uiState.value.error)
    }

    @Test
    fun getComicByIdDelegatesToRepository() = runTest {
        val comic = Comic(id = "c1")
        coEvery { libraryRepository.getComicById("c1") } returns comic

        val result = createController(MutableStateFlow(LibraryUiState())).getComicById("c1")

        assertEquals(comic, result)
    }
}
