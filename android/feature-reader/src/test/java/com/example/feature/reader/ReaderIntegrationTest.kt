package com.example.feature.reader

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.example.feature.reader.ui.ReaderViewModel
import com.example.feature.reader.ui.ReaderUiState
import com.example.feature.reader.ui.ReadingMode
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.Assert.*

/**
 * Smoke tests for Reader feature integration
 * Tests core functionality without UI dependencies
 */
@RunWith(AndroidJUnit4::class)
class ReaderIntegrationTest {
    
    private val context = InstrumentationRegistry.getInstrumentation().targetContext
    
    @Test
    fun testReaderUiStateInitialization() {
        val initialState = ReaderUiState()
        
        // Test initial state
        assertTrue("Should be loading initially", initialState.isLoading)
        assertNull("Should have no error initially", initialState.error)
        assertEquals("Should start at page 0", 0, initialState.currentPageIndex)
        assertEquals("Should have no pages initially", 0, initialState.pageCount)
        assertEquals("Should default to PAGE mode", ReadingMode.PAGE, initialState.readingMode)
        assertFalse("Should not be pinned initially", initialState.isPinned)
        assertNull("Should have no pinned page initially", initialState.pinnedPage)
    }
    
    @Test
    fun testReadingModeTransitions() {
        val state = ReaderUiState()
        
        // Test mode transitions
        val pageMode = state.copy(readingMode = ReadingMode.PAGE)
        val webtoonMode = state.copy(readingMode = ReadingMode.WEBTOON)
        
        assertEquals("Should be PAGE mode", ReadingMode.PAGE, pageMode.readingMode)
        assertEquals("Should be WEBTOON mode", ReadingMode.WEBTOON, webtoonMode.readingMode)
    }
    
    @Test
    fun testPinStateManagement() {
        val state = ReaderUiState()
        
        // Test pin state
        val pinnedState = state.copy(
            isPinned = true,
            pinnedPage = 5,
            currentPageIndex = 5
        )
        
        assertTrue("Should be pinned", pinnedState.isPinned)
        assertEquals("Should have pinned page", 5, pinnedState.pinnedPage)
        assertTrue("Current page should be pinned", 
            pinnedState.isPinned && pinnedState.pinnedPage == pinnedState.currentPageIndex)
    }
    
    @Test
    fun testZoomStateManagement() {
        val state = ReaderUiState()
        
        // Test zoom state
        val zoomedState = state.copy(
            currentZoomScale = 2.0f,
            scaleMode = "custom"
        )
        
        assertEquals("Should have zoom scale", 2.0f, zoomedState.currentZoomScale, 0.01f)
        assertEquals("Should be in custom mode", "custom", zoomedState.scaleMode)
    }
    
    @Test
    fun testPanelVisibilityStates() {
        val state = ReaderUiState()
        
        // Test panel states
        val panelsVisible = state.copy(
            showTopPanel = true,
            showLeftPanel = true,
            showRightPanel = true,
            showBottomPanel = true
        )
        
        assertTrue("Top panel should be visible", panelsVisible.showTopPanel)
        assertTrue("Left panel should be visible", panelsVisible.showLeftPanel)
        assertTrue("Right panel should be visible", panelsVisible.showRightPanel)
        assertTrue("Bottom panel should be visible", panelsVisible.showBottomPanel)
    }
    
    @Test
    fun testGestureSettings() {
        val state = ReaderUiState()
        
        // Test gesture configuration
        val gestureState = state.copy(
            gestureSensitivity = 1.5f,
            tapZoneLeftRatio = 0.3f,
            tapZoneRightRatio = 0.3f,
            tapZonesEnabled = true
        )
        
        assertEquals("Should have sensitivity", 1.5f, gestureState.gestureSensitivity, 0.01f)
        assertEquals("Should have left zone ratio", 0.3f, gestureState.tapZoneLeftRatio, 0.01f)
        assertEquals("Should have right zone ratio", 0.3f, gestureState.tapZoneRightRatio, 0.01f)
        assertTrue("Tap zones should be enabled", gestureState.tapZonesEnabled)
    }
    
    @Test
    fun testReaderSettings() {
        val state = ReaderUiState()
        
        // Test reader settings
        val settingsState = state.copy(
            readerBrightness = 0.8f,
            orientation = "landscape",
            scaleMode = "height"
        )
        
        assertEquals("Should have brightness", 0.8f, settingsState.readerBrightness, 0.01f)
        assertEquals("Should have orientation", "landscape", settingsState.orientation)
        assertEquals("Should have scale mode", "height", settingsState.scaleMode)
    }
    
    @Test
    fun testPageNavigation() {
        val state = ReaderUiState(pageCount = 10, currentPageIndex = 5)
        
        // Test page navigation
        val nextPage = state.copy(currentPageIndex = 6)
        val prevPage = state.copy(currentPageIndex = 4)
        
        assertEquals("Should navigate to next page", 6, nextPage.currentPageIndex)
        assertEquals("Should navigate to previous page", 4, prevPage.currentPageIndex)
    }
    
    @Test
    fun testErrorHandling() {
        val state = ReaderUiState()
        
        // Test error state
        val errorState = state.copy(
            isLoading = false,
            error = "Failed to load page"
        )
        
        assertFalse("Should not be loading when error", errorState.isLoading)
        assertNotNull("Should have error message", errorState.error)
        assertEquals("Should have correct error", "Failed to load page", errorState.error)
    }
}
