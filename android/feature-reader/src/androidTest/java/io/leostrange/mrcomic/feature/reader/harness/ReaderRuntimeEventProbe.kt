package io.leostrange.mrcomic.feature.reader.harness

import java.util.concurrent.atomic.AtomicLong

enum class ReaderRuntimeEventType {
    LOAD_REQUESTED,
    PAGE_STARTED,
    PAGE_COMMITTED,
    PAGE_FINISHED,
    CONTENT_READY,
    CONTENT_EMPTY,
    LOAD_FAILED,
    DISPOSED
}

data class ReaderRuntimeEvent(
    val sequence: Long,
    val generation: Long,
    val type: ReaderRuntimeEventType,
    val elapsedMillis: Long,
    val detail: String? = null
)

data class ReaderRuntimeProbeSummary(
    val generationCount: Int,
    val readyGenerationCount: Int,
    val disposedGenerationCount: Int,
    val failedGenerationCount: Int,
    val timeToReadyMillis: List<Long>
)

/**
 * Thread-safe event recorder used by instrumented reader tests.
 *
 * WebView callbacks arrive on the main thread while assertions normally run on
 * the instrumentation thread. The probe records both current and stale
 * generations without making runtime decisions, so characterization tests can
 * prove which callbacks happened and which generation was active at the time.
 */
class ReaderRuntimeEventProbe(
    private val clockMillis: () -> Long = { System.nanoTime() / 1_000_000L }
) {
    private val sequence = AtomicLong(0L)
    private val generation = AtomicLong(0L)
    private val events = mutableListOf<ReaderRuntimeEvent>()
    private val startedAt = clockMillis()

    @Volatile
    var activeGeneration: Long = 0L
        private set

    fun beginLoad(documentId: String): Long {
        val nextGeneration = generation.incrementAndGet()
        activeGeneration = nextGeneration
        record(nextGeneration, ReaderRuntimeEventType.LOAD_REQUESTED, documentId)
        return nextGeneration
    }

    fun record(
        generation: Long,
        type: ReaderRuntimeEventType,
        detail: String? = null
    ) {
        val event = ReaderRuntimeEvent(
            sequence = sequence.incrementAndGet(),
            generation = generation,
            type = type,
            elapsedMillis = (clockMillis() - startedAt).coerceAtLeast(0L),
            detail = detail?.take(MAX_DETAIL_LENGTH)
        )
        synchronized(events) {
            events += event
        }
    }

    fun snapshot(): List<ReaderRuntimeEvent> = synchronized(events) { events.toList() }

    fun eventsFor(generation: Long): List<ReaderRuntimeEvent> =
        snapshot().filter { it.generation == generation }

    fun trace(): String = snapshot().joinToString(separator = "\n") { event ->
        buildString {
            append(event.sequence)
            append('|')
            append(event.generation)
            append('|')
            append(event.type.name)
            append('|')
            append(event.elapsedMillis)
            event.detail?.let {
                append('|')
                append(it.replace('\n', ' '))
            }
        }
    }

    fun summary(): ReaderRuntimeProbeSummary {
        val snapshot = snapshot()
        val byGeneration = snapshot.groupBy { it.generation }.filterKeys { it > 0L }
        return ReaderRuntimeProbeSummary(
            generationCount = byGeneration.size,
            readyGenerationCount = byGeneration.values.count { eventsForGeneration ->
                eventsForGeneration.any { it.type == ReaderRuntimeEventType.CONTENT_READY }
            },
            disposedGenerationCount = byGeneration.values.count { eventsForGeneration ->
                eventsForGeneration.any { it.type == ReaderRuntimeEventType.DISPOSED }
            },
            failedGenerationCount = byGeneration.values.count { eventsForGeneration ->
                eventsForGeneration.any { it.type == ReaderRuntimeEventType.LOAD_FAILED }
            },
            timeToReadyMillis = byGeneration.values.mapNotNull(::timeToReady)
        )
    }

    private fun timeToReady(eventsForGeneration: List<ReaderRuntimeEvent>): Long? {
        val requestedAt = eventsForGeneration.firstOrNull {
            it.type == ReaderRuntimeEventType.LOAD_REQUESTED
        }?.elapsedMillis ?: return null
        val readyAt = eventsForGeneration.firstOrNull {
            it.type == ReaderRuntimeEventType.CONTENT_READY
        }?.elapsedMillis ?: return null
        return (readyAt - requestedAt).coerceAtLeast(0L)
    }

    private companion object {
        const val MAX_DETAIL_LENGTH = 240
    }
}
