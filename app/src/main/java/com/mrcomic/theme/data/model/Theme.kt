package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

/**
 * Модель данных для темы
 */
@Entity(tableName = "themes")
data class Theme(
    @PrimaryKey
    @SerializedName("id")
    val id: String,
    
    @SerializedName("name")
    val name: String,
    
    @SerializedName("description")
    val description: String,
    
    @SerializedName("version")
    val version: String,
    
    @SerializedName("isPublic")
    val isPublic: Boolean,
    
    @SerializedName("previewImageUrl")
    val previewImageUrl: String,
    
    @SerializedName("authorId")
    val authorId: String,
    
    @SerializedName("author")
    val author: User?,
    
    @SerializedName("rating")
    val rating: ThemeRating,
    
    @SerializedName("downloads")
    val downloads: Int,
    
    @SerializedName("createdAt")
    val createdAt: String,
    
    @SerializedName("updatedAt")
    val updatedAt: String,
    
    @SerializedName("themeData")
    val themeData: ThemeData,
    
    @SerializedName("tags")
    val tags: List<String>
)

data class ThemeRating(
    @SerializedName("average")
    val average: Float,
    
    @SerializedName("count")
    val count: Int
)

data class ThemeData(
    @SerializedName("colors")
    val colors: ThemeColors,
    
    @SerializedName("fonts")
    val fonts: ThemeFonts,
    
    @SerializedName("elements")
    val elements: ThemeElements
)

data class ThemeColors(
    @SerializedName("primary")
    val primary: String,
    
    @SerializedName("secondary")
    val secondary: String,
    
    @SerializedName("accent")
    val accent: String,
    
    @SerializedName("background")
    val background: String,
    
    @SerializedName("text")
    val text: String
)

data class ThemeFonts(
    @SerializedName("main")
    val main: String,
    
    @SerializedName("headers")
    val headers: String,
    
    @SerializedName("size")
    val size: String
)

data class ThemeElements(
    @SerializedName("cornerRadius")
    val cornerRadius: Int,
    
    @SerializedName("iconStyle")
    val iconStyle: String,
    
    @SerializedName("buttonStyle")
    val buttonStyle: String
)
