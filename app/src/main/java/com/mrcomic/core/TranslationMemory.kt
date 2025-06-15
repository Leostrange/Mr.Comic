package com.mrcomic.core

import android.content.Context
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер для управления памятью переводов (Translation Memory)
 */
@Singleton
class TranslationMemory @Inject constructor(
    private val context: Context,
    private val gson: Gson
) {

    private val tmFile: File by lazy {
        File(context.filesDir, "translation_memory.json")
    }
    private var memory: MutableMap<String, String> = mutableMapOf()

    init {
        loadMemory()
    }

    private fun loadMemory() {
        if (tmFile.exists()) {
            try {
                tmFile.bufferedReader().use {
                    memory = gson.fromJson(it, object : TypeToken<MutableMap<String, String>>() {}.type)
                }
            } catch (e: Exception) {
                android.util.Log.e("TranslationMemory", "Error loading translation memory", e)
            }
        }
    }

    private suspend fun saveMemory() = withContext(Dispatchers.IO) {
        try {
            tmFile.bufferedWriter().use {
                gson.toJson(memory, it)
            }
        } catch (e: Exception) {
            android.util.Log.e("TranslationMemory", "Error saving translation memory", e)
        }
    }

    /**
     * Добавляет пару оригинал-перевод в память переводов.
     */
    suspend fun addEntry(originalText: String, translatedText: String) {
        memory[originalText] = translatedText
        saveMemory()
    }

    /**
     * Ищет перевод для заданного оригинального текста в памяти переводов.
     * Возвращает null, если перевод не найден.
     */
    fun getTranslation(originalText: String): String? {
        return memory[originalText]
    }

    /**
     * Очищает всю память переводов.
     */
    suspend fun clearMemory() {
        memory.clear()
        saveMemory()
    }
}

