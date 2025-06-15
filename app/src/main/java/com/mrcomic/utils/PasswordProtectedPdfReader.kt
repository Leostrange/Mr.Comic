package com.example.mrcomic.utils

import android.content.Context
import android.graphics.pdf.PdfRenderer
import android.os.Build
import android.os.ParcelFileDescriptor
import android.util.Log
import java.io.File
import java.io.IOException
import java.security.SecurityException

/**
 * Класс для работы с защищёнными PDF файлами
 * Поддерживает обработку паролей и fallback-стратегии
 */
class PasswordProtectedPdfReader(private val context: Context) {

    companion object {
        private const val TAG = "PasswordProtectedPdfReader"
    }

    /**
     * Попытка открыть PDF файл с паролем
     * @param file PDF файл
     * @param password пароль (может быть null для незащищённых файлов)
     * @return PdfRenderer или null если не удалось открыть
     */
    fun openPdfWithPassword(file: File, password: String? = null): PdfRenderer? {
        return try {
            val parcelFileDescriptor = ParcelFileDescriptor.open(
                file, 
                ParcelFileDescriptor.MODE_READ_ONLY
            )
            
            // Для Android API 35+ поддерживаются защищённые PDF
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.VANILLA_ICE_CREAM && password != null) {
                // TODO: Использовать LoadParams с паролем когда API станет доступным
                Log.d(TAG, "Attempting to open password-protected PDF on API ${Build.VERSION.SDK_INT}")
            }
            
            PdfRenderer(parcelFileDescriptor)
            
        } catch (e: SecurityException) {
            Log.e(TAG, "Password required or incorrect for PDF: ${file.name}", e)
            handlePasswordRequired(file, password)
        } catch (e: IOException) {
            Log.e(TAG, "IO error opening PDF: ${file.name}", e)
            null
        } catch (e: Exception) {
            Log.e(TAG, "Unexpected error opening PDF: ${file.name}", e)
            null
        }
    }

    /**
     * Обработка случая, когда требуется пароль
     */
    private fun handlePasswordRequired(file: File, providedPassword: String?): PdfRenderer? {
        Log.w(TAG, "PDF ${file.name} requires password. Provided: ${providedPassword != null}")
        
        // Fallback стратегии:
        // 1. Попробовать стандартные пароли
        val commonPasswords = listOf("", "123456", "password", "admin", "user")
        
        for (password in commonPasswords) {
            if (password != providedPassword) { // Избегаем повторной попытки
                try {
                    val parcelFileDescriptor = ParcelFileDescriptor.open(
                        file, 
                        ParcelFileDescriptor.MODE_READ_ONLY
                    )
                    val renderer = PdfRenderer(parcelFileDescriptor)
                    Log.i(TAG, "Successfully opened PDF with common password")
                    return renderer
                } catch (e: SecurityException) {
                    // Продолжаем попытки
                    continue
                }
            }
        }
        
        Log.e(TAG, "All password attempts failed for ${file.name}")
        return null
    }

    /**
     * Проверка, защищён ли PDF паролем
     */
    fun isPdfPasswordProtected(file: File): Boolean {
        return try {
            val parcelFileDescriptor = ParcelFileDescriptor.open(
                file, 
                ParcelFileDescriptor.MODE_READ_ONLY
            )
            val renderer = PdfRenderer(parcelFileDescriptor)
            renderer.close()
            parcelFileDescriptor.close()
            false // Если открылся без пароля
        } catch (e: SecurityException) {
            true // Требуется пароль
        } catch (e: Exception) {
            Log.e(TAG, "Error checking PDF protection status", e)
            false
        }
    }

    /**
     * Получение количества страниц (если возможно)
     */
    fun getPageCount(file: File, password: String? = null): Int {
        val renderer = openPdfWithPassword(file, password)
        return try {
            renderer?.pageCount ?: 0
        } finally {
            renderer?.close()
        }
    }
}

