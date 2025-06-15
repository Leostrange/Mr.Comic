package com.example.mrcomic.theme.data.api

import com.example.mrcomic.theme.data.model.Comment
import com.example.mrcomic.theme.data.model.Rating
import com.example.mrcomic.theme.data.model.Theme
import com.example.mrcomic.theme.data.model.User
import com.example.mrcomic.theme.data.model.response.CommentListResponse
import com.example.mrcomic.theme.data.model.response.ThemeListResponse
import retrofit2.Response
import retrofit2.http.*

/**
 * Интерфейс для взаимодействия с API сервера платформы обмена темами
 */
interface ThemeApiService {

    // Темы
    @GET("themes")
    suspend fun getThemes(
        @Query("page") page: Int,
        @Query("limit") limit: Int,
        @Query("sort") sort: String? = null,
        @Query("order") order: String? = null,
        @Query("search") search: String? = null,
        @Query("tags") tags: String? = null
    ): Response<ThemeListResponse>

    @GET("themes/trending")
    suspend fun getTrendingThemes(
        @Query("limit") limit: Int
    ): Response<List<Theme>>

    @GET("themes/recommended")
    suspend fun getRecommendedThemes(
        @Query("limit") limit: Int
    ): Response<List<Theme>>

    @GET("themes/{id}")
    suspend fun getTheme(
        @Path("id") themeId: String
    ): Response<Theme>

    @POST("themes")
    suspend fun createTheme(
        @Body theme: Theme
    ): Response<Theme>

    @PUT("themes/{id}")
    suspend fun updateTheme(
        @Path("id") themeId: String,
        @Body theme: Theme
    ): Response<Theme>

    @DELETE("themes/{id}")
    suspend fun deleteTheme(
        @Path("id") themeId: String
    ): Response<Unit>

    // Рейтинги
    @POST("themes/{id}/rate")
    suspend fun rateTheme(
        @Path("id") themeId: String,
        @Body rating: Rating
    ): Response<Rating>

    // Комментарии
    @GET("themes/{id}/comments")
    suspend fun getComments(
        @Path("id") themeId: String,
        @Query("page") page: Int,
        @Query("limit") limit: Int
    ): Response<CommentListResponse>

    @POST("themes/{id}/comments")
    suspend fun addComment(
        @Path("id") themeId: String,
        @Body comment: Comment
    ): Response<Comment>

    // Загрузки
    @POST("themes/{id}/download")
    suspend fun downloadTheme(
        @Path("id") themeId: String,
        @Body deviceInfo: Map<String, String>
    ): Response<Map<String, Any>>

    // Пользователи
    @GET("users/{id}")
    suspend fun getUser(
        @Path("id") userId: String
    ): Response<User>

    @GET("users/{id}/themes")
    suspend fun getUserThemes(
        @Path("id") userId: String,
        @Query("page") page: Int,
        @Query("limit") limit: Int
    ): Response<ThemeListResponse>
}
