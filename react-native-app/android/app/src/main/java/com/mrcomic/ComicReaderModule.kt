package com.mrcomic

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.facebook.react.bridge.*
import com.facebook.react.modules.core.DeviceEventManagerModule
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.util.*

class ComicReaderModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "ComicReader"
    }

    @ReactMethod
    fun openComic(uri: String, promise: Promise) {
        try {
            val fileUri = Uri.parse(uri)
            val extension = getFileExtension(fileUri.lastPathSegment ?: "")
            
            when (extension.lowercase()) {
                "cbz" -> openCbzFile(fileUri, promise)
                "cbr" -> openCbrFile(fileUri, promise)
                "pdf" -> openPdfFile(fileUri, promise)
                else -> promise.reject("UNSUPPORTED_FORMAT", "Unsupported file format: $extension")
            }
        } catch (e: Exception) {
            promise.reject("OPEN_ERROR", "Failed to open comic: ${e.message}", e)
        }
    }

    @ReactMethod
    fun getPageCount(comicId: String, promise: Promise) {
        try {
            val comic = activeComics[comicId]
            if (comic != null) {
                promise.resolve(comic.pageCount)
            } else {
                promise.reject("COMIC_NOT_FOUND", "Comic not found: $comicId")
            }
        } catch (e: Exception) {
            promise.reject("GET_PAGE_COUNT_ERROR", "Failed to get page count: ${e.message}", e)
        }
    }

    @ReactMethod
    fun getPage(comicId: String, pageIndex: Int, promise: Promise) {
        try {
            val comic = activeComics[comicId]
            if (comic != null) {
                val pagePath = comic.getPage(pageIndex)
                if (pagePath != null) {
                    promise.resolve(pagePath)
                } else {
                    promise.reject("PAGE_NOT_FOUND", "Page not found: $pageIndex")
                }
            } else {
                promise.reject("COMIC_NOT_FOUND", "Comic not found: $comicId")
            }
        } catch (e: Exception) {
            promise.reject("GET_PAGE_ERROR", "Failed to get page: ${e.message}", e)
        }
    }

    @ReactMethod
    fun extractCover(comicId: String, promise: Promise) {
        try {
            val comic = activeComics[comicId]
            if (comic != null) {
                val coverPath = comic.extractCover()
                promise.resolve(coverPath)
            } else {
                promise.reject("COMIC_NOT_FOUND", "Comic not found: $comicId")
            }
        } catch (e: Exception) {
            promise.reject("EXTRACT_COVER_ERROR", "Failed to extract cover: ${e.message}", e)
        }
    }

    @ReactMethod
    fun closeComic(comicId: String, promise: Promise) {
        try {
            val comic = activeComics.remove(comicId)
            comic?.close()
            promise.resolve(true)
        } catch (e: Exception) {
            promise.reject("CLOSE_ERROR", "Failed to close comic: ${e.message}", e)
        }
    }

    private fun openCbzFile(uri: Uri, promise: Promise) {
        try {
            val comicId = UUID.randomUUID().toString()
            val comic = CbzComic(reactApplicationContext, uri, comicId)
            activeComics[comicId] = comic
            
            val result = Arguments.createMap().apply {
                putString("comicId", comicId)
                putInt("pageCount", comic.pageCount)
                putString("title", comic.title)
            }
            promise.resolve(result)
        } catch (e: Exception) {
            promise.reject("CBZ_OPEN_ERROR", "Failed to open CBZ: ${e.message}", e)
        }
    }

    private fun openCbrFile(uri: Uri, promise: Promise) {
        try {
            val comicId = UUID.randomUUID().toString()
            val comic = CbrComic(reactApplicationContext, uri, comicId)
            activeComics[comicId] = comic
            
            val result = Arguments.createMap().apply {
                putString("comicId", comicId)
                putInt("pageCount", comic.pageCount)
                putString("title", comic.title)
            }
            promise.resolve(result)
        } catch (e: Exception) {
            promise.reject("CBR_OPEN_ERROR", "Failed to open CBR: ${e.message}", e)
        }
    }

    private fun openPdfFile(uri: Uri, promise: Promise) {
        try {
            val comicId = UUID.randomUUID().toString()
            val comic = PdfComic(reactApplicationContext, uri, comicId)
            activeComics[comicId] = comic
            
            val result = Arguments.createMap().apply {
                putString("comicId", comicId)
                putInt("pageCount", comic.pageCount)
                putString("title", comic.title)
            }
            promise.resolve(result)
        } catch (e: Exception) {
            promise.reject("PDF_OPEN_ERROR", "Failed to open PDF: ${e.message}", e)
        }
    }

    private fun getFileExtension(fileName: String?): String {
        return fileName?.substringAfterLast('.', "") ?: ""
    }

    companion object {
        private val activeComics = mutableMapOf<String, ComicReader>()
    }
}