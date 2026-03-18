package com.example.core.data.preferences

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore

val Context.appIconDataStore: DataStore<Preferences> by preferencesDataStore(name = "app_icon_settings")

val APP_ICON_PREFERENCE_KEY = stringPreferencesKey("current_app_icon")

const val DEFAULT_APP_ICON_ID = "icon_1"
