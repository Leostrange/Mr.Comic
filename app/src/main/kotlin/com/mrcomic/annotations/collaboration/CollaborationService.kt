package com.mrcomic.annotations.collaboration

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import java.util.*

object CollaborationService {
    private val _activeSessions = MutableStateFlow<List<CollaborationSession>>(emptyList())
    val activeSessions: StateFlow<List<CollaborationSession>> = _activeSessions.asStateFlow()

    private val _pendingInvites = MutableStateFlow<List<CollaborationInvite>>(emptyList())
    val pendingInvites: StateFlow<List<CollaborationInvite>> = _pendingInvites.asStateFlow()

    private val _activeUsersByProject = mutableMapOf<String, MutableStateFlow<List<ActiveUser>>>()
    private val _realtimeChanges = mutableMapOf<String, MutableStateFlow<List<RealtimeChange>>>()

    suspend fun createCollaborationSession(comicId: String, sessionName: String, permissions: CollaborationPermissions): CollaborationSession {
        val session = CollaborationSession(
            id = generateSessionId(),
            comicId = comicId,
            name = sessionName,
            ownerId = getCurrentUserId(),
            permissions = permissions,
            createdAt = Date(),
            status = CollaborationStatus.ACTIVE
        )
        saveCollaborationSession(session)
        updateActiveSessions()
        return session
    }

    suspend fun inviteUser(sessionId: String, userEmail: String, role: CollaborationRole): CollaborationInvite {
        val invite = CollaborationInvite(
            id = generateInviteId(),
            sessionId = sessionId,
            inviterUserId = getCurrentUserId(),
            inviteeEmail = userEmail,
            role = role,
            status = InviteStatus.PENDING,
            createdAt = Date(),
            expiresAt = Date(System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000)
        )
        saveCollaborationInvite(invite)
        sendInviteNotification(invite)
        updatePendingInvites()
        return invite
    }

    suspend fun acceptInvite(inviteId: String): Boolean {
        val invite = getCollaborationInvite(inviteId) ?: return false
        if (invite.status != InviteStatus.PENDING) return false
        if (invite.expiresAt?.before(Date()) == true) {
            invite.status = InviteStatus.EXPIRED
            saveCollaborationInvite(invite)
            return false
        }
        val session = getCollaborationSession(invite.sessionId ?: return false)
        val participant = SessionParticipant(
            userId = getCurrentUserId(),
            role = invite.role,
            joinedAt = Date(),
            status = ParticipantStatus.ACTIVE
        )
        session.participants.add(participant)
        saveCollaborationSession(session)
        invite.status = InviteStatus.ACCEPTED
        invite.acceptedAt = Date()
        saveCollaborationInvite(invite)
        notifyParticipantsAboutNewMember(session, participant)
        updateActiveSessions()
        updatePendingInvites()
        return true
    }

    suspend fun declineInvite(inviteId: String): Boolean {
        val invite = getCollaborationInvite(inviteId) ?: return false
        if (invite.status == InviteStatus.PENDING) {
            invite.status = InviteStatus.DECLINED
            invite.declinedAt = Date()
            saveCollaborationInvite(invite)
            updatePendingInvites()
            return true
        }
        return false
    }

    fun getActiveUsers(comicId: String): StateFlow<List<ActiveUser>> =
        _activeUsersByProject.getOrPut(comicId) { MutableStateFlow(emptyList()) }.asStateFlow()

    // --- Вспомогательные методы и заглушки ---
    private fun generateSessionId(): String = UUID.randomUUID().toString()
    private fun generateInviteId(): String = UUID.randomUUID().toString()
    private fun getCurrentUserId(): String = "current_user" // TODO: заменить на реальную логику

    private fun saveCollaborationSession(session: CollaborationSession) {
        _activeSessions.update { it + session }
    }
    private fun saveCollaborationInvite(invite: CollaborationInvite) {
        _pendingInvites.update { it + invite }
    }
    private fun getCollaborationSession(sessionId: String?): CollaborationSession {
        return _activeSessions.value.first { it.id == sessionId }
    }
    private fun getCollaborationInvite(inviteId: String?): CollaborationInvite? {
        return _pendingInvites.value.firstOrNull { it.id == inviteId }
    }
    private fun updateActiveSessions() {}
    private fun updatePendingInvites() {}
    private fun sendInviteNotification(invite: CollaborationInvite) {}
    private fun notifyParticipantsAboutNewMember(session: CollaborationSession, participant: SessionParticipant) {}
} 