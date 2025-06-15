package com.example.mrcomic.theme.data.repository

import com.example.mrcomic.data.ReadingStats
import com.example.mrcomic.data.ReadingStatsDao
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class ReadingStatsRepository @Inject constructor(
    private val dao: ReadingStatsDao
) {
    fun getAllStats(): Flow<List<ReadingStats>> = dao.getAllStats()
    suspend fun getStats(comicId: String): ReadingStats? = dao.getStats(comicId)
    suspend fun insertOrUpdateStats(stats: ReadingStats) = dao.insertStats(stats)
} 