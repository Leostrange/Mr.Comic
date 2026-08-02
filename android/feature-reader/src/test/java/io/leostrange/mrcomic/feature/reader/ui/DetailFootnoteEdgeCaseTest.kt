package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-08: footnote-at-edge policy.
 *
 * The user reported that, on certain pages, tapping near the bottom edge
 * flipped to the next page instead of opening the footnote popup. This
 * class pins down the *policies* that the controller relies on so that
 * a regression — changing the policy because the controller "looks
 * weird" — cannot silently reintroduce the page-turn- when-tap-footnote
 * behaviour.
 */
class DetailFootnoteEdgeCaseTest {

    // ── Anchor normalisation — what the controller sees as input ──────

    @Test
    fun noterefBridgeSchemeNormalizesToAnchorURI() {
        // noteref://#note-1 → "#note-1"
        assertEquals("#note-1", ReaderFootnoteAnchorPolicy.normalize("noteref://%23note-1"))
        // noteref:bare_id → "bare_id"
        assertEquals("bare_id", ReaderFootnoteAnchorPolicy.normalize("noteref:bare_id"))
        // fb-specific anchor URI → raw anchor kept
        assertEquals("FbAutId_7", ReaderFootnoteAnchorPolicy.normalize("fbanchor://FbAutId_7"))
    }

    @Test
    fun percentDecodedFragmentsRemainReadable() {
        assertEquals("note 7", ReaderFootnoteAnchorPolicy.normalize("noteref:note%207"))
        assertEquals("note.1", ReaderFootnoteAnchorPolicy.normalize("noteref:note%2E1"))
    }

    @Test
    fun anchorLooksLikeFootnoteForBothCanonicalAndVendorForms() {
        // Canonical footnote-like ids
        for (anchor in listOf("note-1", "note_1", "footnote-42", "endnote12", "fn_2", "fn")) {
            assertTrue("$anchor should look like a footnote anchor", ReaderFootnoteAnchorPolicy.isFootnoteAnchor(anchor))
        }
        // Vendor forms (FictionBook, EPUB3)
        for (anchor in listOf("FbAutId_1", "FbAutId_42", "kobo-side-note-3", "ref-9")) {
            assertTrue("$anchor should look like a footnote anchor", ReaderFootnoteAnchorPolicy.isFootnoteAnchor(anchor))
        }
    }

    @Test
    fun anchorDoesNotLookLikeFootnoteForPureChapterHeading() {
        for (anchor in listOf("chapter-1", "chapter_1", "contents", "toc", "title", "preface")) {
            assertFalse(
                "$anchor is a chapter heading, must NOT be treated as a footnote anchor",
                ReaderFootnoteAnchorPolicy.isFootnoteAnchor(anchor)
            )
        }
    }

    @Test
    fun candidateSearchAlwaysTriesBothBareIdAndFragmentedForm() {
        assertEquals(
            listOf("note-1", "#note-1"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("#note-1", "note-1")
        )
        assertEquals(
            listOf("FbAutId_1", "#FbAutId_1"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("noteref://#FbAutId_1", "")
        )
        assertEquals(
            listOf("chapter-1.xhtml", "#chapter-1.xhtml"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("chapter-1.xhtml", "")
        )
    }

    // ── Popup text normalisation ───────────────────────────────────────

    @Test
    fun popupTextDropsNBSPAndHTMLTagsButKeepsWords() {
        val source = "12&nbsp;First<br>second <em>line</em>\u00AD\u200B"
        assertEquals(
            "First second line",
            ReaderFootnotePopupPolicy.toPopupText(source)
        )
    }

    @Test
    fun popupTextCollapsesDoubleSpacesAndStripsWrappingSpaces() {
        val source = "  Hello    <strong>world</strong>   from   a   footnote  "
        assertEquals(
            "Hello world from a footnote",
            ReaderFootnotePopupPolicy.toPopupText(source)
        )
    }

    @Test
    fun popupTextReturnsNullForPureMarkupFragments() {
        assertNull(ReaderFootnotePopupPolicy.toPopupText("<br>\u00AD\u200B"))
        assertNull(ReaderFootnotePopupPolicy.toPopupText("&nbsp;&nbsp;"))
        // Empty after stripping tags
        assertNull(ReaderFootnotePopupPolicy.toPopupText("<p></p>"))
    }

    @Test
    fun popupTextSurvivesUnicodeAndEmojiBearing() {
        val source = "Никола Тесла\u00A0\u2014 родился в <em>1856</em> году 🔭"
        val text = ReaderFootnotePopupPolicy.toPopupText(source)
        assertNotNull(text)
        assertTrue(
            "Cyrillic and an emoji must not be discarded by the popup normalisation: $text",
            text!!.contains("Никола Тесла") && text.contains("1856") && text.contains("🔭")
        )
    }

    @Test
    fun popupTextDoesNotLeakRawMarkupIntoVisibility() {
        val source = "Pre <script>alert(1)</script> post"
        val text = ReaderFootnotePopupPolicy.toPopupText(source)
        assertNotNull(text)
        assertFalse(
            "Script tags must not pass through the popup normaliser: $text",
            text!!.contains("<script", ignoreCase = true) || text.contains("alert(1)")
        )
        // The visible string should keep the words around the markers.
        assertTrue(text.contains("Pre") && text.contains("post"))
    }

    // ── Sanity on chapter policy at chapter end. Bottom-of-page anchor
    //      must still be classified as a footnote anchor so the controller
    //      intercepts the tap before the swipe handler treats it as a
    //      page turn. The actual controller wiring lives behind
    //      ReaderFootnoteController.onAnchorClick which is integration-tested
    //      elsewhere; this is the spec the controller relies on.

    @Test
    fun bottomOfPageFootnoteAnchorMustNotBeRewrittenAsChapterAnchor() {
        // Concrete regression: a footnote id that sits at the *end* of a
        // chapter (e.g. index 200 of a 200-marker chapter) still rescinds
        // a swipe-to-next-page tap and shows the popup instead.
        val footnoteId = "note-200"
        val navigateOnlyId = "chapter-12"
        assertTrue("Footnote anchor at the tail of a page must remain classified as a footnote",
            ReaderFootnoteAnchorPolicy.isFootnoteAnchor(footnoteId))
        assertFalse("Plain chapter heading must NOT be treated as a footnote candidate",
            ReaderFootnoteAnchorPolicy.isFootnoteAnchor(navigateOnlyId))
        assertEquals(
            "Footnote-id lookup candidates must remain stable regardless of where the footnote sits",
            listOf("note-200", "#note-200"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("#note-200", "note-200")
        )
    }
}
