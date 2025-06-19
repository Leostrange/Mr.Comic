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