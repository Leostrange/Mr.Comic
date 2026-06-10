package com.example.core.domain.usecase

import android.net.Uri
import com.example.core.data.repository.ComicRepository
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import javax.inject.Inject

class ScanFolderUseCase @Inject constructor(
    private val repository: ComicRepository
) {
    /** Рекурсивно сканирует папку (SAF tree URI) и добавляет найденные комиксы */
    suspend operator fun invoke(treeUri: Uri): Result<Unit> = runCatchingResult {
        repository.addComicsFromDirectory(treeUri)
    }
}
