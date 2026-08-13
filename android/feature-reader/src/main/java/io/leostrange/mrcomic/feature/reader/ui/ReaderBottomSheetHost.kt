package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.Saver
import androidx.compose.ui.platform.ClipboardManager
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/**
 * ARC-11 slice 2. Все немутируемые зависимости + набор (state, setter)-пар
 * для каждого открытого bottom-sheet / dialog'а / overlay'а, которые
 * [ReaderScreen] владеет через `mutableStateOf`. До рефакторинга
 * [ReaderBottomSheets] принимал их как 35+ именованных параметров — длинный
 * call-site в [ReaderScreen] делал composable нечитаемым и был главным
 * «наростом» после slice 0 [ReaderChromeSurfacePlan].
 *
 * `data class` (а не обычный класс) даёт нам equals/hashCode/copy, что
 * упрощает тестирование.
 *
 * Используется через [@Composable rememberReaderBottomSheetHost], который
 *  кишит большинство setter'ов `rememberSaveable`, чтобы пережить
 *  recompose + goBack navigation.
 */
internal data class ReaderBottomSheetHost(
    // Static (non-state) read-side dependencies
    val uiState: ReaderUiState,
    val viewModel: ReaderViewModel,
    val isTextReader: Boolean,
    val ttsRuntimeState: ReaderTtsRuntimeState,
    val ttsController: ReaderTextToSpeechController,
    val activeReaderPreset: ReadingPreset,
    val currentChapterTitle: String?,
    val clipboardManager: ClipboardManager,
    val readerText: ReaderUiText,
    val fontCatalogVersion: Int,

    // State/read-write pairs
    val openControlCenterAtServices: Boolean,
    val onOpenControlCenterAtServicesChange: (Boolean) -> Unit,
    val showTextTranslationPageSheet: Boolean,
    val onShowTextTranslationPageSheetChange: (Boolean) -> Unit,
    val showRsvpOverlay: Boolean,
    val onShowRsvpOverlayChange: (Boolean) -> Unit,
    val rsvpWords: List<String>,
    val onRsvpWordsChange: (List<String>) -> Unit,
    val showReaderAudioSheet: Boolean,
    val onShowReaderAudioSheetChange: (Boolean) -> Unit,
    val pendingTtsRestartTargetPage: Int?,
    val onPendingTtsRestartTargetPageChange: (Int?) -> Unit,
    val pendingCustomFontDeletion: String?,
    val onPendingCustomFontDeletionChange: (String?) -> Unit,
    val quoteSavePopupVisible: Boolean,
    val onQuoteSavePopupVisibleChange: (Boolean) -> Unit,
    val quoteSavePopupToken: Int,
    val eyeRestReminderMinutes: Int?,
    val onEyeRestReminderMinutesChange: (Int?) -> Unit,

    // Launchers (read-only callbacks; ReaderScreen owns the click handlers)
    val onLaunchFontImport: () -> Unit,
    val onLaunchStyleImport: () -> Unit,
    val onLaunchStyleExport: () -> Unit,
    val onDeleteCustomFont: (String) -> Unit,
)

/**
 * Compose-точка входа. Не владеет state — только собирает переданные
 * зависимости в data class. Это намеренно: сами `var showX by remember`
 * остаются на стороне [ReaderScreen], потому что часть из них
 * `rememberSaveable` для переживания ротации.
 *
 * Если сюда когда-нибудь добавится новая пара (state, setter), её нужно
 * будет добавить в:
 *  1) data class  — выше;
 *  2) helper ниже — переходом параметров в поля;
 *  3) call-site в [ReaderScreen] — одним параметром `host = ...`;
 *  4) compose body — `host.fieldX`.
 *
 * Никаких новых public-типов; только новый `internal` data class.
 */
