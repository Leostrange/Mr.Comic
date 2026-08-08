package io.leostrange.mrcomic.core.interfaces.preferences

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences

/**
 * Provider interface for DataStore access.
 * Implementation lives in core-data and is injected via Hilt.
 */
interface DataStoreProvider {
    val dataStore: DataStore<Preferences>
}

/**
 * Extension property for convenient access to DataStore.
 * Requires DataStoreProvider to be available in the context.
 */
val Context.dataStore: DataStore<Preferences>
    get() = (this.applicationContext as? DataStoreProviderHolder)?.dataStoreProvider?.dataStore
        ?: throw IllegalStateException("DataStoreProvider not initialized. Ensure Hilt is initialized.")

/**
 * Interface for application to provide DataStore access.
 */
interface DataStoreProviderHolder {
    val dataStoreProvider: DataStoreProvider
}
