package com.example.feature.reader.ui

import com.example.core.model.ComicFormat
import com.example.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderContentPolicyTest {

    @Test
    fun textFormatsInPageModesResolveToTextPage() {
        val textFormats = listOf(
            ComicFormat.EPUB,
            ComicFormat.FB2,
            ComicFormat.TXT,
            ComicFormat.HTML,
            ComicFormat.MARKDOWN,
            ComicFormat.MOBI,
            ComicFormat.RTF,
            ComicFormat.DOCX
        )
        val pageModes = listOf(
            ReadingMode.PAGE_LTR,
            ReadingMode.PAGE_RTL,
            ReadingMode.DUAL_PAGE
        )

        textFormats.forEach { format ->
            pageModes.forEach { mode ->
                assertEquals(
                    "format=$format mode=$mode",
                    ReaderContainerKind.TEXT_PAGE,
                    resolveReaderContainerKind(format, mode, readerRendersHtmlContent = true)
                )
            }
        }
    }

    @Test
    fun textFormatsInWebtoonResolveToTextWebtoon() {
        assertEquals(
            ReaderContainerKind.TEXT_WEBTOON,
            resolveReaderContainerKind(
                ComicFormat.EPUB,
                ReadingMode.WEBTOON,
                readerRendersHtmlContent = true
            )
        )
    }

    @Test
    fun rasterFormatsInPageModesResolveToRasterPage() {
        listOf(ComicFormat.CBZ, ComicFormat.CBR, ComicFormat.PDF, ComicFormat.DJVU).forEach { format ->
            listOf(ReadingMode.PAGE_LTR, ReadingMode.PAGE_RTL, ReadingMode.DUAL_PAGE).forEach { mode ->
                assertEquals(
                    ReaderContainerKind.RASTER_PAGE,
                    resolveReaderContainerKind(format, mode, readerRendersHtmlContent = false)
                )
            }
        }
    }

    @Test
    fun rasterFormatsInWebtoonResolveToRasterWebtoon() {
        assertEquals(
            ReaderContainerKind.RASTER_WEBTOON,
            resolveReaderContainerKind(
                ComicFormat.CBZ,
                ReadingMode.WEBTOON,
                readerRendersHtmlContent = false
            )
        )
    }

    @Test
    fun djvuDiagnosticHtmlStillRoutesToRasterContainers() {
        assertEquals(
            ReaderContainerKind.RASTER_PAGE,
            resolveReaderContainerKind(
                ComicFormat.DJVU,
                ReadingMode.PAGE_LTR,
                readerRendersHtmlContent = true
            )
        )
        assertEquals(
            ReaderContainerKind.RASTER_WEBTOON,
            resolveReaderContainerKind(
                ComicFormat.DJVU,
                ReadingMode.WEBTOON,
                readerRendersHtmlContent = true
            )
        )
    }

    @Test
    fun textInZipUsesHtmlFlagEvenWhenStoredFormatIsArchive() {
        assertEquals(
            ReaderContainerKind.TEXT_PAGE,
            resolveReaderContainerKind(
                ComicFormat.ZIP,
                ReadingMode.PAGE_LTR,
                readerRendersHtmlContent = true
            )
        )
    }

    @Test
    fun unknownFormatWithoutHtmlFlagUsesRasterPage() {
        assertEquals(
            ReaderContainerKind.RASTER_PAGE,
            resolveReaderContainerKind(
                ComicFormat.UNKNOWN,
                ReadingMode.PAGE_LTR,
                readerRendersHtmlContent = false
            )
        )
    }

    @Test
    fun epubUsesJsPaginationOnlyInTextPageMode() {
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.EPUB)
        )
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, null)
        )
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.UNKNOWN)
        )
        assertEquals(
            true,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.TXT)
        )
    }

    @Test
    fun inlineHtmlChapterLinksBlockedInEpubPageMode() {
        assertEquals(
            false,
            shouldBlockInlineHtmlChapterNavigation(
                containerKind = ReaderContainerKind.TEXT_PAGE,
                readingMode = ReadingMode.PAGE_LTR,
                hrefFilePart = "1801890453487475839_11-h-12.htm.html#chap12",
                currentAssetBasePath = "OEBPS/1801890453487475839_11-h-0.htm.html"
            )
        )
        assertEquals(
            false,
            shouldBlockInlineHtmlChapterNavigation(
                containerKind = ReaderContainerKind.TEXT_PAGE,
                readingMode = ReadingMode.PAGE_LTR,
                hrefFilePart = "1801890453487475839_11-h-0.htm.html#pgepubid00002",
                currentAssetBasePath = "OEBPS/1801890453487475839_11-h-0.htm.html"
            )
        )
    }

    @Test
    fun readerAssetSpineNavigationBlockedInPagedMode() {
        assertEquals(
            true,
            shouldBlockReaderAssetSpineNavigation(
                pagedModeScrollLock = true,
                currentUrl = "https://appassets.androidplatform.net/reader/content/OEBPS/1801890453487475839_11-h-0.htm.html",
                targetUrl = "https://appassets.androidplatform.net/reader/content/OEBPS/1801890453487475839_11-h-12.htm.html#chap12"
            )
        )
        assertEquals(
            false,
            shouldBlockReaderAssetSpineNavigation(
                pagedModeScrollLock = true,
                currentUrl = "https://appassets.androidplatform.net/reader/content/OEBPS/1801890453487475839_11-h-0.htm.html",
                targetUrl = "https://appassets.androidplatform.net/reader/content/OEBPS/1801890453487475839_11-h-0.htm.html#pgepubid00002"
            )
        )
    }
}
