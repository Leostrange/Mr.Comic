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
            state.copy(
                chromeState = when (state.chromeState) {
                    ReaderChromeState.HIDDEN -> ReaderChromeState.EXPANDED
                    ReaderChromeState.EXPANDED -> ReaderChromeState.HIDDEN
                }
            )
        }
    }

    fun toggleChromeUi() = onCenterTap()

    fun hideChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.HIDDEN) }

    fun showMinimalChrome() = _uiState.update { it.copy(chromeState = ReaderChromeState.HIDDEN) }

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
}
