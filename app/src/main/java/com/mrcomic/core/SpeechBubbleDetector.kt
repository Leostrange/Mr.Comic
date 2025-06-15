package com.mrcomic.core

import android.graphics.Bitmap
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.opencv.android.Utils
import org.opencv.core.Mat
import org.opencv.core.MatOfPoint
import org.opencv.core.Rect
import org.opencv.core.Scalar
import org.opencv.imgproc.Imgproc
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Класс для детекции облачков речи на изображениях.
 */
@Singleton
class SpeechBubbleDetector @Inject constructor() {

    /**
     * Детектирует облачка речи на изображении и возвращает их координаты.
     */
    suspend fun detectSpeechBubbles(bitmap: Bitmap): List<SpeechBubble> = withContext(Dispatchers.IO) {
        val mat = Mat()
        Utils.bitmapToMat(bitmap, mat)

        val grayMat = Mat()
        Imgproc.cvtColor(mat, grayMat, Imgproc.COLOR_RGBA2GRAY)

        val binaryMat = Mat()
        Imgproc.threshold(grayMat, binaryMat, 0.0, 255.0, Imgproc.THRESH_BINARY_INV + Imgproc.THRESH_OTSU)

        // Морфологические операции для закрытия небольших пробелов в облачках
        val kernel = Imgproc.getStructuringElement(Imgproc.MORPH_RECT, org.opencv.core.Size(5.0, 5.0))
        Imgproc.morphologyEx(binaryMat, binaryMat, Imgproc.MORPH_CLOSE, kernel)

        val contours = mutableListOf<MatOfPoint>()
        val hierarchy = Mat()
        Imgproc.findContours(binaryMat, contours, hierarchy, Imgproc.RETR_EXTERNAL, Imgproc.CHAIN_APPROX_SIMPLE)

        val speechBubbles = mutableListOf<SpeechBubble>()
        for (contour in contours) {
            val rect = Imgproc.boundingRect(contour)
            // Фильтрация по размеру, чтобы исключить слишком маленькие или большие области
            if (rect.width > 50 && rect.height > 50 && rect.width < bitmap.width * 0.9 && rect.height < bitmap.height * 0.9) {
                speechBubbles.add(SpeechBubble(rect.x, rect.y, rect.width, rect.height))
            }
        }

        mat.release()
        grayMat.release()
        binaryMat.release()
        hierarchy.release()
        contours.forEach { it.release() }

        speechBubbles
    }

    /**
     * Экспортирует список облачков речи в JSON формат.
     */
    fun exportToJson(speechBubbles: List<SpeechBubble>): String {
        val gson = GsonBuilder().setPrettyPrinting().create()
        return gson.toJson(speechBubbles)
    }
}

data class SpeechBubble(
    val x: Int,
    val y: Int,
    val width: Int,
    val height: Int
) {
    val right: Int get() = x + width
    val bottom: Int get() = y + height
}

