package io.leostrange.mrcomic.engine.registry

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.engine.api.BookEngine
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Central registry that resolves a [BookFormat] to the appropriate [BookEngine].
 *
 * Engines are injected via Dagger `@IntoSet` multibinding — to register a new
 * engine, add `@Binds @IntoSet` in a Hilt module.
 *
 * Usage:
 * ```kotlin
 * val engine = registry.resolve(format) ?: return null
 * val session = engine.open(request)
 * ```
 */
@Singleton
class BookEngineRegistry @Inject constructor(
    private val engines: Set<@JvmSuppressWildcards BookEngine>
) {
    /**
     * Returns the engine whose [BookEngine.supportedFormats] contains [format],
     * or null if no engine is registered for that format.
     */
    fun resolve(format: BookFormat): BookEngine? {
        return engines.firstOrNull { format in it.supportedFormats }
    }
}
