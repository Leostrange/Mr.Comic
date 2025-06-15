package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

/**
 * Модель данных для комментария к теме
 */
@Entity(tableName = "comments")
data class Comment(
    @PrimaryKey
    @SerializedName("id")
    val id: String,
    
    @SerializedName("themeId")
    val themeId: String,
    
    @SerializedName("userId")
    val userId: String,
    
    @SerializedName("parentId")
    val parentId: String?,
    
    @SerializedName("content")
    val content: String,
    
    @SerializedName("createdAt")
    val createdAt: String,
    
    @SerializedName("updatedAt")
    val updatedAt: String,
    
    @SerializedName("likes")
    val likes: Int,
    
    @SerializedName("likedBy")
    val likedBy: List<String>?,
    
    @SerializedName("user")
    val user: User?
)
