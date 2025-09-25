package com.example.mrcomic.ui.settings

import android.content.ComponentName
import android.content.Context
import android.content.SharedPreferences
import android.content.pm.PackageManager
import io.mockk.*
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

class AppIconRepositoryTest {
    
    private lateinit var context: Context
    private lateinit var sharedPreferences: SharedPreferences
    private lateinit var sharedPreferencesEditor: SharedPreferences.Editor
    private lateinit var packageManager: PackageManager
    private lateinit var repository: AppIconRepository
    
    @Before
    fun setup() {
        context = mockk()
        sharedPreferences = mockk()
        sharedPreferencesEditor = mockk()
        packageManager = mockk()
        
        every { context.getSharedPreferences(any(), any()) } returns sharedPreferences
        every { context.packageManager } returns packageManager
        every { context.packageName } returns "com.example.mrcomic"
        every { sharedPreferences.edit() } returns sharedPreferencesEditor
        every { sharedPreferencesEditor.putString(any(), any()) } returns sharedPreferencesEditor
        every { sharedPreferencesEditor.apply() } just Runs
        
        repository = AppIconRepository(context)
    }
    
    @After
    fun tearDown() {
        unmockkAll()
    }
    
    @Test
    fun `getCurrentIcon returns default when no preference set`() {
        // Given
        every { sharedPreferences.getString("selected_icon", "default") } returns "default"
        
        // When
        val result = repository.getCurrentIcon()
        
        // Then
        assertEquals(AppIconRepository.AppIcon.DEFAULT, result)
    }
    
    @Test
    fun `getCurrentIcon returns correct icon when preference is set`() {
        // Given
        every { sharedPreferences.getString("selected_icon", "default") } returns "alt1"
        
        // When
        val result = repository.getCurrentIcon()
        
        // Then
        assertEquals(AppIconRepository.AppIcon.ALT1, result)
    }
    
    @Test
    fun `getCurrentIcon returns default when invalid preference is set`() {
        // Given
        every { sharedPreferences.getString("selected_icon", "default") } returns "invalid"
        
        // When
        val result = repository.getCurrentIcon()
        
        // Then
        assertEquals(AppIconRepository.AppIcon.DEFAULT, result)
    }
    
    @Test
    fun `getAllIcons returns all available icons`() {
        // When
        val result = repository.getAllIcons()
        
        // Then
        assertEquals(4, result.size)
        assertTrue(result.contains(AppIconRepository.AppIcon.DEFAULT))
        assertTrue(result.contains(AppIconRepository.AppIcon.ALT1))
        assertTrue(result.contains(AppIconRepository.AppIcon.ALT2))
        assertTrue(result.contains(AppIconRepository.AppIcon.ALT3))
    }
    
    @Test
    fun `setAppIcon successfully sets default icon`() {
        // Given
        every { packageManager.setComponentEnabledSetting(any(), any(), any()) } just Runs
        
        // When
        val result = repository.setAppIcon(AppIconRepository.AppIcon.DEFAULT)
        
        // Then
        assertTrue(result.isSuccess)
        verify { sharedPreferencesEditor.putString("selected_icon", "default") }
        verify { sharedPreferencesEditor.apply() }
    }
    
    @Test
    fun `setAppIcon successfully sets alternative icon`() {
        // Given
        every { packageManager.setComponentEnabledSetting(any(), any(), any()) } just Runs
        
        // When
        val result = repository.setAppIcon(AppIconRepository.AppIcon.ALT1)
        
        // Then
        assertTrue(result.isSuccess)
        verify { sharedPreferencesEditor.putString("selected_icon", "alt1") }
        verify { sharedPreferencesEditor.apply() }
        
        // Verify that alternative icons are disabled first
        verify(exactly = 3) { 
            packageManager.setComponentEnabledSetting(
                any(), 
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED, 
                PackageManager.DONT_KILL_APP
            ) 
        }
        
        // Verify that the selected icon is enabled
        verify(exactly = 1) { 
            packageManager.setComponentEnabledSetting(
                any(), 
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED, 
                PackageManager.DONT_KILL_APP
            ) 
        }
    }
    
    @Test
    fun `setAppIcon returns failure when exception occurs`() {
        // Given
        every { packageManager.setComponentEnabledSetting(any(), any(), any()) } throws RuntimeException("Test error")
        
        // When
        val result = repository.setAppIcon(AppIconRepository.AppIcon.ALT1)
        
        // Then
        assertTrue(result.isFailure)
        assertTrue(result.exceptionOrNull() is RuntimeException)
    }
    
    @Test
    fun `isIconAvailable returns true for default icon`() {
        // When
        val result = repository.isIconAvailable(AppIconRepository.AppIcon.DEFAULT)
        
        // Then
        assertTrue(result)
    }
    
    @Test
    fun `isIconAvailable returns true for enabled alternative icon`() {
        // Given
        every { 
            packageManager.getComponentEnabledSetting(any()) 
        } returns PackageManager.COMPONENT_ENABLED_STATE_ENABLED
        
        // When
        val result = repository.isIconAvailable(AppIconRepository.AppIcon.ALT1)
        
        // Then
        assertTrue(result)
    }
    
    @Test
    fun `isIconAvailable returns false for disabled alternative icon`() {
        // Given
        every { 
            packageManager.getComponentEnabledSetting(any()) 
        } returns PackageManager.COMPONENT_ENABLED_STATE_DISABLED
        
        // When
        val result = repository.isIconAvailable(AppIconRepository.AppIcon.ALT1)
        
        // Then
        assertFalse(result)
    }
    
    @Test
    fun `isIconAvailable returns false when exception occurs`() {
        // Given
        every { packageManager.getComponentEnabledSetting(any()) } throws RuntimeException("Test error")
        
        // When
        val result = repository.isIconAvailable(AppIconRepository.AppIcon.ALT1)
        
        // Then
        assertFalse(result)
    }
    
    @Test
    fun `resetToDefault successfully resets to default icon`() {
        // Given
        every { packageManager.setComponentEnabledSetting(any(), any(), any()) } just Runs
        
        // When
        val result = repository.resetToDefault()
        
        // Then
        assertTrue(result.isSuccess)
        verify { sharedPreferencesEditor.putString("selected_icon", "default") }
    }
}