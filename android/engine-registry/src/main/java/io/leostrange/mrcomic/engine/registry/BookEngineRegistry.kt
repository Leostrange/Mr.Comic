package io.leostrange.mrcomic.engine.registry

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.engine.api.BookEngine
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
