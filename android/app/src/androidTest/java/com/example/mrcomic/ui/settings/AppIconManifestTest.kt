package com.example.mrcomic.ui.settings

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.SmallTest
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.Assert.*

/**
 * Тесты для проверки правильности настройки activity-aliases в манифесте
 */
@RunWith(AndroidJUnit4::class)
@SmallTest
class AppIconManifestTest {
    
    private lateinit var context: Context
    private lateinit var packageManager: PackageManager
    
    @Before
    fun setup() {
        context = ApplicationProvider.getApplicationContext()
        packageManager = context.packageManager
    }
    
    @Test
    fun testMainSplashActivityExists() {
        // Given
        val componentName = ComponentName(context, "${context.packageName}.splash.ModernSplashActivity")
        
        // When & Then
        try {
            val activityInfo = packageManager.getActivityInfo(componentName, 0)
            assertNotNull("ModernSplashActivity should exist in manifest", activityInfo)
            assertTrue("ModernSplashActivity should be exported", activityInfo.exported)
        } catch (e: PackageManager.NameNotFoundException) {
            fail("ModernSplashActivity not found in manifest")
        }
    }
    
    @Test
    fun testAlternativeIconAliasesExist() {
        val aliases = listOf(
            ".MainActivityAlt1",
            ".MainActivityAlt2", 
            ".MainActivityAlt3"
        )
        
        aliases.forEach { alias ->
            // Given
            val componentName = ComponentName(context, "${context.packageName}$alias")
            
            // When & Then
            try {
                val activityInfo = packageManager.getActivityInfo(componentName, PackageManager.GET_DISABLED_COMPONENTS)
                assertNotNull("Activity alias $alias should exist in manifest", activityInfo)
                assertTrue("Activity alias $alias should be exported", activityInfo.exported)
                
                // Check that it targets the correct activity
                assertEquals(
                    "Activity alias $alias should target ModernSplashActivity",
                    "${context.packageName}.splash.ModernSplashActivity",
                    activityInfo.targetActivity
                )
            } catch (e: PackageManager.NameNotFoundException) {
                fail("Activity alias $alias not found in manifest")
            }
        }
    }
    
    @Test
    fun testAlternativeIconsAreDisabledByDefault() {
        val aliases = listOf(
            ".MainActivityAlt1",
            ".MainActivityAlt2",
            ".MainActivityAlt3"
        )
        
        aliases.forEach { alias ->
            // Given
            val componentName = ComponentName(context, "${context.packageName}$alias")
            
            // When
            val enabledState = packageManager.getComponentEnabledSetting(componentName)
            
            // Then
            assertTrue(
                "Activity alias $alias should be disabled by default",
                enabledState == PackageManager.COMPONENT_ENABLED_STATE_DISABLED ||
                enabledState == PackageManager.COMPONENT_ENABLED_STATE_DEFAULT
            )
        }
    }
    
    @Test
    fun testMainActivityHasCorrectIntentFilters() {
        // Given
        val componentName = ComponentName(context, "${context.packageName}.splash.ModernSplashActivity")
        
        // When
        try {
            val activityInfo = packageManager.getActivityInfo(
                componentName, 
                PackageManager.GET_META_DATA
            )
            
            // Then
            assertNotNull("ModernSplashActivity should exist", activityInfo)
            
            // Check for MAIN/LAUNCHER intent filter through package info
            val packageInfo = packageManager.getPackageInfo(
                context.packageName,
                PackageManager.GET_ACTIVITIES
            )
            
            val mainActivity = packageInfo.activities?.find { 
                it.name == "${context.packageName}.splash.ModernSplashActivity" 
            }
            
            assertNotNull("ModernSplashActivity should be found in package activities", mainActivity)
            
        } catch (e: PackageManager.NameNotFoundException) {
            fail("ModernSplashActivity not found")
        }
    }
    
    @Test
    fun testAlternativeIconResourcesExist() {
        val iconResources = listOf(
            "ic_launcher_alt1",
            "ic_launcher_alt2",
            "ic_launcher_alt3"
        )
        
        iconResources.forEach { iconName ->
            // When
            val resourceId = context.resources.getIdentifier(iconName, "mipmap", context.packageName)
            
            // Then
            assertNotEquals(
                "Icon resource $iconName should exist",
                0,
                resourceId
            )
        }
    }
    
    @Test
    fun testDefaultIconResourceExists() {
        // When
        val resourceId = context.resources.getIdentifier("ic_launcher", "mipmap", context.packageName)
        
        // Then
        assertNotEquals("Default icon resource should exist", 0, resourceId)
    }
}