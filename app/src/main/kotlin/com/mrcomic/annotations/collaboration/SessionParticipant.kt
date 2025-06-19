package com.mrcomic.annotations.collaboration

data class SessionParticipant(
    val userId: String,
    val role: String,
    val joinedAt: Long = System.currentTimeMillis()
) 