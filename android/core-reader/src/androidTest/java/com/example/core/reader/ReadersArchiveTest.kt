package com.example.core.reader

import android.net.Uri
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.example.core.reader.data.CbrReader
import com.example.core.reader.data.CbzReader
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

/**
 * Smoke tests for CBZ/CBR readers against sample archives.
 * Place 20-30 mixed archives under android/core-reader/src/androidTest/assets/archives
 * (e.g., .cbz, .cbr). Tests will be skipped if no samples present.
 */
@RunWith(AndroidJUnit4::class)
class ReadersArchiveTest {

    private fun samplesDir(): File {
        // Use instrumentation context external files dir as fallback
        val ctx = InstrumentationRegistry.getInstrumentation().targetContext
        val assetsDir = File(ctx.filesDir, "test_archives")
        return assetsDir
    }

    @Test
    fun testOpenAllCbzSamples() = runBlocking {
        val dir = samplesDir()
        assumeTrue("Samples dir not found: ${dir.absolutePath}", dir.exists() && dir.isDirectory)
        val files = dir.listFiles { f -> f.isFile && f.name.endsWith(".cbz", true) }?.toList() ?: emptyList()
        assumeTrue("No CBZ samples found in ${dir.absolutePath}", files.isNotEmpty())

        val ctx = InstrumentationRegistry.getInstrumentation().targetContext
        val reader = CbzReader(ctx)
        files.forEach { file ->
            val result = reader.open(ctx, Uri.fromFile(file))
            assertTrue("Failed to open ${file.name}: ${result.exceptionOrNull()?.message}", result.isSuccess)
            val meta = result.getOrNull()!!
            assertTrue("Empty page count for ${file.name}", meta.pageCount > 0)
            reader.close()
        }
    }

    @Test
    fun testOpenAllCbrSamples() = runBlocking {
        val dir = samplesDir()
        assumeTrue("Samples dir not found: ${dir.absolutePath}", dir.exists() && dir.isDirectory)
        val files = dir.listFiles { f -> f.isFile && f.name.endsWith(".cbr", true) }?.toList() ?: emptyList()
        assumeTrue("No CBR samples found in ${dir.absolutePath}", files.isNotEmpty())

        val ctx = InstrumentationRegistry.getInstrumentation().targetContext
        val reader = CbrReader(ctx)
        files.forEach { file ->
            val result = reader.open(ctx, Uri.fromFile(file))
            assertTrue("Failed to open ${file.name}: ${result.exceptionOrNull()?.message}", result.isSuccess)
            val meta = result.getOrNull()!!
            assertTrue("Empty page count for ${file.name}", meta.pageCount > 0)
            reader.close()
        }
    }
}
