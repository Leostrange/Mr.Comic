package com.mrcomic.annotations.collaboration

import java.util.*

enum class UserPresenceStatus {
    ONLINE, OFFLINE, AWAY, BUSY
}

data class ActiveUser(
    var userId: String? = null,
    var userName: String? = null,
    var userAvatar: String? = null,
    var lastActiveAt: Date = Date(),
    var currentActivity: String? = null,
    var currentAnnotationId: Long? = null,
    var status: UserPresenceStatus = UserPresenceStatus.ONLINE
) {
    fun isOnline(): Boolean = lastActiveAt.time > System.currentTimeMillis() - 5 * 60 * 1000
    fun updateActivity(activity: String) {
        currentActivity = activity
        lastActiveAt = Date()
    }
} 