package com.example.mrcomic.backup

import kotlinx.serialization.Serializable
import com.example.mrcomic.theme.data.model.Comic
import com.example.mrcomic.theme.data.model.User
import com.example.mrcomic.data.ReaderSettings
import com.example.mrcomic.data.ReadingStats

@Serializable
data class BackupData(
    val comics: List<Comic>,
    val users: List<User>,
    val readerSettings: ReaderSettings,
    val readingStats: List<ReadingStats>
) 