// Full decomposition of SettingsScreen completed (2026-08-04).
// This file: root routing (SettingsScreen), main menu, and minimal helpers only.
// Sections → Settings*Section.kt | Shared UI → SettingsComponents.kt
// Text/i18n → Settings*Text.kt / Settings*Strings.kt
// Presets → SettingsPresets.kt | ViewModel → SettingsViewModel.kt / SettingsViewModelHelpers.kt / SettingsViewModelBackup.kt

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropStrength
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropVeil
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromeTextFieldColors
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.settings.R as SettingsR
import io.leostrange.mrcomic.feature.reader.ui.ReaderTextFontCatalog
import io.leostrange.mrcomic.core.ui.popup.ImageMessagePopup
import io.leostrange.mrcomic.core.ui.popup.ImageMessagePopupConfig
import kotlinx.coroutines.launch

// ──────────── Navigation model ────────────

private fun nextSettingsUiEventToken(currentToken: Int): Int =
    if (currentToken == Int.MAX_VALUE) 1 else currentToken + 1

// ──────────── Root screen ────────────

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onAppIconSettingsClick: () -> Unit,
    @Suppress("unused") onProgressProfileClick: () -> Unit = {},
    onBackClick: (() -> Unit)? = null,
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val latestUiState by rememberUpdatedState(uiState)
    val strings = LocalStrings.current
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var settingsImportErrorPopupToken by rememberSaveable { mutableIntStateOf(0) }
    var fontCatalogVersion by remember { mutableIntStateOf(0) }
    var pendingCustomFontDeletion by rememberSaveable { mutableStateOf<String?>(null) }
    var currentSectionName by rememberSaveable { mutableStateOf<String?>(null) }
    var currentAppearancePageName by rememberSaveable { mutableStateOf(AppearanceSettingsPage.OVERVIEW.name) }
    var currentReaderPageName by rememberSaveable { mutableStateOf(ReaderSettingsPage.OVERVIEW.name) }
    var currentLibraryPageName by rememberSaveable { mutableStateOf(LibrarySettingsPage.OVERVIEW.name) }
    var currentSyncPageName by rememberSaveable { mutableStateOf(SyncSettingsPage.OVERVIEW.name) }
    var currentTranslationPageName by rememberSaveable { mutableStateOf(TranslationSettingsPage.OVERVIEW.name) }
    val currentSection = currentSectionName?.let { runCatching { SettingsSection.valueOf(it) }.getOrNull() }
    val currentAppearancePage = runCatching { AppearanceSettingsPage.valueOf(currentAppearancePageName) }
        .getOrDefault(AppearanceSettingsPage.OVERVIEW)
        .let {
            when (it) {
                AppearanceSettingsPage.BASICS,
                AppearanceSettingsPage.THEME_STUDIO,
                AppearanceSettingsPage.EXTRA -> AppearanceSettingsPage.OVERVIEW
                else -> it
            }
        }
    val currentReaderPage = parseReaderSettingsPage(currentReaderPageName)
    val currentLibraryPage = parseLibrarySettingsPage(currentLibraryPageName)
    val currentSyncPage = parseSyncSettingsPage(currentSyncPageName)
    val currentTranslationPage = runCatching { TranslationSettingsPage.valueOf(currentTranslationPageName) }
        .getOrDefault(TranslationSettingsPage.OVERVIEW)
    val settingsImportErrorPopupConfig = remember(
        uiState.imageMessagePopupPosition,
        uiState.imageMessagePopupFreeMove,
        uiState.imageMessagePopupSizeScale,
        uiState.imageMessagePopupDurationSeconds
    ) {
        ImageMessagePopupConfig(
            position = normalizeSettingsImageMessagePopupPosition(uiState.imageMessagePopupPosition),
            allowFreeMove = uiState.imageMessagePopupFreeMove,
            sizeScale = clampSettingsImageMessagePopupScale(uiState.imageMessagePopupSizeScale),
            durationSeconds = clampSettingsImageMessagePopupDurationSeconds(uiState.imageMessagePopupDurationSeconds)
        )
    }
    val appearanceText = remember(strings.languageCode) { appearanceSectionText(strings.languageCode) }
    val readerMapText = remember(strings.languageCode) { readerSettingsMapText(strings.languageCode) }
    val translationMapText = remember(strings.languageCode) { translationSettingsMapText(strings.languageCode) }
    fun showSettingsImportRejection() {
        if (uiState.settingsImportErrorPresentation == SettingsImportErrorPresentation.IMAGE) {
            settingsImportErrorPopupToken = nextSettingsUiEventToken(settingsImportErrorPopupToken)
        } else {
            scope.launch { snackbarHostState.showSnackbar(SETTINGS_IMPORT_REJECTION_MESSAGE) }
        }
    }
    val fontImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedFont = runCatching { ReaderTextFontCatalog.importFont(context, uri) }.getOrNull()
        if (importedFont != null) {
            fontCatalogVersion += 1
            viewModel.setTextFontFamily(importedFont)
            Toast.makeText(context, importedFont, Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Не удалось импортировать шрифт" else "Couldn't import font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    fun deleteImportedFont(fontName: String) {
        val deleted = runCatching { ReaderTextFontCatalog.deleteCustomFont(context, fontName) }
            .getOrDefault(false)
        pendingCustomFontDeletion = null
        if (deleted) {
            fontCatalogVersion += 1
            if (latestUiState.textFontFamily == fontName) {
                viewModel.setTextFontFamily("Georgia")
            }
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Шрифт удалён" else "Font deleted",
                Toast.LENGTH_SHORT
            ).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Не удалось удалить шрифт" else "Couldn't delete font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    val readerStyleImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        scope.launch {
            val importedStyle = runCatching {
                val rawJson = uri.readAcceptedSettingsImportText(context)
                viewModel.importReaderTypographyFromJson(rawJson)
            }.getOrElse { error ->
                if (error.message == SETTINGS_IMPORT_REJECTION_MESSAGE) {
                    showSettingsImportRejection()
                    return@launch
                }
                null
            }
            if (importedStyle != null) {
                Toast.makeText(
                    context,
                    if (strings.languageCode == "ru") "Импортирован стиль: $importedStyle" else "Imported style: $importedStyle",
                    Toast.LENGTH_SHORT
                ).show()
            } else {
                Toast.makeText(
                    context,
                    if (strings.languageCode == "ru") "Не удалось импортировать стиль" else "Couldn't import style",
                    Toast.LENGTH_SHORT
                ).show()
            }
        }
    }
    val readerStyleExportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        scope.launch {
            val exported = runCatching {
                val payload = buildReaderTypographyExportJson(latestUiState)
                context.contentResolver.openOutputStream(uri)?.use { out ->
                    out.write(payload.toByteArray(Charsets.UTF_8))
                } ?: error("No output stream")
            }.isSuccess
            Toast.makeText(
                context,
                when {
                    exported && strings.languageCode == "ru" -> "Стиль экспортирован"
                    exported -> "Style exported"
                    strings.languageCode == "ru" -> "Не удалось экспортировать стиль"
                    else -> "Couldn't export style"
                },
                Toast.LENGTH_SHORT
            ).show()
        }
    }

    fun navigateUp() {
        when {
            currentSection == SettingsSection.APPEARANCE && currentAppearancePage != AppearanceSettingsPage.OVERVIEW ->
                currentAppearancePageName = AppearanceSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.READER && currentReaderPage != ReaderSettingsPage.OVERVIEW ->
                currentReaderPageName = ReaderSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.LIBRARY && currentLibraryPage != LibrarySettingsPage.OVERVIEW ->
                currentLibraryPageName = LibrarySettingsPage.OVERVIEW.name
            currentSection == SettingsSection.SYNC && currentSyncPage != SyncSettingsPage.OVERVIEW ->
                currentSyncPageName = SyncSettingsPage.OVERVIEW.name
            currentSection == SettingsSection.TRANSLATION && currentTranslationPage != TranslationSettingsPage.OVERVIEW ->
                currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
            currentSection != null -> currentSectionName = null
            else -> onBackClick?.invoke()
        }
    }

    BackHandler(enabled = currentSection != null || onBackClick != null) { navigateUp() }

    LaunchedEffect(uiState.cacheMessage, uiState.settingsImportErrorPresentation) {
        val message = uiState.cacheMessage ?: return@LaunchedEffect
        if (
            message == SETTINGS_IMPORT_REJECTION_MESSAGE &&
            uiState.settingsImportErrorPresentation == SettingsImportErrorPresentation.IMAGE
        ) {
            settingsImportErrorPopupToken = nextSettingsUiEventToken(settingsImportErrorPopupToken)
            viewModel.consumeCacheMessage()
            return@LaunchedEffect
        }
        snackbarHostState.showSnackbar(message)
        viewModel.consumeCacheMessage()
    }

    if (settingsImportErrorPopupToken > 0) {
        ImageMessagePopup(
            drawableId = SettingsR.drawable.settings_import_error_popup,
            contentDescription = SETTINGS_IMPORT_REJECTION_MESSAGE,
            config = settingsImportErrorPopupConfig,
            eventToken = settingsImportErrorPopupToken,
            onDismiss = { settingsImportErrorPopupToken = 0 }
        )
    }

    pendingCustomFontDeletion?.let { fontName ->
        AlertDialog(
            onDismissRequest = { pendingCustomFontDeletion = null },
            title = { Text(readerDeleteCustomFontDialogTitle(strings.languageCode)) },
            text = {
                Text(
                    readerDeleteCustomFontDialogMessage(strings.languageCode, fontName),
                    style = MaterialTheme.typography.bodyMedium
                )
            },
            confirmButton = {
                TextButton(onClick = { deleteImportedFont(fontName) }) {
                    Text(readerDeleteCustomFontConfirm(strings.languageCode))
                }
            },
            dismissButton = {
                TextButton(onClick = { pendingCustomFontDeletion = null }) {
                    Text(readerDeleteCustomFontCancel(strings.languageCode))
                }
            }
        )
    }

    val sectionTitle = when (currentSection) {
        SettingsSection.APPEARANCE   -> when (currentAppearancePage) {
            AppearanceSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.APPEARANCE, strings.languageCode, strings).title
            AppearanceSettingsPage.BASICS -> appearanceText.tabLabels[AppearanceSettingsTab.BASICS].orEmpty()
            AppearanceSettingsPage.LIBRARY -> appearanceLibraryVisualsTitle(strings.languageCode)
            AppearanceSettingsPage.THEME_STUDIO -> appearanceThemeStudioTitle(strings.languageCode)
            AppearanceSettingsPage.THEME -> appearanceThemeTitle(strings.languageCode)
            AppearanceSettingsPage.SCALE -> appearanceText.tabLabels[AppearanceSettingsTab.SCALE].orEmpty()
            AppearanceSettingsPage.COLORS -> appearanceColorsTitle(strings.languageCode)
            AppearanceSettingsPage.EXTRA -> appearanceExtrasTitle(strings.languageCode)
        }
            SettingsSection.READER       -> when (currentReaderPage) {
                ReaderSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.READER, strings.languageCode, strings).title
                ReaderSettingsPage.TEXT_APPEARANCE -> readerMapText.textAppearanceTitle
                ReaderSettingsPage.PAGE_LAYOUT -> readerMapText.pageLayoutTitle
                ReaderSettingsPage.HEADERS -> readerMapText.headersTitle
                ReaderSettingsPage.PAGING -> readerMapText.pagingTitle
                ReaderSettingsPage.BEHAVIOR -> readerMapText.behaviorTitle
            }
        SettingsSection.LIBRARY      -> when (currentLibraryPage) {
            LibrarySettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.LIBRARY, strings.languageCode, strings).title
            LibrarySettingsPage.ACCESS -> libraryAccessTitle(strings.languageCode)
            LibrarySettingsPage.CACHE -> libraryCacheTitle(strings.languageCode)
            LibrarySettingsPage.IMPORT_EXPORT -> libraryImportExportTitle(strings.languageCode)
        }
        SettingsSection.PERFORMANCE  -> settingsSectionMeta(SettingsSection.PERFORMANCE, strings.languageCode, strings).title
        SettingsSection.SYNC         -> when (currentSyncPage) {
            SyncSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).title
            SyncSettingsPage.BACKUP -> syncBackupTitle(strings.languageCode)
        }
        SettingsSection.TRANSLATION  -> when (currentTranslationPage) {
            TranslationSettingsPage.OVERVIEW -> settingsSectionMeta(SettingsSection.TRANSLATION, strings.languageCode, strings).title
            TranslationSettingsPage.LANGUAGES -> translationMapText.languagesTitle
            TranslationSettingsPage.OCR -> translationMapText.ocrTitle
            TranslationSettingsPage.OVERLAY -> translationMapText.overlayTitle
            TranslationSettingsPage.SERVICES -> translationMapText.servicesTitle
            TranslationSettingsPage.DICTIONARIES -> translationMapText.dictionariesTitle
        }
        SettingsSection.AI_SERVICES  -> settingsSectionMeta(SettingsSection.AI_SERVICES, strings.languageCode, strings).title
        SettingsSection.READ_ALOUD   -> settingsSectionMeta(SettingsSection.READ_ALOUD, strings.languageCode, strings).title
        SettingsSection.STORAGE      -> settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).title
        SettingsSection.ADVANCED     -> settingsSectionMeta(SettingsSection.ADVANCED, strings.languageCode, strings).title
        SettingsSection.ABOUT        -> settingsSectionMeta(SettingsSection.ABOUT, strings.languageCode, strings).title
        null                         -> strings.settings
    }

    Scaffold(
        containerColor = Color.Transparent,
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            RootChromeTopBarHost {
                TopAppBar(
                    title = { Text(sectionTitle) },
                    colors = rootChromeTopBarColors(),
                    windowInsets = WindowInsets(0, 0, 0, 0),
                    navigationIcon = {
                        if (currentSection != null || onBackClick != null) {
                            MrComicIconButton(
                                onClick = { navigateUp() },
                                variant = MrComicIconButtonVariant.Tonal
                            ) {
                                Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = strings.back)
                            }
                        }
                    }
                )
            }
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            if (currentSection == SettingsSection.LIBRARY) {
                LibraryBackdropLayer(
                    backgroundStyle = uiState.libraryBackgroundStyle,
                    backgroundImageUri = uiState.libraryBackgroundImageUri,
                    colorScheme = MaterialTheme.colorScheme,
                    backdropStrength = rootChromeBackdropStrength(uiState.libraryBackdropStrength),
                    backgroundBlur = uiState.libraryBackgroundBlur,
                    imageVeil = rootChromeBackdropVeil(uiState.libraryBackgroundVeil),
                    modifier = Modifier.fillMaxSize()
                )
            }

            when (currentSection) {
                null -> SettingsMainMenu(
                    uiState = uiState,
                    strings = strings,
                    onSectionClick = {
                        currentSectionName = it.name
                        currentAppearancePageName = AppearanceSettingsPage.OVERVIEW.name
                        currentReaderPageName = ReaderSettingsPage.OVERVIEW.name
                        currentLibraryPageName = LibrarySettingsPage.OVERVIEW.name
                        currentSyncPageName = SyncSettingsPage.OVERVIEW.name
                        currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.APPEARANCE -> AppearanceSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentAppearancePage,
                    onPageChange = { currentAppearancePageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.READER -> ReaderSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentReaderPage,
                    onPageChange = { currentReaderPageName = it.name },
                    fontCatalogVersion = fontCatalogVersion,
                    onImportCustomFont = { fontImportLauncher.launch(arrayOf("*/*")) },
                    onImportReaderStyle = {
                        readerStyleImportLauncher.launch(
                            arrayOf("application/json", "text/*", "application/octet-stream")
                        )
                    },
                    onExportReaderStyle = {
                        readerStyleExportLauncher.launch(readerTypographyExportFileName(uiState))
                    },
                    onDeleteCustomFont = { fontName ->
                        pendingCustomFontDeletion = fontName
                    },
                    onOpenTranslationSettings = {
                        currentSectionName = SettingsSection.TRANSLATION.name
                        currentTranslationPageName = TranslationSettingsPage.OVERVIEW.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.LIBRARY -> LibrarySection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentLibraryPage,
                    onImportRejected = ::showSettingsImportRejection,
                    onPageChange = { currentLibraryPageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.PERFORMANCE -> PerformanceSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.TRANSLATION -> TranslationSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentTranslationPage,
                    onPageChange = { currentTranslationPageName = it.name },
                    onOpenAiServices = {
                        currentSectionName = SettingsSection.AI_SERVICES.name
                    },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.SYNC -> SyncSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    currentPage = currentSyncPage,
                    onImportRejected = ::showSettingsImportRejection,
                    onPageChange = { currentSyncPageName = it.name },
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.STORAGE -> StorageSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.AI_SERVICES -> AiServicesSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.READ_ALOUD -> ReadAloudSection(
                    uiState = uiState,
                    viewModel = viewModel,
                    strings = strings,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.ADVANCED -> AdvancedSection(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel,
                    onAppIconSettingsClick = onAppIconSettingsClick,
                    modifier = Modifier.padding(padding)
                )
                SettingsSection.ABOUT -> AboutSection(
                    strings = strings,
                    modifier = Modifier.padding(padding)
                )
            }
        }
    }
}

// ──────────── Main menu ────────────

@Composable
private fun SettingsMainMenu(
    uiState: SettingsUiState,
    strings: AppStrings,
    onSectionClick: (SettingsSection) -> Unit,
    modifier: Modifier = Modifier
) {
    var query by remember { mutableStateOf("") }
    val menuText = remember(strings.languageCode) { mainMenuText(strings.languageCode) }
    val normalizedQuery = query.trim().lowercase()
    val sectionItems = settingsSectionItems(uiState, strings).filter { item ->
        normalizedQuery.isBlank() ||
            item.title.lowercase().contains(normalizedQuery) ||
            item.description.lowercase().contains(normalizedQuery) ||
            item.summary?.lowercase()?.contains(normalizedQuery) == true
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            OutlinedTextField(
                value = query,
                onValueChange = { query = it },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text(menuText.searchPlaceholder) },
                leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                singleLine = true,
                shape = RootChromePanelShape,
                colors = rootChromeTextFieldColors()
            )
        }
        item {
            SettingsSectionLead(
                title = menuText.leadTitle,
                description = menuText.leadDescription
            )
        }
        item {
            SettingsCard(title = menuText.sectionsTitle) {
                sectionItems.forEachIndexed { index, item ->
                    val section = item.section
                    val icon = when (section) {
                        SettingsSection.APPEARANCE -> Icons.Default.Palette
                        SettingsSection.READER -> Icons.Default.Book
                        SettingsSection.LIBRARY -> Icons.Default.GridView
                        SettingsSection.PERFORMANCE -> Icons.Default.Bolt
                        SettingsSection.SYNC -> Icons.Default.Sync
                        SettingsSection.READ_ALOUD -> Icons.Default.RecordVoiceOver
                        SettingsSection.TRANSLATION -> Icons.Default.Translate
                        SettingsSection.AI_SERVICES -> Icons.Default.Psychology
                        SettingsSection.STORAGE -> Icons.Default.FolderOpen
                        SettingsSection.ADVANCED -> Icons.Default.Tune
                        SettingsSection.ABOUT -> Icons.Default.Info
                    }
                    SettingsNavItem(
                        icon = icon,
                        title = item.title,
                        description = item.description,
                        summary = item.summary,
                        onClick = { onSectionClick(section) }
                    )
                    if (index != sectionItems.lastIndex) {
                        HorizontalDivider(
                            modifier = Modifier.padding(start = 56.dp),
                            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.6f)
                        )
                    }
                }
            }
        }
    }
}
// Phase U (2026-08-04): SettingsNavItem → SettingsComponents.kt.

@Composable
private fun SettingsSectionLead(
    title: String,
    description: String,
    modifier: Modifier = Modifier
) {
    MrComicCardSurface(
        modifier = modifier.fillMaxWidth(),
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleMedium)
            Text(
                description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

// Decomposition complete (2026-08-04).
// Remaining: SettingsScreen (root), SettingsMainMenu, SettingsSectionLead, nextSettingsUiEventToken.
// All sections, shared components, text data, and i18n functions live in dedicated *_*.kt files.

