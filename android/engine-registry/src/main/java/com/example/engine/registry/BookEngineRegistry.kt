package com.example.engine.registry

import com.example.core.model.BookFormat
import com.example.engine.api.BookEngine
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class BookEngineRegistry @Inject constructor(
    private val engines: Set<@JvmSuppressWildcards BookEngine>
) {
    /** Returns the engine for [format], or null if no engine is registered. */
    fun resolve(format: BookFormat): BookEngine? {
        return engines.firstOrNull { format in it.supportedFormats }
    }
}
