package com.example.mrcomic.ui.reader

import android.graphics.Bitmap

interface PageExtractor {
    fun getPageCount(): Int
    suspend fun getPage(pageIndex: Int): Bitmap?
    fun close()
}

