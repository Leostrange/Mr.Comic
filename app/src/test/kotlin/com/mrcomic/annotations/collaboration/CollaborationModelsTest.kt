package com.mrcomic.annotations.collaboration

import org.junit.Assert.*
import org.junit.Test
import java.util.*

class CollaborationModelsTest {
    @Test
    fun testCollaborationSessionBasic() {
        val session = CollaborationSession(
            id = "1",
            comicId = "comic1",
            name = "Test Session",
            ownerId = "user1"
        )
        assertEquals("1", session.id)
        assertEquals("Test Session", session.name)
        assertTrue(session.isOwner("user1"))
        assertTrue(session.isActive())
    }

    @Test
    fun testCollaborationPermissionsRoles() {
        val viewer = CollaborationPermissions.viewer()
        val owner = CollaborationPermissions.owner()
        assertTrue(viewer.canView)
        assertFalse(viewer.canEdit)
        assertTrue(owner.canManage)
        assertTrue(owner.canInvite)
    }

    @Test
    fun testActiveUserDefaults() {
        val user = ActiveUser(userId = "u1", username = "testuser")
        assertEquals(PresenceStatus.ONLINE, user.presenceStatus)
        assertEquals("testuser", user.username)
    }

    @Test
    fun testAnnotationCommentStatus() {
        val comment = AnnotationComment(
            id = "c1",
            sessionId = "s1",
            userId = "u1",
            content = "Hello!"
        )
        assertEquals(CommentStatus.ACTIVE, comment.status)
        assertEquals("Hello!", comment.content)
    }

    @Test
    fun testRealtimeChangeType() {
        val change = RealtimeChange(
            id = "chg1",
            sessionId = "s1",
            userId = "u1",
            type = ChangeType.UPDATE,
            data = mapOf("field" to "value")
        )
        assertEquals(ChangeType.UPDATE, change.type)
        assertEquals("value", change.data["field"])
    }

    @Test
    fun testSessionParticipant() {
        val participant = SessionParticipant(userId = "u1", role = "editor")
        assertEquals("u1", participant.userId)
        assertEquals("editor", participant.role)
    }
} 