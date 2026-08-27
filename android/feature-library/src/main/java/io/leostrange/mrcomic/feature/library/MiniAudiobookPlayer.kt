package io.leostrange.mrcomic.feature.library

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.expandVertically
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.library.components.LibraryFallbackCover
import io.leostrange.mrcomic.feature.library.components.LibraryFallbackCoverKind
import io.leostrange.mrcomic.core.ui.locale.audiobookPauseActionLabel
import io.leostrange.mrcomic.core.ui.locale.audiobookPlayActionLabel
import io.leostrange.mrcomic.core.ui.locale.audiobookStopActionLabel

/**
 * Compact playback strip shown above the bottom navigation bar whenever an
 * audiobook is loaded in [AudiobookPlayerViewModel].
 *
 * Tap the strip to open the full player; the X button stops playback.
 */
@Composable
fun MiniAudiobookPlayer(
    onOpenPlayer: (audiobookId: String) -> Unit,
    modifier: Modifier = Modifier,
    viewModel: AudiobookPlayerViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val audiobook = uiState.audiobook
    val strings = LocalStrings.current

    AnimatedVisibility(
        visible = audiobook != null,
        enter = expandVertically(expandFrom = Alignment.Bottom),
        exit = shrinkVertically(shrinkTowards = Alignment.Bottom),
        modifier = modifier
    ) {
        audiobook ?: return@AnimatedVisibility

        Surface(
            modifier = Modifier
                .fillMaxWidth()
                .clickable { onOpenPlayer(audiobook.id) },
            color = MaterialTheme.colorScheme.surfaceContainer,
            tonalElevation = 4.dp,
            shadowElevation = 4.dp
        ) {
            Column {
                // Progress line at the top
                if (uiState.durationMs > 0) {
                    MrComicProgressLine(
                        progress = {
                            (uiState.positionMs.toFloat() / uiState.durationMs.toFloat())
                                .coerceIn(0f, 1f)
                        },
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(2.dp)
                    )
                }

                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 12.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Cover
                    Box(
                        modifier = Modifier
                            .size(40.dp)
                            .clip(RoundedCornerShape(6.dp)),
                        contentAlignment = Alignment.Center
                    ) {
                        val miniFallbackKind = if (audiobook.sourceIsFolder) {
                            LibraryFallbackCoverKind.AUDIO_FOLDER
                        } else {
                            LibraryFallbackCoverKind.AUDIO_FILE
                        }
                        LibraryFallbackCover(
                            title = audiobook.title,
                            kind = miniFallbackKind,
                            modifier = Modifier.fillMaxSize(),
                        )
                        if (audiobook.coverUri != null) {
                            AsyncImage(
                                model = audiobook.coverUri,
                                contentDescription = null,
                                contentScale = ContentScale.Crop,
                                modifier = Modifier.size(40.dp).clip(RoundedCornerShape(6.dp))
                            )
                        }
                    }

                    Spacer(Modifier.width(12.dp))

                    // Title + chapter
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = audiobook.title,
                            style = MaterialTheme.typography.bodyMedium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                        val chapter = audiobook.chapters.getOrNull(uiState.currentChapterIndex)
                        if (chapter != null) {
                            Text(
                                text = chapter.title,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                    }

                    // Play/Pause button
                    MrComicIconButton(onClick = {
                        if (uiState.isPlaying) viewModel.pause() else viewModel.play()
                    }) {
                        Icon(
                            imageVector = if (uiState.isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                            contentDescription = if (uiState.isPlaying) {
                                strings.audiobookPauseActionLabel()
                            } else {
                                strings.audiobookPlayActionLabel()
                            }
                        )
                    }

                    // Stop/close button
                    MrComicIconButton(onClick = {
                        viewModel.dismiss()
                    }) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = strings.audiobookStopActionLabel(),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}
