package com.mrcomic.shared

import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import com.google.mlkit.vision.common.InputImage

class OcrProcessor {

    private val recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)

    fun processImageForOcr(image: InputImage, callback: (String?, Exception?) -> Unit) {
        recognizer.process(image)
            .addOnSuccessListener { visionText ->
                callback(visionText.text, null)
            }
            .addOnFailureListener { e ->
                callback(null, e)
            }
    }
}

