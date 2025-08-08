package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.domain.util.Result
import javax.inject.Inject

class LoadComicUseCase @Inject constructor() {
    suspend operator fun invoke(uri: Uri): Result<Unit> {
        return try {
            // Actual reader integration is handled in feature-reader. Domain just validates input.
            if (uri.toString().isBlank()) return Result.Error(IllegalArgumentException("Empty URI"))
            Result.Success(Unit)
        } catch (e: Exception) {
            Result.Error(e)
        }
    }

    fun releaseResources() {
        // no-op for pure domain
    }
}

