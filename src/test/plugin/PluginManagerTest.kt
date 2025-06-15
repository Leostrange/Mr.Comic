package com.mrcomic.test.plugin

import android.content.Context
import android.net.Uri
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.mrcomic.plugin.AdvancedPluginManager
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File
import java.io.FileOutputStream

@RunWith(AndroidJUnit4::class)
class PluginManagerTest {

    private lateinit var context: Context
    private lateinit var pluginManager: AdvancedPluginManager
    private lateinit var pluginDir: File

    @Before
    fun setup() {
        context = InstrumentationRegistry.getInstrumentation().targetContext
        pluginManager = AdvancedPluginManager(context)
        pluginDir = File(context.filesDir, "plugins")
        if (pluginDir.exists()) {
            pluginDir.deleteRecursively()
        }
        pluginDir.mkdirs()
    }

    @After
    fun teardown() {
        if (pluginDir.exists()) {
            pluginDir.deleteRecursively()
        }
    }

    @Test
    fun testPluginInstallationAndUninstallation() {
        // Simulate a plugin file
        val pluginFileName = "test_plugin.apk"
        val testPluginFile = File(pluginDir, pluginFileName)
        FileOutputStream(testPluginFile).use { it.write("dummy_plugin_content".toByteArray()) }

        // Simulate URI for installation
        val pluginUri = Uri.fromFile(testPluginFile)

        // Test installation
        val installed = pluginManager.installPlugin(pluginUri)
        assertTrue("Plugin should be installed", installed)
        assertTrue("Plugin file should exist after installation", testPluginFile.exists())
        assertTrue("Plugin should be listed as installed", pluginManager.getInstalledPlugins().contains("test_plugin"))

        // Test uninstallation
        val uninstalled = pluginManager.uninstallPlugin("test_plugin")
        assertTrue("Plugin should be uninstalled", uninstalled)
        assertFalse("Plugin file should not exist after uninstallation", testPluginFile.exists())
        assertFalse("Plugin should not be listed as installed after uninstallation", pluginManager.getInstalledPlugins().contains("test_plugin"))
    }

    @Test
    fun testPluginErrorLogging() {
        // This test primarily checks if the logging calls are present in the manager.
        // Actual logcat output verification would require more complex setup (e.g., using a custom Logcat reader).
        // For now, we'll just call methods that are expected to log errors and ensure no crashes.

        // Attempt to install a non-existent plugin
        val nonExistentUri = Uri.parse("file:///non_existent_plugin.apk")
        val installed = pluginManager.installPlugin(nonExistentUri)
        assertFalse("Installation of non-existent plugin should fail", installed)

        // Attempt to uninstall a non-existent plugin
        val uninstalled = pluginManager.uninstallPlugin("non_existent_plugin")
        assertFalse("Uninstallation of non-existent plugin should fail", uninstalled)

        // Attempt to rollback to a non-existent version
        val rolledBack = pluginManager.rollbackPlugin("test_plugin", "non_existent_version")
        assertFalse("Rollback to non-existent version should fail", rolledBack)
    }
}


