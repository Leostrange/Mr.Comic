package io.leostrange.mrcomic.feature.reader.harness

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

@RunWith(AndroidJUnit4::class)
class ReaderCorpusManifestTest {

    @Test
    fun bundledManifestHasUniqueSupportedAndVerifiedFixtures() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val manifest = ReaderCorpusManifest.load(context)

        assertEquals(1, manifest.schemaVersion)
        assertEquals(ReaderCorpusManifest.SUPPORTED_FORMATS, manifest.fixtures.map { it.format }.toSet())
        assertEquals(emptyList<String>(), manifest.validate(context))
    }

    @Test
    fun everyManifestFixtureCanBeMaterialized() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val outputDir = File(context.cacheDir, "reader_corpus_manifest_test").apply {
            deleteRecursively()
            mkdirs()
        }
        try {
            val manifest = ReaderCorpusManifest.load(context)
            val factory = ReaderCorpusFixtureFactory(context, outputDir)

            val files = manifest.fixtures.associate { it.id to factory.materialize(it) }

            assertEquals(manifest.fixtures.size, files.size)
            assertTrue(
                files.values.all { file ->
                    (file.isFile && file.length() > 0L) ||
                        (file.isDirectory && file.walkTopDown().any { it.isFile && it.length() > 0L })
                }
            )
        } finally {
            outputDir.deleteRecursively()
        }
    }
}
