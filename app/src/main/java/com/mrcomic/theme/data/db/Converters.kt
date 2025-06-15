package com.example.mrcomic.theme.data.db

import androidx.room.TypeConverter
import com.example.mrcomic.theme.data.model.*
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken

/**
 * Конвертеры типов для Room
 */
class Converters {
    private val gson = Gson()
    
    // Конвертеры для списков строк
    @TypeConverter
    fun fromStringList(value: List<String>?): String? {
        return if (value == null) null else gson.toJson(value)
    }
    
    @TypeConverter
    fun toStringList(value: String?): List<String>? {
        if (value == null) return null
        val type = object : TypeToken<List<String>>() {}.type
        return gson.fromJson(value, type)
    }
    
    // Конвертеры для ThemeRating
    @TypeConverter
    fun fromThemeRating(rating: ThemeRating?): String? {
        return if (rating == null) null else gson.toJson(rating)
    }
    
    @TypeConverter
    fun toThemeRating(value: String?): ThemeRating? {
        if (value == null) return null
        return gson.fromJson(value, ThemeRating::class.java)
    }
    
    // Конвертеры для ThemeData
    @TypeConverter
    fun fromThemeData(themeData: ThemeData?): String? {
        return if (themeData == null) null else gson.toJson(themeData)
    }
    
    @TypeConverter
    fun toThemeData(value: String?): ThemeData? {
        if (value == null) return null
        return gson.fromJson(value, ThemeData::class.java)
    }
    
    // Конвертеры для ThemeColors
    @TypeConverter
    fun fromThemeColors(colors: ThemeColors?): String? {
        return if (colors == null) null else gson.toJson(colors)
    }
    
    @TypeConverter
    fun toThemeColors(value: String?): ThemeColors? {
        if (value == null) return null
        return gson.fromJson(value, ThemeColors::class.java)
    }
    
    // Конвертеры для ThemeFonts
    @TypeConverter
    fun fromThemeFonts(fonts: ThemeFonts?): String? {
        return if (fonts == null) null else gson.toJson(fonts)
    }
    
    @TypeConverter
    fun toThemeFonts(value: String?): ThemeFonts? {
        if (value == null) return null
        return gson.fromJson(value, ThemeFonts::class.java)
    }
    
    // Конвертеры для ThemeElements
    @TypeConverter
    fun fromThemeElements(elements: ThemeElements?): String? {
        return if (elements == null) null else gson.toJson(elements)
    }
    
    @TypeConverter
    fun toThemeElements(value: String?): ThemeElements? {
        if (value == null) return null
        return gson.fromJson(value, ThemeElements::class.java)
    }
    
    // Конвертеры для User
    @TypeConverter
    fun fromUser(user: User?): String? {
        return if (user == null) null else gson.toJson(user)
    }
    
    @TypeConverter
    fun toUser(value: String?): User? {
        if (value == null) return null
        return gson.fromJson(value, User::class.java)
    }
    
    // Конвертеры для UserPreferences
    @TypeConverter
    fun fromUserPreferences(preferences: UserPreferences?): String? {
        return if (preferences == null) null else gson.toJson(preferences)
    }
    
    @TypeConverter
    fun toUserPreferences(value: String?): UserPreferences? {
        if (value == null) return null
        return gson.fromJson(value, UserPreferences::class.java)
    }
    
    // Конвертеры для DeviceInfo
    @TypeConverter
    fun fromDeviceInfo(deviceInfo: DeviceInfo?): String? {
        return if (deviceInfo == null) null else gson.toJson(deviceInfo)
    }
    
    @TypeConverter
    fun toDeviceInfo(value: String?): DeviceInfo? {
        if (value == null) return null
        return gson.fromJson(value, DeviceInfo::class.java)
    }
}
