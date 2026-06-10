package com.example.engine.registry

import com.example.core.model.BookFormat
import com.example.engine.api.BookEngine
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class BookEngineRegistry @Inject constructor(
    private val engines: Set<@JvmSuppressWildcards BookEngine>
) {
    fun resolve(format: BookFormat): BookEngine {
        return engines.firstOrNull { format in it.supportedFormats }
            ?: error("No engine registered for format: $format")
    }
}
