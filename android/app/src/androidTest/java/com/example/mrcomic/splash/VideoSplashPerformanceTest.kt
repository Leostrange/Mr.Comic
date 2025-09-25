package com.example.mrcomic.splash

import android.content.Context
import android.net.Uri
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.LargeTest
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.Assert.*
import kotlin.system.measureTimeMillis

/**
 * Инструментальные тесты производительности для видео-сплэшскрина
 */
@ExperimentalCoroutinesApi
@RunWith(AndroidJUnit4::class)
@LargeTest
class VideoSplashPerformanceTest {
    
    private lateinit var context: Context
    private lateinit var optimizedVideoPlayer: OptimizedVideoPlayer
    
    @Before
    fun setup() {
        context = ApplicationProvider.getApplicationContext()
        optimizedVideoPlayer = OptimizedVideoPlayer(context)
    }
    
    @Test
    fun testVideoPlayerInitializationTime() = runTest {
        // Given
        val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
        
        // Skip test if video resource doesn't exist
        if (videoResourceId == 0) {
            return@runTest
        }
        
        val videoUri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
        var initializationCompleted = false
        
        // When
        val initTime = measureTimeMillis {
            optimizedVideoPlayer.initialize(
                videoUri = videoUri,
                onVideoEnded = { },
                onError = { }
            )
            
            // Wait for initialization to complete
            var attempts = 0
            while (!optimizedVideoPlayer.isPlayerReady() && attempts < 50) {
                Thread.sleep(100) // Wait 100ms
                attempts++
            }
            initializationCompleted = optimizedVideoPlayer.isPlayerReady()
        }
        
        // Then
        assertTrue("Video player should initialize successfully", initializationCompleted)
        assertTrue("Initialization should complete within 5 seconds", initTime < 5000)
        
        // Cleanup
        optimizedVideoPlayer.release()
    }
    
    @Test
    fun testVideoPreloadingTime() = runTest {
        // Given
        val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
        
        // Skip test if video resource doesn't exist
        if (videoResourceId == 0) {
            return@runTest
        }
        
        val videoUri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
        
        // When
        val preloadTime = measureTimeMillis {
            optimizedVideoPlayer.preload(videoUri)
            
            // Wait for preloading to complete
            var attempts = 0
            while (!optimizedVideoPlayer.isPlayerReady() && attempts < 30) {
                Thread.sleep(100) // Wait 100ms
                attempts++
            }
        }
        
        // Then
        assertTrue("Preloading should complete within 3 seconds", preloadTime < 3000)
        
        // Cleanup
        optimizedVideoPlayer.release()
    }
    
    @Test
    fun testMemoryUsageDuringPlayback() = runTest {
        // Given
        val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
        
        // Skip test if video resource doesn't exist
        if (videoResourceId == 0) {
            return@runTest
        }
        
        val videoUri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
        val runtime = Runtime.getRuntime()
        
        // Measure memory before initialization
        runtime.gc()
        Thread.sleep(100)
        val memoryBefore = runtime.totalMemory() - runtime.freeMemory()
        
        // When
        optimizedVideoPlayer.initialize(
            videoUri = videoUri,
            onVideoEnded = { },
            onError = { }
        )
        
        // Wait for initialization
        var attempts = 0
        while (!optimizedVideoPlayer.isPlayerReady() && attempts < 50) {
            Thread.sleep(100)
            attempts++
        }
        
        // Measure memory after initialization
        runtime.gc()
        Thread.sleep(100)
        val memoryAfter = runtime.totalMemory() - runtime.freeMemory()
        
        val memoryIncrease = memoryAfter - memoryBefore
        
        // Then
        assertTrue("Memory increase should be reasonable (< 50MB)", memoryIncrease < 50 * 1024 * 1024)
        
        // Cleanup and verify memory is released
        optimizedVideoPlayer.release()
        runtime.gc()
        Thread.sleep(100)
        val memoryAfterCleanup = runtime.totalMemory() - runtime.freeMemory()
        
        // Memory should be mostly released (allowing for some overhead)
        val memoryDifference = memoryAfterCleanup - memoryBefore
        assertTrue("Memory should be mostly released after cleanup", memoryDifference < 10 * 1024 * 1024)
    }
    
    @Test
    fun testMultipleInitializationAndReleasePerformance() = runTest {
        // Given
        val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
        
        // Skip test if video resource doesn't exist
        if (videoResourceId == 0) {
            return@runTest
        }
        
        val videoUri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
        val iterations = 5
        
        // When
        val totalTime = measureTimeMillis {
            repeat(iterations) {
                val player = OptimizedVideoPlayer(context)
                
                player.initialize(
                    videoUri = videoUri,
                    onVideoEnded = { },
                    onError = { }
                )
                
                // Wait briefly for initialization
                var attempts = 0
                while (!player.isPlayerReady() && attempts < 20) {
                    Thread.sleep(50)
                    attempts++
                }
                
                player.release()
            }
        }
        
        val averageTime = totalTime / iterations
        
        // Then
        assertTrue("Average initialization+release time should be reasonable (< 2 seconds)", averageTime < 2000)
    }
    
    @Test
    fun testVideoPlayerStateTransitions() = runTest {
        // Given
        val videoResourceId = context.resources.getIdentifier("splash_video", "raw", context.packageName)
        
        // Skip test if video resource doesn't exist
        if (videoResourceId == 0) {
            return@runTest
        }
        
        val videoUri = Uri.parse("android.resource://${context.packageName}/$videoResourceId")
        
        // When & Then
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
        
        optimizedVideoPlayer.preload(videoUri)
        // State should change during preload process
        
        optimizedVideoPlayer.startPlayback()
        assertEquals(VideoPlayerState.PLAYING, optimizedVideoPlayer.getCurrentState())
        
        optimizedVideoPlayer.pause()
        assertEquals(VideoPlayerState.PAUSED, optimizedVideoPlayer.getCurrentState())
        
        optimizedVideoPlayer.stop()
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
        
        // Cleanup
        optimizedVideoPlayer.release()
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
    }
}