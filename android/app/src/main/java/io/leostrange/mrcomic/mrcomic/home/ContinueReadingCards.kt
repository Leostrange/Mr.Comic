package io.leostrange.mrcomic.home

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.library.rootChromeIconContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContentColor
import io.leostrange.mrcomic.ui.ContinueScreenText
import io.leostrange.mrcomic.ui.continueScreenText

@Composable
internal fun ContinueIntroCard(
    intro: String,
    status: String?
) {
    MrComicCardSurface(
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT),
        tonalElevation = 1.dp,
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Surface(
                    shape = CircleShape,
                    color = rootChromeIconContainerColor(MaterialTheme.colorScheme)
                ) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.MenuBook,
                        contentDescription = null,
                        modifier = Modifier.padding(10.dp).size(18.dp),
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
                status?.let {
                    ContinueSummaryChip(text = it)
                }
            }
            Text(
                text = intro,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
internal fun ContinueReturnCard(
    prompt: ContinueReturnPrompt,
    goalState: DailyReadingGoalState,
    appLanguage: String,
    showMascot: Boolean,
    actionLabel: String,
    onOpenTarget: () -> Unit
) {
    val supportTone = remember(goalState) { resolveContinueReturnSupportTone(goalState) }
    MrComicCardSurface(
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.ACCENT)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                MrComicMiniAvatar(
                    showMascot = showMascot,
                    modifier = Modifier.size(32.dp),
                    compact = false,
                    neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                    framedNeutral = true,
                    neutralTint = MaterialTheme.colorScheme.primary,
                    neutralContainerColor = rootChromeIconContainerColor(MaterialTheme.colorScheme)
                )
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(3.dp)
                ) {
                    Text(
                        text = continueReturnTitle(appLanguage, prompt.daysAway),
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold
                    )
                    Text(
                        text = continueReturnHint(
                            language = appLanguage,
                            targetTitle = prompt.targetTitle,
                            daysAway = prompt.daysAway,
                            usesCheckpoint = prompt.usesCheckpoint,
                            showMascot = showMascot
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            Text(
                text = continueReturnSupportText(
                    language = appLanguage,
                    tone = supportTone,
                    goalState = goalState
                ),
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.primary
            )
            MrComicButton(onClick = onOpenTarget) {
                Text(text = actionLabel)
            }
        }
    }
}

@Composable
internal fun ContinueLoadingState() {
    val language = LocalStrings.current.languageCode
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 20.dp, vertical = 18.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CircularProgressIndicator(
                modifier = Modifier.size(22.dp),
                strokeWidth = 2.5.dp
            )
            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                Text(
                    text = when (language) {
                        "en" -> "Preparing Continue"
                        "ja" -> "続き画面を準備中"
                        "zh" -> "正在准备继续页面"
                        "ko" -> "이어읽기 화면 준비 중"
                        else -> "Подготавливаю экран Продолжить"
                    },
                    style = MaterialTheme.typography.titleSmall
                )
                Text(
                    text = when (language) {
                        "en" -> "Loading reading progress and recent checkpoints."
                        "ja" -> "進捗と最近のチェックポイントを読み込んでいます。"
                        "zh" -> "正在加载阅读进度和最近的检查点。"
                        "ko" -> "읽기 진행도와 최근 체크포인트를 불러오는 중입니다."
                        else -> "Загружаю прогресс чтения и последние контрольные точки."
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
internal fun EmptyContinueState(
    onOpenLibrary: () -> Unit,
    text: ContinueScreenText,
    showMascot: Boolean
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(36.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Text(text.emptyLibraryTitle, style = MaterialTheme.typography.titleMedium)
            Text(
                text.emptyLibraryHint,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            MrComicButton(
                onClick = onOpenLibrary,
                variant = MrComicButtonVariant.Tonal
            ) {
                Text(text.openLibrary)
            }
        }
    }
}

@Composable
internal fun EmptyContinueReadingState(
    onOpenLibrary: () -> Unit,
    text: ContinueScreenText,
    showMascot: Boolean
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(32.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Text(text.emptyReadingTitle, style = MaterialTheme.typography.titleMedium)
            Text(
                text.emptyReadingHint,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            MrComicButton(
                onClick = onOpenLibrary,
                variant = MrComicButtonVariant.Tonal
            ) {
                Text(text.openLibrary)
            }
        }
    }
}

@Composable
internal fun ContinueReadingCard(
    comic: Comic,
    onClick: () -> Unit
) {
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        shape = RootChromePanelShape,
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme),
        shadowElevation = 4.dp
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            CoverThumb(comic = comic, modifier = Modifier.width(86.dp).height(122.dp))
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = text.continueReading,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.headlineSmall,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
                comic.series?.let {
                    Text(
                        text = it,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                MrComicPill(
                    containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT),
                    contentColor = MaterialTheme.colorScheme.onSurface
                ) {
                    Text(
                        text = text.pageProgress(comic.currentPage + 1, (comic.readingProgress * 100).toInt()),
                        style = MaterialTheme.typography.labelMedium
                    )
                }
            }
        }
    }
}

@Composable
private fun ContinueSummaryChip(text: String) {
    MrComicPill(
        containerColor = rootChromePillContainerColor(MaterialTheme.colorScheme, selected = true),
        contentColor = rootChromePillContentColor(MaterialTheme.colorScheme, selected = true),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 7.dp)
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.bodySmall
        )
    }
}

@Composable
internal fun ContinueComicCard(
    comic: Comic,
    onClick: () -> Unit
) {
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { continueScreenText(strings.languageCode) }
    Column(
        modifier = Modifier.width(118.dp).clickable(onClick = onClick),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        CoverThumb(comic = comic, modifier = Modifier.fillMaxWidth().height(162.dp))
        Text(
            text = comic.title,
            style = MaterialTheme.typography.labelLarge,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )
        if (comic.readingProgress > 0f) {
            Text(
                text = text.progressRead((comic.readingProgress * 100).toInt()),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun CoverThumb(
    comic: Comic,
    modifier: Modifier = Modifier
) {
    val shape = RoundedCornerShape(18.dp)
    Box(
        modifier = modifier
            .background(MaterialTheme.colorScheme.surfaceVariant, shape),
        contentAlignment = Alignment.Center
    ) {
        if (comic.coverPath != null) {
            AsyncImage(
                model = comic.coverPath,
                contentDescription = comic.title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize().background(MaterialTheme.colorScheme.surfaceVariant, shape)
            )
        } else {
            Icon(
                Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                modifier = Modifier.size(30.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
internal fun SectionTitle(text: String) {
    Text(
        text = text,
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold
    )
}

