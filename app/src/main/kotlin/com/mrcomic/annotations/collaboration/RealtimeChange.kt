package com.mrcomic.annotations.collaboration

import java.util.*

enum class ChangeType {
    CREATE, UPDATE, DELETE
}

data class RealtimeChange(
    val id: String,
    val sessionId: String,
    val userId: String,
    val type: ChangeType,
    val data: Map<String, Any>,
    val timestamp: Date = Date()
) 