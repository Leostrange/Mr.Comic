package com.example.mrcomic.ui

import android.content.Context
import android.net.Uri
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.foundation.Image
import androidx.compose.ui.layout.ContentScale
import com.example.core.reader.pdf.PdfReaderFactory
import java.io.File

@Composable
fun ReaderScreen(uriString: String) {
    val context = rememberContext()
    val factory = remember { PdfReaderFactory() }
    var errorText by remember { mutableStateOf<String?>(null) }
    var pageCount by remember { mutableStateOf<Int?>(null) }
    var reader = remember { null as com.example.core.reader.pdf.PdfReader? }

    LaunchedEffect(uriString) {
        errorText = null
        pageCount = null
        reader?.close()
        val uri = toUri(uriString)
        val result = factory.openPdfWithFallback(context, uri)
        if (result.isSuccess) {
            reader = result.getOrNull()
            pageCount = reader?.getPageCount()
            if (pageCount == null || pageCount == 0) {
                errorText = "Не удалось получить страницы"
            }
        } else {
            errorText = result.exceptionOrNull()?.message ?: "Ошибка открытия PDF"
        }
    }

    when {
        errorText != null -> ErrorBox(errorText!!)
        pageCount == null -> LoadingBox()
        else -> {
            val count = pageCount!!
            val pagerState = rememberPagerState(pageCount = { count })
            HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { pageIndex ->
                val bitmapState = produceState<android.graphics.Bitmap?>(initialValue = null, reader, pageIndex) {
                    value = null
                    val r = reader
                    if (r != null) {
                        val res = r.renderPage(pageIndex)
                        value = if (res.isSuccess) res.getOrNull() else null
                    }
                }
                val bmp = bitmapState.value
                if (bmp != null) {
                    Image(
                        bitmap = bmp.asImageBitmap(),
                        contentDescription = "Page ${pageIndex + 1}",
                        contentScale = ContentScale.Fit,
                        modifier = Modifier.fillMaxSize()
                    )
                } else {
                    LoadingBox()
                }
            }
        }
    }
}

@Composable
private fun LoadingBox() {
    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        CircularProgressIndicator()
    }
}

@Composable
private fun ErrorBox(message: String) {
    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Text(text = message, color = MaterialTheme.colorScheme.error)
    }
}

@Composable
private fun rememberContext(): Context {
    return androidx.compose.ui.platform.LocalContext.current
}

private fun toUri(value: String): Uri {
    return when {
        value.startsWith("content://") || value.startsWith("file://") -> Uri.parse(value)
        else -> Uri.fromFile(File(value))
    }
}