// Phase G (2026-08-03): AI-services/Performance-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style

/**
 * AI services + Performance (Phase G, 2026-08-03): AiServicesSection with its
 * machine-translation / local-explain / advanced-explain / summary / OCR /
 * providers cards, the OpenRouter provider card and its label helpers, plus
 * PerformanceSection. Moved from SettingsScreen.kt; behavior is unchanged.
 */

/* ──── AiServicesSection (fun) ──── */
@Composable
internal fun AiServicesSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    val overviewText = remember(strings.languageCode) { aiServicesOverviewText(strings.languageCode) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            AiServiceMachineTranslationCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            AiServiceLocalExplainCard(overviewText = overviewText)
        }
        item {
            AiServiceAdvancedExplainCard(
                uiState = uiState,
                strings = strings,
                overviewText = overviewText,
                onExplainProviderChange = { viewModel.setTranslationExplainProvider(it) }
            )
        }
        item {
            AiServiceSummaryOverviewCard(overviewText = overviewText)
        }
        item {
            AiServiceOcrOverviewCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            AiServiceProvidersOverviewCard(uiState = uiState, strings = strings, overviewText = overviewText)
        }
        item {
            OpenRouterProviderCard(
                uiState = uiState,
                language = strings.languageCode,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── AiServiceMachineTranslationCard (fun) ──── */
@Composable
internal fun AiServiceMachineTranslationCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    val source = translationEndpointLabel(strings.languageCode, uiState.translationSourceLanguage, isTarget = false)
    val target = translationEndpointLabel(strings.languageCode, uiState.translationTargetLanguage, isTarget = true)
    val transport = transportLabel(strings.languageCode, uiState.translationTransport)
    SettingsCard(title = overviewText.machineTranslationTitle) {
        Text(
            text = overviewText.machineTranslationHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.routeLabel}: $source → $target")
        LabelText("${translationSectionText(strings.languageCode).transportCard}: $transport")
        LabelText("${overviewText.statusLabel}: ${aiMachineTranslationStatus(uiState, strings.languageCode)}")
    }
}

/* ──── AiServiceLocalExplainCard (fun) ──── */
@Composable
internal fun AiServiceLocalExplainCard(
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.localExplainTitle) {
        Text(
            text = overviewText.localExplainHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${overviewText.localProviderValue}")
        LabelText("${overviewText.statusLabel}: ${overviewText.localExplainStatus}")
    }
}

/* ──── AiServiceAdvancedExplainCard (fun) ──── */
@Composable
internal fun AiServiceAdvancedExplainCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText,
    onExplainProviderChange: (String) -> Unit = {}
) {
    SettingsCard(title = overviewText.advancedExplainTitle) {
        Text(
            text = overviewText.advancedExplainHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${aiProvidersValue(uiState, strings.languageCode)}")
        LabelText("${overviewText.expandedExplainLabel}: ${compactToggleLabel(strings.languageCode, uiState.translationExplainEnabled)}")
        Spacer(Modifier.height(8.dp))
        val currentProvider = uiState.translationConfig.explainProvider
        Text(
            text = "Explain provider:",
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
        Spacer(Modifier.height(4.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            FilterChip(
                selected = currentProvider == "LOCAL",
                onClick = { onExplainProviderChange("LOCAL") },
                label = { Text("Local dictionary") }
            )
            FilterChip(
                selected = currentProvider == "ONLINE",
                onClick = { onExplainProviderChange("ONLINE") },
                label = { Text("Online (internet)") }
            )
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${overviewText.statusLabel}: ${aiAdvancedExplainStatus(uiState, strings.languageCode)}")
    }
}

/* ──── AiServiceSummaryOverviewCard (fun) ──── */
@Composable
internal fun AiServiceSummaryOverviewCard(
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.summaryTitle) {
        Text(
            text = overviewText.summaryHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${overviewText.notConnectedValue}")
        LabelText("${overviewText.statusLabel}: ${overviewText.summaryUnavailableStatus}")
    }
}

/* ──── AiServiceOcrOverviewCard (fun) ──── */
@Composable
internal fun AiServiceOcrOverviewCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    val translationText = remember(strings.languageCode) { translationSectionText(strings.languageCode) }
    SettingsCard(title = overviewText.ocrTitle) {
        Text(
            text = overviewText.ocrHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${strings.ocrLanguageCard}: ${uiState.ocrLanguage}")
        LabelText("${translationText.dialoguesOnlyTitle}: ${compactToggleLabel(strings.languageCode, uiState.ocrDialoguesOnly)}")
        LabelText("${translationText.includeSfxTitle}: ${compactToggleLabel(strings.languageCode, uiState.ocrIncludeSfx)}")
    }
}

/* ──── AiServiceProvidersOverviewCard (fun) ──── */
@Composable
internal fun AiServiceProvidersOverviewCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    overviewText: AiServicesOverviewText
) {
    SettingsCard(title = overviewText.providersTitle) {
        Text(
            text = overviewText.providersHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText("${overviewText.providerLabel}: ${aiProvidersValue(uiState, strings.languageCode)}")
        LabelText("${overviewText.statusLabel}: ${aiProvidersStatus(uiState, strings.languageCode)}")
        if (uiState.openRouterModel.isNotBlank()) {
            LabelText("${openRouterModelLabel(strings.languageCode)}: ${uiState.openRouterModel}")
        }
    }
}

/* ──── OpenRouterProviderCard (fun) ──── */
@Composable
internal fun OpenRouterProviderCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var apiKeyDraft by rememberSaveable { mutableStateOf("") }
    var modelDraft by rememberSaveable(uiState.openRouterModel) { mutableStateOf(uiState.openRouterModel) }
    val status = when {
        uiState.openRouterApiKey.isBlank() -> openRouterDisconnectedStatus(language)
        !openRouterCredentialsPassLocalValidation(uiState.openRouterApiKey, uiState.openRouterModel) ->
            openRouterNeedsValidationStatus(language)
        uiState.translationAvailability.networkAvailable -> openRouterConnectedStatus(language)
        else -> openRouterNeedsNetworkStatus(language)
    }

    SettingsCard(title = "OpenRouter") {
        Text(
            text = openRouterCardHint(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        OutlinedTextField(
            value = apiKeyDraft,
            onValueChange = { apiKeyDraft = it },
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            label = { Text(openRouterApiKeyLabel(language)) },
            placeholder = {
                Text(if (uiState.openRouterApiKey.isNotBlank()) "••••••••" else "sk-or-v1-...")
            },
            visualTransformation = PasswordVisualTransformation()
        )
        Spacer(Modifier.height(10.dp))
        OutlinedTextField(
            value = modelDraft,
            onValueChange = { modelDraft = it },
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            label = { Text(openRouterModelLabel(language)) },
            placeholder = { Text("openrouter/auto") }
        )
        Spacer(Modifier.height(10.dp))
        LabelText("${openRouterStatusLabel(language)}: $status")
        Spacer(Modifier.height(12.dp))
        Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
            MrComicButton(
                onClick = {
                    val normalizedKey = apiKeyDraft.trim()
                    val normalizedModel = modelDraft.trim().ifEmpty { "openrouter/auto" }
                    viewModel.saveEncryptedOpenRouterApiKey(
                        normalizedKey.ifEmpty { uiState.openRouterApiKey }
                    )
                    viewModel.setOpenRouterModel(normalizedModel)
                    apiKeyDraft = ""
                },
                variant = MrComicButtonVariant.Filled
            ) {
                Text(openRouterSaveLabel(language))
            }
            MrComicButton(
                onClick = {
                    val normalizedKey = ""
                    val normalizedModel = "openrouter/auto"
                    apiKeyDraft = normalizedKey
                    modelDraft = normalizedModel
                    viewModel.saveEncryptedOpenRouterApiKey(normalizedKey)
                    viewModel.setOpenRouterModel(normalizedModel)
                },
                variant = MrComicButtonVariant.Outlined
            ) {
                Text(openRouterClearLabel(language))
            }
        }
    }
}

/* ──── openRouterCardHint (fun) ──── */
internal fun openRouterCardHint(language: String): String = when (language) {
    "ru" -> "Ключ и модель для онлайн-перевода через OpenRouter. Ключ хранится локально в зашифрованном виде."
    else -> "API key and model for online translation through OpenRouter. The key is stored encrypted on this device."
}

/* ──── openRouterApiKeyLabel (fun) ──── */
internal fun openRouterApiKeyLabel(language: String): String = when (language) {
    "ru" -> "API ключ"
    else -> "API key"
}

/* ──── openRouterModelLabel (fun) ──── */
internal fun openRouterModelLabel(language: String): String = when (language) {
    "ru" -> "Модель"
    else -> "Model"
}

/* ──── openRouterStatusLabel (fun) ──── */
internal fun openRouterStatusLabel(language: String): String = when (language) {
    "ru" -> "Статус"
    else -> "Status"
}

/* ──── openRouterSaveLabel (fun) ──── */
internal fun openRouterSaveLabel(language: String): String = when (language) {
    "ru" -> "Сохранить"
    else -> "Save"
}

/* ──── openRouterClearLabel (fun) ──── */
internal fun openRouterClearLabel(language: String): String = when (language) {
    "ru" -> "Очистить"
    else -> "Clear"
}

/* ──── openRouterConnectedStatus (fun) ──── */
internal fun openRouterConnectedStatus(language: String): String = when (language) {
    "ru" -> "Подключён"
    else -> "Connected"
}

/* ──── openRouterNeedsNetworkStatus (fun) ──── */
internal fun openRouterNeedsNetworkStatus(language: String): String = when (language) {
    "ru" -> "Ключ сохранён, нужна сеть"
    else -> "Configured, network required"
}

/* ──── openRouterNeedsValidationStatus (fun) ──── */
internal fun openRouterNeedsValidationStatus(language: String): String = when (language) {
    "ru" -> "Проверьте ключ или модель"
    else -> "Check key or model"
}

/* ──── openRouterDisconnectedStatus (fun) ──── */
internal fun openRouterDisconnectedStatus(language: String): String = when (language) {
    "ru" -> "Не настроен"
    else -> "Not configured"
}

/* ──── PerformanceSection (fun) ──── */
@Composable
internal fun PerformanceSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    DetailedPerformanceSection(
        uiState = uiState,
        viewModel = viewModel,
        language = strings.languageCode,
        modifier = modifier
    )
}

