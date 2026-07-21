package io.leostrange.mrcomic.core.model.repository

/**
 * Cover image management operations.
 *
 * Handles cover repair and regeneration.
 */
interface CoverRepository {
    suspend fun repairStoredCovers(): Int
}
