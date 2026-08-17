package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update

/**
 * Manages reader chrome visibility state (system bars, control overlays, bottom sheets).
 */
internal class ReaderChromeController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
) {
    fun onCenterTap() {
        _uiState.update { state ->
            when (state.chromeState) {
                ReaderChromeState.HIDDEN -> state.copy(chromeState = ReaderChromeState.EXPANDED)
                ReaderChromeState.EXPANDED -> state.withHiddenChrome()
            }
        }
    }

    fun toggleChromeUi() = onCenterTap()

    fun hideChrome() = _uiState.update { it.withHiddenChrome() }

    fun showMinimalChrome() = _uiState.update { it.withHiddenChrome() }

    fun showExpandedChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.EXPANDED) }

    /** Opens/closes the table-of-contents bottom sheet. */
    fun toggleTocSheet(hasTableOfContents: Boolean, loadToc: () -> Unit) {
        val shouldOpen = !_uiState.value.showTocSheet
        _uiState.update {
            it.copy(
                showTocSheet = !it.showTocSheet,
                chromeState = ReaderChromeState.EXPANDED
            )
        }
        if (shouldOpen && !hasTableOfContents) {
            loadToc()
        }
    }

    /** Opens/closes the text reader settings bottom sheet. */
    fun toggleTextSettings() = _uiState.update {
        it.copy(
            showTextSettings = !it.showTextSettings,
            chromeState = ReaderChromeState.EXPANDED
        )
    }

    private fun ReaderUiState.withHiddenChrome(): ReaderUiState = copy(
        chromeState = ReaderChromeState.HIDDEN,
        // Center taps are delivered after pointer-up. If changing the reader padding
        // disposes the gesture node, its finally block cannot be relied on to resume.
        autoScrollPauseReasons = autoScrollPauseReasons - ReaderAutoScrollPauseReason.TOUCH_GESTURE,
    )
}
