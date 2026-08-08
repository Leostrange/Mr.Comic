package io.leostrange.mrcomic.engine.api

/**
 * Marker interface for [BookSession] implementations that wrap a legacy
 * [FormatReader] instead of exposing their own page/asset APIs.
 *
 * Feature code can detect this capability without depending on engine-formats.
 */
interface LegacyFormatSessionAccess {
    val legacyReader: FormatReader

    suspend fun loadLegacyReader(): FormatReader = legacyReader
}
