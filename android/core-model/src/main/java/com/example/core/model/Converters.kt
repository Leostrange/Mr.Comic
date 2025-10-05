package com.example.core.model

import androidx.room.TypeConverter

/**
 * Type converters для Room database
 */
class Converters {
    
    @TypeConverter
    fun fromComicFormat(value: ComicFormat): String {
        return value.name
    }
    
    @TypeConverter
    fun toComicFormat(value: String): ComicFormat {
        return try {
            ComicFormat.valueOf(value)
        } catch (e: IllegalArgumentException) {
            ComicFormat.UNKNOWN
        }
    }
}
