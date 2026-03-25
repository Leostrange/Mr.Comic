package com.example.core.ui.mascot

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MascotStage

enum class MrComicMascotSurfaceMode {
    MASCOT,
    NEUTRAL
}

fun resolveMrComicMascotSurfaceMode(showMascot: Boolean): MrComicMascotSurfaceMode =
    if (showMascot) MrComicMascotSurfaceMode.MASCOT else MrComicMascotSurfaceMode.NEUTRAL

@Composable
fun MrComicMiniAvatar(
    showMascot: Boolean,
    modifier: Modifier = Modifier,
    compact: Boolean = true,
    neutralIcon: ImageVector = Icons.Default.AutoStories,
    framedNeutral: Boolean = false,
    neutralTint: Color = MaterialTheme.colorScheme.primary,
    neutralContainerColor: Color = neutralTint.copy(alpha = 0.12f)
) {
    val surfaceMode = remember(showMascot) { resolveMrComicMascotSurfaceMode(showMascot) }
    if (surfaceMode == MrComicMascotSurfaceMode.MASCOT) {
        MascotBadge(compact = compact, modifier = modifier)
    } else if (framedNeutral) {
        Box(
            modifier = modifier
                .background(color = neutralContainerColor, shape = CircleShape),
            contentAlignment = Alignment.Center
        ) {
            Icon(
                imageVector = neutralIcon,
                contentDescription = null,
                tint = neutralTint,
                modifier = Modifier.fillMaxSize(0.56f)
            )
        }
    } else {
        Icon(
            imageVector = neutralIcon,
            contentDescription = null,
            tint = neutralTint,
            modifier = modifier
        )
    }
}

@Composable
fun MrComicStagePreviewLead(
    showMascot: Boolean,
    modifier: Modifier = Modifier
) {
    MrComicMiniAvatar(
        showMascot = showMascot,
        modifier = modifier,
        compact = true,
        neutralIcon = Icons.Default.AutoStories,
        framedNeutral = true,
        neutralTint = MaterialTheme.colorScheme.primary,
        neutralContainerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
    )
}

@Composable
fun MrComicStageArchivePortrait(
    stage: MascotStage,
    showMascot: Boolean,
    modifier: Modifier = Modifier,
    highlighted: Boolean = false
) {
    val accentColor = when (stage) {
        MascotStage.CHILD -> MaterialTheme.colorScheme.primary
        MascotStage.TEEN -> MaterialTheme.colorScheme.secondary
        MascotStage.YOUNG -> MaterialTheme.colorScheme.tertiary
        MascotStage.ADULT -> MaterialTheme.colorScheme.error
    }
    val numberLabel = when (stage) {
        MascotStage.CHILD -> "1"
        MascotStage.TEEN -> "2"
        MascotStage.YOUNG -> "3"
        MascotStage.ADULT -> "4"
    }
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(20.dp),
        color = accentColor.copy(alpha = if (highlighted) 0.18f else 0.1f)
    ) {
        Box(contentAlignment = Alignment.Center) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(34.dp),
                compact = false,
                neutralIcon = Icons.Default.AutoStories,
                framedNeutral = true,
                neutralTint = accentColor,
                neutralContainerColor = accentColor.copy(alpha = 0.14f)
            )
            Surface(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(6.dp),
                shape = CircleShape,
                color = accentColor
            ) {
                Text(
                    text = numberLabel,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onPrimary,
                    modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp)
                )
            }
        }
    }
}

@Composable
fun MrComicSceneLead(
    showMascot: Boolean,
    modifier: Modifier = Modifier,
    label: String? = null,
    neutralIcon: ImageVector = Icons.AutoMirrored.Filled.MenuBook,
    neutralSize: Dp = 44.dp
) {
    if (showMascot) {
        MascotBadge(
            modifier = modifier,
            compact = false,
            label = label
        )
    } else {
        Surface(
            modifier = modifier.then(Modifier.size(neutralSize)),
            shape = CircleShape,
            color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.9f)
        ) {
            Box(contentAlignment = Alignment.Center) {
                Icon(
                    imageVector = neutralIcon,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSecondaryContainer,
                    modifier = Modifier.fillMaxSize(0.44f)
                )
            }
        }
    }
}

