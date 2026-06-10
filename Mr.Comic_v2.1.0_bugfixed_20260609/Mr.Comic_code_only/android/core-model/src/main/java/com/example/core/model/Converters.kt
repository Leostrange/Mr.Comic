package com.example.core.model

import androidx.room.TypeConverter

class Converters {
    @TypeConverter fun fromComicFormat(f: ComicFormat): String = f.name
    @TypeConverter fun toComicFormat(s: String): ComicFormat = runCatching { ComicFormat.valueOf(s) }.getOrDefault(ComicFormat.UNKNOWN)
}
