package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * Tests for anchor href normalization in ReaderViewModel.
 * Covers the behavior of normalizeReaderAnchorHref for fbanchor:// links.
 */
class ReaderAnchorNormalizationTest {

    @Test
    fun fbanchorDoubleSlashPrefixIsStripped() {
        // The normalizeReaderAnchorHref function strips "fbanchor://" prefix (11 chars)
        val result = normalizeReaderAnchorHref("fbanchor://chapter1")
        assertEquals("chapter1", result)
    }

    @Test
    fun fbanchorColonPrefixIsStripped() {
        // The normalizeReaderAnchorHref function strips "fbanchor:" prefix (9 chars)
        val result = normalizeReaderAnchorHref("fbanchor:section2")
        assertEquals("section2", result)
    }

    @Test
    fun `regular anchor without prefix is unchanged`() {
        val result = normalizeReaderAnchorHref("chapter1")
        assertEquals("chapter1", result)
    }

    @Test
    fun `uri encoded characters are decoded`() {
        // URI encoding: space = %20, slash = %2F
        val result = normalizeReaderAnchorHref("fbanchor://chapter%201")
        assertEquals("chapter 1", result)
    }

    @Test
    fun `complex uri encoded anchor is decoded`() {
        // Multiple encoded characters
        val result = normalizeReaderAnchorHref("fbanchor://my%20chapter%2Fsection")
        assertEquals("my chapter/section", result)
    }

    @Test
    fun `anchor with hash prefix is handled`() {
        // Hash anchors should be passed through (trimmed by caller)
        val result = normalizeReaderAnchorHref("#footnote1")
        assertEquals("#footnote1", result)
    }

    @Test
    fun `empty string returns empty`() {
        val result = normalizeReaderAnchorHref("")
        assertEquals("", result)
    }

    @Test
    fun `fbanchor with empty content returns empty`() {
        val result = normalizeReaderAnchorHref("fbanchor://")
        assertEquals("", result)
    }
}
