package com.mrcomic.annotations.collaboration

import java.util.*

data class SessionParticipant(
    var userId: String? = null,
    var userName: String? = null,
    var userEmail: String? = null,
    var userAvatar: String? = null,
    var role: CollaborationRole? = null,
    var status: ParticipantStatus = ParticipantStatus.ACTIVE,
    var joinedAt: Date = Date(),
    var lastActiveAt: Date = Date(),
    var customPermissions: CollaborationPermissions? = null
) {
    fun isActive(): Boolean = status == ParticipantStatus.ACTIVE
    fun isOnline(): Boolean = lastActiveAt.time > System.currentTimeMillis() - 5 * 60 * 1000
    fun updateLastActive() { lastActiveAt = Date() }
} 