fun mrComicMascotStageLabel(language: String, stage: MascotStage): String = when (language) {
    "en" -> when (stage) {
        MascotStage.CHILD -> "Stage 1 · Child"
        MascotStage.TEEN -> "Stage 2 · Teen"
        MascotStage.YOUNG -> "Stage 3 · Young"
        MascotStage.ADULT -> "Stage 4 · Adult"
    }
    "ja" -> when (stage) {
        MascotStage.CHILD -> "段階 1 ・ 幼年"
        MascotStage.TEEN -> "段階 2 ・ ティーン"
        MascotStage.YOUNG -> "段階 3 ・ ヤング"
        MascotStage.ADULT -> "段階 4 ・ アダルト"
    }
    "zh" -> when (stage) {
        MascotStage.CHILD -> "阶段 1 · 幼年"
        MascotStage.TEEN -> "阶段 2 · 少年"
        MascotStage.YOUNG -> "阶段 3 · 青年"
        MascotStage.ADULT -> "阶段 4 · 成熟"
    }
    "ko" -> when (stage) {
        MascotStage.CHILD -> "단계 1 · 어린 시절"
        MascotStage.TEEN -> "단계 2 · 틴"
        MascotStage.YOUNG -> "단계 3 · 청년"
        MascotStage.ADULT -> "단계 4 · 성숙"
    }
    else -> when (stage) {
        MascotStage.CHILD -> "Этап 1 · Ребёнок"
        MascotStage.TEEN -> "Этап 2 · Подросток"
        MascotStage.YOUNG -> "Этап 3 · Юность"
        MascotStage.ADULT -> "Этап 4 · Взрослый"
    }
}

fun mrComicMascotStageShortLabel(language: String, stage: MascotStage): String = when (language) {
    "en" -> when (stage) {
        MascotStage.CHILD -> "Child"
        MascotStage.TEEN -> "Teen"
        MascotStage.YOUNG -> "Young"
        MascotStage.ADULT -> "Adult"
    }
    "ja" -> when (stage) {
        MascotStage.CHILD -> "幼年"
        MascotStage.TEEN -> "ティーン"
        MascotStage.YOUNG -> "ヤング"
        MascotStage.ADULT -> "アダルト"
    }
    "zh" -> when (stage) {
        MascotStage.CHILD -> "幼年"
        MascotStage.TEEN -> "少年"
        MascotStage.YOUNG -> "青年"
        MascotStage.ADULT -> "成熟"
    }
    "ko" -> when (stage) {
        MascotStage.CHILD -> "어린 시절"
        MascotStage.TEEN -> "틴"
        MascotStage.YOUNG -> "청년"
        MascotStage.ADULT -> "성숙"
    }
    else -> when (stage) {
        MascotStage.CHILD -> "Ребёнок"
        MascotStage.TEEN -> "Подросток"
        MascotStage.YOUNG -> "Юность"
        MascotStage.ADULT -> "Взрослый"
    }
}

fun mrComicMascotStageHint(language: String, progress: MascotProgressState): String =
    when (val nextStageXp = progress.nextStageXp) {
        null -> when (language) {
            "en" -> "Final stage reached · tracked pages: ${progress.approxPagesRead}"
            "ja" -> "最終段階です ・ 記録ページ ${progress.approxPagesRead}"
            "zh" -> "已到最终阶段 · 已记录 ${progress.approxPagesRead} 页"
            "ko" -> "최종 단계 도달 · 추적 페이지 ${progress.approxPagesRead}"
            else -> "Финальный этап достигнут · учтено ${progress.approxPagesRead} стр."
        }

        else -> {
            val remainingXp = (nextStageXp - progress.xp).coerceAtLeast(0)
            when (language) {
                "en" -> "$remainingXp XP to the next stage · tracked pages: ${progress.approxPagesRead}"
                "ja" -> "次の段階まであと ${remainingXp} XP ・ 記録ページ ${progress.approxPagesRead}"
                "zh" -> "距离下一阶段还差 ${remainingXp} XP · 已记录 ${progress.approxPagesRead} 页"
                "ko" -> "다음 단계까지 ${remainingXp} XP 남음 · 추적 페이지 ${progress.approxPagesRead}"
                else -> "До следующего этапа ${remainingXp} XP · учтено ${progress.approxPagesRead} стр."
            }
        }
    }

fun mrComicMascotStagePreviewTitle(language: String): String = when (language) {
    "en" -> "New stage"
    "ja" -> "新しい段階"
    "zh" -> "新阶段"
    "ko" -> "새 단계"
    else -> "Новый этап"
}

fun mrComicMascotStagePreviewText(
    language: String,
    stage: MascotStage,
    progress: MascotProgressState
): String {
    val label = mrComicMascotStageLabel(language, stage)
    return when (language) {
        "en" -> "Mr.Comic reached $label with ${progress.xp} XP."
        "ja" -> "Mr.Comic は ${label} に到達しました。XP は ${progress.xp} です。"
        "zh" -> "Mr.Comic 已达到 $label，当前 ${progress.xp} XP。"
        "ko" -> "Mr.Comic 이 $label 단계에 도달했습니다. 현재 ${progress.xp} XP입니다."
        else -> "Mr.Comic достиг стадии \"$label\". Сейчас ${progress.xp} XP."
    }
}
