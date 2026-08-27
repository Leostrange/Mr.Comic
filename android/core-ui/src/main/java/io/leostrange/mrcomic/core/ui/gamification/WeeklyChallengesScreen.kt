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
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.WeeklyChallengeDefinitions
import io.leostrange.mrcomic.core.model.WeeklyChallengeProgress

/**
 * Экран еженедельных челленджей
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun WeeklyChallengesScreen(
    challengeProgress: List<WeeklyChallengeProgress>,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Еженедельные челленджи",
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
            // Заголовок
            Text(
                text = "Выполните челленджи и получите XP",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp)
            )

            // Список челленджей
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(WeeklyChallengeDefinitions.challenges) { challenge ->
                    val progress = challengeProgress.find { it.challengeId == challenge.id }
                        ?: WeeklyChallengeProgress(
                            challengeId = challenge.id,
                            current = 0,
                            target = challenge.target,
                            status = io.leostrange.mrcomic.core.model.WeeklyChallengeStatus.ACTIVE
                        )

                    WeeklyChallengeCard(
                        challenge = challenge,
                        progress = progress,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}
