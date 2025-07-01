package com.example.mrcomic.data

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import java.util.zip.ZipFile

object CbzUtils {
    fun extractFirstImage(cbzPath: String): Bitmap? {
        try {
            val zipFile = ZipFile(File(cbzPath))
            val entries = zipFile.entries().toList()
            val imageEntry = entries.firstOrNull { it.name.endsWith(".jpg", true) || it.name.endsWith(".png", true) }
            imageEntry?.let {
                zipFile.getInputStream(it).use { input ->
                    return BitmapFactory.decodeStream(input)
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }
    private fun <T> java.util.Enumeration<T>.toList(): List<T> = buildList {
        while (hasMoreElements()) add(nextElement())
    }
} 