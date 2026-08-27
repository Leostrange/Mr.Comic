package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.foundation.layout.height
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.AchievementCategory
import io.leostrange.mrcomic.core.model.AchievementDefinitions
import io.leostrange.mrcomic.core.model.AchievementProgress
import io.leostrange.mrcomic.core.model.UserAchievements

/**
 * Экран списка достижений
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AchievementListScreen(
    userAchievements: UserAchievements,
    onBack: () -> Unit,
    onAchievementClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Достижения",
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
        Column(
            modifier = modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Статистика
            AchievementStats(
                userAchievements = userAchievements,
                modifier = Modifier.padding(16.dp)
            )

            // Список достижений по категориям
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                AchievementCategory.entries.forEach { category ->
                    val achievements = AchievementDefinitions.getByCategory(category)
                    val progressMap = userAchievements.achievements.associateBy { it.achievementId }

                    if (achievements.isNotEmpty()) {
                        item {
                            CategoryHeader(category = category)
                        }

                        items(achievements) { achievement ->
                            val progress = progressMap[achievement.id] ?: AchievementProgress(
                                achievementId = achievement.id,
                                status = io.leostrange.mrcomic.core.model.AchievementStatus.LOCKED,
                                currentProgress = 0f
                            )

                            AchievementCard(
                                achievement = achievement,
                                progress = progress,
                                modifier = Modifier.fillMaxWidth(),
                                showProgress = true
                            )
                        }
                    }
                }
            }
        }
    }
}

/**
 * Заголовок категории
 */
@Composable
private fun CategoryHeader(
    category: AchievementCategory,
    modifier: Modifier = Modifier
) {
    val title = when (category) {
        AchievementCategory.READING -> "Чтение"
        AchievementCategory.COLLECTION -> "Коллекция"
        AchievementCategory.STREAK -> "Серии"
        AchievementCategory.EXPLORATION -> "Исследование"
        AchievementCategory.MILESTONE -> "Вехи"
    }

    Text(
        text = title,
        style = MaterialTheme.typography.titleLarge,
        fontWeight = FontWeight.Bold,
        color = MaterialTheme.colorScheme.primary,
        modifier = modifier.padding(vertical = 8.dp)
    )
}

/**
 * Статистика достижений
 */
@Composable
private fun AchievementStats(
    userAchievements: UserAchievements,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Text(
            text = "Общий прогресс",
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Bold
        )

        androidx.compose.foundation.layout.Spacer(modifier = Modifier.height(8.dp))

        androidx.compose.foundation.layout.Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            StatItem(
                label = "Разблокировано",
                value = "${userAchievements.unlockedCount}/${userAchievements.totalCount}"
            )

            StatItem(
                label = "XP заработано",
                value = "${userAchievements.totalXpEarned}"
            )

            StatItem(
                label = "Процент",
                value = "${(userAchievements.completionRate * 100).toInt()}%"
            )
        }
    }
}

/**
 * Элемент статистики
 */
@Composable
private fun StatItem(
    label: String,
    value: String,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
    ) {
        Text(
            text = value,
            style = MaterialTheme.typography.headlineSmall,
            fontWeight = FontWeight.Bold,
            color = MaterialTheme.colorScheme.primary
        )

        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}
