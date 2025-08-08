package com.example.mrcomic.ui

import android.content.Context
import android.net.Uri
import android.graphics.BitmapFactory
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.produceState
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.geometry.Offset
import androidx.compose.foundation.gestures.rememberTransformableState
import androidx.compose.foundation.gestures.transformable
import com.example.core.reader.pdf.PdfReader
import com.example.core.reader.pdf.PdfReaderFactory
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipFile

@Composable
fun ReaderScreen(uriString: String) {
    val context = rememberContext()
    val factory = remember { PdfReaderFactory() }
    var errorText by remember { mutableStateOf<String?>(null) }
    var pageCount by remember { mutableStateOf<Int?>(null) }
    var pdfReader by remember { mutableStateOf<PdfReader?>(null) }
    var cbzZipFile by remember { mutableStateOf<ZipFile?>(null) }
    var cbzEntries by remember { mutableStateOf<List<ZipEntry>>(emptyList()) }
    var rarArchive by remember { mutableStateOf<Archive?>(null) }
    var rarHeaders by remember { mutableStateOf<List<FileHeader>>(emptyList()) }

    LaunchedEffect(uriString) {
        errorText = null
        pageCount = null
        pdfReader?.close(); pdfReader = null
        cbzZipFile?.close(); cbzZipFile = null; cbzEntries = emptyList()
        try { rarArchive?.close() } catch (_: Throwable) {}; rarArchive = null; rarHeaders = emptyList()

        val uri = toUri(uriString)
        val lower = uriString.lowercase()
        if (lower.endsWith(".pdf")) {
            val result = factory.openPdfWithFallback(context, uri)
            if (result.isSuccess) {
                val r = result.getOrNull()
                pdfReader = r
                pageCount = r?.getPageCount()
                if (pageCount == null || pageCount == 0) {
                    errorText = "Не удалось получить страницы"
                }
            } else {
                errorText = result.exceptionOrNull()?.message ?: "Ошибка открытия PDF"
            }
        } else if (lower.endsWith(".cbz") || lower.endsWith(".zip")) {
            try {
                val file = ensureFileForUri(context, uri)
                val zip = ZipFile(file)
                val entries = zip.entries().toList()
                    .filter { it.name.matches(Regex("(?i).+\\.(jpg|jpeg|png|webp)$")) && !it.isDirectory }
                    .sortedBy { it.name.lowercase() }
                if (entries.isEmpty()) {
                    zip.close()
                    errorText = "В архиве нет изображений"
                } else {
                    cbzZipFile = zip
                    cbzEntries = entries
                    pageCount = entries.size
                }
            } catch (t: Throwable) {
                errorText = t.message ?: "Ошибка открытия CBZ"
            }
        } else if (lower.endsWith(".cbr") || lower.endsWith(".rar")) {
            try {
                val file = ensureFileForUri(context, uri)
                val archive = Archive(file)
                val headers = archive.fileHeaders
                    .filter { h ->
                        val name = h.fileName ?: ""
                        !h.isDirectory && name.substringAfterLast('.', "").lowercase() in setOf("jpg","jpeg","png","webp","bmp")
                    }
                    .sortedBy { it.fileName?.lowercase() ?: "" }
                if (headers.isEmpty()) {
                    archive.close()
                    errorText = "В CBR нет изображений"
                } else if (archive.isEncrypted) {
                    archive.close()
                    errorText = "Зашифрованные RAR не поддерживаются"
                } else {
                    rarArchive = archive
                    rarHeaders = headers
                    pageCount = headers.size
                }
            } catch (t: Throwable) {
                errorText = t.message ?: "Ошибка открытия CBR"
            }
        } else {
            errorText = "Неподдерживаемый формат"
        }
    }

    DisposableEffect(Unit) {
        onDispose {
            pdfReader?.close(); pdfReader = null
            cbzZipFile?.close(); cbzZipFile = null
            try { rarArchive?.close() } catch (_: Throwable) {}
            rarArchive = null
        }
    }

    when {
        errorText != null -> ErrorBox(errorText!!)
        pageCount == null -> LoadingBox()
        else -> {
            val count = pageCount!!
            val pagerState = rememberPagerState(pageCount = { count })
            HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { pageIndex ->
                val bmpState = produceState<android.graphics.Bitmap?>(initialValue = null, pdfReader, cbzZipFile, cbzEntries, rarArchive, rarHeaders, pageIndex) {
                    value = null
                    val r = pdfReader
                    if (r != null) {
                        val res = r.renderPage(pageIndex)
                        value = if (res.isSuccess) res.getOrNull() else null
                    } else {
                        val zf = cbzZipFile
                        val zEntries = cbzEntries
                        val rar = rarArchive
                        val rHeaders = rarHeaders
                        if (zf != null && pageIndex in zEntries.indices) {
                            val entry = zEntries[pageIndex]
                            zf.getInputStream(entry).use { ins ->
                                val bytes = ins.readBytes()
                                value = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                            }
                        } else if (rar != null && pageIndex in rHeaders.indices) {
                            val header = rHeaders[pageIndex]
                            val baos = ByteArrayOutputStream()
                            try {
                                rar.extractFile(header, baos)
                                val bytes = baos.toByteArray()
                                value = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                            } catch (_: Throwable) {
                                value = null
                            } finally {
                                try { baos.close() } catch (_: Throwable) {}
                            }
                        }
                    }
                }
                val bmp = bmpState.value
                if (bmp != null) {
                    ZoomableImage(bmp.asImageBitmap())
                } else {
                    LoadingBox()
                }
            }
        }
    }
}

@Composable
private fun ZoomableImage(bitmap: androidx.compose.ui.graphics.ImageBitmap) {
    var scale by remember { mutableStateOf(1f) }
    var offset by remember { mutableStateOf(Offset.Zero) }
    val transformState = rememberTransformableState { zoomChange, panChange, _ ->
        val newScale = (scale * zoomChange).coerceIn(1f, 5f)
        val scaleRatio = if (scale == 0f) 1f else newScale / scale
        scale = newScale
        offset += panChange * scaleRatio
    }

    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Image(
            bitmap = bitmap,
            contentDescription = null,
            contentScale = ContentScale.Fit,
            modifier = Modifier
                .fillMaxSize()
                .graphicsLayer(
                    scaleX = scale,
                    scaleY = scale,
                    translationX = offset.x,
                    translationY = offset.y
                )
                .transformable(transformState)
        )
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

private fun ensureFileForUri(context: Context, uri: Uri): File {
    return when (uri.scheme) {
        "file" -> File(uri.path!!)
        "content" -> {
            val input = context.contentResolver.openInputStream(uri)
                ?: throw IllegalStateException("Не удалось открыть поток контента")
            val ext = ".tmp"
            val temp = File.createTempFile("archive_", ext, context.cacheDir)
            FileOutputStream(temp).use { out ->
                input.copyTo(out)
            }
            temp
        }
        else -> File(uri.path ?: uri.toString())
    }
}