package io.leostrange.mrcomic.core.data.db.entity

import androidx.room.TypeConverter
import io.leostrange.mrcomic.core.model.ComicFormat

class Converters {
    @TypeConverter fun fromComicFormat(f: ComicFormat): String = f.name
    @TypeConverter fun toComicFormat(s: String): ComicFormat = runCatching { ComicFormat.valueOf(s) }.getOrDefault(ComicFormat.UNKNOWN)
}
