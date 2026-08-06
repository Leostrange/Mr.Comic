package io.leostrange.mrcomic.home

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropStrength
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropVeil
import io.leostrange.mrcomic.core.ui.library.rootChromeStableTopBarInsets
import io.leostrange.mrcomic.ui.continueScreenText

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun ContinueScreen(
    onComicClick: (String, Int?) -> Unit,
    onOpenLibrary: () -> Unit,
    onOpenProgressProfile: () -> Unit = {},
    libraryChrome: ContinueLibraryChrome = ContinueLibraryChrome(),
    viewModel: ContinueViewModel = hiltViewModel()
) {
    val uiState = viewModel.uiState.collectAsStateWithLifecycle().value
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    val returnPrompt = remember(
        uiState.dailyReadingGoal,
        uiState.continueReading,
        uiState.checkpointTrail
    ) {
        resolveContinueReturnPrompt(
            goalState = uiState.dailyReadingGoal,
            continueReading = uiState.continueReading,
            checkpointTrail = uiState.checkpointTrail
        )
    }
    val dedupedCheckpointTrail = remember(
        uiState.checkpointTrail,
        uiState.continueReading
    ) {
        dedupeContinueCheckpointTrail(
            checkpointTrail = uiState.checkpointTrail,
            continueReading = uiState.continueReading
        )
    }
    val showReturnPrompt = remember(
        uiState.continueReading,
        returnPrompt
    ) {
        shouldShowContinueReturnCard(
            continueReading = uiState.continueReading,
            returnPrompt = returnPrompt
        )
    }
    LaunchedEffect(
        uiState.dailyReadingGoal,
        uiState.totalTitles,
        uiState.completedTitles,
        uiState.mascotRecapEnabled,
        uiState.questPromptsEnabled,
        showReturnPrompt
    ) {
        viewModel.reportMetricsSnapshot(returnPromptEligible = showReturnPrompt)
    }
    val showCheckpointRecap = remember(
        showReturnPrompt,
        dedupedCheckpointTrail,
        uiState.mascotRecapEnabled,
        uiState.hasLibraryContent
    ) {
        shouldShowContinueCheckpointChip(
            hasReturnPrompt = showReturnPrompt,
            checkpointTrail = dedupedCheckpointTrail,
            mascotRecapEnabled = uiState.mascotRecapEnabled,
            hasLibraryContent = uiState.hasLibraryContent
        )
    }

    Scaffold(
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            ContinueTopBar(
                title = text.title,
                onOpenProgressProfile = onOpenProgressProfile
            )
        },
        containerColor = Color.Transparent
    ) { innerPadding ->
        Box(modifier = Modifier.fillMaxSize()) {
            LibraryBackdropLayer(
                backgroundStyle = libraryChrome.backgroundStyle,
                backgroundImageUri = libraryChrome.backgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = rootChromeBackdropStrength(libraryChrome.backdropStrength),
                backgroundBlur = libraryChrome.backgroundBlur,
                imageVeil = rootChromeBackdropVeil(libraryChrome.backgroundVeil),
                modifier = Modifier.fillMaxSize()
            )

            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                if (uiState.isLoading) {
                    item {
                        ContinueLoadingState()
                    }
                } else {
                    item {
                        ContinueIntroCard(
                            intro = if (uiState.hasLibraryContent) text.introWithLibrary else text.introEmptyLibrary,
                            status = if (uiState.hasLibraryContent) {
                                text.inProgressCount(uiState.currentlyReading.size + if (uiState.continueReading != null) 1 else 0)
                            } else {
                                null
                            }
                        )
                    }
                }

                if (!uiState.isLoading && !uiState.hasLibraryContent) {
                    item {
                        EmptyContinueState(
                            onOpenLibrary = onOpenLibrary,
                            text = text,
                            showMascot = uiState.mascotRecapEnabled
                        )
                    }
                } else if (!uiState.isLoading && !uiState.hasActiveReading) {
                    returnPrompt
                        ?.takeIf { showReturnPrompt }
                        ?.let { prompt ->
                            item {
                                ContinueReturnCard(
                                    prompt = prompt,
                                    goalState = uiState.dailyReadingGoal,
                                    appLanguage = strings.languageCode,
                                    showMascot = uiState.mascotRecapEnabled,
                                    actionLabel = text.continueReading,
                                    onOpenTarget = { onComicClick(prompt.comicId, prompt.page) }
                                )
                            }
                        }
                    dedupedCheckpointTrail
                        .takeIf { showCheckpointRecap }
                        ?.let { checkpointTrail ->
                            item {
                                CheckpointRecapChip(
                                    checkpointTrail = checkpointTrail,
                                    text = text,
                                    showMascot = uiState.mascotRecapEnabled,
                                    onDismiss = { viewModel.clearCheckpoint() },
                                    onCheckpointClick = { checkpoint ->
                                        onComicClick(checkpoint.comicId, checkpoint.page)
                                    }
                                )
                            }
                        }
                    item {
                        EmptyContinueReadingState(
                            onOpenLibrary = onOpenLibrary,
                            text = text,
                            showMascot = uiState.mascotRecapEnabled
                        )
                    }
                } else if (!uiState.isLoading) {
                    uiState.continueReading?.let { comic ->
                        item {
                            ContinueReadingCard(
                                comic = comic,
                                onClick = { onComicClick(comic.id, null) }
                            )
                        }
                    }
                    if (uiState.currentlyReading.isNotEmpty()) {
                        item {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                SectionTitle(text.currentlyReading)
                                Surface(
                                    shape = RoundedCornerShape(999.dp),
                                    color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.94f)
                                ) {
                                    Text(
                                        text = text.inProgressCount(uiState.currentlyReading.size + 1),
                                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                                        style = MaterialTheme.typography.labelMedium,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                        item {
                            LazyRow(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                items(uiState.currentlyReading, key = { "reading_${it.id}" }) { comic ->
                                    ContinueComicCard(comic = comic, onClick = { onComicClick(comic.id, null) })
                                }
                            }
                        }
                    }
                    returnPrompt
                        ?.takeIf { showReturnPrompt }
                        ?.let { prompt ->
                            item {
                                ContinueReturnCard(
                                    prompt = prompt,
                                    goalState = uiState.dailyReadingGoal,
                                    appLanguage = strings.languageCode,
                                    showMascot = uiState.mascotRecapEnabled,
                                    actionLabel = text.continueReading,
                                    onOpenTarget = { onComicClick(prompt.comicId, prompt.page) }
                                )
                            }
                        }
                    dedupedCheckpointTrail
                        .takeIf { showCheckpointRecap }
                        ?.let { checkpointTrail ->
                            item {
                                CheckpointRecapChip(
                                    checkpointTrail = checkpointTrail,
                                    text = text,
                                    showMascot = uiState.mascotRecapEnabled,
                                    onDismiss = { viewModel.clearCheckpoint() },
                                    onCheckpointClick = { checkpoint ->
                                        onComicClick(checkpoint.comicId, checkpoint.page)
                                    }
                                )
                            }
                        }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
private fun ContinueTopBar(
    title: String,
    onOpenProgressProfile: () -> Unit
) {
    val strings = LocalStrings.current
    RootChromeTopBarHost {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .windowInsetsPadding(rootChromeStableTopBarInsets())
                .padding(start = 16.dp, end = 8.dp, top = 12.dp, bottom = 8.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = "Mr.Comic",
                    style = MaterialTheme.typography.displaySmall.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Black,
                        letterSpacing = io.leostrange.mrcomic.core.ui.designsystem.MrComicTypographyTokens.LetterSpacing.display
                    ),
                    color = MaterialTheme.colorScheme.onBackground,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
            MrComicIconButton(
                onClick = onOpenProgressProfile,
                variant = MrComicIconButtonVariant.Tonal
            ) {
                Icon(
                    imageVector = Icons.Default.TaskAlt,
                    contentDescription = null
                )
            }
        }
    }
}

