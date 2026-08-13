package io.leostrange.mrcomic.engine.formats.folder

import android.content.Context
import android.graphics.Bitmap
import io.leostrange.mrcomic.engine.api.resolveRenderDeviceProfile
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import java.io.File

@RunWith(RobolectricTestRunner::class)
class FolderFormatReaderLocalPathTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun localDirectoryListsAndRendersImageFiles() {
        runBlocking {
            val directory = temporaryFolder.newFolder("images")
            createPng(File(directory, "page-2.png"), Bitmap.Config.ARGB_8888)
            createPng(File(directory, "page-1.png"), Bitmap.Config.ARGB_8888)
            File(directory, "ignored.txt").writeText("not an image")
            val context = RuntimeEnvironment.getApplication() as Context
            val reader = FolderFormatReader(
                context = context,
                path = directory.absolutePath,
                deviceProfile = context.resolveRenderDeviceProfile(),
                bitmapAllocator = TestBitmapAllocator
            )

            try {
                assertEquals(2, reader.getPageCount())
                assertNotNull(reader.getPage(0))
            } finally {
                reader.close()
            }
        }
    }

    private fun createPng(file: File, config: Bitmap.Config) {
        val bitmap = Bitmap.createBitmap(16, 24, config)
        file.outputStream().use { check(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        bitmap.recycle()
    }
}

private object TestBitmapAllocator : BitmapAllocator {
    override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap =
        Bitmap.createBitmap(width, height, config)

    override fun release(bitmap: Bitmap) {
        if (!bitmap.isRecycled) bitmap.recycle()
    }
}
