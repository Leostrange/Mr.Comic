package com.mrcomic.annotations.collaboration

enum class CollaborationStatus {
    ACTIVE, INACTIVE, ARCHIVED
}

enum class PresenceStatus {
    ONLINE, OFFLINE, IDLE
}

enum class CommentStatus {
    ACTIVE, DELETED, PENDING
}

enum class InviteStatus {
    PENDING, ACCEPTED, REJECTED
}

enum class ChangeType {
    CREATE, UPDATE, DELETE
}

enum class CollaborationRole {
    OWNER, EDITOR, CONTRIBUTOR, VIEWER
}

enum class ParticipantStatus {
    ACTIVE, INACTIVE, REMOVED, BLOCKED
}

enum class RealtimeChangeType {
    ANNOTATION_CREATED, ANNOTATION_UPDATED, ANNOTATION_DELETED,
    COMMENT_ADDED, COMMENT_UPDATED, COMMENT_DELETED,
    PARTICIPANT_JOINED, PARTICIPANT_LEFT,
    SESSION_UPDATED
}

enum class UserPresenceStatus {
    ONLINE, OFFLINE, AWAY, BUSY
} 