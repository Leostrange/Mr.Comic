package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ComicFormatReflowableClassificationTest {

    @Test
    fun heavyReflowableFormatsCoverTextAndSingleBookArchives() {
        listOf(
            ComicFormat.EPUB,
            ComicFormat.FB2,
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.RTF,
            ComicFormat.MOBI,
            ComicFormat.AZW3,
            ComicFormat.DOCX,
            ComicFormat.ODT,
            ComicFormat.CHM,
            ComicFormat.XPS,
            ComicFormat.ZIP,
            ComicFormat.RAR,
            ComicFormat.SEVENZ,
            ComicFormat.TAR
        ).forEach { format ->
            assertTrue("$format should defer full page-count parsing", format.isHeavyReflowableFormat())
        }
    }

    @Test
    fun graphicFormatsDoNotUseReflowableDeferredPageCount() {
        listOf(
            ComicFormat.CBZ,
            ComicFormat.CBR,
            ComicFormat.PDF,
            ComicFormat.DJVU
        ).forEach { format ->
            assertFalse("$format must stay on raster page-count path", format.isHeavyReflowableFormat())
        }
    }

    @Test
    fun textReadingFormatsIncludeChmAndXps() {
        listOf(
            ComicFormat.CHM,
            ComicFormat.XPS
        ).forEach { format ->
            assertTrue("$format should be treatable as text", format.isTextReadingFormat())
        }
    }
}
