package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder

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

