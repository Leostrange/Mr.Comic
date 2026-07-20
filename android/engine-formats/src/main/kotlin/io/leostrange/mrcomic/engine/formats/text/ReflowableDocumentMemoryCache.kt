package io.leostrange.mrcomic.engine.formats.text

import android.content.Context
import android.net.Uri
import io.leostrange.mrcomic.core.model.ComicFormat
import java.io.File

internal object ReflowableDocumentMemoryCache {
    private const val MAX_ENTRIES = 12

    private val cache = object : LinkedHashMap<String, Any>(8, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, Any>?): Boolean =
            size > MAX_ENTRIES
    }

    @Suppress("UNCHECKED_CAST")
    fun <T : Any> getOrPut(key: String, loader: () -> T): T {
        synchronized(cache) {
            (cache[key] as? T)?.let { return it }
        }
        val value = loader()
        synchronized(cache) {
            cache[key] = value
        }
        return value
    }

    fun keyFor(
        context: Context,
        path: String,
        format: ComicFormat,
        engine: String
    ): String {
        val identity = if (path.startsWith("content://", ignoreCase = true)) {
            val uri = Uri.parse(path)
            val size = runCatching {
                context.contentResolver.openAssetFileDescriptor(uri, "r")
                    ?.use { descriptor -> descriptor.length.takeIf { it >= 0L } }
            }.getOrNull() ?: -1L
            "content:$path:$size"
        } else {
            val file = File(path)
            "file:${file.absolutePath}:${file.length()}:${file.lastModified()}"
        }
        return "$engine:${format.name}:$identity"
    }
}
