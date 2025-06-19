package com.mrcomic.annotations.collaboration

import java.util.*

enum class CommentStatus {
    ACTIVE, DELETED, PENDING
}

data class AnnotationComment(
    val id: String,
    val sessionId: String,
    val userId: String,
    val content: String,
    val status: CommentStatus = CommentStatus.ACTIVE,
    val createdAt: Date = Date(),
    val updatedAt: Date = Date()
) 