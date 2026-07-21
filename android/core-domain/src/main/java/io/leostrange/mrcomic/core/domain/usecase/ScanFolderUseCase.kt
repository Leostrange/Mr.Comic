package io.leostrange.mrcomic.core.domain.usecase

import android.net.Uri
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import javax.inject.Inject

class ScanFolderUseCase @Inject constructor(
    private val repository: ImportRepository
) {
    /** Рекурсивно сканирует папку (SAF tree URI) и добавляет найденные комиксы */
    suspend operator fun invoke(treeUri: Uri): Result<Unit> = runCatchingResult {
        repository.addComicsFromDirectory(treeUri)
    }
}
