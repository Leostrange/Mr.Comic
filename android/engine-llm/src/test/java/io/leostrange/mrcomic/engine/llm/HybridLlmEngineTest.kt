package io.leostrange.mrcomic.engine.llm

import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Smoke tests for [HybridLlmEngine] readiness and fallback behavior.
 *
 * These tests intentionally avoid the network: they verify state transitions
 * (apiKey set / not set, downloaded models) and the honest contract of
 * [HybridLlmEngine.loadModel] — local inference is not implemented, so
 * loadModel() must never claim success.
 */
class HybridLlmEngineTest {

    private fun engineWithNoModels(): Pair<HybridLlmEngine, LlmModelManager> {
        val manager = mockk<LlmModelManager>()
        every { manager.getDownloadedModels() } returns emptyList()
        return HybridLlmEngine(manager) to manager
    }

    @Test
    fun `loadModel returns false even when api key is set`() = runTest {
        val (engine, _) = engineWithNoModels()
        engine.configure(apiKey = "test-key", model = "openrouter/auto")

        // Local on-device inference is not implemented; an API key does not
        // load any local model, so loadModel() must honestly report false.
        assertFalse(engine.loadModel())
    }

    @Test
    fun `unloadModel does not throw when nothing was loaded`() = runTest {
        val (engine, _) = engineWithNoModels()
        engine.unloadModel()
    }

    @Test
    fun `isReady is true when api key is configured`() = runTest {
        val (engine, _) = engineWithNoModels()
        engine.configure(apiKey = "test-key", model = "openrouter/auto")
        assertTrue(engine.isReady())
    }

    @Test
    fun `isReady is false when nothing is configured`() = runTest {
        val (engine, _) = engineWithNoModels()
        assertFalse(engine.isReady())
    }

    @Test
    fun `isReady is true when a model is downloaded`() = runTest {
        val manager = mockk<LlmModelManager>()
        every { manager.getDownloadedModels() } returns listOf(LlmModelInfo.GEMMA_2B_Q4)
        val engine = HybridLlmEngine(manager)
        assertTrue(engine.isReady())
    }

    @Test
    fun `isModelAvailable reflects downloaded models`() = runTest {
        val manager = mockk<LlmModelManager>()
        every { manager.getDownloadedModels() } returns listOf(LlmModelInfo.GEMMA_2B_Q4)
        val engine = HybridLlmEngine(manager)
        assertTrue(engine.isModelAvailable())
    }

    @Test
    fun `generateText returns placeholder when not configured`() = runTest {
        val (engine, _) = engineWithNoModels()
        assertEquals("[LLM not configured]", engine.generateText("hello"))
    }
}
