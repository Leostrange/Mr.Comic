package io.leostrange.mrcomic.core.data.preferences

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.interfaces.preferences.DataStoreProvider
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DataStoreProviderImpl @Inject constructor(
    @ApplicationContext private val context: Context
) : DataStoreProvider {
    override val dataStore: DataStore<Preferences>
        get() = context.dataStore
}
