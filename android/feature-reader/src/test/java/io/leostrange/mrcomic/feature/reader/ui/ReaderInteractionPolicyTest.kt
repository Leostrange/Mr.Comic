package io.leostrange.mrcomic.feature.reader.ui

// ARC-11 S4: KeyEvent moved to ReaderKeyActionPolicyTest
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.engine.api.TocEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderInteractionPolicyTest {

    @Test
    fun chapterNavigationFindsPreviousAndNextEntries() {
        val toc = listOf(
            TocEntry("Intro", 0),
            TocEntry("Chapter 1", 12),
            TocEntry("Chapter 2", 30)
        )

        assertEquals(12, previousReaderChapterPage(toc, 20))
        assertEquals(30, nextReaderChapterPage(toc, 20))
    }

    @Test
    fun currentChapterTitleUsesNearestPreviousEntry() {
        val toc = listOf(
            TocEntry("Intro", 0),
            TocEntry("Chapter 1", 12),
            TocEntry("Chapter 2", 30)
        )

        assertEquals("Chapter 1", currentReaderChapterTitle(toc, 20))
        assertNull(currentReaderChapterTitle(emptyList(), 20))
    }

    @Test
    fun pagedModesAllowHorizontalTurnAndLockHtmlVerticalScroll() {
        val pagedModes = listOf(
            ReadingMode.PAGE_LTR,
            ReadingMode.PAGE_RTL,
            ReadingMode.DUAL_PAGE
        )

        pagedModes.forEach { mode ->
            assertTrue("$mode should accept horizontal page turns", readerModeAllowsHorizontalPageTurn(mode))
            assertTrue("$mode should lock HTML vertical scroll", readerModeLocksHtmlVerticalScroll(mode))
        }
    }

    @Test
    fun webtoonModeUsesVerticalFeedOnly() {
        assertFalse(readerModeAllowsHorizontalPageTurn(ReadingMode.WEBTOON))
        assertFalse(readerModeLocksHtmlVerticalScroll(ReadingMode.WEBTOON))
    }

    @Test
    fun textWebtoonOrdinaryScrollDoesNotRequestPageNavigation() {
        assertNull(
            readerTextWebtoonBoundaryNavigationStep(
                startedAtTopBoundary = false,
                startedAtBottomBoundary = false,
                dragDeltaY = -88f,
                dragDeltaX = 6f
            )
        )
        assertNull(
            readerTextWebtoonBoundaryNavigationStep(
                startedAtTopBoundary = false,
                startedAtBottomBoundary = false,
                dragDeltaY = 88f,
                dragDeltaX = 6f
            )
        )
        assertNull(
            readerTextWebtoonBoundaryNavigationStep(
                startedAtTopBoundary = true,
                startedAtBottomBoundary = false,
                dragDeltaY = 88f,
                dragDeltaX = 96f
            )
        )
    }

    @Test
    fun textWebtoonBoundaryPullRequestsAdjacentBackendPage() {
        assertEquals(
            1,
            readerTextWebtoonBoundaryNavigationStep(
                startedAtTopBoundary = false,
                startedAtBottomBoundary = true,
                dragDeltaY = -88f,
                dragDeltaX = 6f
            )
        )
        assertEquals(
            -1,
            readerTextWebtoonBoundaryNavigationStep(
                startedAtTopBoundary = true,
                startedAtBottomBoundary = false,
                dragDeltaY = 88f,
                dragDeltaX = 6f
            )
        )
    }

    @Test
    fun htmlSelectionActionsAreEnabledInBothPagedAndFreeScrollModes() {
        // Selection works in PAGE too; a proven swipe is what suppresses the action mode.
        assertTrue(readerHtmlSelectionActionsEnabled(pagedModeScrollLock = true))
        assertTrue(readerHtmlSelectionActionsEnabled(pagedModeScrollLock = false))
    }

    @Test
    fun chromeRequiresOpaqueSurfaceOnlyForEinkPreset() {
        assertFalse(
            readerChromeRequiresOpaqueSurface(
                preset = ReadingPreset.CUSTOM,
                isTextReader = true
            )
        )
        assertTrue(
            readerChromeRequiresOpaqueSurface(
                preset = ReadingPreset.EINK,
                isTextReader = true
            )
        )
    }

    @Test
    fun defaultTextAlignmentDoesNotJustifyMobileReaderText() {
        assertEquals("left", ReaderUiState().textAlignment)
    }

    @Test
    fun pagedHtmlViewportHeightPrefersStableNativeHeightOverTransientCssViewport() {
        assertEquals(
            784,
            readerResolvedPagedCssViewportHeight(
                nativeViewportHeight = 784,
                visualViewportHeight = 756,
                windowInnerHeight = 756,
                rootClientHeight = 756
            )
        )
    }

    @Test
    fun pagedHtmlViewportHeightFallsBackToLayoutViewportWhenNativeHeightIsUnknown() {
        assertEquals(
            756,
            readerResolvedPagedCssViewportHeight(
                nativeViewportHeight = 0,
                visualViewportHeight = 700,
                windowInnerHeight = 756,
                rootClientHeight = 744
            )
        )
    }

    @Test
    fun pagedHtmlViewportHeightFallsBackToNativeWhenCssViewportIsUnknown() {
        assertEquals(
            784,
            readerResolvedPagedCssViewportHeight(
                nativeViewportHeight = 784,
                visualViewportHeight = 0,
                windowInnerHeight = 0,
                rootClientHeight = 0
            )
        )
    }

    @Test
    fun pagedHtmlVisibleViewportKeepsFullReaderSurface() {
        val visibleHeight = readerPagedVisibleViewportHeight(
            contentViewportTopOffset = 58,
            pageStart = 0,
            pageEnd = 690,
            clipHeight = 842
        )

        assertEquals(842, visibleHeight)
    }

    @Test
    fun pagedHtmlNextPagesKeepTopInsetWithoutSkippingContent() {
        val visibleHeight = readerPagedVisibleViewportHeight(
            contentViewportTopOffset = 58,
            pageStart = 684,
            pageEnd = 1386,
            clipHeight = 842
        )

        assertEquals(842, visibleHeight)
        assertEquals(684, readerPagedContentShiftY(pageStart = 684, contentViewportTopOffset = 58))
    }

    @Test
    fun pagedHtmlNextPageStartsAfterLastFittedLineBottom() {
        assertEquals(
            1986,
            readerPagedNextStartAfterFittedLine(
                currentStart = 1392,
                lineHeight = 29,
                lastFittedBottom = 1972,
                contentHeight = 2462
            )
        )
    }

    @Test
    fun textWebtoonReloadResetsScrollButPagedModeDoesNot() {
        assertTrue(readerHtmlReloadResetsScroll(pagedModeScrollLock = false))
        assertFalse(readerHtmlReloadResetsScroll(pagedModeScrollLock = true))
    }

    @Test
    fun pagedWebtoonSwitchRestoresRelativePositionWhenEngineStaysAtFirstSection() {
        assertEquals(
            9,
            readerWebtoonRestoreSectionIndex(
                engineSectionIndex = 0,
                pagedSubpageIndex = 46,
                pagedSubpageCount = 461,
                totalWebtoonSections = 91
            )
        )
    }

    @Test
    fun pagedWebtoonSwitchKeepsKnownEngineSection() {
        assertEquals(
            8,
            readerWebtoonRestoreSectionIndex(
                engineSectionIndex = 8,
                pagedSubpageIndex = 46,
                pagedSubpageCount = 461,
                totalWebtoonSections = 91
            )
        )
    }

    @Test
    fun leavingPagedHtmlModeRequiresLayoutTeardown() {
        assertTrue(
            readerHtmlModeChangeRequiresPagedLayoutTeardown(
                previousPagedModeScrollLock = true,
                nextPagedModeScrollLock = false
            )
        )
        assertFalse(
            readerHtmlModeChangeRequiresPagedLayoutTeardown(
                previousPagedModeScrollLock = false,
                nextPagedModeScrollLock = true
            )
        )
        assertFalse(
            readerHtmlModeChangeRequiresPagedLayoutTeardown(
                previousPagedModeScrollLock = false,
                nextPagedModeScrollLock = false
            )
        )
    }

    @Test
    fun textPageToWebtoonRequestsSectionRestore() {
        assertTrue(
            readerShouldRestoreTextWebtoonSection(
                previousMode = ReadingMode.PAGE_LTR,
                nextMode = ReadingMode.WEBTOON,
                readerRendersHtmlContent = true
            )
        )
        assertFalse(
            readerShouldRestoreTextWebtoonSection(
                previousMode = ReadingMode.WEBTOON,
                nextMode = ReadingMode.WEBTOON,
                readerRendersHtmlContent = true
            )
        )
        assertFalse(
            readerShouldRestoreTextWebtoonSection(
                previousMode = ReadingMode.PAGE_LTR,
                nextMode = ReadingMode.WEBTOON,
                readerRendersHtmlContent = false
            )
        )
    }

    @Test
    fun singleSpineCursorKeepsEngineSectionAndMapsVisualSubpage() {
        val cursor = readerTextWebtoonCursorFromPagedPosition(
            engineSectionIndex = 0,
            pagedSubpageIndex = 46,
            pagedSubpageCount = 461,
            totalWebtoonSections = 91,
            characterOffset = 12_500,
            fragment = "paragraph-46"
        )

        assertEquals(0, cursor.engineSectionIndex)
        assertEquals(9, cursor.webtoonSectionIndex)
        assertEquals(12_500, cursor.characterOffset)
        assertEquals("paragraph-46", cursor.fragment)
    }

    @Test
    fun cursorVisibleSectionUpdateKeepsSingleSpineReturnTarget() {
        val initial = readerTextWebtoonCursorFromPagedPosition(
            engineSectionIndex = 0,
            pagedSubpageIndex = 46,
            pagedSubpageCount = 461,
            totalWebtoonSections = 91,
            characterOffset = 12_500
        )

        val moved = readerTextWebtoonCursorAtVisibleSection(
            previous = initial,
            visibleSectionIndex = 25,
            characterOffset = 28_000,
            progression = 0.28
        )

        assertEquals(0, moved.engineSectionIndex)
        assertEquals(25, moved.webtoonSectionIndex)
        assertEquals(28_000, moved.characterOffset)
        assertEquals(0.28, moved.progression!!, 0.0001)
    }

    @Test
    fun multiSpineCursorFollowsVisibleEngineSection() {
        val initial = readerTextWebtoonCursorFromPagedPosition(
            engineSectionIndex = 5,
            pagedSubpageIndex = 0,
            pagedSubpageCount = 4,
            totalWebtoonSections = 20
        )
        val moved = readerTextWebtoonCursorAtVisibleSection(initial, visibleSectionIndex = 8)

        assertEquals(8, moved.engineSectionIndex)
        assertEquals(8, moved.webtoonSectionIndex)
    }

    @Test
    fun cursorVisibleSectionWithoutPreviousStartsAtItsCanonicalSection() {
        val cursor = readerTextWebtoonCursorAtVisibleSection(
            previous = null,
            visibleSectionIndex = -3,
            characterOffset = 0
        )

        assertEquals(0, cursor.engineSectionIndex)
        assertEquals(0, cursor.webtoonSectionIndex)
        assertEquals(0, cursor.characterOffset)
    }
}
