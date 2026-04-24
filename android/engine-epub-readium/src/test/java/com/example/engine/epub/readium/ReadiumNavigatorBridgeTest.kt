package com.example.engine.epub.readium

import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import org.junit.Assert.assertFalse
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.readium.r2.shared.ExperimentalReadiumApi

class ReadiumNavigatorBridgeTest {

    @Test
    fun normalizeReadiumHrefStripsFragmentAndLeadingSlash() {
        assertEquals("OPS/ch1.xhtml", "/OPS/ch1.xhtml#frag".normalizeReadiumHref())
    }

    @Test
    fun matchesReadiumHrefMatchesNestedAndExactPaths() {
        val normalized = "OPS/ch1.xhtml"

        assertTrue("OPS/ch1.xhtml".matchesReadiumHref(normalized))
        assertTrue("book/OPS/ch1.xhtml".matchesReadiumHref(normalized))
        assertTrue("OPS/ch1.xhtml#frag".matchesReadiumHref(normalized))
        assertFalse("OPS/ch2.xhtml".matchesReadiumHref(normalized))
    }

    @Test
    fun hasReadiumLocationHintRejectsPageOnlyTargets() {
        val pageOnly = ReaderLocator(pageIndex = 4, position = 4)
        val fragmentOnly = ReaderLocator(fragment = "chapter-1")
        val hrefOnly = ReaderLocator(href = "OPS/ch1.xhtml")

        assertFalse(pageOnly.hasReadiumLocationHint())
        assertTrue(fragmentOnly.hasReadiumLocationHint())
        assertTrue(hrefOnly.hasReadiumLocationHint())
    }

    @Test
    fun normalizedReadiumLocatorKeyPrefersReadiumPositionOverSyntheticPageIndex() {
        assertEquals(
            "ops/ch1.xhtml|frag|7|0.3500",
            ReaderLocator(
                href = "OPS/ch1.xhtml#frag",
                fragment = "frag",
                pageIndex = 19,
                position = 7,
                progression = 0.35
            ).readiumNormalizedLocatorKey()
        )
    }

    @Test
    fun readiumLocatorEquivalenceAllowsFrontMatterRoundingNoise() {
        assertTrue(
            areEquivalentReadiumLocators(
                currentLocator = ReaderLocator(href = "OPS/titlepage.xhtml"),
                targetLocator = ReaderLocator(
                    href = "OPS/titlepage.xhtml",
                    pageIndex = 0,
                    progression = 0.0
                )
            )
        )
    }

    @Test
    fun readiumTocFragmentExtractsTrailingFragmentOnly() {
        assertEquals("chapter-1", "OPS/ch1.xhtml#chapter-1".readiumTocFragment())
        assertNull("OPS/ch1.xhtml#".readiumTocFragment())
        assertNull("OPS/ch1.xhtml".readiumTocFragment())
    }

    @Test
    fun selectReadiumOpeningCandidatePrefersCoverLikeFrontMatter() {
        val readingOrder = listOf(
            ReadiumOpeningCandidate(href = "OPS/titlepage.xhtml", title = "Title page"),
            ReadiumOpeningCandidate(href = "OPS/cover.xhtml", title = null),
            ReadiumOpeningCandidate(href = "OPS/chapter01.xhtml", title = "Chapter 1")
        )

        assertEquals(0, selectReadiumOpeningCandidateIndex(readingOrder))
    }

    @Test
    fun selectReadiumOpeningCandidateFallsBackToFirstReadingOrderEntry() {
        val readingOrder = listOf(
            ReadiumOpeningCandidate(href = "OPS/chapter01.xhtml", title = "Chapter 1"),
            ReadiumOpeningCandidate(href = "OPS/chapter02.xhtml", title = "Chapter 2")
        )

        assertEquals(0, selectReadiumOpeningCandidateIndex(readingOrder))
    }

    @Test
    fun selectReadiumOpeningCandidatePrefersExplicitCoverRelAnywhereInPublication() {
        val publicationLinks = listOf(
            ReadiumOpeningCandidate(href = "OPS/chapter01.xhtml", title = "Chapter 1"),
            ReadiumOpeningCandidate(href = "OPS/titlepage.xhtml", title = "Title page"),
            ReadiumOpeningCandidate(href = "OPS/cover.xhtml", title = null, rels = setOf("cover"))
        )

        assertEquals(2, selectReadiumOpeningCandidateIndex(publicationLinks))
    }

