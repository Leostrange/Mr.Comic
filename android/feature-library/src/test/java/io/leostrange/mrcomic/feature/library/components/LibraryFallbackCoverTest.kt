package io.leostrange.mrcomic.feature.library.components

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class LibraryFallbackCoverTest {

    private val primary = Color(0xFF3A6EA5)
    private val secondary = Color(0xFFB58463)
    private val tertiary = Color(0xFF5E8C61)
    private val onSurface = Color(0xFF1F1F1F)

    // --- firstTitleGrapheme ---

    @Test
    fun firstTitleGraphemeReturnsUppercaseForPlainAscii() {
        assertEquals("H", firstTitleGrapheme("hello world", LibraryFallbackCoverKind.BOOK))
        assertEquals("M", firstTitleGrapheme("mr. comic", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsLeadingEnglishArticle() {
        assertEquals("O", firstTitleGrapheme("The Old Man and the Sea", LibraryFallbackCoverKind.BOOK))
        assertEquals("A", firstTitleGrapheme("An Apple", LibraryFallbackCoverKind.BOOK))
        assertEquals("S", firstTitleGrapheme("A Short Story", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsLeadingGermanArticle() {
        assertEquals("Z", firstTitleGrapheme("Der Zauberberg", LibraryFallbackCoverKind.BOOK))
        assertEquals("S", firstTitleGrapheme("Die Schatzinsel", LibraryFallbackCoverKind.BOOK))
        assertEquals("K", firstTitleGrapheme("Das Kapital", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsLeadingFrenchArticle() {
        assertEquals("M", firstTitleGrapheme("Le Misanthrope", LibraryFallbackCoverKind.BOOK))
        assertEquals("P", firstTitleGrapheme("La Peste", LibraryFallbackCoverKind.BOOK))
        assertEquals("M", firstTitleGrapheme("Les Misérables", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsLeadingSpanishArticle() {
        assertEquals("Q", firstTitleGrapheme("El Quixote", LibraryFallbackCoverKind.BOOK))
        assertEquals("T", firstTitleGrapheme("Los Tres", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemePreservesCyrillic() {
        // Russian titles: "Братья Карамазовы", "Война и мир"
        assertEquals("Б", firstTitleGrapheme("Братья Карамазовы", LibraryFallbackCoverKind.BOOK))
        assertEquals("В", firstTitleGrapheme("Война и мир", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemePreservesCjk() {
        // Chinese: 红楼梦
        assertEquals("红", firstTitleGrapheme("红楼梦", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsListMarkers() {
        assertEquals("A", firstTitleGrapheme("- Alpha", LibraryFallbackCoverKind.BOOK))
        assertEquals("B", firstTitleGrapheme("— Beta", LibraryFallbackCoverKind.BOOK))
        assertEquals("G", firstTitleGrapheme("· Gamma", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeSkipsEmojiVariationSelector() {
        // 0xFE0F should be skipped, returning the actual letter
        assertEquals("A", firstTitleGrapheme("️A", LibraryFallbackCoverKind.BOOK))
    }

    @Test
    fun firstTitleGraphemeFallsBackForBlankTitle() {
        assertEquals("B", firstTitleGrapheme("", LibraryFallbackCoverKind.BOOK))
        assertEquals("G", firstTitleGrapheme("   ", LibraryFallbackCoverKind.GRAPHIC))
        assertEquals("♪", firstTitleGrapheme("", LibraryFallbackCoverKind.AUDIO_FILE))
        assertEquals("♫", firstTitleGrapheme("", LibraryFallbackCoverKind.AUDIO_FOLDER))
        assertEquals("•", firstTitleGrapheme("", LibraryFallbackCoverKind.FOLDER))
    }

    @Test
    fun firstTitleGraphemeFallbackForKindFollowsSemantics() {
        // Sanity: each kind has a different blank-title fallback so cards
        // remain visually distinct even when titles are missing.
        val defaults = LibraryFallbackCoverKind.values()
            .associateWith { firstTitleGrapheme("", it) }
        assertEquals(5, defaults.size)
        assertTrue(defaults.values.distinct().size >= 4)
    }

    @Test
    fun firstTitleGraphemeHandlesArticleWhereRemovingItWouldLeaveBlank() {
        // If the title is just "The " (article only), we should still return the
        // uppercase "T" of the article rather than a placeholder.
        assertEquals("T", firstTitleGrapheme("The ", LibraryFallbackCoverKind.BOOK))
    }

    // --- buildLibraryFallbackCoverSpec ---

    @Test
    fun buildSpecIsDeterministicForSameTitleAndKind() {
        val a = buildLibraryFallbackCoverSpec(
            title = "Война и мир",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        val b = buildLibraryFallbackCoverSpec(
            title = "Война и мир",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        assertEquals(a.seedHue, b.seedHue, 0f)
        assertEquals(a.letter, b.letter)
        assertEquals(a.accent.value.toLong(), b.accent.value.toLong())
        assertEquals(a.highlight.value.toLong(), b.highlight.value.toLong())
        assertEquals(a.deep.value.toLong(), b.deep.value.toLong())
        assertEquals(a.showLetter, b.showLetter)
    }

    @Test
    fun buildSpecDiffersAcrossDistinctTitles() {
        val a = buildLibraryFallbackCoverSpec(
            title = "Alpha",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        val b = buildLibraryFallbackCoverSpec(
            title = "Zulu",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        // Different titles should land on different seed hues (no collisions).
        assertNotEquals(a.seedHue, b.seedHue)
    }

    @Test
    fun buildSpecPicksBaseColorFromKind() {
        val bookSpec = buildLibraryFallbackCoverSpec(
            title = "Same",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        val audioSpec = buildLibraryFallbackCoverSpec(
            title = "Same",
            kind = LibraryFallbackCoverKind.AUDIO_FILE,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        val folderSpec = buildLibraryFallbackCoverSpec(
            title = "Same",
            kind = LibraryFallbackCoverKind.FOLDER,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        // Kinds drive the base color. If two specs resolve to the same accent
        // (after deterministic hue shift), the test would still differentiate
        // them by the same accent but different letter/shows. Here we make
        // sure the seeds are different so cards of different kinds are stable.
        assertNotEquals(bookSpec.seedHue, audioSpec.seedHue)
        assertNotEquals(audioSpec.seedHue, folderSpec.seedHue)
    }

    @Test
    fun buildSpecHidesLetterForFolders() {
        val spec = buildLibraryFallbackCoverSpec(
            title = "Manga collection",
            kind = LibraryFallbackCoverKind.FOLDER,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        assertEquals(false, spec.showLetter)
    }

    @Test
    fun buildSpecShowsLetterForBooks() {
        val spec = buildLibraryFallbackCoverSpec(
            title = "Manga collection",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        assertEquals(true, spec.showLetter)
        // Letter comes from the cleaned title (first grapheme of "Manga" -> "M").
        assertEquals("M", spec.letter)
    }

    @Test
    fun buildSpecStripsLeadingTheAndUppercasesFirst() {
        val spec = buildLibraryFallbackCoverSpec(
            title = "The Hobbit",
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            onSurface = onSurface,
        )
        assertEquals("H", spec.letter)
    }

    // --- fallbackCoverPaletteForKind ---

    @Test
    fun paletteForKindStaysBoundedBetweenBlackAndWhite() {
        LibraryFallbackCoverKind.values().forEach { kind ->
            val palette = fallbackCoverPaletteForKind(
                kind = kind,
                primary = primary,
                secondary = secondary,
                tertiary = tertiary,
                seedHue = 123.4f,
            )
            assertTrue(
                "highlight must be <= 0.99 luminance for $kind",
                palette.highlight.luminance() <= 0.99f
            )
            assertTrue(
                "deep must be >= 0.0 luminance for $kind",
                palette.deep.luminance() >= 0f
            )
            assertTrue(
                "accent must be >= 0.0 luminance for $kind",
                palette.accent.luminance() >= 0f
            )
        }
    }

    @Test
    fun paletteForKindIsDeterministic() {
        val a = fallbackCoverPaletteForKind(
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            seedHue = 42f,
        )
        val b = fallbackCoverPaletteForKind(
            kind = LibraryFallbackCoverKind.BOOK,
            primary = primary,
            secondary = secondary,
            tertiary = tertiary,
            seedHue = 42f,
        )
        assertEquals(a.accent.value.toLong(), b.accent.value.toLong())
        assertEquals(a.highlight.value.toLong(), b.highlight.value.toLong())
        assertEquals(a.deep.value.toLong(), b.deep.value.toLong())
    }

    // --- titleFallbackSeedHue ---

    @Test
    fun seedHueIsWithin0to360ForLongTitles() {
        val title = "Some very long title ".repeat(50)
        for (kind in LibraryFallbackCoverKind.values()) {
            val hue = titleFallbackSeedHue(title, kind)
            assertTrue("seedHue=$hue out of range for $kind", hue in 0f..360f)
        }
    }

    @Test
    fun seedHueIsWithin0to360ForEmptyTitle() {
        for (kind in LibraryFallbackCoverKind.values()) {
            val hue = titleFallbackSeedHue("", kind)
            assertTrue("seedHue=$hue out of range for $kind", hue in 0f..360f)
        }
    }

    @Test
    fun seedHueIsStableAcrossInvocations() {
        val a = titleFallbackSeedHue("The Return of the King", LibraryFallbackCoverKind.BOOK)
        val b = titleFallbackSeedHue("The Return of the King", LibraryFallbackCoverKind.BOOK)
        assertEquals(a, b, 0f)
    }

    @Test
    fun seedHueDiffersAcrossKindsForSameTitle() {
        val hues = LibraryFallbackCoverKind.values()
            .map { titleFallbackSeedHue("The Return of the King", it) }
        assertEquals(5, hues.size)
        // We don't require every pair to differ, but the kind signal should
        // introduce at least some spread (e.g. audio vs folder diverge).
        assertNotEquals(
            titleFallbackSeedHue("The Return of the King", LibraryFallbackCoverKind.AUDIO_FILE),
            titleFallbackSeedHue("The Return of the King", LibraryFallbackCoverKind.FOLDER)
        )
    }
}
