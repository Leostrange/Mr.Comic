package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.feature.reader.domain.enums.*
import io.leostrange.mrcomic.feature.reader.domain.preset.*

/**
 * Reader UI state data classes.
 *
 * Extracted from ReaderViewModel to reduce its size and isolate the
 * state model from the ViewModel lifecycle and business logic.
 */

internal data class PreparedReaderOpen(
    val resolvedPath: String,
    val detectedFormat: ComicFormat,
    val contentFormat: ComicFormat,
    val reader: FormatReader?,
    val pages: Int,
    val readerRendersHtmlContent: Boolean,
    val deferPageCount: Boolean
)

internal const val DEFAULT_TEXT_FONT_SIZE = 18
internal const val DEFAULT_TEXT_COLOR_SCHEME = "DAY"
internal const val DEFERRED_PAGE_COUNT_MAX_RETRIES = 2
internal const val DEFERRED_PAGE_COUNT_RETRY_DELAY_MILLIS = 750L
internal const val DEFAULT_TEXT_FONT_FAMILY = "Georgia"
internal const val DEFAULT_TEXT_LINE_HEIGHT = 1.6f
internal const val DEFAULT_TEXT_LETTER_SPACING = 0f
internal const val DEFAULT_TEXT_WORD_SPACING = 0f
internal const val DEFAULT_TEXT_PARAGRAPH_SPACING = 0.2f
internal const val DEFAULT_TEXT_ALIGNMENT = "left"
internal const val DEFAULT_TEXT_BOLD = false
internal const val DEFAULT_IMAGE_MARGIN_CROP_HORIZONTAL = 0f
internal const val DEFAULT_IMAGE_MARGIN_CROP_VERTICAL = 0f
internal const val DEFERRED_PAGE_COUNT_START_DELAY_MILLIS = 1_500L
internal const val TAG = "ReaderViewModel"
internal val FOOTNOTE_MARKER_RE = Regex(
    """\b(footnote|note|notebody|rearnote|endnote|fnote|noteref|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)\b""",
    RegexOption.IGNORE_CASE
)

/**
 * Normalizes anchor hrefs for FB2/EPUB footnote links.
 * Strips `fbanchor://` and `fbanchor:` prefixes, then decodes URI-encoded characters.
 */
internal fun normalizeReaderAnchorHref(href: String): String {
    return ReaderFootnoteAnchorPolicy.normalize(href)
}

