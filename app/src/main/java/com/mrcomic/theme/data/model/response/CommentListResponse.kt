package com.example.mrcomic.theme.data.model.response

import com.example.mrcomic.theme.data.model.Comment
import com.google.gson.annotations.SerializedName

/**
 * Модель ответа для списка комментариев с пагинацией
 */
data class CommentListResponse(
    @SerializedName("comments")
    val comments: List<CommentWithReplies>,
    
    @SerializedName("pagination")
    val pagination: PaginationInfo
)

/**
 * Комментарий с вложенными ответами
 */
data class CommentWithReplies(
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
    val user: com.example.mrcomic.theme.data.model.User?,
    
    @SerializedName("replies")
    val replies: List<Comment>
)
