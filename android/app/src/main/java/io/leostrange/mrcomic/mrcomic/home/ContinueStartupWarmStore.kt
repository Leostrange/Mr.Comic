package io.leostrange.mrcomic.home

import android.util.Log
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpointStore
import io.leostrange.mrcomic.core.model.Comic
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import javax.inject.Inject
import javax.inject.Singleton

internal data class ContinueWarmSnapshot(
    val comics: List<Comic>,
    val trail: List<ReaderCheckpoint>
)

internal sealed interface ContinueWarmState {
    data object Idle : ContinueWarmState
    data object Loading : ContinueWarmState
    data class Ready(val snapshot: ContinueWarmSnapshot) : ContinueWarmState
    data object Failed : ContinueWarmState
}

@Singleton
class ContinueStartupWarmStore @Inject constructor(
    private val libraryRepository: LibraryRepository,
    private val readerCheckpointStore: ReaderCheckpointStore
) {
    private val mutex = Mutex()
    private val _state = MutableStateFlow<ContinueWarmState>(ContinueWarmState.Idle)

    internal val state: StateFlow<ContinueWarmState> = _state.asStateFlow()

    suspend fun warmUp(force: Boolean = false) {
        if (!force) {
            when (_state.value) {
                ContinueWarmState.Loading, is ContinueWarmState.Ready -> return
                else -> Unit
            }
        }

        mutex.withLock {
            if (!force) {
                when (_state.value) {
                    ContinueWarmState.Loading, is ContinueWarmState.Ready -> return
                    else -> Unit
                }
            }

            _state.value = ContinueWarmState.Loading
            _state.value = try {
                ContinueWarmState.Ready(
                    ContinueWarmSnapshot(
                        comics = libraryRepository.getAllComics().first(),
                        trail = readerCheckpointStore.checkpointTrail.first()
                    )
                )
            } catch (error: Exception) {
                Log.w("ContinueWarmStore", "Failed to warm Continue startup snapshot", error)
                ContinueWarmState.Failed
            }
        }
    }
}
