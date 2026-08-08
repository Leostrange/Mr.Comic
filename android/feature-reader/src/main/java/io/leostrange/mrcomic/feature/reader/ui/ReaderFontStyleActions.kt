package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.runtime.Composable

/**
 * Launchers and callbacks for the font / reader-style import-export flows.
 *
 * Owns the [ActivityResultContracts.OpenDocument] / [ActivityResultContracts.CreateDocument]
 * launchers and the custom-font deletion callback. Extracted from [ReaderScreen] so the
 * orchestrator function stays focused on layout and navigation.
 */
internal data class ReaderFontStyleActions(
    val onLaunchFontImport: () -> Unit,
    val onLaunchStyleImport: () -> Unit,
    val onLaunchStyleExport: () -> Unit,
    val onDeleteCustomFont: (String) -> Unit,
)

@Composable
internal fun rememberReaderFontStyleActions(
    context: Context,
    viewModel: ReaderViewModel,
    languageCode: String,
    uiState: ReaderUiState,
    onFontCatalogChanged: () -> Unit,
): ReaderFontStyleActions {
    val fontImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedFont = runCatching { ReaderTextFontCatalog.importFont(context, uri) }.getOrNull()
        if (importedFont != null) {
            onFontCatalogChanged()
            viewModel.settingsController.setTextFontFamily(importedFont)
            Toast.makeText(context, importedFont, Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(
                context,
                if (languageCode == "ru") "Не удалось импортировать шрифт" else "Couldn't import font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    val deleteCustomFont: (String) -> Unit = { fontName ->
        val deleted = runCatching { ReaderTextFontCatalog.deleteCustomFont(context, fontName) }.getOrDefault(false)
        if (deleted) {
            onFontCatalogChanged()
            if (uiState.textFontFamily == fontName) {
                viewModel.settingsController.setTextFontFamily("Georgia")
            }
            Toast.makeText(
                context,
                if (languageCode == "ru") "Шрифт удалён" else "Font deleted",
                Toast.LENGTH_SHORT
            ).show()
        } else {
            Toast.makeText(
                context,
                if (languageCode == "ru") "Не удалось удалить шрифт" else "Couldn't delete font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    val styleImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedStyleResult = runCatching {
            context.contentResolver.openInputStream(uri)
                ?.bufferedReader()
                ?.use { it.readText() }
        }.getOrNull()
        val importedStyle = importedStyleResult?.let { raw ->
            if (looksLikeReaderStyleJson(raw)) {
                viewModel.settingsController.importReaderStyleFromJson(raw)
            } else {
                null
            }
        }
        Toast.makeText(
            context,
            if (importedStyle != null) {
                if (languageCode == "ru") "Импортирован стиль: $importedStyle" else "Imported style: $importedStyle"
            } else if (importedStyleResult != null && !looksLikeReaderStyleJson(importedStyleResult)) {
                if (languageCode == "ru") "Нужен файл стиля в формате JSON" else "Please choose a JSON style file"
            } else {
                if (languageCode == "ru") "Не удалось импортировать стиль" else "Couldn't import style"
            },
            Toast.LENGTH_SHORT
        ).show()
    }
    val styleExportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val exported = runCatching {
            val payload = buildReaderTypographyExportJson(uiState)
            context.contentResolver.openOutputStream(uri)?.use { out ->
                out.write(payload.toByteArray(Charsets.UTF_8))
            } ?: error("No output stream")
        }.isSuccess
        Toast.makeText(
            context,
            if (exported) {
                if (languageCode == "ru") "Стиль экспортирован" else "Style exported"
            } else {
                if (languageCode == "ru") "Не удалось экспортировать стиль" else "Couldn't export style"
            },
            Toast.LENGTH_SHORT
        ).show()
    }
    return ReaderFontStyleActions(
        onLaunchFontImport = { fontImportLauncher.launch(arrayOf("*/*")) },
        onLaunchStyleImport = { styleImportLauncher.launch(arrayOf("application/json", "*/*")) },
        onLaunchStyleExport = { styleExportLauncher.launch(readerTypographyExportFileName(uiState)) },
        onDeleteCustomFont = deleteCustomFont,
    )
}
