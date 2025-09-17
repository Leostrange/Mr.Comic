package com.example.feature.ocr.data

import android.graphics.BitmapFactory
import com.example.feature.ocr.domain.OcrEngine
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import javax.inject.Inject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume

class OcrEngineImpl @Inject constructor() : OcrEngine {
    override suspend fun recognizeText(imagePath: String): String {
        return withContext(Dispatchers.IO) {
            val bitmap = BitmapFactory.decodeFile(imagePath) ?: return@withContext ""
            val inputImage = InputImage.fromBitmap(bitmap, 0)
            val recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)

            try {
                suspendCancellableCoroutine { continuation ->
                    recognizer
                        .process(inputImage)
                        .addOnSuccessListener { visionText ->
                            if (continuation.isActive) {
                                continuation.resume(visionText.text)
                            }
                        }
                        .addOnFailureListener {
                            if (continuation.isActive) {
                                continuation.resume("")
                            }
                        }
                }
            } catch (_: Exception) {
                ""
            } finally {
                recognizer.close()
                bitmap.recycle()
            }
        }
    }
}