@Composable
internal fun rememberReaderBottomSheetHost(
    uiState: ReaderUiState,
    viewModel: ReaderViewModel,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    ttsController: ReaderTextToSpeechController,
    activeReaderPreset: ReadingPreset,
    currentChapterTitle: String?,
    clipboardManager: ClipboardManager,
    readerText: ReaderUiText,
    fontCatalogVersion: Int,
    openControlCenterAtServices: Boolean,
    onOpenControlCenterAtServicesChange: (Boolean) -> Unit,
    showTextTranslationPageSheet: Boolean,
    onShowTextTranslationPageSheetChange: (Boolean) -> Unit,
    showRsvpOverlay: Boolean,
    onShowRsvpOverlayChange: (Boolean) -> Unit,
    rsvpWords: List<String>,
    onRsvpWordsChange: (List<String>) -> Unit,
    showReaderAudioSheet: Boolean,
    onShowReaderAudioSheetChange: (Boolean) -> Unit,
    pendingTtsRestartTargetPage: Int?,
    onPendingTtsRestartTargetPageChange: (Int?) -> Unit,
    pendingCustomFontDeletion: String?,
    onPendingCustomFontDeletionChange: (String?) -> Unit,
    quoteSavePopupVisible: Boolean,
    onQuoteSavePopupVisibleChange: (Boolean) -> Unit,
    quoteSavePopupToken: Int,
    eyeRestReminderMinutes: Int?,
    onEyeRestReminderMinutesChange: (Int?) -> Unit,
    onLaunchFontImport: () -> Unit,
    onLaunchStyleImport: () -> Unit,
    onLaunchStyleExport: () -> Unit,
    onDeleteCustomFont: (String) -> Unit,
): ReaderBottomSheetHost = remember(
    uiState,
    viewModel,
    isTextReader,
    ttsRuntimeState,
    ttsController,
    activeReaderPreset,
    currentChapterTitle,
    clipboardManager,
    readerText,
    fontCatalogVersion,
    openControlCenterAtServices,
    showTextTranslationPageSheet,
    showRsvpOverlay,
    rsvpWords,
    showReaderAudioSheet,
    pendingTtsRestartTargetPage,
    pendingCustomFontDeletion,
    quoteSavePopupVisible,
    quoteSavePopupToken,
    eyeRestReminderMinutes,
) {
    ReaderBottomSheetHost(
        uiState = uiState,
        viewModel = viewModel,
        isTextReader = isTextReader,
        ttsRuntimeState = ttsRuntimeState,
        ttsController = ttsController,
        activeReaderPreset = activeReaderPreset,
        currentChapterTitle = currentChapterTitle,
        clipboardManager = clipboardManager,
        readerText = readerText,
        fontCatalogVersion = fontCatalogVersion,
        openControlCenterAtServices = openControlCenterAtServices,
        onOpenControlCenterAtServicesChange = onOpenControlCenterAtServicesChange,
        showTextTranslationPageSheet = showTextTranslationPageSheet,
        onShowTextTranslationPageSheetChange = onShowTextTranslationPageSheetChange,
        showRsvpOverlay = showRsvpOverlay,
        onShowRsvpOverlayChange = onShowRsvpOverlayChange,
        rsvpWords = rsvpWords,
        onRsvpWordsChange = onRsvpWordsChange,
        showReaderAudioSheet = showReaderAudioSheet,
        onShowReaderAudioSheetChange = onShowReaderAudioSheetChange,
        pendingTtsRestartTargetPage = pendingTtsRestartTargetPage,
        onPendingTtsRestartTargetPageChange = onPendingTtsRestartTargetPageChange,
        pendingCustomFontDeletion = pendingCustomFontDeletion,
        onPendingCustomFontDeletionChange = onPendingCustomFontDeletionChange,
        quoteSavePopupVisible = quoteSavePopupVisible,
        onQuoteSavePopupVisibleChange = onQuoteSavePopupVisibleChange,
        quoteSavePopupToken = quoteSavePopupToken,
        eyeRestReminderMinutes = eyeRestReminderMinutes,
        onEyeRestReminderMinutesChange = onEyeRestReminderMinutesChange,
        onLaunchFontImport = onLaunchFontImport,
        onLaunchStyleImport = onLaunchStyleImport,
        onLaunchStyleExport = onLaunchStyleExport,
        onDeleteCustomFont = onDeleteCustomFont,
    )
}

@Suppress("unused") // reserved for future Saver support when host state goes rememberSaveable
private val ReaderBottomSheetHostSaver: Saver<ReaderBottomSheetHost, *> = Saver(
    save = { /* host has @Composable UI state — can't save through a primitive Saver */ },
    restore = { null },
)
