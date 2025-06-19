package com.mrcomic.annotations.collaboration

import java.util.*

data class CollaborationInvite(
    var id: String? = null,
    var sessionId: String? = null,
    var inviterUserId: String? = null,
    var inviterUserName: String? = null,
    var inviteeEmail: String? = null,
    var inviteeUserId: String? = null,
    var role: CollaborationRole? = null,
    var status: InviteStatus = InviteStatus.PENDING,
    var message: String? = null,
    var createdAt: Date = Date(),
    var expiresAt: Date? = null,
    var acceptedAt: Date? = null,
    var declinedAt: Date? = null
) {
    fun isExpired(): Boolean = expiresAt?.before(Date()) ?: false
    fun isPending(): Boolean = status == InviteStatus.PENDING && !isExpired()
    fun getDaysUntilExpiry(): Long = expiresAt?.let { (it.time - System.currentTimeMillis()) / (24 * 60 * 60 * 1000) } ?: -1
} 