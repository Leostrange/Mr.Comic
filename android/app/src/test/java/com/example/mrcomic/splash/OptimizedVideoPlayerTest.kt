package com.example.mrcomic.splash

import android.content.Context
import android.net.Uri
import androidx.media3.exoplayer.ExoPlayer
import io.mockk.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

@ExperimentalCoroutinesApi
class OptimizedVideoPlayerTest {
    
    private lateinit var context: Context
    private lateinit var optimizedVideoPlayer: OptimizedVideoPlayer
    private lateinit var mockExoPlayer: ExoPlayer
    
    @Before
    fun setup() {
        context = mockk(relaxed = true)
        mockExoPlayer = mockk(relaxed = true)
        
        // Mock ExoPlayer.Builder
        mockkConstructor(ExoPlayer.Builder::class)
        every { anyConstructed<ExoPlayer.Builder>().setTrackSelector(any()) } returns mockk(relaxed = true)
        every { anyConstructed<ExoPlayer.Builder>().build() } returns mockExoPlayer
        
        optimizedVideoPlayer = OptimizedVideoPlayer(context)
    }
    
    @After
    fun tearDown() {
        unmockkAll()
    }
    
    @Test
    fun `initialize sets up player correctly`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        val onVideoEnded = mockk<() -> Unit>(relaxed = true)
        val onError = mockk<(Exception) -> Unit>(relaxed = true)
        
        // When
        optimizedVideoPlayer.initialize(videoUri, onVideoEnded, onError)
        
        // Then
        verify { mockExoPlayer.setVideoScalingMode(any()) }
        verify { mockExoPlayer.setHandleAudioBecomingNoisy(false) }
        verify { mockExoPlayer.volume = 0f }
        verify { mockExoPlayer.setMediaItem(any()) }
        verify { mockExoPlayer.prepare() }
        verify { mockExoPlayer.playWhenReady = true }
    }
    
    @Test
    fun `preload prepares video without starting playback`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        
        // When
        optimizedVideoPlayer.preload(videoUri)
        
        // Then
        verify { mockExoPlayer.setMediaItem(any()) }
        verify { mockExoPlayer.prepare() }
        verify { mockExoPlayer.playWhenReady = false }
    }
    
    @Test
    fun `startPlayback begins video playback`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        optimizedVideoPlayer.preload(videoUri)
        
        // When
        optimizedVideoPlayer.startPlayback()
        
        // Then
        verify { mockExoPlayer.playWhenReady = true }
        assertEquals(VideoPlayerState.PLAYING, optimizedVideoPlayer.getCurrentState())
    }
    
    @Test
    fun `pause stops video playback`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        optimizedVideoPlayer.initialize(videoUri, {}, {})
        
        // When
        optimizedVideoPlayer.pause()
        
        // Then
        verify { mockExoPlayer.playWhenReady = false }
        assertEquals(VideoPlayerState.PAUSED, optimizedVideoPlayer.getCurrentState())
    }
    
    @Test
    fun `stop halts video playback`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        optimizedVideoPlayer.initialize(videoUri, {}, {})
        
        // When
        optimizedVideoPlayer.stop()
        
        // Then
        verify { mockExoPlayer.stop() }
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
    }
    
    @Test
    fun `release cleans up resources`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        optimizedVideoPlayer.initialize(videoUri, {}, {})
        
        // When
        optimizedVideoPlayer.release()
        
        // Then
        verify { mockExoPlayer.release() }
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
        assertFalse(optimizedVideoPlayer.isPlayerReady())
    }
    
    @Test
    fun `getPlayer returns ExoPlayer instance`() = runTest {
        // Given
        val videoUri = Uri.parse("android.resource://com.example.mrcomic/raw/splash_video")
        optimizedVideoPlayer.initialize(videoUri, {}, {})
        
        // When
        val player = optimizedVideoPlayer.getPlayer()
        
        // Then
        assertEquals(mockExoPlayer, player)
    }
    
    @Test
    fun `initial state is IDLE`() {
        // Then
        assertEquals(VideoPlayerState.IDLE, optimizedVideoPlayer.getCurrentState())
        assertFalse(optimizedVideoPlayer.isPlayerReady())
    }
}
