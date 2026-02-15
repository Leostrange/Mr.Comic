package com.example.core.data.repository

import com.example.core.model.UserProfile
import kotlinx.coroutines.flow.Flow

interface UserRepository {
    val userProfile: Flow<UserProfile>
    suspend fun updateEmail(email: String)
    suspend fun updateAvatar(avatarUrl: String)
}
