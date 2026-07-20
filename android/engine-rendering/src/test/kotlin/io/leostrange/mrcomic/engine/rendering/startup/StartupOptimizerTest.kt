package io.leostrange.mrcomic.engine.rendering.startup

import android.util.Log
import io.mockk.every
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import org.junit.After
import org.junit.Before
import org.junit.Test

class StartupOptimizerTest {

    private lateinit var optimizer: StartupOptimizer

    @Before
    fun setUp() {
        mockkStatic(Log::class)
        every { Log.d(any(), any()) } returns 0
        optimizer = StartupOptimizer()
    }

    @After
    fun tearDown() {
        unmockkStatic(Log::class)
    }

    @Test
    fun onAppStart_doesNotThrow() {
        optimizer.onAppStart()
    }

    @Test
    fun onMainActivityReady_afterOnAppStart_doesNotThrow() {
        optimizer.onAppStart()
        optimizer.onMainActivityReady()
    }

    @Test
    fun multipleStartCycles_doNotThrow() {
        repeat(5) {
            optimizer.onAppStart()
            optimizer.onMainActivityReady()
        }
    }

    @Test
    fun onMainActivityReady_withoutOnAppStart_doesNotThrow() {
        optimizer.onMainActivityReady()
    }
}
