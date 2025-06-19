package com.mrcomic.annotations.collaboration

import java.util.*

enum class CommentStatus {
    ACTIVE, DELETED, PENDING
}

data class AnnotationComment(
    var id: String? = null,
    var annotationId: Long? = null,
    var userId: String? = null,
    var userName: String? = null,
    var text: String? = null,
    var createdAt: Date = Date(),
    var updatedAt: Date = Date(),
    var status: CommentStatus = CommentStatus.ACTIVE
) {
    fun isActive(): Boolean = status == CommentStatus.ACTIVE
} 