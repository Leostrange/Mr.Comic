package com.example.mrcomic.theme.data.model.response

import com.example.mrcomic.theme.data.model.Theme
import com.google.gson.annotations.SerializedName

/**
 * Модель ответа для списка тем с пагинацией
 */
data class ThemeListResponse(
    @SerializedName("themes")
    val themes: List<Theme>,
    
    @SerializedName("pagination")
    val pagination: PaginationInfo
)

/**
 * Информация о пагинации
 */
data class PaginationInfo(
    @SerializedName("total")
    val total: Int,
    
    @SerializedName("page")
    val page: Int,
    
    @SerializedName("limit")
    val limit: Int,
    
    @SerializedName("pages")
    val pages: Int
)
