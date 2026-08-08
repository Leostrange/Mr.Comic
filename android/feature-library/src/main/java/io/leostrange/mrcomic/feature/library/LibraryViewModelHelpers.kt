package io.leostrange.mrcomic.feature.library

import android.util.Log
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/** Stateless helpers extracted from LibraryViewModel. */

internal fun vmTr(
    lang: String,
    ru: String,
    en: String,
    ja: String,
    zh: String,
    ko: String
): String = when (lang) {
    "en" -> en
    "ja" -> ja
    "zh" -> zh
    "ko" -> ko
    else -> ru
}

internal fun localizedError(
    lang: String,
    ru: String,
    en: String,
    ja: String,
    zh: String,
    ko: String,
    cause: Throwable?
): String {
    val details = cause?.message?.takeIf { it.isNotBlank() }?.let { ": $it" }.orEmpty()
    return vmTr(
        lang = lang,
        ru = "$ru$details",
        en = "$en$details",
        ja = "$ja$details",
        zh = "$zh$details",
        ko = "$ko$details"
    )
}

internal fun normalizeFolderId(folderId: String?): String? {
    return folderId
        ?.trim()
        ?.trim('/')
        ?.takeIf { it.isNotBlank() }
}

internal fun String?.parentFolderPath(): String? {
    val value = normalizeFolderId(this) ?: return null
    return value.substringBeforeLast('/', "").ifBlank { null }
}

internal fun folderRepresentativeName(comic: Comic): String {
    return comic.documentId
        ?.substringAfterLast('/')
        ?.substringAfterLast(':')
        ?.lowercase()
        ?: comic.path.substringAfterLast('/').substringAfterLast('\\').lowercase()
}

internal fun normalizeLibraryViewMode(stored: String, isGrid: Boolean): LibraryViewMode = when {
    isGrid -> LibraryViewMode.GRID
    stored == LibraryViewMode.LIST.name -> LibraryViewMode.LIST
    else -> LibraryViewMode.GRID
}

/**
 * Run a CRUD action inside [viewModelScope] with automatic error handling.
 * On success the action completes; on failure the error is logged and
 * pushed into [uiState] as a localized message.
 */
internal fun LibraryViewModel.runCrud(
    tag: String,
    uiState: MutableStateFlow<LibraryUiState>,
    action: suspend () -> Unit,
    ru: String,
    en: String,
    ja: String,
    zh: String,
    ko: String,
) {
    viewModelScope.launch {
        try {
            action()
        } catch (e: Exception) {
            Log.e(tag, "$en", e)
            uiState.update {
                it.copy(
                    error = localizedError(
                        lang = it.appLanguage,
                        ru = ru,
                        en = en,
                        ja = ja,
                        zh = zh,
                        ko = ko,
                        cause = e,
                    )
                )
            }
        }
    }
}
