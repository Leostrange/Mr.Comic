package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

/**
 * Модель данных для рейтинга темы
 */
@Entity(tableName = "ratings")
data class Rating(
    @PrimaryKey
    @SerializedName("id")
    val id: String,
    
    @SerializedName("themeId")
    val themeId: String,
    
    @SerializedName("userId")
    val userId: String,
    
    @SerializedName("value")
    val value: Int,
    
    @SerializedName("createdAt")
    val createdAt: String,
    
    @SerializedName("updatedAt")
    val updatedAt: String
)
