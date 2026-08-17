package io.leostrange.mrcomic.feature.reader.harness

import android.graphics.Bitmap
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.ReflowableTextFormatReader
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.djvu.StructuredDjvuBackend
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.runners.Parameterized
import java.io.File

/** Opens every supported runtime-corpus row through the production FormatFactory. */
@RunWith(Parameterized::class)
class ReaderFormatMatrixTest(
    private val fixture: ReaderCorpusFixture
) {
    private val context = InstrumentationRegistry.getInstrumentation().targetContext
    private lateinit var outputDir: File

    @Before
    fun setUp() {
        outputDir = File(context.cacheDir, "reader_format_matrix_${fixture.id}").apply {
            deleteRecursively()
            mkdirs()
        }
    }

    @After
    fun tearDown() {
        if (::outputDir.isInitialized) outputDir.deleteRecursively()
    }

    @Test
    fun opensAndProducesItsPrimaryPayload() {
        runBlocking {
            val source = ReaderCorpusFixtureFactory(context, outputDir).materialize(fixture)
            val reader = formatFactory().createReader(source.absolutePath, fixture.comicFormat())
            assertNotNull("${fixture.id}: no production reader", reader)

            reader!!
            try {
                val pageCount = reader.getPageCount()
                if (fixture.isTextFixture()) {
                    assertTrue("${fixture.id}: expected at least one engine page", pageCount >= 1)
                    assertTrue("${fixture.id}: expected HTML content", reader.rendersHtmlContent())
                    assertTrue("${fixture.id}: empty first HTML page", !reader.getHtmlPage(0).isNullOrBlank())
                    val reflowable = reader as? ReflowableTextFormatReader
                    val sectionCount = reflowable?.getTextDocumentSections()?.size ?: pageCount
                    assertTrue(
                        "${fixture.id}: sectionCount=$sectionCount " +
                            "expected>=${fixture.expectedMinSections}",
                        sectionCount >= fixture.expectedMinSections
                    )
                } else {
                    assertTrue(
                        "${fixture.id}: pageCount=$pageCount expected>=${fixture.expectedMinPages}",
                        pageCount >= fixture.expectedMinPages
                    )
                    val firstPage = reader.getPage(0)
                    assertNotNull("${fixture.id}: first raster page did not render", firstPage)
                    firstPage?.recycle()
                }
            } finally {
                reader.close()
            }
        }
    }

    private fun formatFactory() = FormatFactory(
        context = context,
        bitmapAllocator = TestBitmapAllocator,
        djvuBackend = StructuredDjvuBackend(context),
        epubStructureCache = null,
        epubManifestCache = null
    )

    companion object {
        @JvmStatic
        @Parameterized.Parameters(name = "{index}")
        fun fixtures(): List<Array<ReaderCorpusFixture>> {
            val context = InstrumentationRegistry.getInstrumentation().targetContext
            return ReaderCorpusManifest.load(context).fixtures.map { arrayOf(it) }
        }
    }
}

private object TestBitmapAllocator : BitmapAllocator {
    override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap =
        Bitmap.createBitmap(width, height, config)

    override fun release(bitmap: Bitmap) {
        if (!bitmap.isRecycled) bitmap.recycle()
    }
}

private fun ReaderCorpusFixture.comicFormat(): ComicFormat = when (format) {
    "EPUB" -> ComicFormat.EPUB
    "FB2" -> ComicFormat.FB2
    "HTML" -> ComicFormat.HTML
    "MARKDOWN" -> ComicFormat.MARKDOWN
    "TXT" -> ComicFormat.TXT
    "DOCX" -> ComicFormat.DOCX
    "TEXT_ARCHIVE" -> ComicFormat.TXT
    "CBZ" -> ComicFormat.CBZ
    "CBR" -> ComicFormat.CBR
    "PDF" -> ComicFormat.PDF
    "DJVU" -> ComicFormat.DJVU
    "IMAGE_FOLDER" -> ComicFormat.FOLDER
    else -> error("Unsupported fixture format=$format")
}

private fun ReaderCorpusFixture.isTextFixture(): Boolean = format in setOf(
    "EPUB", "FB2", "HTML", "MARKDOWN", "TXT", "DOCX", "TEXT_ARCHIVE"
)
