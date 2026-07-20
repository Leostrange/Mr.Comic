package io.leostrange.mrcomic.core.domain.coroutines

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Application-lifetime coroutine scope for fire-and-forget work that must outlive a ViewModel —
 * e.g. persisting reading progress and closing the book session in
 * [io.leostrange.mrcomic.feature.reader.ui.ReaderViewModel.onCleared] without blocking the main thread
 * (those paths previously used `runBlocking`, causing an ANR on slow storage when leaving the reader).
 *
 * Backed by a [SupervisorJob] on [Dispatchers.IO]; intentionally never cancelled during normal
 * operation so in-flight persistence completes even after the owning ViewModel is destroyed.
 */
@Singleton
class AppCoroutineScope @Inject constructor() :
    CoroutineScope by CoroutineScope(SupervisorJob() + Dispatchers.IO)
