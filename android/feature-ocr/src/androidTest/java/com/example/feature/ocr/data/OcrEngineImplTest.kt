package com.example.feature.ocr.data

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import java.io.File
import java.io.FileOutputStream
import org.junit.Assert.assertTrue
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class OcrEngineImplTest {

    private val context = InstrumentationRegistry.getInstrumentation().targetContext
    private val ocrEngine = OcrEngineImpl()

    @Test
    fun recognizeText_returnsRecognizedValue() = runBlocking {
        val imageFile = createImageWithText("Hello Mr Comic")

        val result = ocrEngine.recognizeText(imageFile.absolutePath).trim()

        assertTrue("Expected OCR result to contain sample text", result.contains("Mr Comic", ignoreCase = true))
    }

    @Test
    fun recognizeText_returnsEmptyStringOnFailure() = runBlocking {
        val result = ocrEngine.recognizeText("/invalid/path/nonexistent.png")

        assertTrue("Expected OCR result to be empty on failure", result.isEmpty())
    }

    private fun createImageWithText(text: String): File {
        val file = File(context.cacheDir, "ocr_test_image.png")
        val bitmap = Bitmap.createBitmap(400, 200, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        canvas.drawColor(Color.WHITE)
        val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.BLACK
            textSize = 48f
        }
        canvas.drawText(text, 24f, 100f, paint)

        FileOutputStream(file).use { output ->
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)
            output.flush()
        }

        bitmap.recycle()
        return file
    }
}
