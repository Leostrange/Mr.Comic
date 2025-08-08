package com.example.core.data.repository

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import com.example.core.data.di.UserPreferences
import com.example.core.model.UserProfile
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject

class UserRepositoryImpl @Inject constructor(
    @UserPreferences private val dataStore: DataStore<Preferences>
) : UserRepository {

    private object Keys {
        val USERNAME = stringPreferencesKey("username")
        val EMAIL = stringPreferencesKey("email")
        val AVATAR_URL = stringPreferencesKey("avatar_url")
    }

    override val userProfile: Flow<UserProfile> = dataStore.data.map { prefs ->
        UserProfile(
            username = prefs[Keys.USERNAME] ?: "User",
            email = prefs[Keys.EMAIL] ?: "user@example.com",
            avatarUrl = prefs[Keys.AVATAR_URL] ?: ""
        )
    }

    override suspend fun updateEmail(email: String) {
        dataStore.edit { it[Keys.EMAIL] = email }
    }

    override suspend fun updateAvatar(avatarUrl: String) {
        dataStore.edit { it[Keys.AVATAR_URL] = avatarUrl }
    }
}
