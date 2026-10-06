package io.leostrange.mrcomic.feature.reader.domain.progress

import android.util.Log
import io.leostrange.mrcomic.engine.api.TextDocumentSection
import java.io.File

/** Per-section visible text lengths used as [ReaderBookProgress] weights. */
internal object ReaderSectionWeights {

    private val invisibleBlocks = Regex("(?is)<(head|script|style|template)\\b.*?</\\1\\s*>")
    private val comments = Regex("(?s)<!--.*?-->")
    private val tags = Regex("<[^>]*>")
    private val entities = Regex("&(#\\d+|#x[0-9a-fA-F]+|[a-zA-Z][a-zA-Z0-9]*);")

    /** Text length as a browser would count text nodes: tags removed, entities as one char. */
    fun visibleTextLength(html: String): Int = html
        .replace(invisibleBlocks, "")
        .replace(comments, "")
        .replace(tags, "")
        .replace(entities, "_")
        .length

    /**
     * Sums splits per engine section; a section without splits weighs 0. Null for an index
     * outside [sectionCount] or a book without any text.
     */
    fun fromSections(sections: List<TextDocumentSection>, sectionCount: Int): List<Int>? {
        if (sectionCount <= 0 || sections.isEmpty()) return null
        val weights = IntArray(sectionCount)
        sections.forEach { section ->
            if (section.index !in 0 until sectionCount) return null
            weights[section.index] += visibleTextLength(section.html)
        }
        return weights.toList().takeIf { list -> list.any { it > 0 } }
    }
}

/** Tiny file cache so reopening a book does not re-parse every section. */
internal class ReaderSectionWeightsCache(private val directory: File) {

    fun read(comicId: String, key: String): List<Int>? {
        val file = file(comicId).takeIf { it.isFile } ?: return null
        return runCatching {
            val lines = file.readLines()
            if (lines.size != 2 || lines[0] != key) null else lines[1].split(',').map { it.toInt() }
        }.onFailure { Log.w(TAG, "Unreadable section weights cache ${file.name}", it) }.getOrNull()
    }

    fun write(comicId: String, key: String, weights: List<Int>) {
        runCatching {
            directory.mkdirs()
            file(comicId).writeText("$key\n${weights.joinToString(",")}")
        }.onFailure { Log.w(TAG, "Section weights cache not written", it) }
    }

    private fun file(comicId: String) = File(directory, comicId.replace(Regex("[^A-Za-z0-9._-]"), "_"))

    companion object {
        private const val TAG = "ReaderSectionWeights"

        fun key(path: String, fileSize: Long, sectionCount: Int) = "v1|$path|$fileSize|$sectionCount"
    }
}
