package com.example.feature.reader.data

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import kotlinx.coroutines.flow.Flow

@Dao
interface ReaderStateDao {
    @Query("SELECT * FROM reader_state WHERE id = 0")
    fun getState(): Flow<ReaderStateEntity?>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun setState(state: ReaderStateEntity)
} 