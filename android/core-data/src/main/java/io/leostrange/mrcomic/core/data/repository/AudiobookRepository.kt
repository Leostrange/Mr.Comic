package io.leostrange.mrcomic.core.data.repository

import io.leostrange.mrcomic.core.data.db.AudiobookDao
import io.leostrange.mrcomic.core.data.db.AudiobookEntity
import io.leostrange.mrcomic.core.model.AudioChapter
import io.leostrange.mrcomic.core.model.Audiobook
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

interface AudiobookRepository {
    fun getAllFlow(): Flow<List<Audiobook>>
    suspend fun getById(id: String): Audiobook?
    suspend fun upsert(audiobook: Audiobook)
    suspend fun delete(id: String)
    suspend fun saveProgress(id: String, chapterIndex: Int, positionMs: Long)
    suspend fun saveSpeed(id: String, speed: Float)
    suspend fun updateChapters(id: String, chapters: List<AudioChapter>)
}

@Singleton
class AudiobookRepositoryImpl @Inject constructor(
    private val dao: AudiobookDao,
    private val gson: Gson
) : AudiobookRepository {

    override fun getAllFlow(): Flow<List<Audiobook>> =
        dao.getAllFlow().map { list -> list.map { it.toModel(gson) } }

    override suspend fun getById(id: String): Audiobook? =
        dao.getById(id)?.toModel(gson)

    override suspend fun upsert(audiobook: Audiobook) =
        dao.upsert(audiobook.toEntity(gson))

    override suspend fun delete(id: String) = dao.deleteById(id)

    override suspend fun saveProgress(id: String, chapterIndex: Int, positionMs: Long) =
        dao.saveProgress(id, chapterIndex, positionMs)

    override suspend fun saveSpeed(id: String, speed: Float) =
        dao.saveSpeed(id, speed)

    override suspend fun updateChapters(id: String, chapters: List<AudioChapter>) {
        val json = gson.toJson(chapters.map { ChapterJson(it.index, it.title, it.uri, it.durationMs) })
        dao.updateChapters(id, json)
    }
}

// ── Mapping helpers ─────────────────────────────────────────────────────────

private data class ChapterJson(
    val index: Int,
    val title: String,
    val uri: String,
    val durationMs: Long
)

@Suppress("UNCHECKED_CAST")
private fun AudiobookEntity.toModel(gson: Gson): Audiobook {
    val type = object : TypeToken<List<ChapterJson>>() {}.type
    val chapters: List<ChapterJson> = try {
        gson.fromJson<List<ChapterJson>>(chaptersJson, type) ?: emptyList()
    } catch (_: Exception) {
        emptyList()
    }
    return Audiobook(
        id = id,
        title = title,
        coverUri = coverUri,
        sourcePath = sourcePath,
        sourceIsFolder = sourceIsFolder,
        chapters = chapters.map { AudioChapter(it.index, it.title, it.uri, it.durationMs) },
        lastChapterIndex = lastChapterIndex,
        lastPositionMs = lastPositionMs,
        speed = speed,
        addedAt = addedAt
    )
}

private fun Audiobook.toEntity(gson: Gson): AudiobookEntity {
    val json = gson.toJson(chapters.map { ChapterJson(it.index, it.title, it.uri, it.durationMs) })
    return AudiobookEntity(
        id = id,
        title = title,
        coverUri = coverUri,
        sourcePath = sourcePath,
        sourceIsFolder = sourceIsFolder,
        chaptersJson = json,
        lastChapterIndex = lastChapterIndex,
        lastPositionMs = lastPositionMs,
        speed = speed,
        addedAt = addedAt
    )
}
