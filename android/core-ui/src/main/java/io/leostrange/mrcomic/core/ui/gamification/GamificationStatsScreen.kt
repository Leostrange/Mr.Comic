package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.material.icons.filled.MenuBook
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.MascotProgressState
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.UserAchievements

/**
 * Экран статистики геймификации
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GamificationStatsScreen(
    userAchievements: UserAchievements,
    mascotProgress: MascotProgressState,
    goalState: DailyReadingGoalState,
    onBack: () -> Unit,
    onAchievementsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Статистика",
                        style = MaterialTheme.typography.headlineMedium,
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Назад"
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = modifier
                .fillMaxSize()
                .padding(paddingValues),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Общая статистика
            item {
                OverallStatsCard(
                    userAchievements = userAchievements,
                    mascotProgress = mascotProgress
                )
            }

            // Ежедневные цели
            item {
                DailyGoalCard(goalState = goalState)
            }

            // Достижения
            item {
                AchievementsPreviewCard(
                    userAchievements = userAchievements,
                    onClick = onAchievementsClick
                )
            }

            // Маскот
            item {
                MascotProgressCard(mascotProgress = mascotProgress)
            }
        }
    }
}

/**
 * Карточка общей статистики
 */
@Composable
private fun OverallStatsCard(
    userAchievements: UserAchievements,
    mascotProgress: MascotProgressState,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Общая статистика",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )

            Spacer(modifier = Modifier.height(16.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                StatItem(
                    icon = Icons.Default.MenuBook,
                    label = "Страниц",
                    value = "${mascotProgress.approxPagesRead}"
                )

                StatItem(
                    icon = Icons.Default.EmojiEvents,
                    label = "Тайтлов",
                    value = "${mascotProgress.completedTitles}"
                )

                StatItem(
                    icon = Icons.Default.Star,
                    label = "XP",
                    value = "${mascotProgress.xp}"
                )
            }
        }
    }
}

/**
 * Карточка ежедневных целей
 */
@Composable
private fun DailyGoalCard(
    goalState: DailyReadingGoalState,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.secondaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Ежедневные цели",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )

            Spacer(modifier = Modifier.height(16.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                StatItem(
                    icon = Icons.Default.MenuBook,
                    label = "Сегодня",
                    value = "${goalState.pagesReadToday}/${goalState.targetPages}"
                )

                StatItem(
                    icon = Icons.Default.LocalFireDepartment,
                    label = "Серия",
                    value = "${goalState.currentStreak} дней"
                )

                StatItem(
                    icon = Icons.Default.Timer,
                    label = "Неделя",
                    value = "${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
                )
            }
        }
    }
}

/**
 * Карточка превью достижений
 */
@Composable
private fun AchievementsPreviewCard(
    userAchievements: UserAchievements,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.tertiaryContainer
        ),
        onClick = onClick
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "Достижения",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold
                )

                Text(
                    text = "${userAchievements.unlockedCount}/${userAchievements.totalCount}",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = "Нажмите для просмотра всех достижений",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/**
 * Карточка прогресса маскота
 */
@Composable
private fun MascotProgressCard(
    mascotProgress: MascotProgressState,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Маскот",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )

            Spacer(modifier = Modifier.height(16.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                StatItem(
                    icon = Icons.Default.Star,
                    label = "Стадия",
                    value = getStageName(mascotProgress.stage)
                )

                StatItem(
                    icon = Icons.Default.MenuBook,
                    label = "Прогресс",
                    value = "${(mascotProgress.stageProgress * 100).toInt()}%"
                )
            }
        }
    }
}

/**
 * Элемент статистики
 */
@Composable
private fun StatItem(
    icon: ImageVector,
    label: String,
    value: String,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.primary,
            modifier = Modifier.size(24.dp)
        )

        Spacer(modifier = Modifier.height(4.dp))

        Text(
            text = value,
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Bold
        )

        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

/**
 * Получить название стадии
 */
private fun getStageName(stage: io.leostrange.mrcomic.core.model.MascotStage): String {
    return when (stage) {
        io.leostrange.mrcomic.core.model.MascotStage.CHILD -> "Ребёнок"
        io.leostrange.mrcomic.core.model.MascotStage.TEEN -> "Подросток"
        io.leostrange.mrcomic.core.model.MascotStage.YOUNG -> "Юность"
        io.leostrange.mrcomic.core.model.MascotStage.ADULT -> "Взрослый"
    }
}
