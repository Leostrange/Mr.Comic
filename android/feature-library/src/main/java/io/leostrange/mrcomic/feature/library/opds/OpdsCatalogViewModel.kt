package io.leostrange.mrcomic.feature.library.opds

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.opds.OpdsRepository
import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import javax.inject.Inject

/**
 * OPDS catalog browser state owner (4.2).
 *
 * Browsing/search/download logic lives in [OpdsCatalogController] (explicit-dependency
 * controller, AGENTS.md delegate-controller pattern); this ViewModel only owns the
 * state flow, the controller wiring and the public API used by [OpdsCatalogScreen].
 */
@HiltViewModel
class OpdsCatalogViewModel @Inject constructor(
    opdsRepository: OpdsRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(OpdsCatalogUiState())
    val uiState: StateFlow<OpdsCatalogUiState> = _uiState.asStateFlow()

    private val controller = OpdsCatalogController(
        opdsRepository = opdsRepository,
        scope = viewModelScope,
        uiState = _uiState,
    )

    /** Open a catalog source. */
    fun openCatalog(source: OpdsCatalogSource) = controller.openCatalog(source)

    /** Navigate to a sub-feed (catalog or next page). */
    fun navigateTo(url: String) = controller.navigateTo(url)

    /** Go back to the previous feed. */
    fun goBack() = controller.goBack()

    /** Load the next page of the current feed. */
    fun loadNextPage() = controller.loadNextPage()

    /** Start a search. */
    fun search(query: String) = controller.search(query)

    /** Exit search mode and return to the current catalog. */
    fun exitSearch() = controller.exitSearch()

    /** Download a book from an OPDS entry. */
    fun downloadBook(entry: OpdsEntry) = controller.downloadBook(entry)

    /** Clear the downloaded book state (after import). */
    fun clearDownloadedBook() = controller.clearDownloadedBook()

    /** Show the catalog picker again. */
    fun showCatalogPicker() = controller.showCatalogPicker()

    /** Clear error state. */
    fun clearError() = controller.clearError()
}
