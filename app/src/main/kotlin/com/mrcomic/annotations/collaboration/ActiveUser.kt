package com.mrcomic.annotations.collaboration

enum class PresenceStatus {
    ONLINE, OFFLINE, IDLE
}

data class ActiveUser(
    val userId: String,
    val username: String,
    val presenceStatus: PresenceStatus = PresenceStatus.ONLINE,
    val lastActive: Long = System.currentTimeMillis()
) 