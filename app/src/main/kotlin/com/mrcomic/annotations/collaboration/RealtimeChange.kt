package com.mrcomic.annotations.collaboration

import java.util.*

enum class RealtimeChangeType {
    ANNOTATION_CREATED, ANNOTATION_UPDATED, ANNOTATION_DELETED,
    COMMENT_ADDED, COMMENT_UPDATED, COMMENT_DELETED,
    PARTICIPANT_JOINED, PARTICIPANT_LEFT,
    SESSION_UPDATED
}

data class RealtimeChange(
    var id: String? = null,
    var type: RealtimeChangeType? = null,
    var userId: String? = null,
    var userName: String? = null,
    var annotationId: Long? = null,
    var description: String? = null,
    var data: Any? = null,
    var timestamp: Date = Date()
) 