data class ReaderUiState(
    val comic: Comic? = null,
    val currentPage: Int = 0,
    val totalPages: Int = 0,
    val isLoading: Boolean = true,
    val error: String? = null,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val chromeState: ReaderChromeState = ReaderChromeState.HIDDEN,
    val brightness: Float = -1f,
    val keepScreenOn: Boolean = false,
    val screenTimeoutMode: String = ReaderScreenTimeoutMode.SYSTEM.storedValue,
    val landscapeSpreadEnabled: Boolean = true,
    /** true when the screen is in landscape; used to drive automatic DUAL_PAGE switch */
    val isLandscape: Boolean = false,
    /** Page transition animation: "NONE" | "SLIDE" | "FADE" */
    val readerPageAnimation: String = "SLIDE",
    /** Whether page-flip sound effects are enabled */
    val pageSoundEnabled: Boolean = false,
    /** Page-flip sound style: "PAPER" | "CRISP" | "SOFT" */
    val pageSoundStyle: String = "PAPER",
    /** Immersive (fullscreen) mode — hides system bars while reading */
    val immersiveMode: Boolean = false,
    /** Whether expanded reader chrome should hide itself after a short pause. */
    val chromeAutoHideEnabled: Boolean = true,
    /** Opacity for the expanded top toolbar. */
    val topToolbarOpacity: Float = 0.86f,
    /** Opacity for the expanded bottom toolbar. */
    val bottomToolbarOpacity: Float = 0.9f,
    /** Soft blur amount for reader chrome and info panels. */
    val toolbarBlur: Float = READER_TOOLBAR_DEFAULT_BLUR,
    /** Auto-scroll speed in pixels per second. 0 = disabled. */
    val autoScrollSpeed: Float = 0f,
    /** How graphic pages should be fitted on the reader canvas. */
    val imageScaleMode: String = ReaderImageScaleMode.FIT_WIDTH.storedValue,
    /** Symmetric left/right crop for document page margins. */
    val imageMarginCropHorizontal: Float = DEFAULT_IMAGE_MARGIN_CROP_HORIZONTAL,
    /** Symmetric top/bottom crop for document page margins. */
    val imageMarginCropVertical: Float = DEFAULT_IMAGE_MARGIN_CROP_VERTICAL,
    /** Number of pages to preload ahead of the current page */
    val preloadPages: Int = 3,
    /**
     * Non-null when the current page is rendered as HTML (text EPUB / FB2 novel).
     * Null when the page is a Bitmap (image-based formats).
     */
    val currentHtmlContent: String? = null,
    /** True when the active reader is routed through text/HTML containers. */
    val readerRendersHtmlContent: Boolean = false,
    /** Resolved visual container for the active format + reading mode pair. */
    val readerContainerKind: ReaderContainerKind = ReaderContainerKind.RASTER_PAGE,
    /** Base URL for resolving relative resources inside [currentHtmlContent]. */
    val htmlBaseUrl: String? = null,
    /** Asset-backed document path for WebViewAssetLoader resources of the current HTML page. */
    val htmlAssetBasePath: String? = null,
    /**
     * Whole-book HTML used only by the text WEBTOON container. PAGE mode keeps using
     * [currentHtmlContent] so paged layout and page progress remain isolated.
     */
    val textWebtoonHtmlContent: String? = null,
    val textWebtoonHtmlAssetBasePath: String? = null,
    val textWebtoonHtmlPageCount: Int = 0,
    /** Pre-render candidate for the previous text page. */
    val previousHtmlContent: String? = null,
    val previousHtmlAssetBasePath: String? = null,
    /** Pre-render candidate for the next text page. */
    val nextHtmlContent: String? = null,
    val nextHtmlAssetBasePath: String? = null,
    /** Table of contents entries (chapters). Empty for image-based formats. */
    val tableOfContents: List<TocEntry> = emptyList(),
    /** Whether the TOC bottom sheet is open. */
    val showTocSheet: Boolean = false,
    /** Non-null when a footnote popup should be shown. */
    val footnotePopup: FootnotePopup? = null,
    /** Peek card vs expanded note sheet for inline notes/translations. */
    val footnotePresentation: FootnotePresentation = FootnotePresentation.PEEK,
    /** Font size for text books (sp). */
    val textFontSize: Int = 18,
    /** Color scheme for text books: "DAY" | "SEPIA" | "NIGHT" */
    val textColorScheme: String = "DAY",
    /** Optional manual text color override for text books. */
    val textCustomTextColor: Long? = null,
    /** Optional manual background color override for text books. */
    val textCustomBackgroundColor: Long? = null,
    /** Optional manual accent color override for text books. */
    val textCustomAccentColor: Long? = null,
    /** Font family for text books: "Georgia" | "Merriweather" | "Open Sans" | "Roboto Slab" | "PT Serif" | "Literata" */
    val textFontFamily: String = "Georgia",
    /** Line height multiplier for text books (e.g. 1.5 = 150%). */
    val textLineHeight: Float = 1.6f,
    /** Letter spacing in em units for text books. */
    val textLetterSpacing: Float = 0f,
    /** Word spacing in em units for text books. */
    val textWordSpacing: Float = 0f,
    /** Paragraph spacing in em units for text books. */
    val textParagraphSpacing: Float = 0.2f,
    /** Text alignment for text books: "justify" | "left" | "right" | "center" */
    val textAlignment: String = "left",
    /** Bold text for text books. */
    val textBold: Boolean = false,
    /** Three saved typography slots shared with settings. */
    val readerStylePresetSlots: List<ReaderStylePresetSlot> = listOf(
        ReaderStylePresetSlot(1),
        ReaderStylePresetSlot(2),
        ReaderStylePresetSlot(3)
    ),
    /** Full user-managed saved reading styles. */
    val readerStylePresetEntries: List<ReaderStylePresetEntry> = emptyList(),
    /** Tap zone mode for image and text readers. */
    val tapZoneMode: String = ReaderTapZoneMode.SIMPLE.name,
    /** Whether the simple three-zone layout should swap left/right actions. */
    val tapZoneSwap: Boolean = false,
    /** Fragment to scroll to after the next page load completes (TOC jump with anchor). */
    val pendingScrollToAnchor: String? = null,
    /** Number of visual JS pages in the current spine section (paged mode). */
    val sectionPageCount: Int = 0,
    /** Current visual page index within the current spine section (0-based). */
    val sectionCurrentPage: Int = 0,
    /** Accumulated total visual pages across all visited EPUB sections (0 when not EPUB or no data). */
    val epubAccumulatedTotalPages: Int = 0,
    /** Accumulated current visual page position across all visited EPUB sections. */
    val epubAccumulatedCurrentPage: Int = 0,
    /** Whether hardware volume buttons should turn pages inside the reader. */
    val volumeKeysPagingEnabled: Boolean = false,
    /** System TTS defaults used by the reader services tab. */
    val ttsProvider: String = ReaderTtsProviderType.SYSTEM.storedValue,
    val ttsSpeed: Float = 1.0f,
    val ttsPitch: Float = 1.0f,
    val ttsVolume: Float = 1.0f,
    val ttsVoiceName: String? = null,
    val ttsSleepTimerMode: String = ReaderTtsSleepTimerMode.OFF.storedValue,
    /** Custom left zone action. */
    val tapZoneLeftAction: String = ReaderTapZoneAction.PREVIOUS_PAGE.name,
    /** Custom center zone action. */
    val tapZoneCenterAction: String = ReaderTapZoneAction.MENU.name,
    /** Custom right zone action. */
    val tapZoneRightAction: String = ReaderTapZoneAction.NEXT_PAGE.name,
    /** Header/footer slot configuration. */
    val headerLeftSlot: String = ReaderInfoSlot.BOOK_TITLE.name,
    val headerCenterSlot: String = ReaderInfoSlot.NONE.name,
    val headerRightSlot: String = ReaderInfoSlot.TIME.name,
    val footerLeftSlot: String = ReaderInfoSlot.CHAPTER_TITLE.name,
    val footerCenterSlot: String = ReaderInfoSlot.PAGE.name,
    val footerRightSlot: String = ReaderInfoSlot.PROGRESS.name,
    val headerFooterFontSize: Int = 12,
    val headerFooterVerticalPadding: Int = 6,
    val headerFooterLeftPadding: Int = 16,
    val headerFooterRightPadding: Int = 16,
    /** Whether the text settings bottom sheet is open. */
    val showTextSettings: Boolean = false,
    /** Set of bookmarked page indices for the current comic. */
    val bookmarkedPages: Set<Int> = emptySet(),
    /** Saved translation/note for the current page, if any. */
    val pageTranslationNote: String? = null,
    /** Pending action sheet for selected text. */
    val selectedTextActionSheet: SelectedTextActionSheetState? = null,
    /** Selected text translation state for text-based books. */
    val selectedTextTranslation: SelectedTextTranslationState? = null,
    /** Pending text awaiting highlight color selection. */
    val pendingHighlightText: String? = null,
    /** Highlights for the current page. */
    val pageHighlights: List<io.leostrange.mrcomic.core.model.TextHighlight> = emptyList(),
    /** Chapter translation progress (null when not translating). */
    val chapterTranslationProgress: ChapterTranslationProgressUi? = null,
    /** A/B translation comparison results (null when not comparing). */
    val translationComparison: TranslationComparisonUi? = null,
    /** Shared reading preset applied to theme + reader controls. */
    val readerPreset: String = ReadingPreset.CUSTOM.name,
    /** Whether eye-rest reminders are enabled for reading sessions. */
    val eyeRestEnabled: Boolean = false,
    /** Eye-rest reminder interval in minutes. */
    val eyeRestMinutes: Int = 20,
    /** Global mascot visibility for reader chrome and milestone feedback. */
    val mascotUiEnabled: Boolean = true,
    /** Reader top chrome icons visibility and manual order. */
    val chromeIconOrder: String = ReaderChromeButton.defaultStoredOrder,
    val chromeShowTocIcon: Boolean = true,
    val chromeShowStyleIcon: Boolean = true,
    val chromeShowAudioIcon: Boolean = true,
    val chromeShowDirectionIcon: Boolean = true,
    val chromeShowTranslateIcon: Boolean = true,
    val chromeShowBrightnessIcon: Boolean = true
)

