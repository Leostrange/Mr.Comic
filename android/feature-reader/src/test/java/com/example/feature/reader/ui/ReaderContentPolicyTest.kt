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
    fun graphicFormatsNeverRouteToTextEvenWithHtmlFlag() {
        // Graphic formats must NEVER enter TEXT containers, even if the reader
        // produces HTML fallback content. This is the strict container contract.
        listOf(ComicFormat.CBZ, ComicFormat.CBR, ComicFormat.PDF, ComicFormat.DJVU).forEach { format ->
            listOf(ReadingMode.PAGE_LTR, ReadingMode.PAGE_RTL, ReadingMode.WEBTOON).forEach { mode ->
                val result = resolveReaderContainerKind(format, mode, readerRendersHtmlContent = true)
                val expected = if (mode == ReadingMode.WEBTOON)
                    ReaderContainerKind.RASTER_WEBTOON else ReaderContainerKind.RASTER_PAGE
                assertEquals(
                    "Graphic format $format with mode=$mode must stay RASTER, got $result",
                    expected,
                    result
                )
            }
        }
    }

    @Test
    fun archiveWithTextContentRoutesToText() {
        // ZIP containing EPUB/MOBI/etc → readerRendersHtmlContent=true → TEXT
        listOf(ComicFormat.ZIP, ComicFormat.RAR, ComicFormat.SEVENZ, ComicFormat.TAR).forEach { format ->
            assertEquals(
                "Archive $format with HTML content must route to TEXT_PAGE",
                ReaderContainerKind.TEXT_PAGE,
                resolveReaderContainerKind(format, ReadingMode.PAGE_LTR, readerRendersHtmlContent = true)
            )
            assertEquals(
                "Archive $format with HTML content must route to TEXT_WEBTOON",
                ReaderContainerKind.TEXT_WEBTOON,
                resolveReaderContainerKind(format, ReadingMode.WEBTOON, readerRendersHtmlContent = true)
            )
        }
    }

    @Test
    fun archiveWithImageContentRoutesToRaster() {
        // ZIP containing images (no text reader) → readerRendersHtmlContent=false → RASTER
        listOf(ComicFormat.ZIP, ComicFormat.RAR, ComicFormat.SEVENZ, ComicFormat.TAR).forEach { format ->
            assertEquals(
                "Archive $format without HTML content must route to RASTER_PAGE",
                ReaderContainerKind.RASTER_PAGE,
                resolveReaderContainerKind(format, ReadingMode.PAGE_LTR, readerRendersHtmlContent = false)
            )
            assertEquals(
                "Archive $format without HTML content must route to RASTER_WEBTOON",
                ReaderContainerKind.RASTER_WEBTOON,
                resolveReaderContainerKind(format, ReadingMode.WEBTOON, readerRendersHtmlContent = false)
            )
        }
    }

    @Test
    fun allTextFormatsUseWebViewJsPagination() {
        // All text formats (EPUB, TXT, FB2, etc.) now use WebView JS pagination.
        // The Kotlin char-split paginator is retired in favour of pixel-precise
        // TreeWalker + getClientRects() page breaks inside the WebView.
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
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.TXT)
        )
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.FB2)
        )
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.TEXT_PAGE, ComicFormat.DOCX)
        )
        // Non-text containers should also return false.
        assertEquals(
            false,
            shouldUseKotlinTextPagePagination(ReaderContainerKind.RASTER_PAGE, ComicFormat.TXT)
        )
    }

    @Test
    fun heavyTextFormatsDeferReaderPageCount() {
        listOf(ComicFormat.TXT, ComicFormat.MOBI, ComicFormat.AZW3, ComicFormat.DOCX, ComicFormat.ODT).forEach { format ->
            assertEquals(
                "format=$format",
                true,
                shouldDeferReaderPageCount(
                    readerRendersHtmlContent = true,
                    contentFormat = format
                )
            )
        }
    }

    @Test
    fun reflowableEpubDefersReaderPageCountUntilAfterFirstPage() {
        assertEquals(
            true,
            shouldDeferReaderPageCount(
                readerRendersHtmlContent = true,
                contentFormat = ComicFormat.EPUB
            )
        )
        assertEquals(
            false,
            shouldDeferReaderPageCount(
                readerRendersHtmlContent = false,
                contentFormat = ComicFormat.ZIP
            )
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
