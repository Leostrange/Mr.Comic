package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

/**
 * Модель данных для загрузки темы
 */
@Entity(tableName = "downloads")
data class Download(
    @PrimaryKey
    @SerializedName("id")
    val id: String,
    
    @SerializedName("themeId")
    val themeId: String,
    
    @SerializedName("userId")
    val userId: String?,
    
    @SerializedName("deviceInfo")
    val deviceInfo: DeviceInfo,
    
    @SerializedName("downloadedAt")
    val downloadedAt: String
)

data class DeviceInfo(
    @SerializedName("model")
    val model: String,
    
    @SerializedName("os")
    val os: String,
    
    @SerializedName("appVersion")
    val appVersion: String
)
