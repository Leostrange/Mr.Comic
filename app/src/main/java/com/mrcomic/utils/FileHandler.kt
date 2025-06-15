package com.example.mrcomic.utils

import android.content.Context
import android.graphics.pdf.PdfRenderer
import java.io.File
import java.io.IOException
import java.util.zip.ZipFile

sealed class FileOpenResult {
    sealed class Success : FileOpenResult() {
        data class SuccessCbz(val zipFile: ZipFile) : Success()
        data class SuccessPdf(val pdfRenderer: PdfRenderer) : Success()
    }
    data class Error(val message: String, val code: ErrorCode) : FileOpenResult()
}

enum class FileType {
    CBZ, PDF, UNKNOWN
}

enum class ErrorCode {
    FILE_NOT_FOUND, CORRUPTED_FILE, PASSWORD_REQUIRED, UNKNOWN_FORMAT
}

object FileHandler {
    fun openFile(context: Context, filePath: String, password: String? = null): FileOpenResult {
        val file = File(filePath)
        if (!file.exists()) {
            return FileOpenResult.Error("File not found", ErrorCode.FILE_NOT_FOUND)
        }

        return when (determineFileType(file)) {
            FileType.CBZ -> openZipFile(file)
            FileType.PDF -> openPdfFile(context, file, password)
            FileType.UNKNOWN -> FileOpenResult.Error("Unsupported format", ErrorCode.UNKNOWN_FORMAT)
        }
    }

    private fun determineFileType(file: File): FileType {
        return when (file.extension.toLowerCase()) {
            "cbz", "zip" -> FileType.CBZ
            "pdf" -> FileType.PDF
            else -> FileType.UNKNOWN
        }
    }

    private fun openZipFile(file: File): FileOpenResult {
        return try {
            // Использование use { ... } для автоматического закрытия ZipFile
            ZipFile(file).use { zip ->
                zip.entries() // Проверка валидности
                FileOpenResult.Success.SuccessCbz(zip)
            }
        } catch (e: IOException) {
            FileOpenResult.Error("Corrupted CBZ file", ErrorCode.CORRUPTED_FILE)
        }
    }

    private fun openPdfFile(context: Context, file: File, password: String?): FileOpenResult {
        return try {
            val parcelFileDescriptor = context.contentResolver.openFileDescriptor(file.toUri(), "r")
                ?: return FileOpenResult.Error("File not accessible", ErrorCode.FILE_NOT_FOUND)
            val renderer = if (password != null) {
                PdfRenderer(parcelFileDescriptor, password)
            } else {
                PdfRenderer(parcelFileDescriptor)
            }
            FileOpenResult.Success.SuccessPdf(renderer)
        } catch (e: SecurityException) {
            FileOpenResult.Error("Password required or incorrect", ErrorCode.PASSWORD_REQUIRED)
        } catch (e: IOException) {
            FileOpenResult.Error("Corrupted PDF file", ErrorCode.CORRUPTED_FILE)
        }
    }
}

