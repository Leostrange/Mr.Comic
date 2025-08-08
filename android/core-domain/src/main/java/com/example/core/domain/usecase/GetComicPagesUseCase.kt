package com.example.core.domain.usecase

import android.graphics.Bitmap
import com.example.core.domain.util.Result
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor() {
    private var cachedPageCount: Int? = null
    
    fun getTotalPages(): Result<Int> {
        return if (cachedPageCount != null) {
            Result.Success(cachedPageCount!!)
        } else {
            Result.Error(IllegalStateException("Reader not initialized"))
        }
    }

    fun getPage(pageIndex: Int): Result<Bitmap?> {
        return Result.Error(IllegalStateException("Reader not initialized"))
    }
    
    fun clearCache() {
        cachedPageCount = null
    }
}