data class SelectedTextTranslationState(
    val originalText: String,
    val translatedText: String = "",
    val dictionaryEntry: DictionaryEntry? = null,
    val sourceLanguage: String? = null,
    val targetLanguage: String? = null,
    val mode: TranslationMode? = null,
    val preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
    val canUseDictionary: Boolean = false,
    val canTranslateAsPhrase: Boolean = false,
    val canExplain: Boolean = false,
    val isLoading: Boolean = true,
    val error: String? = null
)

data class SelectedTextActionSheetState(
    val originalText: String,
    val canUseDictionary: Boolean,
    val canExplain: Boolean
)

data class ChapterTranslationProgressUi(
    val totalParagraphs: Int,
    val completedParagraphs: Int,
    val currentPreview: String? = null
) {
    val percent: Int get() = if (totalParagraphs > 0) (completedParagraphs * 100 / totalParagraphs) else 0
    val isActive: Boolean get() = completedParagraphs < totalParagraphs
}

data class TranslationComparisonUi(
    val originalText: String,
    val results: List<ComparisonResultUi>,
    val isLoading: Boolean = true
)

data class ComparisonResultUi(
    val engineName: String,
    val translatedText: String,
    val success: Boolean,
    val error: String? = null
)

/** Data for the inline footnote popup shown when the user taps a footnote link. */
data class FootnotePopup(
    /** Raw HTML text of the footnote (stripped to plain text for display). */
    val text: String
)

data class OcrLaunchRequest(
    val imagePath: String,
    val comicId: String?,
    val page: Int
)

internal data class PendingProgressSave(
    val comicId: String,
    val page: Int,
    val totalPages: Int,
    val countsTowardReadingProgress: Boolean
)

internal data class PersistedProgressMarker(
    val comicId: String,
    val page: Int
)