    @Test
    fun fallbackOpeningCandidateSkipsNonOpenableCoverAndUsesNextDocument() {
        val candidates = listOf(
            ReadiumOpeningCandidate(href = "OPS/cover.jpg", title = "Cover", rels = setOf("cover")),
            ReadiumOpeningCandidate(href = "OPS/titlepage.xhtml", title = "Title page"),
            ReadiumOpeningCandidate(href = "OPS/chapter01.xhtml", title = "Chapter 1")
        )

        val actual = selectReadiumFallbackOpeningCandidateIndex(candidates) { index ->
            index != 0
        }

        assertEquals(1, actual)
    }

    @Test
    fun fallbackOpeningCandidatePrefersDocumentOverImageCoverWhenBothOpenable() {
        val candidates = listOf(
            ReadiumOpeningCandidate(
                href = "OPS/cover.jpg",
                title = "Cover",
                rels = setOf("cover"),
                mediaType = "image/jpeg"
            ),
            ReadiumOpeningCandidate(href = "OPS/titlepage.xhtml", title = "Title page"),
            ReadiumOpeningCandidate(href = "OPS/chapter01.xhtml", title = "Chapter 1")
        )

        val actual = selectReadiumFallbackOpeningCandidateIndex(candidates) { true }

        assertEquals(1, actual)
    }

    @Test
    fun readiumFontHelpersNormalizeFontFamilyAndWeight() {
        val snapshot = ReaderPreferenceSnapshot(
            fontFamily = "Literata",
            fontWeight = 700.0,
            lineHeight = 1.7,
            letterSpacing = 0.08,
            wordSpacing = 0.12
        )

        assertEquals("Literata", snapshot.toReadiumFontFamily()?.name)
        assertEquals(1.75, snapshot.toReadiumFontWeight()!!, 0.0)
    }

    @Test
    fun readiumFontWeightIgnoresZeroAndKeepsPositiveValuesBounded() {
        val zeroSnapshot = ReaderPreferenceSnapshot(fontWeight = 0.0)
        val thinSnapshot = ReaderPreferenceSnapshot(fontWeight = 100.0)

        assertNull(zeroSnapshot.toReadiumFontWeight())
        assertEquals(0.5, thinSnapshot.toReadiumFontWeight()!!, 0.0)
    }

    @Test
    fun readiumBoundedValueDropsNonFiniteAndClampsFiniteValues() {
        assertNull(Double.NaN.toReadiumBoundedValue(0.0, 1.0))
        assertNull(Double.POSITIVE_INFINITY.toReadiumBoundedValue(0.0, 1.0))
        assertNull(Double.NEGATIVE_INFINITY.toReadiumBoundedValue(0.0, 1.0))
        assertEquals(1.0, 10.0.toReadiumBoundedValue(0.0, 1.0)!!, 0.0)
        assertEquals(0.0, (-5.0).toReadiumBoundedValue(0.0, 1.0)!!, 0.0)
    }

    @OptIn(ExperimentalReadiumApi::class)
    @Test
    fun readiumPreferencesClampUnsafeSpacingValuesIntoSupportedRanges() {
        val snapshot = ReaderPreferenceSnapshot(
            lineHeight = 4.0,
            paragraphSpacing = 5.0,
            pageMargins = 0.0,
            letterSpacing = Double.NaN,
            wordSpacing = Double.POSITIVE_INFINITY
        )

        val preferences = snapshot.toReadiumEpubPreferences()

        assertEquals(2.0, preferences.lineHeight!!, 0.0)
        assertEquals(2.0, preferences.paragraphSpacing!!, 0.0)
        assertEquals(0.5, preferences.pageMargins!!, 0.0)
        assertEquals(0.0, preferences.letterSpacing!!, 0.0)
        assertEquals(0.0, preferences.wordSpacing!!, 0.0)
    }

    @OptIn(ExperimentalReadiumApi::class)
    @Test
    fun readiumPreferencesAlwaysProducePreferencesEvenForSparseSnapshots() {
        val snapshot = ReaderPreferenceSnapshot()

        snapshot.toReadiumEpubPreferences()
    }

}
