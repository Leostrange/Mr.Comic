package io.leostrange.mrcomic.core.domain.translation

import android.util.Log
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Serial translation queue that processes one translation at a time.
 *
 * Prevents UI freezes by ensuring translations are processed sequentially
 * on a background thread. Provides progress tracking for chapter-level
 * translation operations.
 */
@Singleton
class TranslationQueue @Inject constructor(
    private val translatorEngine: CachingTranslatorEngine
) {
    private val scope = CoroutineScope(Dispatchers.IO + Job())

    private data class TranslationJob(
        val id: String,
        val text: String,
        val sourceLang: String,
        val targetLang: String,
        val callback: (Result<String>) -> Unit
    )

    private val queue = Channel<TranslationJob>(Channel.UNLIMITED)

    private val _queueSize = MutableStateFlow(0)
    val queueSize: StateFlow<Int> = _queueSize

    private val _activeTranslation = MutableStateFlow<String?>(null)
    val activeTranslation: StateFlow<String?> = _activeTranslation

    // Chapter translation progress
    private val _chapterProgress = MutableStateFlow(ChapterTranslationProgress())
    val chapterProgress: StateFlow<ChapterTranslationProgress> = _chapterProgress

    private val pendingJobs = ConcurrentHashMap<String, TranslationJob>()

    init {
        // Start the queue processor
        repeat(2) { workerId ->
            scope.launch {
                for (job in queue) {
                    _activeTranslation.value = job.id
                    _queueSize.value = pendingJobs.size

                    try {
                        val result = translatorEngine.translate(
                            text = job.text,
                            sourceLang = job.sourceLang,
                            targetLang = job.targetLang
                        )
                        job.callback(Result.success(result))
                    } catch (e: Exception) {
                        Log.w("TranslationQueue", "Translation failed for ${job.id}", e)
                        job.callback(Result.failure(e))
                    } finally {
                        pendingJobs.remove(job.id)
                        _queueSize.value = pendingJobs.size
                        _activeTranslation.value = null
                    }
                }
            }
        }
    }

    /**
     * Enqueue a single text translation. Returns a unique job ID.
     */
    fun enqueue(
        text: String,
        sourceLang: String,
        targetLang: String,
        callback: (Result<String>) -> Unit
    ): String {
        val id = "tx_${System.currentTimeMillis()}_${text.hashCode().toString(16)}"
        val job = TranslationJob(id, text, sourceLang, targetLang, callback)
        pendingJobs[id] = job
        queue.trySend(job)
        _queueSize.value = pendingJobs.size
        return id
    }

    /**
     * Translate a chapter by splitting it into chunks and processing sequentially.
     * Progress is reported via [chapterProgress].
     */
    fun translateChapter(
        paragraphs: List<String>,
        sourceLang: String,
        targetLang: String,
        onParagraphTranslated: (index: Int, translated: String) -> Unit,
        onComplete: (List<String>) -> Unit,
        onError: (Exception) -> Unit
    ) {
        scope.launch {
            val results = mutableListOf<String>()
            val total = paragraphs.size

            _chapterProgress.value = ChapterTranslationProgress(
                total = total,
                completed = 0,
                isActive = true
            )

            try {
                for ((index, paragraph) in paragraphs.withIndex()) {
                    if (paragraph.isBlank()) {
                        results.add(paragraph)
                        onParagraphTranslated(index, paragraph)
                        continue
                    }

                    // Chunk long paragraphs
                    val chunks = chunkText(paragraph, MAX_CHUNK_SIZE)
                    val translatedChunks = chunks.map { chunk ->
                        translatorEngine.translate(chunk, sourceLang, targetLang)
                    }
                    val translated = translatedChunks.joinToString(" ")

                    results.add(translated)
                    onParagraphTranslated(index, translated)

                    _chapterProgress.value = ChapterTranslationProgress(
                        total = total,
                        completed = index + 1,
                        isActive = true,
                        currentParagraph = paragraph.take(50)
                    )
                }

                _chapterProgress.value = ChapterTranslationProgress(
                    total = total,
                    completed = total,
                    isActive = false
                )
                onComplete(results)
            } catch (e: Exception) {
                _chapterProgress.value = _chapterProgress.value.copy(isActive = false)
                onError(e)
            }
        }
    }

    companion object {
        /** Maximum characters per translation chunk. */
        const val MAX_CHUNK_SIZE = 500

        /**
         * Split text into chunks at sentence boundaries.
         */
        fun chunkText(text: String, maxSize: Int): List<String> {
            if (text.length <= maxSize) return listOf(text)

            val chunks = mutableListOf<String>()
            val sentences = text.split(Regex("(?<=[.!?。！？])\\s+"))
            val current = StringBuilder()

            for (sentence in sentences) {
                if (current.length + sentence.length + 1 > maxSize && current.isNotEmpty()) {
                    chunks.add(current.toString().trim())
                    current.clear()
                }
                if (current.isNotEmpty()) current.append(" ")
                current.append(sentence)
            }
            if (current.isNotEmpty()) {
                chunks.add(current.toString().trim())
            }

            return chunks.ifEmpty { listOf(text) }
        }
    }
}

data class ChapterTranslationProgress(
    val total: Int = 0,
    val completed: Int = 0,
    val isActive: Boolean = false,
    val currentParagraph: String? = null
) {
    val percent: Int get() = if (total > 0) (completed * 100 / total) else 0
}
