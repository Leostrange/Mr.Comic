package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Star
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.Achievement
import io.leostrange.mrcomic.core.model.AchievementProgress
import io.leostrange.mrcomic.core.model.AchievementRarity
import io.leostrange.mrcomic.core.model.AchievementStatus

/**
 * Экран деталей достижения
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AchievementDetailScreen(
    achievement: Achievement,
    progress: AchievementProgress,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val animatedProgress by animateFloatAsState(
        targetValue = progress.currentProgress,
        animationSpec = tween(durationMillis = 1000),
        label = "detail_progress"
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Достижение",
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
                .verticalScroll(rememberScrollState())
                .padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // Иконка достижения
            Box(
                modifier = Modifier
                    .size(120.dp)
                    .background(
                        color = getAchievementColor(achievement.rarity),
                        shape = CircleShape
                    ),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = when (progress.status) {
                        AchievementStatus.LOCKED -> Icons.Default.Lock
                        AchievementStatus.UNLOCKED -> Icons.Default.Star
                        AchievementStatus.CLAIMED -> Icons.Default.CheckCircle
                    },
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(64.dp)
                )
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Название достижения
            Text(
                text = achievement.title,
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                textAlign = TextAlign.Center
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Описание
            Text(
                text = achievement.description,
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )

            Spacer(modifier = Modifier.height(24.dp))

            // Прогресс
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    Text(
                        text = "Прогресс",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    LinearProgressIndicator(
                        progress = { animatedProgress },
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(12.dp)
                            .clip(RoundedCornerShape(6.dp)),
                        color = getAchievementColor(achievement.rarity),
                        trackColor = MaterialTheme.colorScheme.surface
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    Text(
                        text = "${(animatedProgress * 100).toInt()}%",
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.Bold,
                        color = getAchievementColor(achievement.rarity),
                        modifier = Modifier.fillMaxWidth(),
                        textAlign = TextAlign.Center
                    )
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Информация
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    InfoRow(
                        label = "Категория",
                        value = getCategoryName(achievement.category.name)
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    InfoRow(
                        label = "Редкость",
                        value = getRarityName(achievement.rarity)
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    InfoRow(
                        label = "Награда",
                        value = "+${achievement.xpReward} XP"
                    )

                    if (progress.unlockedAt != null) {
                        val unlockedAt = progress.unlockedAt ?: 0L
                        Spacer(modifier = Modifier.height(8.dp))

                        InfoRow(
                            label = "Получено",
                            value = formatDate(unlockedAt)
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Статус
            StatusBadge(status = progress.status)
        }
    }
}

/**
 * Строка информации
 */
@Composable
private fun InfoRow(
    label: String,
    value: String,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )

        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            fontWeight = FontWeight.Bold
        )
    }
}

/**
 * Бейдж статуса
 */
@Composable
private fun StatusBadge(
    status: AchievementStatus,
    modifier: Modifier = Modifier
) {
    val (text, color) = when (status) {
        AchievementStatus.LOCKED -> "Заблокировано" to MaterialTheme.colorScheme.error
        AchievementStatus.UNLOCKED -> "Разблокировано" to MaterialTheme.colorScheme.primary
        AchievementStatus.CLAIMED -> "Получено" to MaterialTheme.colorScheme.tertiary
    }

    Card(
        modifier = modifier,
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(
            containerColor = color.copy(alpha = 0.1f)
        )
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Bold,
            color = color,
            modifier = Modifier.padding(horizontal = 24.dp, vertical = 12.dp)
        )
    }
}

/**
 * Получить цвет достижения в зависимости от редкости
 */
@Composable
private fun getAchievementColor(rarity: AchievementRarity): Color {
    return when (rarity) {
        AchievementRarity.COMMON -> MaterialTheme.colorScheme.primary
        AchievementRarity.UNCOMMON -> MaterialTheme.colorScheme.secondary
        AchievementRarity.RARE -> MaterialTheme.colorScheme.tertiary
        AchievementRarity.EPIC -> MaterialTheme.colorScheme.error
        AchievementRarity.LEGENDARY -> Color(0xFFFFD700) // Золотой
    }
}

/**
 * Получить название категории
 */
private fun getCategoryName(category: String): String {
    return when (category) {
        "READING" -> "Чтение"
        "COLLECTION" -> "Коллекция"
        "STREAK" -> "Серии"
        "EXPLORATION" -> "Исследование"
        "MILESTONE" -> "Вехи"
        else -> category
    }
}

/**
 * Получить название редкости
 */
private fun getRarityName(rarity: AchievementRarity): String {
    return when (rarity) {
        AchievementRarity.COMMON -> "Обычное"
        AchievementRarity.UNCOMMON -> "Необычное"
        AchievementRarity.RARE -> "Редкое"
        AchievementRarity.EPIC -> "Эпическое"
        AchievementRarity.LEGENDARY -> "Легендарное"
    }
}

/**
 * Форматировать дату
 */
private fun formatDate(timestamp: Long): String {
    val date = java.util.Date(timestamp)
    val formatter = java.text.SimpleDateFormat("dd.MM.yyyy HH:mm", java.util.Locale.getDefault())
    return formatter.format(date)
}
