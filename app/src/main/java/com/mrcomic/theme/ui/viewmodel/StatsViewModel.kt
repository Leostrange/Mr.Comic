package com.example.mrcomic.theme.ui.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.ReadingStats
import com.example.mrcomic.theme.data.repository.ReadingStatsRepository
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch

class StatsViewModel(private val repository: ReadingStatsRepository) : ViewModel() {
    val stats: StateFlow<List<ReadingStats>> = repository.getAllStats()
        .stateIn(viewModelScope, SharingStarted.Lazily, emptyList())

    fun logReadingTime(comicId: String, seconds: Long) {
        viewModelScope.launch {
            val current = repository.getStats(comicId) ?: ReadingStats(comicId)
            val updated = current.copy(
                totalTimeSeconds = current.totalTimeSeconds + seconds,
                lastReadTime = System.currentTimeMillis()
            )
            repository.insertOrUpdateStats(updated)
        }
    }
} 