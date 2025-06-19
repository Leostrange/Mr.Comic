package com.mrcomic.annotations.collaboration

import java.util.*

data class CollaborationSession(
    var id: String? = null,
    var comicId: String? = null,
    var name: String? = null,
    var description: String? = null,
    var ownerId: String? = null,
    var permissions: CollaborationPermissions? = null,
    var participants: MutableList<SessionParticipant> = mutableListOf(),
    var status: CollaborationStatus = CollaborationStatus.ACTIVE,
    var createdAt: Date = Date(),
    var updatedAt: Date = Date(),
    var expiresAt: Date? = null
) {
    fun addParticipant(participant: SessionParticipant) {
        participants.add(participant)
        updatedAt = Date()
    }

    fun removeParticipant(userId: String) {
        participants.removeIf { it.userId == userId }
        updatedAt = Date()
    }

    fun getParticipant(userId: String): SessionParticipant? =
        participants.find { it.userId == userId }

    fun isParticipant(userId: String): Boolean = getParticipant(userId) != null

    fun isOwner(userId: String): Boolean = ownerId == userId

    fun getParticipantCount(): Int = participants.size

    fun isExpired(): Boolean = expiresAt?.before(Date()) ?: false

    fun isActive(): Boolean = status == CollaborationStatus.ACTIVE && !isExpired()
}

