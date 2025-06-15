package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.activeProfileDataStore: DataStore<Preferences> by preferencesDataStore(name = "active_profile")

object ActiveProfileManager {
    private val ACTIVE_PROFILE_ID_KEY = stringPreferencesKey("active_profile_id")

    fun getActiveProfileId(context: Context): Flow<String?> {
        return context.activeProfileDataStore.data.map { preferences ->
            preferences[ACTIVE_PROFILE_ID_KEY]
        }
    }

    suspend fun setActiveProfileId(context: Context, profileId: String) {
        context.activeProfileDataStore.edit { preferences ->
            preferences[ACTIVE_PROFILE_ID_KEY] = profileId
        }
    }

    suspend fun clearActiveProfileId(context: Context) {
        context.activeProfileDataStore.edit { preferences ->
            preferences.remove(ACTIVE_PROFILE_ID_KEY)
        }
    }
} 