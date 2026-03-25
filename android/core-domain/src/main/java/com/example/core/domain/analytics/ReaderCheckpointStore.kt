package com.example.core.domain.analytics

import android.content.Context
import androidx.datastore.preferences.core.MutablePreferences
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.edit
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.dataStore
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import java.io.IOException
import javax.inject.Inject
import javax.inject.Singleton

data class ReaderCheckpoint(
    val comicId: String,
    val comicTitle: String,
    val chapterTitle: String,
    val page: Int,
    val reachedAtMillis: Long = -1L
)

internal const val READER_CHECKPOINT_TRAIL_LIMIT = 3

@Singleton
class ReaderCheckpointStore @Inject constructor(
    @ApplicationContext context: Context
) {
    private val dataStore = context.dataStore

    val checkpointTrail: Flow<List<ReaderCheckpoint>> = dataStore.data
        .catch { exception ->
            if (exception is IOException) {
                emit(emptyPreferences())
            } else {
                throw exception
            }
        }
        .map(::readCheckpointTrail)
        .distinctUntilChanged()

    val latestCheckpoint: Flow<ReaderCheckpoint?> = checkpointTrail
        .map { it.firstOrNull() }
        .distinctUntilChanged()

    suspend fun recordChapterReached(
        comicId: String,
        comicTitle: String,
        chapterTitle: String,
        page: Int
    ) {
        val normalizedComicId = comicId.trim()
        val normalizedComicTitle = comicTitle.trim()
        val normalizedChapterTitle = chapterTitle.trim()
        if (
            normalizedComicId.isBlank() ||
            normalizedComicTitle.isBlank() ||
            normalizedChapterTitle.isBlank() ||
            page < 0
        ) {
            return
        }

        val checkpoint = ReaderCheckpoint(
            comicId = normalizedComicId,
            comicTitle = normalizedComicTitle,
            chapterTitle = normalizedChapterTitle,
            page = page,
            reachedAtMillis = System.currentTimeMillis()
        )

        dataStore.edit { preferences ->
            val currentTrail = readCheckpointTrail(preferences)
            if (currentTrail.firstOrNull()?.matchesLocation(checkpoint) == true) {
                return@edit
            }
            val updatedTrail = mergeCheckpointTrail(currentTrail, checkpoint)
            writeCheckpointTrail(preferences, updatedTrail)
        }
    }

    suspend fun clearCheckpoint() {
        dataStore.edit { preferences ->
            clearCheckpointTrail(preferences)
        }
    }

    suspend fun removeComicCheckpoints(comicId: String) {
        val normalizedComicId = comicId.trim()
        if (normalizedComicId.isBlank()) return

        dataStore.edit { preferences ->
            val currentTrail = readCheckpointTrail(preferences)
            val filteredTrail = removeComicCheckpoints(currentTrail, normalizedComicId)
            if (filteredTrail.size == currentTrail.size) return@edit
            writeCheckpointTrail(preferences, filteredTrail)
        }
    }

    suspend fun pruneToComicIds(validComicIds: Set<String>) {
        val normalizedIds = validComicIds
            .map(String::trim)
            .filter(String::isNotBlank)
            .toSet()

        dataStore.edit { preferences ->
            val currentTrail = readCheckpointTrail(preferences)
            val filteredTrail = pruneCheckpointTrail(currentTrail, normalizedIds)
            if (filteredTrail.size == currentTrail.size) return@edit
            writeCheckpointTrail(preferences, filteredTrail)
        }
    }

    private fun readCheckpointTrail(preferences: Preferences): List<ReaderCheckpoint> {
        return (1..READER_CHECKPOINT_TRAIL_LIMIT)
            .mapNotNull { slot -> readCheckpoint(preferences, slot) }
            .sortedByDescending { it.reachedAtMillis }
    }

    private fun readCheckpoint(
        preferences: Preferences,
        slot: Int
    ): ReaderCheckpoint? {
        val comicId = preferences[PreferencesKeys.readerCheckpointComicId(slot)].orEmpty().trim()
        val comicTitle = preferences[PreferencesKeys.readerCheckpointComicTitle(slot)].orEmpty().trim()
        val chapterTitle = preferences[PreferencesKeys.readerCheckpointChapterTitle(slot)].orEmpty().trim()
        val page = preferences[PreferencesKeys.readerCheckpointPage(slot)] ?: -1
        val reachedAtMillis = preferences[PreferencesKeys.readerCheckpointReachedAt(slot)] ?: -1L

        if (
            comicId.isBlank() ||
            comicTitle.isBlank() ||
            chapterTitle.isBlank() ||
            page < 0
        ) {
            return null
        }

        return ReaderCheckpoint(
            comicId = comicId,
            comicTitle = comicTitle,
            chapterTitle = chapterTitle,
            page = page,
            reachedAtMillis = reachedAtMillis
        )
    }

    private fun writeCheckpointTrail(
        preferences: MutablePreferences,
        trail: List<ReaderCheckpoint>
    ) {
        trail.take(READER_CHECKPOINT_TRAIL_LIMIT).forEachIndexed { index, checkpoint ->
            val slot = index + 1
            preferences[PreferencesKeys.readerCheckpointComicId(slot)] = checkpoint.comicId
            preferences[PreferencesKeys.readerCheckpointComicTitle(slot)] = checkpoint.comicTitle
            preferences[PreferencesKeys.readerCheckpointChapterTitle(slot)] = checkpoint.chapterTitle
            preferences[PreferencesKeys.readerCheckpointPage(slot)] = checkpoint.page
            preferences[PreferencesKeys.readerCheckpointReachedAt(slot)] = checkpoint.reachedAtMillis
        }
        for (slot in (trail.size + 1)..READER_CHECKPOINT_TRAIL_LIMIT) {
            clearCheckpointSlot(preferences, slot)
        }
    }

    private fun clearCheckpointTrail(preferences: MutablePreferences) {
        for (slot in 1..READER_CHECKPOINT_TRAIL_LIMIT) {
            clearCheckpointSlot(preferences, slot)
        }
    }

    private fun clearCheckpointSlot(
        preferences: MutablePreferences,
        slot: Int
    ) {
        preferences.remove(PreferencesKeys.readerCheckpointComicId(slot))
        preferences.remove(PreferencesKeys.readerCheckpointComicTitle(slot))
        preferences.remove(PreferencesKeys.readerCheckpointChapterTitle(slot))
        preferences.remove(PreferencesKeys.readerCheckpointPage(slot))
        preferences.remove(PreferencesKeys.readerCheckpointReachedAt(slot))
    }
}

private fun ReaderCheckpoint.matchesLocation(other: ReaderCheckpoint): Boolean {
    return comicId == other.comicId &&
        chapterTitle == other.chapterTitle &&
        page == other.page
}

internal fun mergeCheckpointTrail(
    currentTrail: List<ReaderCheckpoint>,
    checkpoint: ReaderCheckpoint
): List<ReaderCheckpoint> {
    return buildList {
        add(checkpoint)
        addAll(
            currentTrail
                .filterNot { it.matchesLocation(checkpoint) }
                .take(READER_CHECKPOINT_TRAIL_LIMIT - 1)
        )
    }
}

internal fun removeComicCheckpoints(
    currentTrail: List<ReaderCheckpoint>,
    comicId: String
): List<ReaderCheckpoint> {
    return currentTrail.filterNot { it.comicId == comicId }
}

internal fun pruneCheckpointTrail(
    currentTrail: List<ReaderCheckpoint>,
    validComicIds: Set<String>
): List<ReaderCheckpoint> {
    return currentTrail.filter { it.comicId in validComicIds }
}
