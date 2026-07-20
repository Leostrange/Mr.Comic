package io.leostrange.mrcomic.core.domain.usecase

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatDetector
import javax.inject.Inject

class GetComicPagesUseCase @Inject constructor(
    private val formatFactory: FormatFactory
) {
    /**
     * Открывает комикс по пути и возвращает список bitmap-страниц.
     * @param path  путь к файлу или content:// URI
     * @param format ComicFormat (UNKNOWN — автодетект по magic bytes / расширению)
     */
    suspend operator fun invoke(path: String, format: ComicFormat): Result<List<Bitmap>> =
        runCatchingResult {
            val resolved = if (format == ComicFormat.UNKNOWN) {
                FormatDetector.detectByExtension(path)
            } else {
                format
            }
            val reader = formatFactory.createReader(path, resolved)
                ?: error("Формат не поддерживается: $resolved")
            val count = reader.getPageCount()
            (0 until count).mapNotNull { reader.getPage(it) }.also { reader.close() }
        }
}
