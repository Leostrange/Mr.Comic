package io.leostrange.mrcomic.engine.llm.services

import io.leostrange.mrcomic.engine.llm.LlmEngine
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class AiServicesCenterTest {

    private lateinit var mockEngine: LlmEngine
    private lateinit var servicesCenter: AiServicesCenter

    @Before
    fun setUp() {
        mockEngine = mockk()
        servicesCenter = AiServicesCenter(mockEngine)
    }

    @Test
    fun isReadyReflectsLlmEngineState() = runTest {
        coEvery { mockEngine.isReady() } returns true
        assertTrue(servicesCenter.isReady())

        coEvery { mockEngine.isReady() } returns false
        assertFalse(servicesCenter.isReady())
    }

    @Test
    fun explainSelectionReturnsSuccessAndCachesResult() = runTest {
        coEvery { mockEngine.generateText(any(), any()) } returns "Contextual explanation"

        val firstResult = servicesCenter.explainSelection("Hello world", "en", "ru").first()
        assertTrue(firstResult is AiServiceResult.Success)
        val success1 = firstResult as AiServiceResult.Success
        assertEquals("Contextual explanation", success1.content)
        assertFalse(success1.isCached)

        // Second call with same parameters should hit cache and not call LLM again
        val secondResult = servicesCenter.explainSelection("Hello world", "en", "ru").first()
        assertTrue(secondResult is AiServiceResult.Success)
        val success2 = secondResult as AiServiceResult.Success
        assertEquals("Contextual explanation", success2.content)
        assertTrue(success2.isCached)

        coVerify(exactly = 1) { mockEngine.generateText(any(), any()) }
    }

    @Test
    fun explainSelectionEmitsErrorOnEmptyText() = runTest {
        val result = servicesCenter.explainSelection("   ").first()
        assertTrue(result is AiServiceResult.Error)
        assertEquals("Empty text", (result as AiServiceResult.Error).message)
    }

    @Test
    fun summarizeChapterEmitsSuccess() = runTest {
        coEvery { mockEngine.generateText(any(), any()) } returns "- Point 1\n- Point 2"

        val result = servicesCenter.summarizeChapter("Chapter 1: Long text here...").first()
        assertTrue(result is AiServiceResult.Success)
        assertEquals("- Point 1\n- Point 2", (result as AiServiceResult.Success).content)
    }

    @Test
    fun summarizeChapterEmitsErrorOnEmptyText() = runTest {
        val result = servicesCenter.summarizeChapter("").first()
        assertTrue(result is AiServiceResult.Error)
        assertEquals("Empty chapter text", (result as AiServiceResult.Error).message)
    }

    @Test
    fun lookupTermEmitsSuccess() = runTest {
        coEvery { mockEngine.generateText(any(), any()) } returns "Definition of slang word"

        val result = servicesCenter.lookupTerm(
            term = "slang",
            sentenceContext = "This is a cool slang word.",
            targetLang = "ru"
        ).first()

        assertTrue(result is AiServiceResult.Success)
        assertEquals("Definition of slang word", (result as AiServiceResult.Success).content)
    }

    @Test
    fun clearCacheFlushesCachedResponses() = runTest {
        coEvery { mockEngine.generateText(any(), any()) } returns "Fresh answer"

        val res1 = servicesCenter.explainSelection("phrase", "en", "ru").first()
        assertFalse((res1 as AiServiceResult.Success).isCached)

        servicesCenter.clearCache()

        val res2 = servicesCenter.explainSelection("phrase", "en", "ru").first()
        assertFalse((res2 as AiServiceResult.Success).isCached)

        coVerify(exactly = 2) { mockEngine.generateText(any(), any()) }
    }
}
