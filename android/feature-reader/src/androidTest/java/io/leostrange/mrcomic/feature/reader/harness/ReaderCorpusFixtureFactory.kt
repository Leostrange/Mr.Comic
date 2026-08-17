package io.leostrange.mrcomic.feature.reader.harness

import android.content.Context
import java.io.File

class ReaderCorpusFixtureFactory(
    private val context: Context,
    private val outputDir: File
) {
    fun materialize(fixture: ReaderCorpusFixture): File {
        outputDir.mkdirs()
        return when (fixture.sourceType) {
            ReaderCorpusManifest.SOURCE_ASSET -> copyAsset(fixture)
            ReaderCorpusManifest.SOURCE_GENERATOR -> generate(fixture)
            else -> error("Unsupported sourceType=${fixture.sourceType}")
        }.also { file ->
            val populatedFile = file.isFile && file.length() > 0L
            val populatedDirectory = file.isDirectory && file.walkTopDown().any { it.isFile && it.length() > 0L }
            check(populatedFile || populatedDirectory) { "Fixture ${fixture.id} was not materialized" }
        }
    }

    private fun copyAsset(fixture: ReaderCorpusFixture): File {
        val output = File(outputDir, fixture.source)
        context.assets.open("reader-corpus/${fixture.source}").use { input ->
            output.outputStream().use { input.copyTo(it) }
        }
        return output
    }

    private fun generate(fixture: ReaderCorpusFixture): File = when (fixture.source) {
        "epub-basic-v1" -> TestBookBuilder.buildEpub(
            title = "epub-basic",
            chapters = listOf(
                TestBookBuilder.TestChapter("Chapter one", listOf("A stable EPUB paragraph. ".repeat(20))),
                TestBookBuilder.TestChapter("Chapter two", listOf("The second EPUB section. ".repeat(20)))
            ),
            outputDir = outputDir
        )
        "docx-basic-v1" -> TestBookBuilder.buildDocx(outputDir)
        "cbz-basic-v1" -> TestBookBuilder.buildCbz(outputDir)
        "text-archive-basic-v1" -> TestBookBuilder.buildTextArchive(outputDir)
        "pdf-basic-v1" -> TestBookBuilder.buildPdf(outputDir)
        "image-folder-basic-v1" -> TestBookBuilder.buildImageFolder(outputDir)
        else -> error("Unknown fixture generator=${fixture.source}")
    }
}
