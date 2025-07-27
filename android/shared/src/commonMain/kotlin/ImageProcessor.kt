package com.mrcomic.shared

expect class ImageProcessor {
    fun preprocessImage(imageData: ByteArray): ByteArray
}


