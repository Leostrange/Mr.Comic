package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

/**
 * Модель данных для пользователя
 */
@Entity(tableName = "users")
data class User(
    @PrimaryKey
    @SerializedName("id")
    val id: String,
    
    @SerializedName("username")
    val username: String,
    
    @SerializedName("email")
    val email: String?,
    
    @SerializedName("avatarUrl")
    val avatarUrl: String?,
    
    @SerializedName("bio")
    val bio: String?,
    
    @SerializedName("role")
    val role: String,
    
    @SerializedName("reputation")
    val reputation: Int,
    
    @SerializedName("followers")
    val followers: List<String>?,
    
    @SerializedName("following")
    val following: List<String>?,
    
    @SerializedName("preferences")
    val preferences: UserPreferences?
)

data class UserPreferences(
    @SerializedName("notifications")
    val notifications: Boolean,
    
    @SerializedName("language")
    val language: String
)
